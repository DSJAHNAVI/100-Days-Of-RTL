module mealy_sequence_detector_ol_tb;
  reg clk, rst_n, x;
  wire z;
  
  mealy_sequence_detector_ol dut(clk, rst_n, x, z);
  initial clk = 0;   
  always #2 clk = ~clk;
    
  initial begin
    $monitor("%0t: x = %0b, z = %0b", $time, x, z);
    x = 0;
    #1 rst_n = 0;
    #2 rst_n = 1;
    
    #3 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
  end
  
  initial begin
    // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
endmodule