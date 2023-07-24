module piso_tb();
reg [3:0]b;
reg clk,sl;
wire [3:0]q;
piso dut(clk,sl,b,q);
initial begin
clk=1'b0;
forever #5 clk=~clk;
end
initial begin
sl=0;b=4'b0101;
#20 sl=1;
#20 sl=1;
#10 sl=0;
#10 sl=0;//b=4'b0110;
end
endmodule