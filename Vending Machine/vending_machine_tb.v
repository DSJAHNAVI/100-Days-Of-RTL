module vending_machine_tb();
  reg clk, rst;
  reg [1:0] coin;
  wire out, change5,change10;
  
  vending_machine dut(coin,clk,rst, out,change5,change10);
  initial clk = 1;   
  always #2 clk = ~clk;
  
  initial begin
  rst = 0;#1;
  rst = 1;
  end
    
  initial begin
	 coin = 00;
	 #4 coin = 2'd5;
	 #4 coin = 2'd5;
	 #4 coin = 2'd5;
	 #4 coin = 00;
	 #4 coin = 2'd5;
	 #4 coin = 2'd10;
	 #4 coin = 00;
	 #4 coin = 2'd10;
	 #4 coin = 2'd5;
	 #4 coin = 00;
	 #4 coin = 2'd5;
	 #4 coin = 00;
	 #4 coin = 2'd10;
	 #4 coin = 00;
	 #4 coin = 2'd10;
	 #4 coin = 2'd10;
	 #4 coin = 00;
	 #4 coin = 00;
  end
endmodule

