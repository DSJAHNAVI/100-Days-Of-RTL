module demux1x4(input [1:0]s,input d, output y0,y1,y2,y3);
 wire [2:1]w;
 
demux1x2 dut1(s[0],d,w[1],w[2]);
demux1x2 dut2(s[1],w[1],y0,y1);
demux1x2 dut3(s[1],w[1],y2,y3);
endmodule

module demux1x2(input s,input d, output reg y0, output reg y1);
always @(*) begin
	if(s==1'b0) begin
		y0 = d;
		y1 = 1'b0;
	end
	else begin
		y0 = 1'b0;
		y1 = d;
	end
end
endmodule
