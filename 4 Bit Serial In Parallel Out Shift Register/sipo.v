module sipo(input clk,d,output [3:0]q);
d_ff DFF1(clk,d,q[3]);
d_ff DFF2(clk,q[3],q[2]);
d_ff DFF3(clk,q[2],q[1]);
d_ff DFF4(clk,q[1],q[0]);
endmodule

module d_ff(input clk,d, output reg q);
always@(negedge clk) begin
q <= d;
end
endmodule