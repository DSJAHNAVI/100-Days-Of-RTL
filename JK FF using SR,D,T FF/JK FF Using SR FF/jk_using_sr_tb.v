module jk_using_sr_tb;
reg clk,reset,j,k;
wire q,qbar;
jk_using_sr dut(clk,reset,j,k,q,qbar);

initial begin
  clk=1'b0;
     forever #10 clk = ~clk;  
end 
initial begin 
reset = 0;#10;
reset = 1;#15;
reset = 0;#10;
end
initial begin
  j = 1'b0; k = 1'b0; #20; //Initial memory
  j = 1'b0; k = 1'b1; #20; //Reset State
  j = 1'b0; k = 1'b0; #20; //Memory State
  j = 1'b1; k = 1'b0; #20; //Set State
  j = 1'b0; k = 1'b0; #20; //Memory State
  j = 1'b1; k = 1'b1; #20; //Toggle State
end
endmodule
