module CSKIPA(A,B,Cin,S,Cout);
  input [3:0] A,B;
  input Cin;
  output [3:0] S;
  output Cout;
  wire [3:0] C; 
  reg [3:0] Pr;
  wire P;
  integer i;

  always@(*) begin
    for(i=0;i<4;i=i+1)
     begin
      Pr[i] = A[i]^B[i];
     end
  end
  
  assign P = Pr[0]^Pr[1]^Pr[2]^Pr[3];
  mux MUX2(P,C[3],Cin,Cout);
  
  fa FA0(A[0],B[0],Cin,S[0],C[0]);
  fa FA1(A[1],B[1],C[0],S[1],C[1]);
  fa FA2(A[2],B[2],C[1],S[2],C[2]);
  fa FA3(A[3],B[3],C[2],S[3],C[3]);
endmodule

module fa(input a,b,cin, output sum,carry);
  assign sum = a^b^cin;
  assign carry = (a&b)|(b&cin)|(cin&a);
endmodule

module mux(input s,i0,i1, output reg y);
  always@(*)
    begin
    if(s == 0)
      y = i0;
    else
      y = i1;
    end
endmodule


