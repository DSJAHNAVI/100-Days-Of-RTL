module T_ff(input clk,reset,t,output q,q_bar);
jk_ff dut(clk,reset,t,t,q,q_bar);
endmodule
module jk_ff(input clk,reset,j,k, output reg q,output q_bar);    
   always @(posedge clk) begin
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
assign q_bar = ~q;
endmodule  


