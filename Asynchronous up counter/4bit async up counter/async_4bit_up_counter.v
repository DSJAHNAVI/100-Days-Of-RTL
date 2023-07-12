module async_4bit_up_counter(input clk,ja,ka,jb,kb,jc,kc,jd,kd,output qa,qb,qc,qd);
jk_ff jkf1(clk,ja,ka,qa);
jk_ff jkf2(qa,jb,kb,qb);
jk_ff jkf3(qb,jc,kc,qc);
jk_ff jkf4(qc,jd,kd,qd);
endmodule 

module jk_ff(input clk,j,k,output reg q);
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
endmodule


