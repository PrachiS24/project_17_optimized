// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->
extern unsigned int viewOutputs[657][16];



// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "sm"
#define AUTOTB_TVOUT_sm  "../tv/cdatafile/c.crypto_sign.autotvout_sm.dat"
#define AUTOTB_TVIN_sm  "../tv/cdatafile/c.crypto_sign.autotvin_sm.dat"
// wrapc file define: "smlen"
#define AUTOTB_TVOUT_smlen  "../tv/cdatafile/c.crypto_sign.autotvout_smlen.dat"
#define AUTOTB_TVIN_smlen  "../tv/cdatafile/c.crypto_sign.autotvin_smlen.dat"
// wrapc file define: "m"
#define AUTOTB_TVIN_m  "../tv/cdatafile/c.crypto_sign.autotvin_m.dat"
// wrapc file define: "mlen"
#define AUTOTB_TVIN_mlen  "../tv/cdatafile/c.crypto_sign.autotvin_mlen.dat"
// wrapc file define: "sk"
#define AUTOTB_TVIN_sk  "../tv/cdatafile/c.crypto_sign.autotvin_sk.dat"
// wrapc file define: "viewOutputs"
#define AUTOTB_TVIN_viewOutputs  "../tv/cdatafile/c.crypto_sign.autotvin_viewOutputs.dat"
#define AUTOTB_TVOUT_viewOutputs  "../tv/cdatafile/c.crypto_sign.autotvout_viewOutputs.dat"
// wrapc file define: "ap_return"
#define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.crypto_sign.autotvout_ap_return.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "sm"
#define AUTOTB_TVOUT_PC_sm  "../tv/rtldatafile/rtl.crypto_sign.autotvout_sm.dat"
// tvout file define: "smlen"
#define AUTOTB_TVOUT_PC_smlen  "../tv/rtldatafile/rtl.crypto_sign.autotvout_smlen.dat"
// tvout file define: "viewOutputs"
#define AUTOTB_TVOUT_PC_viewOutputs  "../tv/rtldatafile/rtl.crypto_sign.autotvout_viewOutputs.dat"
// tvout file define: "ap_return"
#define AUTOTB_TVOUT_PC_ap_return  "../tv/rtldatafile/rtl.crypto_sign.autotvout_ap_return.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			sm_depth = 0;
			smlen_depth = 0;
			m_depth = 0;
			mlen_depth = 0;
			sk_depth = 0;
			viewOutputs_depth = 0;
			ap_return_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{sm " << sm_depth << "}\n";
			total_list << "{smlen " << smlen_depth << "}\n";
			total_list << "{m " << m_depth << "}\n";
			total_list << "{mlen " << mlen_depth << "}\n";
			total_list << "{sk " << sk_depth << "}\n";
			total_list << "{viewOutputs " << viewOutputs_depth << "}\n";
			total_list << "{ap_return " << ap_return_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int sm_depth;
		int smlen_depth;
		int m_depth;
		int mlen_depth;
		int sk_depth;
		int viewOutputs_depth;
		int ap_return_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" int crypto_sign (
char sm[37336],
long long unsigned int smlen[1],
char m[3300],
long long unsigned int mlen,
char sk[49]);

