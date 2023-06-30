module vedic_mul_bit4(A,B,P);
    input [3:0] A,B;
    output [7:0] P;
	wire [15:0] S,X;
	wire [2:0]C;
	
	vedic_mul_bit2 VM1(A[1:0], B[1:0], S[3:0]);
	vedic_mul_bit2 VM2(A[1:0], B[3:2], S[7:4]);
	vedic_mul_bit2 VM3(A[3:2], B[1:0], S[11:8]);
	vedic_mul_bit2 VM4(A[3:2], B[3:2], S[15:12]);
	
	assign P[1:0] = S[1:0];
	assign X[7:4] = {2'b0, S[3:2]};
	parallel_adder_4bit RCA1(S[7:4],S[11:8], 1'b0, X[3:0],C[0]);
	parallel_adder_4bit RCA2(X[7:4],X[3:0], 1'b0, X[11:8],C[1]);
	assign X[15:12] = {C[0],1'b0,X[11:10]};
	assign P[3:2] = X[9:8];
	parallel_adder_4bit RCA3(X[15:12],S[15:12], 1'b0, P[7:4],C[2]);
endmodule
