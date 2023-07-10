module d_using_jk(input clk,reset,d,output q,qbar);
wire w1,w2;
assign w1 = d;
assign w2 = ~d;
jk_ff JKFF(clk,reset,w1,w2,q,qbar);
endmodule
module jk_ff(input clk,reset,j,k,output reg q,output qbar);
  always @(posedge clk) begin
    if(!reset) begin
      case({j,k})
		2'b00:q <= q;
		2'b01:q <= 1'b0;
		2'b10:q <= 1'b1;
		2'b11:q <= ~q;
	  endcase
	end
  end
assign qbar = ~q;
endmodule
