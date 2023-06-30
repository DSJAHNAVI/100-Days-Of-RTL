module parallel_adder_4bit(A,B, C_in,S,Cout);
input [3:0]A;
input [3:0]B;
input C_in;
output [3:0]S;
output Cout;
wire c1,c2,c3;

fa_using_ha FA1(.a(A[0]),.b(B[0]),.c_in(C_in),.sum(S[0]),.c_out(c1));
fa_using_ha FA2(.a(A[1]),.b(B[1]),.c_in(c1),.sum(S[1]),.c_out(c2));
fa_using_ha FA3(.a(A[2]),.b(B[2]),.c_in(c2),.sum(S[2]),.c_out(c3));
fa_using_ha FA4(.a(A[3]),.b(B[3]),.c_in(c3),.sum(S[3]),.c_out(Cout));

endmodule
