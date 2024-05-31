project_new example1 -overwrite

set_global_assignment -name FAMILY MAX10
set_global_assignment -name DEVICE 10M50DAF484C7G 

set_global_assignment -name BDF_FILE example1.bdf
set_global_assignment -name VERILOG_FILE ../verilog/TfromD.v
set_global_assignment -name SDC_FILE example1.sdc

set_global_assignment -name TOP_LEVEL_ENTITY TfromD
set_location_assignment -to clk PIN_AH10

set_location_assignment PIN_A7 -to clk
set_location_assignment PIN_C10 -to t
set_location_assignment PIN_B8 -to rst
set_location_assignment PIN_A8 -to q
set_location_assignment PIN_A9 -to nq

load_package flow
execute_flow -compile

project_close
