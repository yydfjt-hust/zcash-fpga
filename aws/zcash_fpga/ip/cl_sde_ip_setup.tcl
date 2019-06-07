source device_type.tcl
create_project cl_sde_ip cl_sde_ip -part [DEVICE_TYPE]

add_files -fileset sources_1 -norecurse {
ila_axi4/ila_axi4.xci
ila_sde_h2c_dm/ila_sde_h2c_dm.xci
ila_axi4_512/ila_axi4_512.xci
ila_axis/ila_axis.xci
ila_sde_c2h_buf/ila_sde_c2h_buf.xci
ila_sde_c2h_dm/ila_sde_c2h_dm.xci
ila_sde_h2c_buf/ila_sde_h2c_buf.xci
ila_sde_ps/ila_sde_ps.xci
ila_sde_wb/ila_sde_wb.xci
axis_dwidth_converter_64_to_8/axis_dwidth_converter_64_to_8.xci
axis_dwidth_converter_8_to_64/axis_dwidth_converter_8_to_64.xci
axi_mm2s_mapper/axi_mm2s_mapper.xci
}

upgrade_ip [get_ips *]

generate_target all [get_files  ila_axi4/ila_axi4.xci]
generate_target all [get_files  ila_sde_h2c_dm/ila_sde_h2c_dm.xci]
generate_target all [get_files  ila_axi4_512/ila_axi4_512.xci]
generate_target all [get_files  ila_axis/ila_axis.xci]
generate_target all [get_files  ila_sde_c2h_buf/ila_sde_c2h_buf.xci]
generate_target all [get_files  ila_sde_c2h_dm/ila_sde_c2h_dm.xci]
generate_target all [get_files  ila_sde_h2c_buf/ila_sde_h2c_buf.xci]
generate_target all [get_files  ila_sde_ps/ila_sde_ps.xci]
generate_target all [get_files  ila_sde_wb/ila_sde_wb.xci]
generate_target all [get_files  axis_dwidth_converter_64_to_8/axis_dwidth_converter_64_to_8.xci]
generate_target all [get_files  axis_dwidth_converter_8_to_64/axis_dwidth_converter_8_to_64.xci]
generate_target all [get_files  axi_mm2s_mapper/axi_mm2s_mapper.xci]