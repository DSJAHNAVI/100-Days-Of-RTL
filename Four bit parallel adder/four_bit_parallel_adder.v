module four_bit_parallel_adder(input[3:0]a,b, input cin, output[3:0]cout, output[3:0]sum);
    full_adder inst1(a[0],b[0],cin,cout[0],sum[0]);
    full_adder inst2(a[1],b[1],cout[0],cout[1],sum[1]);
    full_adder inst3(a[2],b[2],cout[1],cout[2],sum[2]);
    full_adder inst4(a[3],b[3],cout[2],cout[3],sum[3]);        
endmodule
                     
module full_adder( input a, b, cin,output cout, sum );
	assign sum = a^b^cin;
    assign cout = a&b | b&cin | cin&a;
endmodule



