# This script segment is generated automatically by AutoPilot

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
    id 175 \
    name proof_0_seed1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename proof_0_seed1 \
    op interface \
    ports { proof_0_seed1_address0 { O 12 vector } proof_0_seed1_ce0 { O 1 bit } proof_0_seed1_we0 { O 1 bit } proof_0_seed1_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'proof_0_seed1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 177 \
    name proof_0_seed2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename proof_0_seed2 \
    op interface \
    ports { proof_0_seed2_address0 { O 12 vector } proof_0_seed2_ce0 { O 1 bit } proof_0_seed2_we0 { O 1 bit } proof_0_seed2_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'proof_0_seed2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 178 \
    name proof_0_inputShare \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename proof_0_inputShare \
    op interface \
    ports { proof_0_inputShare_address0 { O 10 vector } proof_0_inputShare_ce0 { O 1 bit } proof_0_inputShare_we0 { O 1 bit } proof_0_inputShare_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'proof_0_inputShare'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 179 \
    name proof_0_communicatedBits \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename proof_0_communicatedBits \
    op interface \
    ports { proof_0_communicatedBits_address0 { O 15 vector } proof_0_communicatedBits_ce0 { O 1 bit } proof_0_communicatedBits_we0 { O 1 bit } proof_0_communicatedBits_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'proof_0_communicatedBits'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 180 \
    name proof_0_view3Commitment \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename proof_0_view3Commitment \
    op interface \
    ports { proof_0_view3Commitment_address0 { O 13 vector } proof_0_view3Commitment_ce0 { O 1 bit } proof_0_view3Commitment_we0 { O 1 bit } proof_0_view3Commitment_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'proof_0_view3Commitment'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 182 \
    name seeds_seed \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename seeds_seed \
    op interface \
    ports { seeds_seed_address0 { O 14 vector } seeds_seed_ce0 { O 1 bit } seeds_seed_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'seeds_seed'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 183 \
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
    id 184 \
    name views_communicatedBits \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename views_communicatedBits \
    op interface \
    ports { views_communicatedBits_address0 { O 16 vector } views_communicatedBits_ce0 { O 1 bit } views_communicatedBits_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'views_communicatedBits'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 185 \
    name commitments_hashes \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename commitments_hashes \
    op interface \
    ports { commitments_hashes_address0 { O 15 vector } commitments_hashes_ce0 { O 1 bit } commitments_hashes_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'commitments_hashes'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name proof_seed1_offset1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_proof_seed1_offset1 \
    op interface \
    ports { proof_seed1_offset1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name challenge \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_challenge \
    op interface \
    ports { challenge { I 2 vector } } \
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


