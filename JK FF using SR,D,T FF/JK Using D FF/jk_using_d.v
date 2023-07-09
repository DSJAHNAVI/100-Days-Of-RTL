module jk_using_d(input clk,reset,j,k, output q,qbar);
assign w1 = (~qbar|j)&(q|~k);
d_ff DFF(clk,reset,w1,q,qbar);
endmodule

module d_ff(input clk,reset,d,output reg q,output qbar);
always @(posedge clk) begin
if(!reset) begin
  q <= d;
end
else 
  q <= 0;
end
assign qbar = ~q;
endmodule

