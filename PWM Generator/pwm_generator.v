module pwm_generator(input clk, rst, input [2:0] pwm_in, output reg pwm_out);

reg [2:0] counter;
initial counter = 3'b0;
always@(posedge clk)
begin
  if (rst)
    counter = 3'b0;
  else begin
    if(pwm_in >= counter) pwm_out = 1'b1;
    else pwm_out = 1'b0;
    counter = counter +1;
    if(counter == 7) begin
      counter = 0;
    end
  end
end
endmodule