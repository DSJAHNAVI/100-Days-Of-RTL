module sr_using_t_tb();
reg clk,rst,S,R;
wire Qt,Qt_bar;

sr_using_d SRF(clk,S,R,Qt,Qt_bar);

initial begin
  clk=1'b1;
     forever #5 clk = ~clk;  
end 

initial begin
rst = 1'b1;#5;
rst = 1'b0;
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
