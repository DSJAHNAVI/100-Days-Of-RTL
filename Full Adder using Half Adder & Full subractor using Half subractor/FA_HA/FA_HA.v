module half_adder(input a,b, output sum,carry);
	assign sum = a^b;
	assign carry = a&b;
endmodule
module FA_HA(input a,b,cin, output sout,cout);
	wire s1,c1,c2;
half_adder ha1(a,b,s1,c1);
half_adder ha2(s1,cin,sout,c2);
	assign cout = c1|c2;
endmodule

