module sr_using_t_tb();
reg clk,reset,s,r;
wire q,qbar;
sr_using_t SRF(clk,reset,s,r,q,qbar);
initial begin
  clk=1'b1;
     forever #5 clk = ~clk;  
end 

initial begin
reset = 1'b1;#5;
reset = 1'b0;
end

initial begin
  s = 1'b0; r = 1'b0; #10; //Initial memory
  
  s = 1'b0; r = 1'b1; #10; //Reset State
  s = 1'b0; r = 1'b0; #10; //Memory State
  
  s = 1'b1; r = 1'b0; #10; //Set State
  s = 1'b0; r = 1'b0; #10; //Memory State
  
  s = 1'b1; r = 1'b1; #10; //Forbidden State
  s = 1'b0; r = 1'b0; #10; //Memory State
end

endmodule
