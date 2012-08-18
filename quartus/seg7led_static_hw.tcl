# TCL File Generated by Component Editor 11.1sp2
# Tue Jul 24 07:11:12 JST 2012
# DO NOT MODIFY


# +-----------------------------------
# | 
# | seg7led_static "7segment LED (Static Drive)" v1.0
# | @kimu_shu 2012.07.24.07:11:12
# | 
# | 
# | /home/shuta/projects/hdl_ip/seg7led/seg7led_static.v
# | 
# |    ./seg7led_static.v syn, sim
# | 
# +-----------------------------------

# +-----------------------------------
# | request TCL package from ACDS 11.0
# | 
package require -exact sopc 11.0
# | 
# +-----------------------------------

# +-----------------------------------
# | module seg7led_static
# | 
set_module_property NAME seg7led_static
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP Peripherals/Display
set_module_property AUTHOR @kimu_shu
set_module_property DISPLAY_NAME "7segment LED (Static Drive)"
set_module_property TOP_LEVEL_HDL_FILE seg7led_static.v
set_module_property TOP_LEVEL_HDL_MODULE seg7led_static
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property STATIC_TOP_LEVEL_MODULE_NAME seg7led_static
set_module_property FIX_110_VIP_PATH false
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
add_file seg7led_static.v {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
add_parameter DIGITS INTEGER 1
set_parameter_property DIGITS DEFAULT_VALUE 1
set_parameter_property DIGITS DISPLAY_NAME DIGITS
set_parameter_property DIGITS TYPE INTEGER
set_parameter_property DIGITS UNITS None
set_parameter_property DIGITS ALLOWED_RANGES -2147483648:2147483647
set_parameter_property DIGITS AFFECTS_GENERATION false
set_parameter_property DIGITS HDL_PARAMETER true
add_parameter ACTIVE_LOW INTEGER 1
set_parameter_property ACTIVE_LOW DEFAULT_VALUE 1
set_parameter_property ACTIVE_LOW DISPLAY_NAME ACTIVE_LOW
set_parameter_property ACTIVE_LOW TYPE INTEGER
set_parameter_property ACTIVE_LOW UNITS None
set_parameter_property ACTIVE_LOW ALLOWED_RANGES -2147483648:2147483647
set_parameter_property ACTIVE_LOW AFFECTS_GENERATION false
set_parameter_property ACTIVE_LOW HDL_PARAMETER true
# | 
# +-----------------------------------

# +-----------------------------------
# | display items
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point clock
# | 
add_interface clock clock end
set_interface_property clock clockRate 0

set_interface_property clock ENABLED true

add_interface_port clock clk clk Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point reset
# | 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT

set_interface_property reset ENABLED true

add_interface_port reset reset_n reset_n Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point ctrl
# | 
add_interface ctrl avalon end
set_interface_property ctrl addressUnits WORDS
set_interface_property ctrl associatedClock clock
set_interface_property ctrl associatedReset reset
set_interface_property ctrl bitsPerSymbol 8
set_interface_property ctrl burstOnBurstBoundariesOnly false
set_interface_property ctrl burstcountUnits WORDS
set_interface_property ctrl explicitAddressSpan 0
set_interface_property ctrl holdTime 0
set_interface_property ctrl linewrapBursts false
set_interface_property ctrl maximumPendingReadTransactions 0
set_interface_property ctrl readLatency 0
set_interface_property ctrl readWaitTime 1
set_interface_property ctrl setupTime 0
set_interface_property ctrl timingUnits Cycles
set_interface_property ctrl writeWaitTime 0

set_interface_property ctrl ENABLED true

add_interface_port ctrl ctrl_address address Input 2
add_interface_port ctrl ctrl_write write Input 1
add_interface_port ctrl ctrl_writedata writedata Input 32
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point output
# | 
add_interface output conduit end

set_interface_property output ENABLED true

add_interface_port output seg_a export Output DIGITS
add_interface_port output seg_b export Output DIGITS
add_interface_port output seg_c export Output DIGITS
add_interface_port output seg_d export Output DIGITS
add_interface_port output seg_e export Output DIGITS
add_interface_port output seg_f export Output DIGITS
add_interface_port output seg_g export Output DIGITS
add_interface_port output seg_dp export Output DIGITS
# | 
# +-----------------------------------
