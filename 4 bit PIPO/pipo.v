module pipo(input clk,input [3:0]d,output [3:0]q);
d_ff DFF1(clk,d[3],q[3]);
d_ff DFF2(clk,d[2],q[2]);
d_ff DFF3(clk,d[1],q[1]);
d_ff DFF4(clk,d[0],q[0]);
endmodule
module d_ff(input clk,d, output reg q);
always@(negedge clk) begin
q<=d;
end
endmodule


