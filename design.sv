module DFF_ASRL(D,clk,reset,Q);
  input bit D;
  input bit clk;
  input bit reset;
  output bit Q;
  
  always @(posedge clk or posedge reset) 
begin
  if(reset==1'b1)
  Q <= 1'b0; 
 else 
  Q <= D; 
end 
endmodule
