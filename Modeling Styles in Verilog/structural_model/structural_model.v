`timescale 1ns / 1ps

module structural_model(
    input a, b,
    output and_g,
    output or_g,
    output not_g,
    output nand_g,
    output nor_g,
    output xor_g,
    output xnor_g);
	 
    assign and_g = a&b;
    assign or_g = a|b;
    assign not_g = ~a;
    assign nand_g = ~(a&b);
    assign nor_g = ~(a|b);
    assign xor_g = a^b;
    assign xnor_g = ~(a^b);
	 
endmodule 