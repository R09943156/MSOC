// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module readmem (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_strm_V_dout,
        in_strm_V_empty_n,
        in_strm_V_read,
        out_strm_V_din,
        out_strm_V_full_n,
        out_strm_V_write,
        tb_address0,
        tb_ce0,
        tb_q0
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] in_strm_V_dout;
input   in_strm_V_empty_n;
output   in_strm_V_read;
output  [31:0] out_strm_V_din;
input   out_strm_V_full_n;
output   out_strm_V_write;
output  [3:0] tb_address0;
output   tb_ce0;
input  [31:0] tb_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_strm_V_read;
reg out_strm_V_write;
reg[3:0] tb_address0;
reg tb_ce0;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    in_strm_V_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln20_fu_181_p2;
reg    out_strm_V_blk_n;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln40_fu_204_p2;
wire   [3:0] i_1_fu_187_p2;
reg   [3:0] i_1_reg_249;
reg    ap_block_state2;
reg  signed [31:0] tmp_reg_254;
wire   [3:0] i_fu_210_p2;
reg   [3:0] i_reg_270;
wire   [31:0] req_strm_V_dout;
wire    req_strm_V_empty_n;
reg    req_strm_V_read;
reg    ap_block_state4;
wire   [0:0] icmp_ln43_fu_216_p2;
reg   [0:0] icmp_ln43_reg_275;
wire   [31:0] sum_1_fu_233_p3;
wire    ap_CS_fsm_state5;
reg   [3:0] i_0_i_reg_146;
wire    ap_CS_fsm_state3;
reg   [31:0] req_strm_V_din;
wire    req_strm_V_full_n;
reg    req_strm_V_write;
wire   [0:0] icmp_ln24_fu_198_p2;
reg    ap_block_state3;
reg   [31:0] tmp_1_reg_157;
reg   [3:0] i_0_i2_reg_170;
wire  signed [63:0] sext_ln23_fu_193_p1;
wire  signed [63:0] sext_ln45_fu_222_p1;
wire  signed [31:0] sext_ln23_fu_193_p0;
wire  signed [31:0] icmp_ln43_fu_216_p0;
wire  signed [31:0] sext_ln45_fu_222_p0;
wire   [31:0] sum_fu_227_p2;
reg   [4:0] ap_NS_fsm;
reg    ap_condition_121;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
end

