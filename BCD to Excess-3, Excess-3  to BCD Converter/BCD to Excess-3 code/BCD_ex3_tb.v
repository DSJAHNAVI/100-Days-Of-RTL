module BCD_ex3_tb();
reg b1,b2,b3,b4;
wire x1,x2,x3,x4;
integer i;

BCD_ex3 dut(b1,b2,b3,b4,x1,x2,x3,x4);
initial begin
	for(i=0; i<16; i = i+1) begin
		{b1,b2,b3,b4} = i;		
		#10;
	end
end
endmodule

