/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */
`define IMP_ONE
`define IMP_TWO

`default_nettype none

module tt_um_jorgenkraghjakobsen_mixed_norcas (
    input  wire       VGND,
    input  wire       VDPWR,    // 1.8v power supply
    input  wire       VAPWR,    // 3.3v power supply
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    inout  wire [7:0] ua,       // Analog pins, only ua[5:0] can be used
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

`ifdef IMP_ONE 

pwm pwm_inst (
    .clock_in(clk),
    .reset(~rst_n),
    .duty_cycle(ui_in),
    .pwm_out(uo_out[7])
);

assign uo_out[6:0]  = 7'b0000000;
assign uio_out[7:0] = 8'b00000000;
assign uio_oe[7:0]  = 8'b11111111;

`endif






`ifdef IMP_TWO



endmodule
