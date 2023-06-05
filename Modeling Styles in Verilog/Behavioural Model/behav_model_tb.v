`timescale 1ns / 1ps
module behav_model_tb;
    reg a, b;
    wire and_g, 
         or_g,
         not_g,
         nand_g,
         nor_g,
         xor_g,
         xnor_g;
         
    behav_model dut(a, b, and_g,or_g,not_g,nand_g,nor_g,xor_g,xnor_g);
    initial begin
        #10 a= 1'b0; b= 1'b0;
        #10 a= 1'b0; b= 1'b1;
        #10 a= 1'b1; b= 1'b0;
        #10 a= 1'b1; b= 1'b1;
    end
endmodule