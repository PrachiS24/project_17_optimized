# This script segment is generated automatically by AutoPilot

set id 120
set name crypto_sign_mux_4Zio
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 20
set din0_signed 1
set din1_width 20
set din1_signed 1
set din2_width 20
set din2_signed 1
set din3_width 20
set din3_signed 1
set din4_width 2
set din4_signed 0
set dout_width 20
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename MuxnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 134
set hasByteEnable 0
set MemName mpc_LowMC_2_temp_Yie
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 80
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "10010101000011110000010001011001" "00000111111011110110001010101000" "00111011100001110111000001000000" "00111011011100110010001110101011" "01011011111000110000000100101101" "00001011100010110111100110100111" "11101110011001001001111011111100" "01100000101110001101000011010110" "10000001011111010001110110011110" "11000001011100010010000101100110" "00100110110111101001101001000110" "11001001000010011110110101100101" "00001100001010010010101111100101" "11010001011111110111011111010100" "11010111011001110111001111010101" "01101110011101110110010101111111" "10001110001110010011011011100111" "10101010000110011011110010011101" "11100111100100001110011001000011" "10110011100101000000011111011011" "01011010001010011101010011101011" "00000000100011001001010101000000" "10001110111001101001000001010111" "01000011001101001010011000100001" "11110010011011111001001010111100" "10110111001110001111111110010111" "10001011001111101010010011010110" "01110000111110011010010100010010" "00010010111100101110101010001010" "00010101001010000001011101110010" "00011101100000110111001011111101" "01011001100100010001100001110111" "01111110100101110100011001010010" "01001100110000110010100100111101" "01110011101101011110001011000010" "00111110100000010111001010011011" "00101110100001011000110000000000" "11000110000110110110001110010011" "00100110111010111100101110001000" "10001000111000001011010001100010" "11011000100001000100110000010001" "11001001100010001011110110001011" "10111111011001000011100010010000" "10010111101001001011010011000101" "01100001000110000111111010110111" "01101101011111011000001011111000" "10110011110000000010110111001000" "00000000001011001010011101001100" "01110101101110011101010100000010" "10110011001010000011010010111101" "11111111011001110101111110100001" "10011100100111101000111101000110" "01110100011100110111101001001110" "01101100111111100110001111001100" "00011111001111101111000110011001" "00000100000000110110110100110100" "11101100000011010001111110110100" "10100101100100000010001111100101" "01101100111000010000111001001001" "01001100110100000101001001111000" "00001010001011111101101000101010" "01110100110110001000111101110111" "10101010001111101110111011110110" "11011000010110100010011001010111" "10010000110111111101110100001100" "01100010010001110100100010010111" "11011000111101010111000110100011" "00000100000100001010001010010100" "00100100000100101101001000100110" "11001000000010101101000001101100" "01111001101101000001010110101010" "10101001011101111100001001100010" "11010101001100110010100100011100" "10111111000000000010001101011110" "01111101011110000001001111101000" "00001010110000111010000101100001" "01110110100001110111011101111100" "11010001100010011011010110111010" "00111011101001100111100000100110" "10110010001110001111010011110100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.772
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 135 \
    name tapes_tape \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename tapes_tape \
    op interface \
    ports { tapes_tape_address0 { O 9 vector } tapes_tape_ce0 { O 1 bit } tapes_tape_q0 { I 8 vector } tapes_tape_address1 { O 9 vector } tapes_tape_ce1 { O 1 bit } tapes_tape_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tapes_tape'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 136 \
    name views_inputShare \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename views_inputShare \
    op interface \
    ports { views_inputShare_address0 { O 12 vector } views_inputShare_ce0 { O 1 bit } views_inputShare_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'views_inputShare'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 138 \
    name views_communicatedBi \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename views_communicatedBi \
    op interface \
    ports { views_communicatedBi_address0 { O 16 vector } views_communicatedBi_ce0 { O 1 bit } views_communicatedBi_we0 { O 1 bit } views_communicatedBi_d0 { O 8 vector } views_communicatedBi_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'views_communicatedBi'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 139 \
    name views_outputShare \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename views_outputShare \
    op interface \
    ports { views_outputShare_address0 { O 12 vector } views_outputShare_ce0 { O 1 bit } views_outputShare_we0 { O 1 bit } views_outputShare_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'views_outputShare'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 140 \
    name plaintext \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename plaintext \
    op interface \
    ports { plaintext_address0 { O 3 vector } plaintext_ce0 { O 1 bit } plaintext_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'plaintext'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 141 \
    name slab \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename slab \
    op interface \
    ports { slab_address0 { O 6 vector } slab_ce0 { O 1 bit } slab_we0 { O 4 vector } slab_d0 { O 32 vector } slab_q0 { I 32 vector } slab_address1 { O 6 vector } slab_ce1 { O 1 bit } slab_we1 { O 4 vector } slab_d1 { O 32 vector } slab_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'slab'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name views_inputShare_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_views_inputShare_offset \
    op interface \
    ports { views_inputShare_offset { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