fifo_w32_d4_A req_strm_V_fifo_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(req_strm_V_din),
    .if_full_n(req_strm_V_full_n),
    .if_write(req_strm_V_write),
    .if_dout(req_strm_V_dout),
    .if_empty_n(req_strm_V_empty_n),
    .if_read(req_strm_V_read)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_0_i2_reg_170 <= i_reg_270;
    end else if ((~((icmp_ln20_fu_181_p2 == 1'd0) & (in_strm_V_empty_n == 1'b0)) & (icmp_ln20_fu_181_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_0_i2_reg_170 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((icmp_ln24_fu_198_p2 == 1'd1) & (req_strm_V_full_n == 1'b0)) | ((icmp_ln24_fu_198_p2 == 1'd0) & (req_strm_V_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_i_reg_146 <= i_1_reg_249;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_i_reg_146 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_1_reg_157 <= sum_1_fu_233_p3;
    end else if ((~((icmp_ln20_fu_181_p2 == 1'd0) & (in_strm_V_empty_n == 1'b0)) & (icmp_ln20_fu_181_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_1_reg_157 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln20_fu_181_p2 == 1'd0) & (in_strm_V_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        i_1_reg_249 <= i_1_fu_187_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((icmp_ln40_fu_204_p2 == 1'd0) & (req_strm_V_empty_n == 1'b0)) | ((icmp_ln40_fu_204_p2 == 1'd1) & (out_strm_V_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state4))) begin
        i_reg_270 <= i_fu_210_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((icmp_ln40_fu_204_p2 == 1'd0) & (req_strm_V_empty_n == 1'b0)) | ((icmp_ln40_fu_204_p2 == 1'd1) & (out_strm_V_full_n == 1'b0))) & (icmp_ln40_fu_204_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        icmp_ln43_reg_275 <= icmp_ln43_fu_216_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln20_fu_181_p2 == 1'd0) & (in_strm_V_empty_n == 1'b0)) & (icmp_ln20_fu_181_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_reg_254 <= in_strm_V_dout;
    end
end

always @ (*) begin
    if (((~(((icmp_ln40_fu_204_p2 == 1'd0) & (req_strm_V_empty_n == 1'b0)) | ((icmp_ln40_fu_204_p2 == 1'd1) & (out_strm_V_full_n == 1'b0))) & (icmp_ln40_fu_204_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~(((icmp_ln40_fu_204_p2 == 1'd0) & (req_strm_V_empty_n == 1'b0)) | ((icmp_ln40_fu_204_p2 == 1'd1) & (out_strm_V_full_n == 1'b0))) & (icmp_ln40_fu_204_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln20_fu_181_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        in_strm_V_blk_n = in_strm_V_empty_n;
    end else begin
        in_strm_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((icmp_ln20_fu_181_p2 == 1'd0) & (in_strm_V_empty_n == 1'b0)) & (icmp_ln20_fu_181_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        in_strm_V_read = 1'b1;
    end else begin
        in_strm_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln40_fu_204_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        out_strm_V_blk_n = out_strm_V_full_n;
    end else begin
        out_strm_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((icmp_ln40_fu_204_p2 == 1'd0) & (req_strm_V_empty_n == 1'b0)) | ((icmp_ln40_fu_204_p2 == 1'd1) & (out_strm_V_full_n == 1'b0))) & (icmp_ln40_fu_204_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        out_strm_V_write = 1'b1;
    end else begin
        out_strm_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_121)) begin
        if ((icmp_ln24_fu_198_p2 == 1'd1)) begin
            req_strm_V_din = tmp_reg_254;
        end else if ((icmp_ln24_fu_198_p2 == 1'd0)) begin
            req_strm_V_din = 32'd0;
        end else begin
            req_strm_V_din = 'bx;
        end
    end else begin
        req_strm_V_din = 'bx;
    end
end

always @ (*) begin
    if ((~(((icmp_ln40_fu_204_p2 == 1'd0) & (req_strm_V_empty_n == 1'b0)) | ((icmp_ln40_fu_204_p2 == 1'd1) & (out_strm_V_full_n == 1'b0))) & (icmp_ln40_fu_204_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        req_strm_V_read = 1'b1;
    end else begin
        req_strm_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((~(((icmp_ln24_fu_198_p2 == 1'd1) & (req_strm_V_full_n == 1'b0)) | ((icmp_ln24_fu_198_p2 == 1'd0) & (req_strm_V_full_n == 1'b0))) & (icmp_ln24_fu_198_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) | (~(((icmp_ln24_fu_198_p2 == 1'd1) & (req_strm_V_full_n == 1'b0)) | ((icmp_ln24_fu_198_p2 == 1'd0) & (req_strm_V_full_n == 1'b0))) & (icmp_ln24_fu_198_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
        req_strm_V_write = 1'b1;
    end else begin
        req_strm_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tb_address0 = sext_ln45_fu_222_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        tb_address0 = sext_ln23_fu_193_p1;
    end else begin
        tb_address0 = 'bx;
    end
end

always @ (*) begin
    if (((~(((icmp_ln40_fu_204_p2 == 1'd0) & (req_strm_V_empty_n == 1'b0)) | ((icmp_ln40_fu_204_p2 == 1'd1) & (out_strm_V_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state4)) | (~((icmp_ln20_fu_181_p2 == 1'd0) & (in_strm_V_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2)))) begin
        tb_ce0 = 1'b1;
    end else begin
        tb_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((icmp_ln20_fu_181_p2 == 1'd0) & (in_strm_V_empty_n == 1'b0)) & (icmp_ln20_fu_181_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else if ((~((icmp_ln20_fu_181_p2 == 1'd0) & (in_strm_V_empty_n == 1'b0)) & (icmp_ln20_fu_181_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if ((~(((icmp_ln24_fu_198_p2 == 1'd1) & (req_strm_V_full_n == 1'b0)) | ((icmp_ln24_fu_198_p2 == 1'd0) & (req_strm_V_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if ((~(((icmp_ln40_fu_204_p2 == 1'd0) & (req_strm_V_empty_n == 1'b0)) | ((icmp_ln40_fu_204_p2 == 1'd1) & (out_strm_V_full_n == 1'b0))) & (icmp_ln40_fu_204_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~(((icmp_ln40_fu_204_p2 == 1'd0) & (req_strm_V_empty_n == 1'b0)) | ((icmp_ln40_fu_204_p2 == 1'd1) & (out_strm_V_full_n == 1'b0))) & (icmp_ln40_fu_204_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

always @ (*) begin
    ap_block_state2 = ((icmp_ln20_fu_181_p2 == 1'd0) & (in_strm_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state3 = (((icmp_ln24_fu_198_p2 == 1'd1) & (req_strm_V_full_n == 1'b0)) | ((icmp_ln24_fu_198_p2 == 1'd0) & (req_strm_V_full_n == 1'b0)));
end

always @ (*) begin
    ap_block_state4 = (((icmp_ln40_fu_204_p2 == 1'd0) & (req_strm_V_empty_n == 1'b0)) | ((icmp_ln40_fu_204_p2 == 1'd1) & (out_strm_V_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_121 = (~(((icmp_ln24_fu_198_p2 == 1'd1) & (req_strm_V_full_n == 1'b0)) | ((icmp_ln24_fu_198_p2 == 1'd0) & (req_strm_V_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state3));
end

assign i_1_fu_187_p2 = (i_0_i_reg_146 + 4'd1);

assign i_fu_210_p2 = (i_0_i2_reg_170 + 4'd1);

assign icmp_ln20_fu_181_p2 = ((i_0_i_reg_146 == 4'd10) ? 1'b1 : 1'b0);

assign icmp_ln24_fu_198_p2 = (($signed(tb_q0) < $signed(32'd10)) ? 1'b1 : 1'b0);

assign icmp_ln40_fu_204_p2 = ((i_0_i2_reg_170 == 4'd10) ? 1'b1 : 1'b0);

assign icmp_ln43_fu_216_p0 = req_strm_V_dout;

assign icmp_ln43_fu_216_p2 = ((icmp_ln43_fu_216_p0 == 32'd0) ? 1'b1 : 1'b0);

assign out_strm_V_din = tmp_1_reg_157;

assign sext_ln23_fu_193_p0 = in_strm_V_dout;

assign sext_ln23_fu_193_p1 = sext_ln23_fu_193_p0;

assign sext_ln45_fu_222_p0 = req_strm_V_dout;

assign sext_ln45_fu_222_p1 = sext_ln45_fu_222_p0;

assign sum_1_fu_233_p3 = ((icmp_ln43_reg_275[0:0] === 1'b1) ? tmp_1_reg_157 : sum_fu_227_p2);

assign sum_fu_227_p2 = (tb_q0 + tmp_1_reg_157);

endmodule //readmem
