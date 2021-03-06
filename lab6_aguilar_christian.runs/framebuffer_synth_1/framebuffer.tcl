# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.cache/wt [current_project]
set_property parent.project_path D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo d:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.srcs/sources_1/ip/framebuffer/framebuffer.xci
set_property is_locked true [get_files D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.srcs/sources_1/ip/framebuffer/framebuffer.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.runs/framebuffer_synth_1 -new_name framebuffer -ip [get_ips framebuffer]]

if { $cached_ip eq {} } {

synth_design -top framebuffer -part xc7a35tcpg236-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix framebuffer_ framebuffer.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ framebuffer_stub.v
 lappend ipCachedFiles framebuffer_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ framebuffer_stub.vhdl
 lappend ipCachedFiles framebuffer_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ framebuffer_sim_netlist.v
 lappend ipCachedFiles framebuffer_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ framebuffer_sim_netlist.vhdl
 lappend ipCachedFiles framebuffer_sim_netlist.vhdl

 config_ip_cache -add -dcp framebuffer.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips framebuffer]
}

rename_ref -prefix_all framebuffer_

write_checkpoint -force -noxdef framebuffer.dcp

catch { report_utilization -file framebuffer_utilization_synth.rpt -pb framebuffer_utilization_synth.pb }

if { [catch {
  file copy -force D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.runs/framebuffer_synth_1/framebuffer.dcp D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.srcs/sources_1/ip/framebuffer/framebuffer.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.srcs/sources_1/ip/framebuffer/framebuffer_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.srcs/sources_1/ip/framebuffer/framebuffer_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.srcs/sources_1/ip/framebuffer/framebuffer_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.srcs/sources_1/ip/framebuffer/framebuffer_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.runs/framebuffer_synth_1/framebuffer.dcp D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.srcs/sources_1/ip/framebuffer/framebuffer.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.runs/framebuffer_synth_1/framebuffer_stub.v D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.srcs/sources_1/ip/framebuffer/framebuffer_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.runs/framebuffer_synth_1/framebuffer_stub.vhdl D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.srcs/sources_1/ip/framebuffer/framebuffer_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.runs/framebuffer_synth_1/framebuffer_sim_netlist.v D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.srcs/sources_1/ip/framebuffer/framebuffer_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.runs/framebuffer_synth_1/framebuffer_sim_netlist.vhdl D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.srcs/sources_1/ip/framebuffer/framebuffer_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.ip_user_files/ip/framebuffer]} {
  catch { 
    file copy -force D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.srcs/sources_1/ip/framebuffer/framebuffer_stub.v D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.ip_user_files/ip/framebuffer
  }
}

if {[file isdir D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.ip_user_files/ip/framebuffer]} {
  catch { 
    file copy -force D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.srcs/sources_1/ip/framebuffer/framebuffer_stub.vhdl D:/Christian/Git/Artix7-LineDrawAlgorithm/lab6_aguilar_christian.ip_user_files/ip/framebuffer
  }
}
