module resett(input reset,input clk,output reg [1:0] game_state,output reg set_symbol );

 always@(posedge clk or posedge reset) begin
        if(reset) begin
           
            game_state=2'b00;
            set_symbol=1'b1;
        end
     end
 endmodule
