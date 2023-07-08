module srff_using_jkff_tb;
reg s,r,clk;
wire q,qbar;
srff_using_jkff dut (s,r,clk,q,qbar);

initial begin
  clk=1'b1;
     forever #5 clk = ~clk;  
end 

initial begin
  s = 1'b0; r = 1'b0; #10; //Initial memory
  
  s = 1'b0; r = 1'b1; #10; //Reset State
  s = 1'b0; r = 1'b0; #10; //Memory State
  
  s = 1'b1; r = 1'b0; #10; //Set State
  s = 1'b0; r = 1'b0; #10; //Memory State
  
  s = 1'b1; r = 1'b1; #10; //Invalid State
  s = 1'b0; r = 1'b0; #10; //Memory State
end
endmodule

