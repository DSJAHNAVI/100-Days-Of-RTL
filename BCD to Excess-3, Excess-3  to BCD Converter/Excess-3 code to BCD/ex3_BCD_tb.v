module ex3_BCD_tb();
reg x1,x2,x3,x4;
wire b1,b2,b3,b4;
integer i;

ex3_BCD dut(x1,x2,x3,x4,b1,b2,b3,b4);
initial begin
	for(i=0; i<16; i = i+1) begin
		{x1,x2,x3,x4} = i;		
		#10;
	end
end
endmodule


