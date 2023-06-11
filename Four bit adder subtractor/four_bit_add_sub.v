module four_bit_add_sub(input [3:0] a,input [3:0] b, input C, output [3:0]z, output [3:0]cout);

wire x0,x1,x2,x3;
assign x0 = C^b[0];
assign x1 = C^b[1];
assign x2 = C^b[2];
assign x3 = C^b[3];

full_adder inst1(a[0],x0,C,z[0],cout[0]);
full_adder inst2(a[1],x1,cout[0],z[1],cout[1]);
full_adder inst3(a[2],x2,cout[1],z[2],cout[2]);
full_adder inst4(a[3],x3,cout[2],z[3],cout[3]);
endmodule


module full_adder(input a,b,cin, output sum,carry);
  assign sum = a^b^cin;
  assign carry = a&b|b&cin|cin&a;
endmodule