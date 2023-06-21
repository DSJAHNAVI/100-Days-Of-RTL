module logic_gates_mux2x1_tb();
reg a,b;
wire y0,y1,y2,y3,y4,y5,y6;
integer i;

logic_gates_mux2x1 dut(a,b,y0,y1,y2,y3,y4,y5,y6);
	initial begin
		for (i = 0; i<4 ; i = i+1) 
		begin
			{a,b} = i;
				#10;
		end
	end
endmodule	
