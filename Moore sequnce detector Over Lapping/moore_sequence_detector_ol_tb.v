module moore_sequence_detector_ol_tb;
  reg clk, rst, x;
  wire z;
  
  moore_sequence_detector_ol dut(clk, rst, x, z);
  initial clk = 0;   
  always #2 clk = ~clk;
    
  initial begin
    $monitor("%0t: x = %0b, z = %0b", $time, x, z);
    x = 0;
    rst = 0;#1;
    rst = 1;#2;
    #4 x = 1;
    #4 x = 0;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
	#4 x = 0;
	#4 x = 1;
    #4 x = 0;
    #4 x = 0;
	#4 x = 1;
	#4 x = 1;
	#4 x = 1;
    #4 x = 0;
	#4 x = 1;
	#4 x = 1;
    #10;
  end

endmodule
