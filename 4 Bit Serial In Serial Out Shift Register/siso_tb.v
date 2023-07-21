module siso_tb();
reg clk,d,rst;
wire q;
siso dut(clk,d,rst,q);
initial begin
clk = 1'b0;
forever #10 clk = ~clk;
end
initial begin
rst = 1'b0;
end
initial begin
d = 1'b0;
forever #20 d = ~d;
end
endmodule