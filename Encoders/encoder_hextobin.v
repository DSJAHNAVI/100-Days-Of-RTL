module encoder_hextobin(input [15:0]i, output [3:0]y);
assign y[0] = (i[1] | i[3] | i[5] | i[7] | i[9] | i[11] | i[13] | i[15]);
assign y[1] = (i[2] | i[3] | i[6] | i[7] | i[10] | i[12] | i[14] | i[15]);
assign y[2] = (i[4] | i[5] | i[6] | i[7] | i[12] | i[13] | i[14] | i[15]);
assign y[3] = (i[8] | i[9] | i[10] | i[11] | i[12] | i[13] | i[14] | i[15]);
endmodule




