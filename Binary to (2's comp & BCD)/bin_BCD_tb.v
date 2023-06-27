module bin_BCD_tb;
reg [7:0]in;
wire [3:0] b0, b1, b2;
wire [11:0] BCD;

bin_BCD dut(in, b0, b1, b2, BCD);
	always begin
		in=$random;
			#10;
	end
endmodule