extern "C" int AESL_WRAP_crypto_sign (
char sm[37336],
long long unsigned int smlen[1],
char m[3300],
long long unsigned int mlen,
char sk[49])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;

		int AESL_return;

		// output port post check: "sm"
		aesl_fh.read(AUTOTB_TVOUT_PC_sm, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_sm, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_sm, AESL_token); // data

			sc_bv<8> *sm_pc_buffer = new sc_bv<8>[37336];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'sm', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'sm', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					sm_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_sm, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_sm))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: sm
				{
					// bitslice(7, 0)
					// {
						// celement: sm(7, 0)
						// {
							sc_lv<8>* sm_lv0_0_37335_1 = new sc_lv<8>[37336];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: sm(7, 0)
						{
							// carray: (0) => (37335) @ (1)
							for (int i_0 = 0; i_0 <= 37335; i_0 += 1)
							{
								if (&(sm[0]) != NULL) // check the null address if the c port is array or others
								{
									sm_lv0_0_37335_1[hls_map_index].range(7, 0) = sc_bv<8>(sm_pc_buffer[hls_map_index].range(7, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: sm(7, 0)
						{
							// carray: (0) => (37335) @ (1)
							for (int i_0 = 0; i_0 <= 37335; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : sm[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : sm[0]
								// output_left_conversion : sm[i_0]
								// output_type_conversion : (sm_lv0_0_37335_1[hls_map_index]).to_uint64()
								if (&(sm[0]) != NULL) // check the null address if the c port is array or others
								{
									sm[i_0] = (sm_lv0_0_37335_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] sm_pc_buffer;
		}

		// output port post check: "smlen"
		aesl_fh.read(AUTOTB_TVOUT_PC_smlen, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_smlen, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_smlen, AESL_token); // data

			sc_bv<64> *smlen_pc_buffer = new sc_bv<64>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'smlen', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'smlen', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					smlen_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_smlen, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_smlen))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: smlen
				{
					// bitslice(63, 0)
					// {
						// celement: smlen(63, 0)
						// {
							sc_lv<64>* smlen_lv0_0_0_1 = new sc_lv<64>[1];
						// }
					// }

					// bitslice(63, 0)
					{
						int hls_map_index = 0;
						// celement: smlen(63, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(smlen[0]) != NULL) // check the null address if the c port is array or others
								{
									smlen_lv0_0_0_1[hls_map_index].range(63, 0) = sc_bv<64>(smlen_pc_buffer[hls_map_index].range(63, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(63, 0)
					{
						int hls_map_index = 0;
						// celement: smlen(63, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : smlen[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : smlen[0]
								// output_left_conversion : smlen[i_0]
								// output_type_conversion : (smlen_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(smlen[0]) != NULL) // check the null address if the c port is array or others
								{
									smlen[i_0] = (smlen_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] smlen_pc_buffer;
		}

		// output port post check: "viewOutputs"
		aesl_fh.read(AUTOTB_TVOUT_PC_viewOutputs, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_viewOutputs, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_viewOutputs, AESL_token); // data

			sc_bv<32> *viewOutputs_pc_buffer = new sc_bv<32>[10512];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'viewOutputs', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'viewOutputs', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					viewOutputs_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_viewOutputs, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_viewOutputs))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: viewOutputs
				{
					// bitslice(31, 0)
					// {
						// celement: viewOutputs(31, 0)
						// {
							sc_lv<32>* viewOutputs_lv0_0_656_1_lv1_0_15_1 = new sc_lv<32>[10512];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: viewOutputs(31, 0)
						{
							// carray: (0) => (656) @ (1)
							for (int i_0 = 0; i_0 <= 656; i_0 += 1)
							{
								// carray: (0) => (15) @ (1)
								for (int i_1 = 0; i_1 <= 15; i_1 += 1)
								{
									if (&(viewOutputs[0][0]) != NULL) // check the null address if the c port is array or others
									{
										viewOutputs_lv0_0_656_1_lv1_0_15_1[hls_map_index].range(31, 0) = sc_bv<32>(viewOutputs_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: viewOutputs(31, 0)
						{
							// carray: (0) => (656) @ (1)
							for (int i_0 = 0; i_0 <= 656; i_0 += 1)
							{
								// carray: (0) => (15) @ (1)
								for (int i_1 = 0; i_1 <= 15; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : viewOutputs[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : viewOutputs[0][0]
									// output_left_conversion : viewOutputs[i_0][i_1]
									// output_type_conversion : (viewOutputs_lv0_0_656_1_lv1_0_15_1[hls_map_index]).to_uint64()
									if (&(viewOutputs[0][0]) != NULL) // check the null address if the c port is array or others
									{
										viewOutputs[i_0][i_1] = (viewOutputs_lv0_0_656_1_lv1_0_15_1[hls_map_index]).to_uint64();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] viewOutputs_pc_buffer;
		}

		// output port post check: "ap_return"
		aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // data

			sc_bv<32> ap_return_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					ap_return_pc_buffer = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_ap_return))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: ap_return
				{
					// bitslice(31, 0)
					// {
						// celement: return(31, 0)
						// {
							sc_lv<32> return_lv0_0_1_0;
						// }
					// }

					// bitslice(31, 0)
					{
						// celement: return(31, 0)
						{
							// carray: (0) => (1) @ (0)
							{
								if (&(AESL_return) != NULL) // check the null address if the c port is array or others
								{
									return_lv0_0_1_0.range(31, 0) = sc_bv<32>(ap_return_pc_buffer.range(31, 0));
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						// celement: return(31, 0)
						{
							// carray: (0) => (1) @ (0)
							{
								// sub                    : 
								// ori_name               : AESL_return
								// sub_1st_elem           : 
								// ori_name_1st_elem      : AESL_return
								// output_left_conversion : AESL_return
								// output_type_conversion : (return_lv0_0_1_0).to_uint64()
								if (&(AESL_return) != NULL) // check the null address if the c port is array or others
								{
									AESL_return = (return_lv0_0_1_0).to_uint64();
								}
							}
						}
					}
				}
			}
		}

		AESL_transaction_pc++;

		return AESL_return;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "sm"
		char* tvin_sm = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_sm);
		char* tvout_sm = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_sm);

		// "smlen"
		char* tvin_smlen = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_smlen);
		char* tvout_smlen = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_smlen);

		// "m"
		char* tvin_m = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_m);

		// "mlen"
		char* tvin_mlen = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_mlen);

		// "sk"
		char* tvin_sk = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_sk);

		// "viewOutputs"
		char* tvin_viewOutputs = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_viewOutputs);
		char* tvout_viewOutputs = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_viewOutputs);

		// "ap_return"
		char* tvout_ap_return = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_ap_return);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_sm, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_sm, tvin_sm);

		sc_bv<8>* sm_tvin_wrapc_buffer = new sc_bv<8>[37336];

		// RTL Name: sm
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: sm(7, 0)
				{
					// carray: (0) => (37335) @ (1)
					for (int i_0 = 0; i_0 <= 37335; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : sm[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : sm[0]
						// regulate_c_name       : sm
						// input_type_conversion : sm[i_0]
						if (&(sm[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> sm_tmp_mem;
							sm_tmp_mem = sm[i_0];
							sm_tvin_wrapc_buffer[hls_map_index].range(7, 0) = sm_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 37336; i++)
		{
			sprintf(tvin_sm, "%s\n", (sm_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_sm, tvin_sm);
		}

		tcl_file.set_num(37336, &tcl_file.sm_depth);
		sprintf(tvin_sm, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_sm, tvin_sm);

		// release memory allocation
		delete [] sm_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_smlen, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_smlen, tvin_smlen);

		sc_bv<64>* smlen_tvin_wrapc_buffer = new sc_bv<64>[1];

		// RTL Name: smlen
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: smlen(63, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : smlen[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : smlen[0]
						// regulate_c_name       : smlen
						// input_type_conversion : smlen[i_0]
						if (&(smlen[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> smlen_tmp_mem;
							smlen_tmp_mem = smlen[i_0];
							smlen_tvin_wrapc_buffer[hls_map_index].range(63, 0) = smlen_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_smlen, "%s\n", (smlen_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_smlen, tvin_smlen);
		}

		tcl_file.set_num(1, &tcl_file.smlen_depth);
		sprintf(tvin_smlen, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_smlen, tvin_smlen);

		// release memory allocation
		delete [] smlen_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_m, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_m, tvin_m);

		sc_bv<8>* m_tvin_wrapc_buffer = new sc_bv<8>[3300];

		// RTL Name: m
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: m(7, 0)
				{
					// carray: (0) => (3299) @ (1)
					for (int i_0 = 0; i_0 <= 3299; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : m[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : m[0]
						// regulate_c_name       : m
						// input_type_conversion : m[i_0]
						if (&(m[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> m_tmp_mem;
							m_tmp_mem = m[i_0];
							m_tvin_wrapc_buffer[hls_map_index].range(7, 0) = m_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 3300; i++)
		{
			sprintf(tvin_m, "%s\n", (m_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_m, tvin_m);
		}

		tcl_file.set_num(3300, &tcl_file.m_depth);
		sprintf(tvin_m, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_m, tvin_m);

		// release memory allocation
		delete [] m_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_mlen, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_mlen, tvin_mlen);

		sc_bv<64> mlen_tvin_wrapc_buffer;

		// RTL Name: mlen
		{
			// bitslice(63, 0)
			{
				// celement: mlen(63, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : mlen
						// sub_1st_elem          : 
						// ori_name_1st_elem     : mlen
						// regulate_c_name       : mlen
						// input_type_conversion : mlen
						if (&(mlen) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> mlen_tmp_mem;
							mlen_tmp_mem = mlen;
							mlen_tvin_wrapc_buffer.range(63, 0) = mlen_tmp_mem.range(63, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_mlen, "%s\n", (mlen_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_mlen, tvin_mlen);
		}

		tcl_file.set_num(1, &tcl_file.mlen_depth);
		sprintf(tvin_mlen, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_mlen, tvin_mlen);

		// [[transaction]]
		sprintf(tvin_sk, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_sk, tvin_sk);

		sc_bv<8>* sk_tvin_wrapc_buffer = new sc_bv<8>[49];

		// RTL Name: sk
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: sk(7, 0)
				{
					// carray: (0) => (48) @ (1)
					for (int i_0 = 0; i_0 <= 48; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : sk[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : sk[0]
						// regulate_c_name       : sk
						// input_type_conversion : sk[i_0]
						if (&(sk[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> sk_tmp_mem;
							sk_tmp_mem = sk[i_0];
							sk_tvin_wrapc_buffer[hls_map_index].range(7, 0) = sk_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 49; i++)
		{
			sprintf(tvin_sk, "%s\n", (sk_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_sk, tvin_sk);
		}

		tcl_file.set_num(49, &tcl_file.sk_depth);
		sprintf(tvin_sk, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_sk, tvin_sk);

		// release memory allocation
		delete [] sk_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_viewOutputs, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_viewOutputs, tvin_viewOutputs);

		sc_bv<32>* viewOutputs_tvin_wrapc_buffer = new sc_bv<32>[10512];

		// RTL Name: viewOutputs
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: viewOutputs(31, 0)
				{
					// carray: (0) => (656) @ (1)
					for (int i_0 = 0; i_0 <= 656; i_0 += 1)
					{
						// carray: (0) => (15) @ (1)
						for (int i_1 = 0; i_1 <= 15; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : viewOutputs[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : viewOutputs[0][0]
							// regulate_c_name       : viewOutputs
							// input_type_conversion : viewOutputs[i_0][i_1]
							if (&(viewOutputs[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> viewOutputs_tmp_mem;
								viewOutputs_tmp_mem = viewOutputs[i_0][i_1];
								viewOutputs_tvin_wrapc_buffer[hls_map_index].range(31, 0) = viewOutputs_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10512; i++)
		{
			sprintf(tvin_viewOutputs, "%s\n", (viewOutputs_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_viewOutputs, tvin_viewOutputs);
		}

		tcl_file.set_num(10512, &tcl_file.viewOutputs_depth);
		sprintf(tvin_viewOutputs, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_viewOutputs, tvin_viewOutputs);

		// release memory allocation
		delete [] viewOutputs_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		int AESL_return = crypto_sign(sm, smlen, m, mlen, sk);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_sm, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_sm, tvout_sm);

		sc_bv<8>* sm_tvout_wrapc_buffer = new sc_bv<8>[37336];

		// RTL Name: sm
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: sm(7, 0)
				{
					// carray: (0) => (37335) @ (1)
					for (int i_0 = 0; i_0 <= 37335; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : sm[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : sm[0]
						// regulate_c_name       : sm
						// input_type_conversion : sm[i_0]
						if (&(sm[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> sm_tmp_mem;
							sm_tmp_mem = sm[i_0];
							sm_tvout_wrapc_buffer[hls_map_index].range(7, 0) = sm_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 37336; i++)
		{
			sprintf(tvout_sm, "%s\n", (sm_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_sm, tvout_sm);
		}

		tcl_file.set_num(37336, &tcl_file.sm_depth);
		sprintf(tvout_sm, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_sm, tvout_sm);

		// release memory allocation
		delete [] sm_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_smlen, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_smlen, tvout_smlen);

		sc_bv<64>* smlen_tvout_wrapc_buffer = new sc_bv<64>[1];

		// RTL Name: smlen
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: smlen(63, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : smlen[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : smlen[0]
						// regulate_c_name       : smlen
						// input_type_conversion : smlen[i_0]
						if (&(smlen[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> smlen_tmp_mem;
							smlen_tmp_mem = smlen[i_0];
							smlen_tvout_wrapc_buffer[hls_map_index].range(63, 0) = smlen_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_smlen, "%s\n", (smlen_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_smlen, tvout_smlen);
		}

		tcl_file.set_num(1, &tcl_file.smlen_depth);
		sprintf(tvout_smlen, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_smlen, tvout_smlen);

		// release memory allocation
		delete [] smlen_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_viewOutputs, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_viewOutputs, tvout_viewOutputs);

		sc_bv<32>* viewOutputs_tvout_wrapc_buffer = new sc_bv<32>[10512];

		// RTL Name: viewOutputs
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: viewOutputs(31, 0)
				{
					// carray: (0) => (656) @ (1)
					for (int i_0 = 0; i_0 <= 656; i_0 += 1)
					{
						// carray: (0) => (15) @ (1)
						for (int i_1 = 0; i_1 <= 15; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : viewOutputs[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : viewOutputs[0][0]
							// regulate_c_name       : viewOutputs
							// input_type_conversion : viewOutputs[i_0][i_1]
							if (&(viewOutputs[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> viewOutputs_tmp_mem;
								viewOutputs_tmp_mem = viewOutputs[i_0][i_1];
								viewOutputs_tvout_wrapc_buffer[hls_map_index].range(31, 0) = viewOutputs_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10512; i++)
		{
			sprintf(tvout_viewOutputs, "%s\n", (viewOutputs_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_viewOutputs, tvout_viewOutputs);
		}

		tcl_file.set_num(10512, &tcl_file.viewOutputs_depth);
		sprintf(tvout_viewOutputs, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_viewOutputs, tvout_viewOutputs);

		// release memory allocation
		delete [] viewOutputs_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_ap_return, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

		sc_bv<32> ap_return_tvout_wrapc_buffer;

		// RTL Name: ap_return
		{
			// bitslice(31, 0)
			{
				// celement: return(31, 0)
				{
					// carray: (0) => (1) @ (0)
					{
						// sub                   : 
						// ori_name              : AESL_return
						// sub_1st_elem          : 
						// ori_name_1st_elem     : AESL_return
						// regulate_c_name       : return
						// input_type_conversion : AESL_return
						if (&(AESL_return) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> return_tmp_mem;
							return_tmp_mem = AESL_return;
							ap_return_tvout_wrapc_buffer.range(31, 0) = return_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_ap_return, "%s\n", (ap_return_tvout_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);
		}

		tcl_file.set_num(1, &tcl_file.ap_return_depth);
		sprintf(tvout_ap_return, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "sm"
		delete [] tvout_sm;
		delete [] tvin_sm;
		// release memory allocation: "smlen"
		delete [] tvout_smlen;
		delete [] tvin_smlen;
		// release memory allocation: "m"
		delete [] tvin_m;
		// release memory allocation: "mlen"
		delete [] tvin_mlen;
		// release memory allocation: "sk"
		delete [] tvin_sk;
		// release memory allocation: "viewOutputs"
		delete [] tvin_viewOutputs;
		delete [] tvout_viewOutputs;
		// release memory allocation: "ap_return"
		delete [] tvout_ap_return;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);

		return AESL_return;
	}
}

