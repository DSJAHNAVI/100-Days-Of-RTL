module demux1x2(input s,input d, output reg [2:1]y);
always @(*) begin
	if(s==1'b0) begin
		y[1] = d;
		y[2] = 1'b0;
	end
	else begin
		y[1] = 1'b0;
		y[2] = d;
	end
end
endmodule

/*module demux1x2(input s,input d, output [2:1]y);
	assign y[1] = (~s)&&(d);
	assign y[2] = (s)&&(d);
endmodule*/
