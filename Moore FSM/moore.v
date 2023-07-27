module moore(input clk, rst, x, output z);
  parameter A = 4'h1;
  parameter B = 4'h2;
  parameter C = 4'h3;
  parameter D = 4'h4;
  
  reg [3:0] present_state, next_state;
  always @(posedge clk or negedge rst) begin
    if(!rst) begin 
      present_state <= A;
    end
    else present_state <= next_state;
  end
  
  always @(present_state or x) begin
    case(present_state)
      A: begin
           if(x == 0) next_state = A;
           else       next_state = B;
         end
      B: begin
           if(x == 0) next_state = D;
           else       next_state = B;
         end
      C: begin
           if(x == 0) next_state = B;
           else       next_state = A;
         end
      D: begin
           if(x == 0) next_state = C;
           else       next_state = D;
         end
      default: next_state = A;
    endcase
  end
  assign z = (present_state == D)? 1:0;
endmodule
