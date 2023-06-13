module CSA_tb();
    reg [3:0] A;
    reg [3:0] B;
    reg cin;
    wire [3:0] S;
    wire cout;  
    integer i,j,k;

    carry_select_adder dut (.A(A), .B(B), .cin(cin), .S(S), .cout(cout));

    initial begin
        A = 0;B = 0;
        k = 0;
        //for carry in =0
        cin = 0;
      for(i=0;i<16;i=i+1) begin
            for(j=0;j<16;j=j+1) begin
                 A = i;
                 B = j;
                 #10;
                 if({cout,S} != (i+j)) 
                      k <= k + 1;
            end  
      end
        //for carry in =1
      cin = 1; 
      for(i=0;i<16;i=i+1) begin
            for(j=0;j<16;j=j+1) begin
                 A = i;
                 B = j;
                 #10;
                 if({cout,S} != (i+j+1)) 
                      k <= k + 1;
            end  
      end 
   end   
endmodule
