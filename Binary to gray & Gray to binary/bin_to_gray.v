module bin_to_gray(input B1,B2,B3,B4, output G1,G2,G3,G4);
assign G1 = B1;
assign G2 = B1 ^ B2;
assign G3 = B2 ^ B3;
assign G4 = B3 ^ B4;
endmodule
