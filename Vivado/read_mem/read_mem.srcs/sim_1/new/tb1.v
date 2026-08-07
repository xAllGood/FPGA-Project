module tb_read_mem();

reg [21:0] data_in;
reg clk;
wire [7:0] data_out;

integer i;
integer filehandle;

read_mem uut(
    .data_in(data_in),
    .clk(clk),
    .data_out(data_out));
    
always begin
    #5 clk = ~clk;
end

initial begin
    clk =0;
    data_in=0;

#20;

    $display("Simulation started");
    $display("TIme\tAddress\tData (Hex)");
    $display("--------------------------------");
    filehandle = $fopen("D:/College/OpenCV/Hari.txt","w");
    
    if(filehandle == 0) begin
        $display("Error opening file");
        $finish;
    end
    
    
    for(i=0; i<72761; i=i+1) begin
        data_in=i;
        @(posedge clk);
        #1;
        $display("%t\t%d\t%h",$time,data_in,data_out);
        $fwrite(filehandle,"%h\n",data_out);
    end
    
    data_in = 22'd2559999;
    @(posedge clk);
    #1
    $display("Simulation Completed");
    $finish;
end

endmodule