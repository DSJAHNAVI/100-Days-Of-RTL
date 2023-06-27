module bin_2scomp(input [7:0]a, output[8:0] x);
 wire [6:0]c;

 half_adder HA1((~a[0]),1'b1,x[0],c[0]);
 half_adder HA2((~a[1]),c[0],x[1],c[1]);
 half_adder HA3((~a[2]),c[1],x[2],c[2]);
 half_adder HA4((~a[3]),c[2],x[3],c[3]);
 half_adder HA5((~a[4]),c[3],x[4],c[4]);
 half_adder HA6((~a[5]),c[4],x[5],c[5]);
 half_adder HA7((~a[6]),c[5],x[6],c[6]);
 half_adder HA8((~a[7]),c[6],x[7],x[8]);

endmodule

module half_adder(A,B,S,C);
 input A,B;
 output S,C;
 
 assign S = A^B;
 assign C = A&B;
 
endmodule