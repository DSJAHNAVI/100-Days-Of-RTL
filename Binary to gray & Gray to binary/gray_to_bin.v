module gray_to_bin (input G1,G2,G3,G4, output B1,B2,B3,B4);
assign B1 = G1;
assign B2 = G1 ^ G2;
assign B3 = G2 ^ G3;
assign B4 = G3 ^ G4;
endmodule
