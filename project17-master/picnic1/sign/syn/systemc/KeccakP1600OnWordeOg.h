// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __KeccakP1600OnWordeOg_H__
#define __KeccakP1600OnWordeOg_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct KeccakP1600OnWordeOg_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 6;
  static const unsigned AddressRange = 25;
  static const unsigned AddressWidth = 5;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(KeccakP1600OnWordeOg_ram) {
        ram[0] = "0b000000";
        ram[1] = "0b000001";
        ram[2] = "0b111110";
        ram[3] = "0b011100";
        ram[4] = "0b011011";
        ram[5] = "0b100100";
        ram[6] = "0b101100";
        ram[7] = "0b000110";
        ram[8] = "0b110111";
        ram[9] = "0b010100";
        ram[10] = "0b000011";
        ram[11] = "0b001010";
        ram[12] = "0b101011";
        ram[13] = "0b011001";
        ram[14] = "0b100111";
        ram[15] = "0b101001";
        ram[16] = "0b101101";
        ram[17] = "0b001111";
        ram[18] = "0b010101";
        ram[19] = "0b001000";
        ram[20] = "0b010010";
        ram[21] = "0b000010";
        ram[22] = "0b111101";
        ram[23] = "0b111000";
        ram[24] = "0b001110";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(KeccakP1600OnWordeOg) {


static const unsigned DataWidth = 6;
static const unsigned AddressRange = 25;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


KeccakP1600OnWordeOg_ram* meminst;


SC_CTOR(KeccakP1600OnWordeOg) {
meminst = new KeccakP1600OnWordeOg_ram("KeccakP1600OnWordeOg_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~KeccakP1600OnWordeOg() {
    delete meminst;
}


};//endmodule
#endif
