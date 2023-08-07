module traffic__light_controller_tb();
	reg [1:0]sensor;
	reg clk, rst_n; 
	wire [2:0]light_highway, light_farm;
   
	traffic__light_controller dut( sensor, clk, rst_n, light_highway, light_farm);

	initial clk = 1;   
    always #2 clk = ~clk;
  
    initial begin
      rst_n = 0;#1;
      rst_n = 1;
    end
    
    initial begin
	  sensor = 00;
	  #4 sensor = 10;
	  #4 sensor = 10;
	  #4 sensor = 01;
	  #4 sensor = 01;
	  #4 sensor = 01;
	  #4 sensor = 01;
	  #4 sensor = 11;
	  #4 sensor = 11;
	  #4 sensor = 11;
	  #4 sensor = 00;
	  #4 sensor = 01;
	  #4 sensor = 01;
	  #4 sensor = 01;
	  #4 sensor = 00;
	  #4 sensor = 00;
	  #4 sensor = 10;
	  #4 sensor = 10;
    end
endmodule

