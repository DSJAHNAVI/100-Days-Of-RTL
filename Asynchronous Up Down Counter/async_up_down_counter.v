module async_up_down_counter(input clk,m,ja,ka,jb,kb,jc,kc,output qa,qb,qc,qabar,qbbar,qcbar);
wire w1,w2,w3,w4,w5,w6,w7;
assign w1 = qa & ~m;
assign w2 = ~qa & m;
assign w3 = w1 | w2;
assign w4 = qb & ~m;
assign w5 = ~qb & m;
assign w6 = w4 | w5;
jk_ff jkf1(clk,ja,ka,qa,qabar);
jk_ff jkf2(w3,jb,kb,qb,qbbar);
jk_ff jkf3(w6,jc,kc,qc,qcbar);
endmodule 

module jk_ff(input clk,j,k,output reg q,output qbar);
  always @(negedge clk) begin
      case({j,k})
		2'b00:q <= q;
		2'b01:q <= 1'b0;
		2'b10:q <= 1'b1;
		2'b11:q <= ~q;
	  endcase
  end
initial begin
q = 1'b1;
end 
assign qbar = ~q;
endmodule

