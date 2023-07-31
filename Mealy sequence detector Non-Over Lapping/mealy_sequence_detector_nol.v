module mealy_sequence_detector_nol(input clk, rst, x, output z);
  parameter A = 2'b00;
  parameter B = 2'b01;
  parameter C = 2'b10;
  parameter D = 2'b11;
  
  reg [3:0] ps, ns;
  always @(posedge clk or negedge rst) begin
    if(!rst) begin 
      ps <= A;
    end
    else ps <= ns;
  end
  
  always @(ps or x) begin
    case(ps)
      A: begin
           if(x == 0) ns = A;
           else       ns = B;
         end
      B: begin
           if(x == 0) ns= C;
           else       ns= B;
         end
      C: begin
           if(x == 0) ns = D;
           else       ns = B;
         end
      D: begin
        if(x == 0)    ns = A; //This state only differs when compared with Mealy Overlaping Machine
           else       ns = A;
         end
      default: ns = A;
    endcase
  end
  assign z = (ps == D)? 1:0;
endmodule
