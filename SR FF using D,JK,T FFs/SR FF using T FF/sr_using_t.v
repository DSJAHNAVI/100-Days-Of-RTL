module sr_using_t(clk,rst,S,R, Q,Q_bar);
   input clk,rst,S,R;
   output Q,Q_bar;
   wire w1;
   
   assign w1 = (R&Q) | (S&Q_bar);
   t_ff TF(clk, rst,w1, Q,Q_bar);
   
endmodule

module t_ff(
    input clk,rst,T,
    output reg Q, output Q_bar
    );
    always@(posedge clk)
          begin
            if(rst)
               Q <= 1'b0;
            else
                begin
                   if(T)
                    Q<= ~Q;
                   else
                    Q<= Q;                     
                end
          end
		  assign Q_bar = ~Q;
endmodule
