module jk_ff_tb;
reg j,k,clk;
wire q,qbar;
jk_ff dut (j,k,clk,q,qbar);

initial begin
  clk=1'b0;
     forever #10 clk = ~clk;  
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
