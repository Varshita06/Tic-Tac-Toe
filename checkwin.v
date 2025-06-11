module win(input [8:0]valid,input reset,input [8:0]symbol, input [1:0] prev_game_state,output reg [1:0]game_state);

initial begin
    game_state=2'b00;
end
integer i;integer k;integer j;
 always @(*) begin 
  if(!reset) begin
    if(prev_game_state == 2'b00)begin 
        // rows
        for(i=0;i<9;i=i+3) begin
           if(valid[i]&&valid[i+1]&&valid[i+2]&&symbol[i]==symbol[i+1]&&symbol[i+1]==symbol[i+2]) begin
                if(symbol[i]==1) begin
                    game_state=2'b01;
                    
                end
                else begin
                    game_state=2'b10;
                end
           end
        end
        for(j=0;j<3;j=j+1) begin //coloumns
            if(valid[j]&&valid[j+3]&&valid[j+6]&&symbol[j]==symbol[j+3]&&symbol[j+3]==symbol[j+6]) begin
                if(symbol[j]==1) begin
                    game_state=2'b01;
                end
                else begin
                    game_state=2'b10;
                end
           end
        end
         for(k=2;k<5;k=k+2) begin //diagonals both primary &secondary
            if(valid[4-k]&&valid[4]&&valid[4+k]&&symbol[4-k]==symbol[4]&&symbol[4]==symbol[k+4]) begin
             if(symbol[k]==1) begin
                    game_state=2'b01;
                end
                else begin
                    game_state=2'b10;
                end
           end
        end

        if(valid==9'b111111111 &&prev_game_state==2'b00) begin
            game_state=2'b11;
        end
   end
  end
   else begin
    game_state<=2'b00;
    ///since if any one player wins or it is a draw then game returns to the start
   end
 end   

endmodule