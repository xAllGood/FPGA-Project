`timescale 1ns / 1ps

module axi_stream_reader (
    input wire clk,
    input wire resetn,

    // BRAM Interface
    output reg [9:0] rom_addr,
    input wire [15:0] rom_data,

    // AXI-Stream Interface to CNN
    output reg [447:0] m_axis_tdata,
    output reg m_axis_tvalid,
    output reg m_axis_tlast,    // <--- The missing signal!
    input wire m_axis_tready
);

    localparam INIT = 0, REQUEST = 1, WAIT_RAM = 2, GATHER = 3, SEND = 4, DONE = 5;
    reg [2:0] state;
    
    reg [4:0] pixel_cnt; 
    reg [447:0] buffer;

    always @(posedge clk) begin
        if (!resetn) begin
            state <= INIT;
            rom_addr <= 0;
            m_axis_tvalid <= 0;
            m_axis_tlast <= 0;
            pixel_cnt <= 0;
            m_axis_tdata <= 0;
        end else begin
            case (state)
                INIT: begin
                    rom_addr <= 0;
                    m_axis_tvalid <= 0;
                    m_axis_tlast <= 0;
                    pixel_cnt <= 0;
                    state <= REQUEST;
                end
                REQUEST: state <= WAIT_RAM;
                WAIT_RAM: state <= GATHER;
                GATHER: begin
                    buffer[pixel_cnt*16 +: 16] <= rom_data;
                    if (pixel_cnt == 27) begin
                        state <= SEND;
                    end else begin
                        pixel_cnt <= pixel_cnt + 1;
                        rom_addr <= rom_addr + 1;
                        state <= REQUEST;
                    end
                end
                SEND: begin
                    m_axis_tdata <= buffer;
                    m_axis_tvalid <= 1;
                    
                    // Fire TLAST only on the very last row of the 784-pixel image
                    if (rom_addr >= 783) m_axis_tlast <= 1;
                    else m_axis_tlast <= 0;

                    if (m_axis_tready && m_axis_tvalid) begin
                        m_axis_tvalid <= 0;
                        m_axis_tlast <= 0;
                        pixel_cnt <= 0;
                        if (rom_addr >= 783) begin
                            state <= DONE;
                        end else begin
                            rom_addr <= rom_addr + 1;
                            state <= REQUEST;
                        end
                    end
                end
                DONE: begin
                    m_axis_tvalid <= 0;
                    m_axis_tlast <= 0;
                end
            endcase
        end
    end
endmodule