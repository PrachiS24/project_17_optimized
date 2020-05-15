############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_allocation -type function "HashUpdate" 1
set_directive_allocation -type function "KeccakWidth1600_12rounds_SpongeAbsorb" 1
set_directive_allocation -type function "KeccakP1600_AddByte" 1
set_directive_allocation -type function "KeccakP1600Round" 1
set_directive_allocation -type function "KeccakP1600_Permute_24rounds" 1
set_directive_allocation -type function "KeccakWidth1600_SpongeAbsorb" 1
set_directive_allocation -type function "KeccakWidth1600_SpongeAbsorbLastFewBits" 1
set_directive_allocation -type function "KeccakWidth1600_SpongeSqueeze" 1
set_directive_allocation -type function "KeccakWidth1600_SpongeInitialize" 1
set_directive_inline "Keccak_HashUpdate"
set_directive_allocation -type function "Keccak_HashUpdate" 1
set_directive_allocation -type function "Keccak_HashFinal" 1
set_directive_inline "Keccak_HashSqueeze"
set_directive_allocation -type function "Keccak_HashSqueeze" 1
set_directive_allocation -type function "Keccak_HashInitialize" 1
set_directive_inline "HashFinal"
set_directive_allocation -type function "HashFinal" 1
set_directive_inline "HashSqueeze"
set_directive_allocation -type function "HashSqueeze" 1
set_directive_allocation -type function "HashInit" 1
set_directive_allocation -type function "HashUpdate_2" 1
set_directive_allocation -type function "setChallenge" 1
set_directive_allocation -type function "setBit" 1
set_directive_inline "HashUpdate"
set_directive_inline "HashUpdate_2"
set_directive_inline "HashInit"
set_directive_inline "Keccak_HashInitialize"
set_directive_inline "Keccak_HashFinal"
set_directive_inline "KeccakWidth1600_SpongeInitialize"
set_directive_inline "KeccakWidth1600_SpongeAbsorb"
set_directive_inline "KeccakWidth1600_SpongeAbsorbLastFewBits"
set_directive_inline "KeccakWidth1600_12rounds_SpongeAbsorb"
set_directive_inline "KeccakP1600_AddByte"
set_directive_inline "KeccakP1600Round"
set_directive_inline "KeccakP1600_Permute_24rounds"
set_directive_pipeline "H3/H3_label0"
set_directive_pipeline "H3_3/H3_3_label1"
set_directive_pipeline "H3_2/H3_2_label2"
set_directive_pipeline "matrix_mul/matrix_mul_label3"
set_directive_unroll -factor 2 "LowMCEnc/LowMCEnc_label4"
set_directive_pipeline "LowMCEnc/LowMCEnc_label5"
set_directive_pipeline "sign_picnic1/sign_picnic1_label7"
set_directive_pipeline "sign_picnic1/sign_picnic1_label8"
set_directive_pipeline "sign_picnic1/sign_picnic1_label9"
set_directive_array_partition -type block -factor 4 -dim 1 "sign_picnic1" tmp
set_directive_pipeline "KeccakWidth1600_SpongeAbsorb/KeccakWidth1600_SpongeAbsorb_label10"
set_directive_pipeline "KeccakWidth1600_12rounds_SpongeAbsorb/KeccakWidth1600_12rounds_SpongeAbsorb_label11"
set_directive_pipeline "AddRoundKey/AddRoundKey_label1"
set_directive_pipeline "SubBytes/SubBytes_label0"
set_directive_pipeline "InvSubBytes/InvSubBytes_label12"
set_directive_pipeline "fromBytesToWords/fromBytesToWords_label13"
set_directive_pipeline "fromWordsToBytes/fromWordsToBytes_label14"
set_directive_unroll -factor 5 "theta/theta_label15"
set_directive_pipeline "theta/theta_label16"
set_directive_pipeline "theta/theta_label17"
set_directive_pipeline "rho/rho_label18"
set_directive_unroll -factor 2 "pi/pi_label19"
set_directive_pipeline "pi/pi_label20"
set_directive_unroll -factor 2 "pi/pi_label21"
set_directive_pipeline "pi/pi_label22"
set_directive_unroll -factor 2 "KeccakP1600_DisplayRhoOffsets/KeccakP1600_DisplayRhoOffsets_label23"
set_directive_pipeline "KeccakP1600_DisplayRhoOffsets/KeccakP1600_DisplayRhoOffsets_label24"
