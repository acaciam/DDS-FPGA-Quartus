// megafunction wizard: %LPM_MUX%VBB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: LPM_MUX 

// ============================================================
// File Name: mux_OUT.v
// Megafunction Name(s):
// 			LPM_MUX
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 21.1.1 Build 850 06/23/2022 SJ Lite Edition
// ************************************************************

//Copyright (C) 2022  Intel Corporation. All rights reserved.
//Your use of Intel Corporation's design tools, logic functions 
//and other software and tools, and any partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Intel Program License 
//Subscription Agreement, the Intel Quartus Prime License Agreement,
//the Intel FPGA IP License Agreement, or other applicable license
//agreement, including, without limitation, that your use is for
//the sole purpose of programming logic devices manufactured by
//Intel and sold by Intel or its authorized distributors.  Please
//refer to the applicable agreement for further details, at
//https://fpgasoftware.intel.com/eula.

module mux_OUT (
	data0x,
	data1x,
	sel,
	result);

	input	[9:0]  data0x;
	input	[9:0]  data1x;
	input	  sel;
	output	[9:0]  result;

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "MAX 10"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_SIZE NUMERIC "2"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MUX"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "10"
// Retrieval info: CONSTANT: LPM_WIDTHS NUMERIC "1"
// Retrieval info: USED_PORT: data0x 0 0 10 0 INPUT NODEFVAL "data0x[9..0]"
// Retrieval info: USED_PORT: data1x 0 0 10 0 INPUT NODEFVAL "data1x[9..0]"
// Retrieval info: USED_PORT: result 0 0 10 0 OUTPUT NODEFVAL "result[9..0]"
// Retrieval info: USED_PORT: sel 0 0 0 0 INPUT NODEFVAL "sel"
// Retrieval info: CONNECT: @data 0 0 10 0 data0x 0 0 10 0
// Retrieval info: CONNECT: @data 0 0 10 10 data1x 0 0 10 0
// Retrieval info: CONNECT: @sel 0 0 1 0 sel 0 0 0 0
// Retrieval info: CONNECT: result 0 0 10 0 @result 0 0 10 0
// Retrieval info: GEN_FILE: TYPE_NORMAL mux_OUT.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL mux_OUT.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mux_OUT.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mux_OUT.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL mux_OUT_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mux_OUT_bb.v TRUE
// Retrieval info: LIB_FILE: lpm
