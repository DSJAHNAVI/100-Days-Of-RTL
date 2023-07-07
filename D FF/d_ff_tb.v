module d_ff_tb();
reg d,clk;
wire q,qbar;
d_ff dut(d,clk,q,qbar);

initial begin
  clk=1'b1;
     forever #5 clk = ~clk;  
end 
initial begin 
	  d = 0; #10; 
	  d = 1; #10; 
	  d = 0; #10;
end
endmodule
