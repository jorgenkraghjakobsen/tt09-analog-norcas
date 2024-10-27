
// Interface structures for registerbank symbol access


//`ifndef _mixed_norcas_
//  `define _mixed_norcas_

package mixed_norcas_pkg;// Wire interface for sys_cfg
typedef struct packed {
  logic       enable_stuf;                     // Enable stuf
  logic       enable_other;                    // Enable other stuf
  logic       monitor_flag;                    // Monitor internal flag
  logic [7:0] pwm_duty;                        // Counter value for pwm
  logic [5:0] debug_led;                       // Debug led signals
  logic [7:0] spare_0;                         // Spare_reg0
  logic [7:0] spare_1;                         // Spare_reg1
  logic [7:0] spare_2;                         // Spare_reg2
} rb_sys_cfg_wire_t;


endpackage

//`endif
