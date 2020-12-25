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


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "in1_strm_V"
#define AUTOTB_TVIN_in1_strm_V  "../tv/cdatafile/c.example.autotvin_in1_strm_V.dat"
#define WRAPC_STREAM_SIZE_IN_in1_strm_V  "../tv/stream_size/stream_size_in_in1_strm_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in1_strm_V  "../tv/stream_size/stream_ingress_status_in1_strm_V.dat"
// wrapc file define: "in2_strm_V"
#define AUTOTB_TVIN_in2_strm_V  "../tv/cdatafile/c.example.autotvin_in2_strm_V.dat"
#define WRAPC_STREAM_SIZE_IN_in2_strm_V  "../tv/stream_size/stream_size_in_in2_strm_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in2_strm_V  "../tv/stream_size/stream_ingress_status_in2_strm_V.dat"
// wrapc file define: "out_strm_V"
#define AUTOTB_TVOUT_out_strm_V  "../tv/cdatafile/c.example.autotvout_out_strm_V.dat"
#define AUTOTB_TVIN_out_strm_V  "../tv/cdatafile/c.example.autotvin_out_strm_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_strm_V  "../tv/stream_size/stream_size_out_out_strm_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_strm_V  "../tv/stream_size/stream_egress_status_out_strm_V.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "out_strm_V"
#define AUTOTB_TVOUT_PC_out_strm_V  "../tv/rtldatafile/rtl.example.autotvout_out_strm_V.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			in1_strm_V_depth = 0;
			in2_strm_V_depth = 0;
			out_strm_V_depth = 0;
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
			total_list << "{in1_strm_V " << in1_strm_V_depth << "}\n";
			total_list << "{in2_strm_V " << in2_strm_V_depth << "}\n";
			total_list << "{out_strm_V " << out_strm_V_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int in1_strm_V_depth;
		int in2_strm_V_depth;
		int out_strm_V_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void example (
hls::stream<int > (&in1_strm),
hls::stream<int > (&in2_strm),
hls::stream<int > (&out_strm));

