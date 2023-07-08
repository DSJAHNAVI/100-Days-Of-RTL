module srff_using_jkff(input s,r,clk,output q,qbar);
jk_ff JK(s,r,clk,q);
assign qbar = ~q;
endmodule

module jk_ff(input j,k,clk,output reg q);
  always @(posedge clk) begin
      case({j,k})
		2'b00:q <= q;
		2'b01:q <= 1'b0;
		2'b10:q <= 1'b1;
		2'b11:q <= ~q;
	  endcase
  end
endmodule
