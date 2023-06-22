module encoder_dectoBCD(input [9:0]i, output [3:0]y);
assign y[0] = (i[1] | i[3] | i[5] | i[7] | i[9]);
assign y[1] = (i[2] | i[3] | i[6] | i[7]);
assign y[2] = (i[4] | i[5] | i[6] | i[7]);
assign y[3] = (i[8] | i[9]);
endmodule

//also known as decimal to binary encoder

