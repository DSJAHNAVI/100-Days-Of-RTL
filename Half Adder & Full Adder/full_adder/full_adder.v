`timescale 1ns/1ps
module full_adder(input a, b, cin, output sum, carry);
    
    assign sum = a ^ b ^ cin;
    assign carry = (a&b) | (b&cin) | (cin&a) ;
	 
endmodule 