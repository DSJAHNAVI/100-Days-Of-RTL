module d_using_t(input clk,reset,d,output q,qbar);
wire w1;
assign w1 = (d^q);
t_ff TFF(clk,reset,w1,q,qbar);
endmodule

module t_ff(input clk,reset,t,output reg q, output qbar);
always@(posedge clk)begin
  if(reset)
    q <= 1'b0;
  else begin
    if(t)
      q<= ~q;
    else
      q<= q;                     
  end
end
assign qbar = ~q;
endmodule