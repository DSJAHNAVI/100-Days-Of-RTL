module siso(input clk,D,rst,output Q);
wire w1,w2,w3;
d_ff DFF1(clk,D,rst,w3);
d_ff DFF2(clk,w3,rst,w2);
d_ff DFF3(clk,w2,rst,w1);
d_ff DFF4(clk,w1,rst,Q);
endmodule

module d_ff(input clk,d,rst, output reg q);
always@(negedge clk) begin
if(rst)
q<=1'b0;
else
q<=d;
end
endmodule
