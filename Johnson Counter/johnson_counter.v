module johnson_counter #(parameter N=4)
    (input clk, reset,
    output reg [N-1:0] Q);

always@(posedge clk)
    begin
        if(reset) 
            Q <= 0; 
        else 
            Q <= {~Q[0], Q[N-1:1]};  
    end 
endmodule
