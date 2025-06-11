module TCell(input clk, input set, input reset,input  set_symbol, output reg valid, output reg symbol);
initial begin
    valid=1'b0;
   symbol=1'b0;
end
always @(posedge clk)
begin
    if(reset)
    begin
        valid<=1'b0;
        symbol=1'b0;
       
    end
    else if(set==1'b1&&valid==1'b0)begin
        valid<=1'b1;
        symbol=set_symbol;
    end
   
end
endmodule

