module pwm_generator_tb();

reg clk,rst;
reg [2:0] pwm_in;
wire pwm_out;

pwm_generator DUT(clk, rst, pwm_in, pwm_out);

initial begin
clk = 1;
forever #5 clk = ~clk;
end
initial begin
rst = 1'b0;
pwm_in = 3'b0;
end

always @(posedge clk) begin
  if(pwm_in >= 8) pwm_in = pwm_in - 8;
  else pwm_in = pwm_in + 3;
end

initial
    #160 $finish;
endmodule
  