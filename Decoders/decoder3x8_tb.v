module decoder3x8_tb();
  reg x,y,z;
  wire [7:0]d;
  integer i;

decoder3x8 dut(x,y,z,d);
  initial begin 
	for(i=0;i<8;i=i+1) 
	  begin
		{x,y,z} = i;
		#10;
	  end
  end
endmodule
	
