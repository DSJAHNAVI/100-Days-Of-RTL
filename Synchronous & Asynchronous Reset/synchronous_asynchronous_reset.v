module synchronous_asynchronous_reset(input clk,rst,in,output reg async_out,sync_out);
   
//SYNCHRONOUS RESET
    always@(posedge clk)  
    begin
        if(rst) sync_out<= 1'b0;
        else sync_out <= in;
    end

//ASYNCHRONOUS RESET
    always@(posedge clk, posedge rst)
    begin
        if(rst) async_out<= 1'b0;
        else async_out <= in;
    end  
    
endmodule

