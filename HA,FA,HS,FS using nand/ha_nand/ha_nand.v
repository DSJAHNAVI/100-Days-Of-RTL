module ha_nand(input a,b, output sum,carry);
	wire o1,o2,o3;	
	assign o1  = ~(a&b);
	assign o2  = ~(o1&a);
	assign o3  = ~(o1&b);
	assign sum = ~(o2&o3);
	assign carry = ~(o1&o1);
endmodule 