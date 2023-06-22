module encoder_dectoBCD_tb();
reg [9:0]in;
wire [3:0]out;

encoder_dectoBCD dut(in,out);
initial begin
	in=10'b0000000001;#10; 
	in=10'b0000000010;#10;
	in=10'b0000000100;#10; 
	in=10'b0000001000;#10; 
	in=10'b0000010000;#10; 
	in=10'b0000100000;#10; 
	in=10'b0001000000;#10; 
	in=10'b0010000000;#10;
	in=10'b0100000000;#10; 
	in=10'b1000000000;#10; 	
end

endmodule
	
	
