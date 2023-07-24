module sipo_tb();
reg clk,d;
wire [3:0]q;
sipo dut(clk,d,q);
initial begin
clk = 1'b0;
forever #5 clk = ~clk;
end
initial begin
d = 1'b1;#10;
d = 1'b0;#10;
d = 1'b1;#10;
d = 1'b1;#10;
end
endmodule