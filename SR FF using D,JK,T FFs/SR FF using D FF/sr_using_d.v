module sr_using_d(clk,S,R, Q,Q_bar);
   input clk,S,R;
   output Q,Q_bar;
   wire w1;
   
   assign w1 = (S)|(Q & (~R));
   d_ff DF(clk, w1, Q,Q_bar);
   
endmodule

module d_ff(clk,D,Q,Q_bar);
input clk, D;
output reg Q;
output Q_bar;
always @(posedge clk) begin
Q <= D;
end
assign Q_bar = ~Q;
endmodule