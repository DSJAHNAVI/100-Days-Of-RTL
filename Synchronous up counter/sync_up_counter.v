module sync_up_counter(input clk,reset,ta,output qa,qb,qc);
wire tb,tc;
assign tb = qa;
assign tc = qa&qb; 
t_ff tf1(clk,reset,ta,qa);
t_ff tf2(clk,reset,tb,qb);
t_ff tf3(clk,reset,tc,qc);
endmodule 
module t_ff(input clk,reset,t,output q);
jk_ff dut(clk,reset,t,t,q);
endmodule
module jk_ff(input clk,reset,j,k, output reg q);    
   always @(negedge clk) begin
     if(!reset) begin
       case ({j,k})  
         2'b00 :  q <= q;  
         2'b01 :  q <= 1'b0;  
         2'b10 :  q <= 1'b1;  
         2'b11 :  q <= ~q;  
      endcase  
     end  
     else begin
       q = 1'b0;
     end
   end
endmodule  





