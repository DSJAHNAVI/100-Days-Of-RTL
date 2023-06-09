module fa_nand( input a, b,cin,output sum,carry);
  wire o1,o2,o3,o4,o5,o6,o7;
  assign o1 = ~(a&b);
  assign o2 = ~(o1&a);
  assign o3 = ~(o1&b);
  assign o4 = ~(o2&o3);
  assign o5 = ~(o4&cin);
  assign o6 = ~(o4&o5);
  assign o7 = ~(o5&cin);
  assign sum = ~(o6&o7);
  assign carry = ~(o1&o5);
endmodule
