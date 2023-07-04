module sr_ff(input s,r,clk,output reg q,output qbar);
always @(posedge clk) begin
case({s,r})
  2'b00:q <= q;
  2'b01:q <= 1'b0;
  2'b10:q <= 1'b1;
  2'b11:q <= 1'bx;
endcase
end
assign qbar = ~q;
endmodule


/*  s0 <= ~(s&clk);
  r0 <= ~(r&clk);
end
assign q = ~(s0&qbar);
assign qbar = ~(r0&q);*/

