module symb(input clk,input reset,input [8:0]valid,output reg set_symbol);


//current symbol calci X=1;O=0;
wire chance;
assign chance=valid[0]^valid[1]^valid[2]^valid[3]^valid[4]^valid[5]^valid[6]^valid[7]^valid[8];
/*if no of filled cells in box are even the xor of all will be 0 and if it odd then xor will be 1
if it is one then the chance to play will be for the second player*/
initial begin
    set_symbol=1'b1;
end

 always @(posedge clk) begin
     if(reset) begin
        set_symbol<=1'b1;
    end
    if(!reset) begin
        if(chance) begin
            set_symbol<=1'b0;
        end
        else begin
            set_symbol<=1'b1;
        end
    end
 end

// $display("mark:%b",set_symbol);
 endmodule