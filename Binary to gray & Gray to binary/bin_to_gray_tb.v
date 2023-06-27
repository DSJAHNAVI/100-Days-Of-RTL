module bin_to_gray_tb();
reg B1, B2, B3, B4;
wire G1, G2, G3, G4;
integer i;
bin_to_gray dut(B1, B2, B3, B4, G1, G2, G3, G4);
initial begin
	for(i=0;i<16;i=i+1) begin
		{B1,B2,B3,B4} = i;
		#10;
	end
end
endmodule
		
	
