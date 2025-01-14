module up_sign(            
    input               clk,     
    input               rstn,
    input               fault,
    input               rect_over,
    input       [11:0]  volt,
    input       [15:0]  state,
    input       [15:0]  fre_data,
    input       [19:0]  rect_data,
    input       [12:0]  t_data,  // hff-200us
    output              txd
    );

parameter   VER = 16'h4011;

parameter   HEAD_P1 = 8'hA1,  // Module voltage
            HEAD_P2 = 8'hA2,  // Module state
            HEAD_P6 = 8'hA6,  // Module version
            PARA_FAULT = 8'hA5;  // Fault parameter

reg [2:0] reg_flt;
always @(posedge clk)
    reg_flt <= {reg_flt[1:0], fault};

wire recv_flt = (!reg_flt[2] && reg_flt[1]) ? 1'b1 : 1'b0;
wire sent_en = (t_data == 13'd1);

reg [23:0] send_data;
reg send_start;
wire sending, send_done;

reg [2:0] sta;
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        sta <= 0;
        send_start <= 0;
        send_data <= 0;
    end else begin
        case (sta)
        0: begin
            send_start <= 0;
            if (recv_flt) begin
                send_data <= {PARA_FAULT, state};
                sta <= 1;
            end else if (sent_en) begin
                send_data <= {HEAD_P2, state};
                sta <= 4;
            end
        end
        1: begin
            send_start <= 1;
            sta <= 2;
        end
        2: begin
            if (send_done) begin
                send_start <= 0;
                sta <= 0;
            end
        end
        4: begin
            send_start <= 1;
            sta <= 5;
        end
        5: begin
            if (send_done) begin
                send_start <= 0;
                send_data <= {HEAD_P1, 4'h0, volt};
                sta <= 6;
            end
        end
        6: begin
            send_start <= 1;
            if (send_done) begin
                send_start <= 0;
                send_data <= {HEAD_P6, VER};
                sta <= 7;
            end
        end
        7: begin
            send_start <= 1;
            if (send_done) begin
                send_start <= 0;
                sta <= 0;
            end
        end
        endcase
    end
end

MSEND_BYTE MSEND_BYTE (
    .clk        (clk),
    .rstn       (rstn),
    .unit_en    (rstn),
    .send_start (send_start),
    .send_done  (send_done),
    .sending    (sending),
    .send_data  (send_data),
    .sent       (txd)
);

endmodule
