module inst(input clk, input reset, output reg [1:0] game_state,output reg set_symbol);

// initial begin
//     // valid[8:0]=9'b000000000;
//     // symbol[8:0]=9'b000000000;
//     //game_state = 2'b00;
//     set_symbol<= 1'b1;
//    end
always @(posedge clk) begin
    if(reset) begin
       // game_state<=2'b0;
        set_symbol<=1'b1;
    end
end
   endmodule