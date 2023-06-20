module demux1x2_tb();
	reg s,d;
	wire [2:1]y;
	integer i;
demux2x1 dut(s,d,y);
	initial begin
		for(i = 0;i<4;i = i+1) begin
			{s,d} = i;
				#10;
		end
	end
endmodule
	

	

