module fa_using_ha(a,b,c_in,sum,c_out);
    input a,b,c_in;
    output sum,c_out;
    wire w1,w2,w3;

    half_adder HA1(.a(a),.b(b),.sum(w1),.carry(w2));
    half_adder HA2(.a(w1),.b(c_in),.sum(sum),.carry(w3));
    or OR1(c_out, w2,w3);
endmodule

module half_adder(a,b,sum,carry);
  input  a,b;
  output sum,carry;

  assign sum = a ^ b;
  assign carry = a & b;
endmodule