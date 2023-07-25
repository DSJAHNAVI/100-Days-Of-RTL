module bidirectional_sr_tb();
reg clk,d,M,clr;
wire [3:0]Q;
bidirectional_sr dut(clk,d,M,clr,Q);
initial begin
clk = 1'b1;
forever #5 clk = ~clk;
end
initial begin
d = 1'b0;#20;
d = 1'b1;#10;
d = 1'b0;#10;
d = 1'b1;#60;
d = 1'b0;#20;
d = 1'b1; 
end
initial begin
M = 0; #80;
M = 1;
end
initial begin
clr = 0; #80;
clr = 1; #10;
clr = 0;
end
endmodule
