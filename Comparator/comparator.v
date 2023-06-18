module comparator(input [1:0] A,B, output A_less_B, A_equal_B, A_greater_B);  
   wire w1,w2,w3,w4,w5,w6,w7,w8;  
   // A = B output
assign w1 = (~(A[1]^B[1])); 
assign w2 = (~(A[0]^B[0]));
assign A_equal_B = (w1&w2); 
 // A less than B output   
 assign w3 = (~A[0])& (~A[1])& B[0];  
 assign w4 = (~A[1])& B[1];  
 assign w5 = (~A[0])& B[1]& B[0];  
 assign A_less_B = w3 | w4 | w5;  
 // A greater than B output   
 assign w6 = (~B[0])& (~B[1])& A[0];  
 assign w7 = (~B[1])& A[1];  
 assign w8 = (~B[0])& A[1]& A[0];  
 assign A_greater_B = w6 | w7 | w8;  
 endmodule   
 