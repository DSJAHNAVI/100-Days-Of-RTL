module gray_to_bin_tb();
reg G1, G2, G3, G4;
wire B1, B2, B3, B4;
integer i;
gray_to_bin dut(G1, G2, G3, G4, B1, B2, B3, B4);
initial begin
	for(i=0;i<16;i=i+1) begin
		{G1, G2, G3, G4} = i;
		#10;
	end
end
endmodule
		
	