void AESL_WRAP_example (
hls::stream<int > (&in1_strm),
hls::stream<int > (&in2_strm),
hls::stream<int > (&out_strm))
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

		// pop stream input: "in1_strm"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_in1_strm_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_in1_strm_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_in1_strm_V, AESL_token); // pop_size
			int aesl_tmp_1 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_1; i++)
			{
				in1_strm.read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_in1_strm_V, AESL_token); // [[/transaction]]
		}

		// pop stream input: "in2_strm"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_in2_strm_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_in2_strm_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_in2_strm_V, AESL_token); // pop_size
			int aesl_tmp_4 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_4; i++)
			{
				in2_strm.read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_in2_strm_V, AESL_token); // [[/transaction]]
		}

		// define output stream variables: "out_strm"
		std::vector<int > aesl_tmp_6;
		int aesl_tmp_7;
		int aesl_tmp_8 = 0;

		// read output stream size: "out_strm"
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_out_strm_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_out_strm_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_out_strm_V, AESL_token); // pop_size
			aesl_tmp_7 = atoi(AESL_token.c_str());
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_out_strm_V, AESL_token); // [[/transaction]]
		}

		// output port post check: "out_strm_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_out_strm_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_out_strm_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_out_strm_V, AESL_token); // data

			std::vector<sc_bv<32> > out_strm_V_pc_buffer;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_strm_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_strm_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					out_strm_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_out_strm_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_out_strm_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_7)
			{
				aesl_tmp_7 = i;
			}

			if (aesl_tmp_7 > 0 && aesl_tmp_6.size() < aesl_tmp_7)
			{
				int aesl_tmp_6_size = aesl_tmp_6.size();

				for (int tmp_aesl_tmp_6 = 0; tmp_aesl_tmp_6 < aesl_tmp_7 - aesl_tmp_6_size; tmp_aesl_tmp_6++)
				{
					int tmp;
					aesl_tmp_6.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: out_strm_V
				{
					// bitslice(31, 0)
					// {
						// celement: out_strm.V(31, 0)
						// {
							sc_lv<32>* out_strm_V_lv0_0_0_1 = new sc_lv<32>[aesl_tmp_7 - aesl_tmp_8];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: out_strm.V(31, 0)
						{
							// carray: (aesl_tmp_8) => (aesl_tmp_7 - 1) @ (1)
							for (int i_0 = aesl_tmp_8; i_0 <= aesl_tmp_7 - 1; i_0 += 1)
							{
								if (&(aesl_tmp_6[0]) != NULL) // check the null address if the c port is array or others
								{
									out_strm_V_lv0_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(out_strm_V_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: out_strm.V(31, 0)
						{
							// carray: (aesl_tmp_8) => (aesl_tmp_7 - 1) @ (1)
							for (int i_0 = aesl_tmp_8; i_0 <= aesl_tmp_7 - 1; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : aesl_tmp_6[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : aesl_tmp_6[0]
								// output_left_conversion : aesl_tmp_6[i_0]
								// output_type_conversion : (out_strm_V_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(aesl_tmp_6[0]) != NULL) // check the null address if the c port is array or others
								{
									aesl_tmp_6[i_0] = (out_strm_V_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// push back output stream: "out_strm"
		for (int i = 0; i < aesl_tmp_7; i++)
		{
			out_strm.write(aesl_tmp_6[i]);
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "in1_strm_V"
		char* tvin_in1_strm_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_in1_strm_V);
		char* wrapc_stream_size_in_in1_strm_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in1_strm_V);
		char* wrapc_stream_ingress_status_in1_strm_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in1_strm_V);

		// "in2_strm_V"
		char* tvin_in2_strm_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_in2_strm_V);
		char* wrapc_stream_size_in_in2_strm_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in2_strm_V);
		char* wrapc_stream_ingress_status_in2_strm_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in2_strm_V);

		// "out_strm_V"
		char* tvin_out_strm_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_out_strm_V);
		char* tvout_out_strm_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_out_strm_V);
		char* wrapc_stream_size_out_out_strm_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_strm_V);
		char* wrapc_stream_egress_status_out_strm_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_strm_V);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// dump stream tvin: "in1_strm"
		std::vector<int > aesl_tmp_0;
		int aesl_tmp_1 = 0;
		while (!in1_strm.empty())
		{
			aesl_tmp_0.push_back(in1_strm.read());
			aesl_tmp_1++;
		}

		// dump stream tvin: "in2_strm"
		std::vector<int > aesl_tmp_3;
		int aesl_tmp_4 = 0;
		while (!in2_strm.empty())
		{
			aesl_tmp_3.push_back(in2_strm.read());
			aesl_tmp_4++;
		}

		// dump stream tvin: "out_strm"
		std::vector<int > aesl_tmp_6;
		int aesl_tmp_7 = 0;
		while (!out_strm.empty())
		{
			aesl_tmp_6.push_back(out_strm.read());
			aesl_tmp_7++;
		}

		// push back input stream: "in1_strm"
		for (int i = 0; i < aesl_tmp_1; i++)
		{
			in1_strm.write(aesl_tmp_0[i]);
		}

		// push back input stream: "in2_strm"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			in2_strm.write(aesl_tmp_3[i]);
		}

		// push back input stream: "out_strm"
		for (int i = 0; i < aesl_tmp_7; i++)
		{
			out_strm.write(aesl_tmp_6[i]);
		}

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		example(in1_strm, in2_strm, out_strm);

		CodeState = DUMP_OUTPUTS;
		// record input size to tv3: "in1_strm"
		int aesl_tmp_2 = in1_strm.size();

		// record input size to tv3: "in2_strm"
		int aesl_tmp_5 = in2_strm.size();

		// pop output stream: "out_strm"
		int aesl_tmp_8 = aesl_tmp_7;
		aesl_tmp_7 = 0;
     aesl_tmp_6.clear();
		while (!out_strm.empty())
		{
			aesl_tmp_6.push_back(out_strm.read());
			aesl_tmp_7++;
		}

		// [[transaction]]
		sprintf(tvin_in1_strm_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_in1_strm_V, tvin_in1_strm_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in1_strm_V, tvin_in1_strm_V);

		sc_bv<32>* in1_strm_V_tvin_wrapc_buffer = new sc_bv<32>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: in1_strm_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: in1_strm.V(31, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_0[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_0[0]
						// regulate_c_name       : in1_strm_V
						// input_type_conversion : aesl_tmp_0[i_0]
						if (&(aesl_tmp_0[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> in1_strm_V_tmp_mem;
							in1_strm_V_tmp_mem = aesl_tmp_0[i_0];
							in1_strm_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = in1_strm_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_in1_strm_V, "%s\n", (in1_strm_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_in1_strm_V, tvin_in1_strm_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_in1_strm_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in1_strm_V, stream_ingress_size_in1_strm_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in1_strm_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_in1_strm_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in1_strm_V, stream_ingress_size_in1_strm_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in1_strm_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_in1_strm_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in1_strm_V, stream_ingress_size_in1_strm_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in1_strm_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.in1_strm_V_depth);
		sprintf(tvin_in1_strm_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_in1_strm_V, tvin_in1_strm_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in1_strm_V, tvin_in1_strm_V);

		// release memory allocation
		delete [] in1_strm_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_in1_strm_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_in1_strm_V, wrapc_stream_size_in_in1_strm_V);
		sprintf(wrapc_stream_size_in_in1_strm_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_in1_strm_V, wrapc_stream_size_in_in1_strm_V);
		sprintf(wrapc_stream_size_in_in1_strm_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_in1_strm_V, wrapc_stream_size_in_in1_strm_V);

		// [[transaction]]
		sprintf(tvin_in2_strm_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_in2_strm_V, tvin_in2_strm_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in2_strm_V, tvin_in2_strm_V);

		sc_bv<32>* in2_strm_V_tvin_wrapc_buffer = new sc_bv<32>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: in2_strm_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: in2_strm.V(31, 0)
				{
					// carray: (0) => (aesl_tmp_4 - aesl_tmp_5 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_4 - aesl_tmp_5 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_3[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_3[0]
						// regulate_c_name       : in2_strm_V
						// input_type_conversion : aesl_tmp_3[i_0]
						if (&(aesl_tmp_3[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> in2_strm_V_tmp_mem;
							in2_strm_V_tmp_mem = aesl_tmp_3[i_0];
							in2_strm_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = in2_strm_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			sprintf(tvin_in2_strm_V, "%s\n", (in2_strm_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_in2_strm_V, tvin_in2_strm_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_4 > aesl_tmp_5)
     {
		sc_int<32> stream_ingress_size_in2_strm_V = aesl_tmp_4;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in2_strm_V, stream_ingress_size_in2_strm_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in2_strm_V, "\n");

		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			stream_ingress_size_in2_strm_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in2_strm_V, stream_ingress_size_in2_strm_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in2_strm_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_in2_strm_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in2_strm_V, stream_ingress_size_in2_strm_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in2_strm_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.in2_strm_V_depth);
		sprintf(tvin_in2_strm_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_in2_strm_V, tvin_in2_strm_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in2_strm_V, tvin_in2_strm_V);

		// release memory allocation
		delete [] in2_strm_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_in2_strm_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_in2_strm_V, wrapc_stream_size_in_in2_strm_V);
		sprintf(wrapc_stream_size_in_in2_strm_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_in2_strm_V, wrapc_stream_size_in_in2_strm_V);
		sprintf(wrapc_stream_size_in_in2_strm_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_in2_strm_V, wrapc_stream_size_in_in2_strm_V);

		// [[transaction]]
		sprintf(tvout_out_strm_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_out_strm_V, tvout_out_strm_V);

		sc_bv<32>* out_strm_V_tvout_wrapc_buffer = new sc_bv<32>[aesl_tmp_7 - aesl_tmp_8];

		// RTL Name: out_strm_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: out_strm.V(31, 0)
				{
					// carray: (aesl_tmp_8) => (aesl_tmp_7 - 1) @ (1)
					for (int i_0 = aesl_tmp_8; i_0 <= aesl_tmp_7 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_6[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_6[0]
						// regulate_c_name       : out_strm_V
						// input_type_conversion : aesl_tmp_6[i_0]
						if (&(aesl_tmp_6[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> out_strm_V_tmp_mem;
							out_strm_V_tmp_mem = aesl_tmp_6[i_0];
							out_strm_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = out_strm_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_7 - aesl_tmp_8; i++)
		{
			sprintf(tvout_out_strm_V, "%s\n", (out_strm_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_out_strm_V, tvout_out_strm_V);
		}

		tcl_file.set_num(aesl_tmp_7 - aesl_tmp_8, &tcl_file.out_strm_V_depth);
		sprintf(tvout_out_strm_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_out_strm_V, tvout_out_strm_V);

		// release memory allocation
		delete [] out_strm_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_out_strm_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_strm_V, wrapc_stream_size_out_out_strm_V);
		sprintf(wrapc_stream_size_out_out_strm_V, "%d\n", aesl_tmp_7 - aesl_tmp_8);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_strm_V, wrapc_stream_size_out_out_strm_V);
		sprintf(wrapc_stream_size_out_out_strm_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_strm_V, wrapc_stream_size_out_out_strm_V);

		// push back output stream: "out_strm"
		for (int i = 0; i < aesl_tmp_7; i++)
		{
			out_strm.write(aesl_tmp_6[i]);
		}

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "in1_strm_V"
		delete [] tvin_in1_strm_V;
		delete [] wrapc_stream_size_in_in1_strm_V;
		// release memory allocation: "in2_strm_V"
		delete [] tvin_in2_strm_V;
		delete [] wrapc_stream_size_in_in2_strm_V;
		// release memory allocation: "out_strm_V"
		delete [] tvout_out_strm_V;
		delete [] tvin_out_strm_V;
		delete [] wrapc_stream_size_out_out_strm_V;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

