module mod_counter(input clk,ja,ka,jb,kb,jc,kc,output qa,qb,qc);
wire clr;
assign clr = ~(qb&qc);
jk_ff JK1(clk,clr,ja,ka,qa);
jk_ff JK2(qa,clr,jb,kb,qb);
jk_ff JK3(qb,clr,jc,kc,qc);
endmodule

module jk_ff(input clk,clr,j,k,output reg q);
  always@(negedge clk) begin
    if(clr) begin
      case({j,k})
        2'b00: q <= q;
        2'b01: q <= 1'b0;
	    2'b10: q <= 1'b1;
        2'b11: q <= ~q;
      endcase
	end
	else 
		q<=0;
  end
initial begin
q <= 1;
end
endmodule
