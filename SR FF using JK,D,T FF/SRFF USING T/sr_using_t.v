module sr_using_t(input clk,reset,s,r, output q,qbar);
   wire w1;
   assign w1 = (r&q)|(s&qbar);
   t_ff TF(clk,reset,w1,q);
   assign qbar = ~q;
endmodule
module t_ff(input clk,reset,t,output reg q);
  always@(posedge clk) begin
    if(reset)
      q <= 1'b0;
    else begin 
      if(t)
        q<= ~q;
      else
        q<= q;                     
    end
  end
endmodule
