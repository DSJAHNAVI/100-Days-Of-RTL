module d_using_t_tb();
reg clk,reset,d;
wire q,qbar;
d_using_t dut(clk,reset,d,q,qbar);

initial begin
reset = 0;#10;
reset = 1;#10;
reset = 0;#10;
end

initial begin
  clk=1'b1;
     forever #5 clk = ~clk;  
end 
initial begin 
	  d = 0; #10; 
	  d = 1; #10; 
	  d = 0; #10;
	  d = 1; #10; 
	  d = 0; #10;
	  d = 1; #10; 
	  d = 0; #10;
end
endmodule

