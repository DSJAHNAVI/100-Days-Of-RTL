module sr_using_jk_tb();
reg clk,S,R;
wire Q,Q_bar;

sr_using_jk SRF(clk,S,R,Q,Q_bar);

initial begin
  clk=1'b1;
     forever #5 clk = ~clk;  
end 

initial begin
  S = 1'b0; R = 1'b0; #10; //Initial memory
  
  S = 1'b0; R = 1'b1; #10; //Reset State
  S = 1'b0; R = 1'b0; #10; //Memory State
  
  S = 1'b1; R = 1'b0; #10; //Set State
  S = 1'b0; R = 1'b0; #10; //Memory State
  
  S = 1'b1; R = 1'b1; #10; //Forbidden State
  S = 1'b0; R = 1'b0; #10; //Memory State
end

endmodule
