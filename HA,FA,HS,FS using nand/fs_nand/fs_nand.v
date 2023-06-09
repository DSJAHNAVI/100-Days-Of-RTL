module fs_nand( input a, b,bin,output diff,borrow);
  wire o1,o2,o3,o4,o5,o6,o7;
  assign o1 = ~(a&b);
  assign o2 = ~(o1&a);
  assign o3 = ~(o1&b);
  assign o4 = ~(o2&o3);
  assign o5 = ~(o4&bin);
  assign o6 = ~(o4&o5);
  assign o7 = ~(o5&bin);
  assign diff = ~(o6&o7);
  assign borrow = ~(o3&o7);
endmodule

