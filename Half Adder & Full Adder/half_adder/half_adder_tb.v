`timescale 1ns / 1ps

module half_adder_tb;
  reg a, b;
  wire sum, carry;

  half_adder dut(a, b, sum, carry);

  initial begin
    a = 0; b = 0;
    #100;
    a = 0; b = 1;
    #100;
    a = 1; b = 0;
    #100;
    a = 1; b = 1;
  end
  
endmodule



