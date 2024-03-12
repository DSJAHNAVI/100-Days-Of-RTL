module mux2x1(input i0,i1,s0, output out);
	assign out = (~s0&i0)|(s0&i1);
endmodule

/*OR we can write it as
module mux2x1(input i0,i1,s0, output out ); 
	assign out = s0?i1:i0;  
endmodule*/

/*OR we can write it as
module mux2x1(input i0,i1,s0, output reg out ); 
	always @(*) begin
		case(s0)
		0 : out = i0;
		1 : out = i1;
	end
endmodule*/

/*OR we can write it as 
module mux2x1(input i0,i1,s0, output reg out );
	always @(*) begin
	if(s0 = 0)
		out = i0;
	else
		out = i1;
	end
endmodule*/
		
