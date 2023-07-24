module piso(input clk,sl,input [3:0]b,output [3:0]q);
wire w1,w2,w3,w4,w5,w6,w7;
wire d1,d2,d3;
assign d1 = ((q[0]&sl)|(~sl&b[1])); 
assign d2 = ((q[1]&sl)|(~sl&b[2])); 
assign d3 = ((q[2]&sl)|(~sl&b[3])); 
d_ff DFF1(clk,b[0],q[0]);
d_ff DFF2(clk,d1,q[1]);
d_ff DFF3(clk,d2,q[2]);
d_ff DFF4(clk,d3,q[3]);
endmodule

module d_ff(input clk,d, output reg q);
always@(negedge clk) begin
q <= d;
end
endmodule
