module half_sub(input a,b, output diff,borrow);
	assign diff = a^b;
	assign borrow = ~a&b;
endmodule
module FS_HS(input a,b,bin, output dout,bout);
	wire d1,b1,b2;
half_sub hs1(a,b,d1,b1);
half_sub hs2(d1,bin,dout,b2);
	assign bout = b1|b2;
endmodule


