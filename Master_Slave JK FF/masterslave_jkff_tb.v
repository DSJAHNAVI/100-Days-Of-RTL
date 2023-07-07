module masterslave_jkff_tb;
reg j,k,clk,reset;
wire q,qbar;
masterslave_jkff dut (clk,reset,j,k,q,qbar);
initial begin
  clk=1'b1;
     forever #5 clk = ~clk;  
end 
initial begin
  reset = 1'b1; #10;
  reset = 1'b0; #100;
end
initial begin
  j = 1'b0; k = 1'b1; #20; //Reset State
  j = 1'b0; k = 1'b0; #10; //Memory State
  j = 1'b1; k = 1'b0; #10; //Set State
  j = 1'b0; k = 1'b0; #10; //Memory State
  j = 1'b1; k = 1'b1; #10; //Toggle State
end
endmodule

