module read_mem(
input [21:0] data_in,
input clk,
output reg [7:0] data_out );

reg [7:0] mem_array [0:2559999];

initial begin
    $readmemh("D:/College/OpenCV/image.mem", mem_array);
end

always @(posedge clk) begin
    
    data_out<=mem_array[data_in];
    
end
endmodule