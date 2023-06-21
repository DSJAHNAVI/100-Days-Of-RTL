module logic_gates_mux2x1(input a,b, output y0,y1,y2,y3,y4,y5,y6);
mux2x1 and1(1'b0,a,b,y0);
mux2x1 or1(a,1'b1,b,y1);
mux2x1 not1(1'b1,1'b0,b,y2);
mux2x1 nand1(1'b1,~a,b,y3);
mux2x1 nor1(~a,1'b0,b,y4);
mux2x1 exor1(a,~a,b,y5);
mux2x1 exnor1(~a,a,b,y6);
endmodule
module mux2x1(input i0,i1,s0, output reg out ); 
	always @(*) begin
		case(s0)
		0 : out = i0;
		1 : out = i1;
		endcase
	end
endmodule

