module sr_ff_async_r_tb;
reg s,r,reset,clk;
wire q,qbar;
sr_ff_async_r dut (s,r,reset,clk,q,qbar);
initial begin
  clk=1'b1;
     forever #5 clk = ~clk;  
end 
initial begin
  reset = 1'b0; #70;
  reset = 1'b1; #10;
  reset = 1'b0; #25;
  reset = 1'b1; #10;
  reset = 1'b0;
  end
initial begin
  s = 1'b0; r = 1'b0; #20; //Initial memory
  s = 1'b0; r = 1'b1; #20; //Reset State
  s = 1'b0; r = 1'b0; #20; //Memory State
  s = 1'b1; r = 1'b0; #20; //Set State
  s = 1'b0; r = 1'b0; #20; //Memory State
  s = 1'b1; r = 1'b1; #20; //Forbidden State
  s = 1'b0; r = 1'b0; #20; //Memory State
end

endmodule
