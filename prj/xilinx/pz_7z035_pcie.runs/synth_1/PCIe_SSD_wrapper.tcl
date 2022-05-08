# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param general.maxThreads 8
create_project -in_memory -part xc7z035ffg676-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/prj/xilinx/pz_7z035_pcie.cache/wt [current_project]
set_property parent.project_path D:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/prj/xilinx/pz_7z035_pcie.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  c:/Users/sterben/.vscode/extensions/sterben.fpga-support-0.1.15/lib/Ailinx_lib/ip
  d:/project/FPGA/.Lib/xIP
} [current_project]
update_ip_catalog
set_property ip_output_repo d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/prj/xilinx/pz_7z035_pcie.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/hdl/PCIe_SSD_wrapper.v
add_files D:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/PCIe_SSD.bd
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_processing_system7_0_0/PCIe_SSD_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_xbar_0/PCIe_SSD_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_axi_pcie_0_0/PCIe_SSD_axi_pcie_0_0/source/axi_pcie_X0Y0.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_axi_pcie_0_0/synth/PCIe_SSD_axi_pcie_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_axi_pcie_0_0/synth/PCIe_SSD_axi_pcie_0_0_late.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_axi_cdma_0_0/PCIe_SSD_axi_cdma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_axi_cdma_0_0/PCIe_SSD_axi_cdma_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_proc_sys_reset_1_0/PCIe_SSD_proc_sys_reset_1_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_proc_sys_reset_1_0/PCIe_SSD_proc_sys_reset_1_0.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_proc_sys_reset_1_0/PCIe_SSD_proc_sys_reset_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_xbar_1/PCIe_SSD_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_xbar_2/PCIe_SSD_xbar_2_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_proc_sys_reset_0_0/PCIe_SSD_proc_sys_reset_0_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_proc_sys_reset_0_0/PCIe_SSD_proc_sys_reset_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_proc_sys_reset_0_0/PCIe_SSD_proc_sys_reset_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_util_ds_buf_0_0/PCIe_SSD_util_ds_buf_0_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_util_ds_buf_0_0/PCIe_SSD_util_ds_buf_0_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_auto_ds_0/PCIe_SSD_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_auto_ds_0/PCIe_SSD_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_auto_ds_0/PCIe_SSD_auto_ds_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_auto_pc_0/PCIe_SSD_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_auto_pc_3/PCIe_SSD_auto_pc_3_ooc.xdc]
set_property used_in_synthesis false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_auto_us_0/PCIe_SSD_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_auto_us_0/PCIe_SSD_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_auto_us_0/PCIe_SSD_auto_us_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_auto_cc_0/PCIe_SSD_auto_cc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_auto_cc_0/PCIe_SSD_auto_cc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_auto_cc_0/PCIe_SSD_auto_cc_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_auto_ds_1/PCIe_SSD_auto_ds_1_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_auto_ds_1/PCIe_SSD_auto_ds_1_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_auto_ds_1/PCIe_SSD_auto_ds_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_auto_pc_1/PCIe_SSD_auto_pc_1_ooc.xdc]
set_property used_in_synthesis false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_auto_ds_2/PCIe_SSD_auto_ds_2_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_auto_ds_2/PCIe_SSD_auto_ds_2_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_auto_ds_2/PCIe_SSD_auto_ds_2_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/ip/PCIe_SSD_auto_pc_2/PCIe_SSD_auto_pc_2_ooc.xdc]
set_property used_in_implementation false [get_files -all D:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/bd/PCIe_SSD/PCIe_SSD_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/data/7z035-lpc.xdc
set_property used_in_implementation false [get_files d:/project/FPGA/FPGA_Design/TCL_project/Prj/pz_7z035_pcie/user/Hardware/data/7z035-lpc.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top PCIe_SSD_wrapper -part xc7z035ffg676-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef PCIe_SSD_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file PCIe_SSD_wrapper_utilization_synth.rpt -pb PCIe_SSD_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]