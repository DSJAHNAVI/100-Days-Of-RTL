module sr_ff_sync_r(input s,r,reset,clk,output reg q,output qbar);
  always @(posedge clk) begin
    if(reset) q<=0;
	else begin
      case({s,r})
		2'b00:q <= q;
		2'b01:q <= 1'b0;
		2'b10:q <= 1'b1;
		2'b11:q <= 1'bx;
	  endcase
	end
  end
assign qbar = ~q;
endmodule
