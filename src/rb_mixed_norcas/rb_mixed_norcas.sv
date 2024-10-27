// Register bank 
// Auto generated code from mixed_norcas version 1 
// Written by Jørgen Kragh Jakobsen, All right reserved 
//-----------------------------------------------------------------------------
//`include "rb_mixed_norcas_struct.svh"
import mixed_norcas_pkg::*;

module rb_mixed_norcas
#(parameter ADR_BITS = 8
 )
(
	input  logic				clk,
	input  logic				resetb,
	input  logic [ADR_BITS-1:0]		address,
	input  logic [7:0]			data_write_in,
	output logic [7:0] 			data_read_out,
	input  logic 				reg_en,
	input  logic 				write_en,
//---------------------------------------------
	inout rb_sys_cfg_wire_t              sys_cfg 
);
//------------------------------------------------Write to registers and reset-
// Create registers

    // --- Section: sys_cfg  Offset: 0x0000  Size: 16
reg        reg__sys_cfg__enable_stuf;                            //Enable stuf
reg        reg__sys_cfg__enable_other;                           //Enable other stuf
reg [7:0]  reg__sys_cfg__pwm_duty;                               //Counter value for pwm
reg [5:0]  reg__sys_cfg__debug_led;                              //Debug led signals
reg [7:0]  reg__sys_cfg__spare_0;                                //Spare_reg0
reg [7:0]  reg__sys_cfg__spare_1;                                //Spare_reg1
reg [7:0]  reg__sys_cfg__spare_2;                                //Spare_reg2

always_ff @(posedge clk)
begin
  if (resetb == 0)
  begin

    // --- Section: sys_cfg  Offset: 0x0000  Size: 16
    reg__sys_cfg__enable_stuf                             <=  1'b00000000;   //Enable stuf
    reg__sys_cfg__enable_other                            <=  1'b00000001;   //Enable other stuf
    reg__sys_cfg__pwm_duty                                <=  8'b10000101;   //Counter value for pwm
    reg__sys_cfg__debug_led                               <=  6'b11111110;   //Debug led signals
    reg__sys_cfg__spare_0                                 <=  8'b00010001;   //Spare_reg0
    reg__sys_cfg__spare_1                                 <=  8'b00100010;   //Spare_reg1
    reg__sys_cfg__spare_2                                 <=  8'b00110011;   //Spare_reg2
  end
  else
  begin
    if (write_en)
    begin
      case (address)
        000 : begin 
              reg__sys_cfg__enable_stuf                         <=   data_write_in[0:0];  // Enable stuf
              reg__sys_cfg__enable_other                        <=   data_write_in[1:1];  // Enable other stuf
              end
        001 : reg__sys_cfg__pwm_duty                            <=   data_write_in[7:0];  // Counter value for pwm
 
        002 : reg__sys_cfg__debug_led                           <=   data_write_in[5:0];  // Debug led signals
 
        003 : reg__sys_cfg__spare_0                             <=   data_write_in[7:0];  // Spare_reg0
 
        004 : reg__sys_cfg__spare_1                             <=   data_write_in[7:0];  // Spare_reg1
 
        005 : reg__sys_cfg__spare_2                             <=   data_write_in[7:0];  // Spare_reg2
 
      endcase 
    end
  end
end
//---------------------------------------------
always @(posedge clk )
begin
  if (resetb == 0)
    data_read_out <= 8'b00000000;
  else
  begin
    data_read_out <= 8'b00000000;
    case (address)
        000 : begin 
              data_read_out[0:0]  <=  reg__sys_cfg__enable_stuf;                // Enable stuf
              data_read_out[1:1]  <=  reg__sys_cfg__enable_other;               // Enable other stuf
              data_read_out[2:2]  <=  sys_cfg.monitor_flag;                     // Monitor internal flag
              end
        001 : data_read_out[7:0]  <=  reg__sys_cfg__pwm_duty;                   // Counter value for pwm
 
        002 : data_read_out[5:0]  <=  reg__sys_cfg__debug_led;                  // Debug led signals
 
        003 : data_read_out[7:0]  <=  reg__sys_cfg__spare_0;                    // Spare_reg0
 
        004 : data_read_out[7:0]  <=  reg__sys_cfg__spare_1;                    // Spare_reg1
 
        005 : data_read_out[7:0]  <=  reg__sys_cfg__spare_2;                    // Spare_reg2
 
      default : data_read_out <= 8'b00000000;
    endcase
  end
end
//-------------------------------------Assign symbols to structs
assign sys_cfg.enable_stuf                      = reg__sys_cfg__enable_stuf ;
assign sys_cfg.enable_other                     = reg__sys_cfg__enable_other ;
assign sys_cfg.pwm_duty                         = reg__sys_cfg__pwm_duty ;
assign sys_cfg.debug_led                        = reg__sys_cfg__debug_led ;
assign sys_cfg.spare_0                          = reg__sys_cfg__spare_0 ;
assign sys_cfg.spare_1                          = reg__sys_cfg__spare_1 ;
assign sys_cfg.spare_2                          = reg__sys_cfg__spare_2 ;
endmodule
