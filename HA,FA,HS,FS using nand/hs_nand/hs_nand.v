module hs_nand(input a,b, output diff,borrow);
	wire o1,o2,o3;	
	assign o1  = ~(a&b);
	assign o2  = ~(o1&a);
	assign o3  = ~(o1&b);
	assign diff = ~(o2&o3);
	assign borrow = ~(o3&o3);
endmodule 