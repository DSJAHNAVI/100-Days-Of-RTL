module half_sub_tb();
  reg a,b;
  wire diff, borrow;
  half_sub dut(a,b,diff,borrow);

  initial begin
    a = 0; b = 0;
    #100;
    a = 0; b = 1;
    #100;
    a = 1; b = 0;
    #100;
    a = 1; b = 1;
    #100;
  end
  
endmodule 
