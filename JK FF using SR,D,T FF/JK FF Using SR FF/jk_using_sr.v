module jk_using_sr(input clk,reset,j,k, output q,qbar);
wire w1,w2;
assign w1 = (~q)&(j);
assign w2 = (q)&(k);
sr_ff SRFF(clk,reset,w1,w2,q,qbar);
endmodule

module sr_ff(input clk,reset,s,r,output reg q,output qbar);
always @(posedge clk) begin
if(!reset) begin
  case({s,r})
    2'b00:q <= q;
    2'b01:q <= 1'b0;
    2'b10:q <= 1'b1;
    2'b11:q <= 1'bx;
  endcase
  end
else
q <= 1'b0;
end
assign qbar = ~q;
endmodule

