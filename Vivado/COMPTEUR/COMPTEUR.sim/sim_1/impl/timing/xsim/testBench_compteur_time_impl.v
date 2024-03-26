// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Mar 20 08:16:56 2024
// Host        : insa-11281 running 64-bit Linux Mint 21.1
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/tgauther/Bureau/COMPTEUR/COMPTEUR.sim/sim_1/impl/timing/xsim/testBench_compteur_time_impl.v
// Design      : compteur_8_bits
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "56191cf2" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module compteur_8_bits
   (CK,
    SENS,
    EN,
    RST,
    LOAD,
    Din,
    Dout);
  input CK;
  input SENS;
  input EN;
  input RST;
  input LOAD;
  input [7:0]Din;
  output [7:0]Dout;

  wire CK;
  wire CK_IBUF;
  wire CK_IBUF_BUFG;
  wire [7:0]Din;
  wire [7:0]Din_IBUF;
  wire [7:0]Dout;
  wire [7:0]Dout_OBUF;
  wire EN;
  wire EN_IBUF;
  wire LOAD;
  wire LOAD_IBUF;
  wire RST;
  wire RST_IBUF;
  wire SENS;
  wire SENS_IBUF;
  wire clear;
  wire \count[4]_i_3_n_0 ;
  wire \count[4]_i_4_n_0 ;
  wire \count[4]_i_5_n_0 ;
  wire \count[4]_i_6_n_0 ;
  wire \count[7]_i_2_n_0 ;
  wire \count[7]_i_5_n_0 ;
  wire \count[7]_i_6_n_0 ;
  wire \count[7]_i_7_n_0 ;
  wire \count_reg[4]_i_2_n_0 ;
  wire \count_reg[4]_i_2_n_4 ;
  wire \count_reg[4]_i_2_n_5 ;
  wire \count_reg[4]_i_2_n_6 ;
  wire \count_reg[4]_i_2_n_7 ;
  wire \count_reg[7]_i_4_n_5 ;
  wire \count_reg[7]_i_4_n_6 ;
  wire \count_reg[7]_i_4_n_7 ;
  wire [7:0]p_0_in;
  wire [2:0]\NLW_count_reg[4]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[7]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[7]_i_4_O_UNCONNECTED ;

initial begin
 $sdf_annotate("testBench_compteur_time_impl.sdf",,,,"tool_control");
end
  BUFG CK_IBUF_BUFG_inst
       (.I(CK_IBUF),
        .O(CK_IBUF_BUFG));
  IBUF CK_IBUF_inst
       (.I(CK),
        .O(CK_IBUF));
  IBUF \Din_IBUF[0]_inst 
       (.I(Din[0]),
        .O(Din_IBUF[0]));
  IBUF \Din_IBUF[1]_inst 
       (.I(Din[1]),
        .O(Din_IBUF[1]));
  IBUF \Din_IBUF[2]_inst 
       (.I(Din[2]),
        .O(Din_IBUF[2]));
  IBUF \Din_IBUF[3]_inst 
       (.I(Din[3]),
        .O(Din_IBUF[3]));
  IBUF \Din_IBUF[4]_inst 
       (.I(Din[4]),
        .O(Din_IBUF[4]));
  IBUF \Din_IBUF[5]_inst 
       (.I(Din[5]),
        .O(Din_IBUF[5]));
  IBUF \Din_IBUF[6]_inst 
       (.I(Din[6]),
        .O(Din_IBUF[6]));
  IBUF \Din_IBUF[7]_inst 
       (.I(Din[7]),
        .O(Din_IBUF[7]));
  OBUF \Dout_OBUF[0]_inst 
       (.I(Dout_OBUF[0]),
        .O(Dout[0]));
  OBUF \Dout_OBUF[1]_inst 
       (.I(Dout_OBUF[1]),
        .O(Dout[1]));
  OBUF \Dout_OBUF[2]_inst 
       (.I(Dout_OBUF[2]),
        .O(Dout[2]));
  OBUF \Dout_OBUF[3]_inst 
       (.I(Dout_OBUF[3]),
        .O(Dout[3]));
  OBUF \Dout_OBUF[4]_inst 
       (.I(Dout_OBUF[4]),
        .O(Dout[4]));
  OBUF \Dout_OBUF[5]_inst 
       (.I(Dout_OBUF[5]),
        .O(Dout[5]));
  OBUF \Dout_OBUF[6]_inst 
       (.I(Dout_OBUF[6]),
        .O(Dout[6]));
  OBUF \Dout_OBUF[7]_inst 
       (.I(Dout_OBUF[7]),
        .O(Dout[7]));
  IBUF EN_IBUF_inst
       (.I(EN),
        .O(EN_IBUF));
  IBUF LOAD_IBUF_inst
       (.I(LOAD),
        .O(LOAD_IBUF));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  IBUF SENS_IBUF_inst
       (.I(SENS),
        .O(SENS_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \count[0]_i_1 
       (.I0(Din_IBUF[0]),
        .I1(LOAD_IBUF),
        .I2(Dout_OBUF[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[1]_i_1 
       (.I0(Din_IBUF[1]),
        .I1(LOAD_IBUF),
        .I2(\count_reg[4]_i_2_n_7 ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[2]_i_1 
       (.I0(Din_IBUF[2]),
        .I1(LOAD_IBUF),
        .I2(\count_reg[4]_i_2_n_6 ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[3]_i_1 
       (.I0(Din_IBUF[3]),
        .I1(LOAD_IBUF),
        .I2(\count_reg[4]_i_2_n_5 ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_1 
       (.I0(Din_IBUF[4]),
        .I1(LOAD_IBUF),
        .I2(\count_reg[4]_i_2_n_4 ),
        .O(p_0_in[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \count[4]_i_3 
       (.I0(Dout_OBUF[3]),
        .I1(Dout_OBUF[4]),
        .O(\count[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[4]_i_4 
       (.I0(Dout_OBUF[2]),
        .I1(Dout_OBUF[3]),
        .O(\count[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[4]_i_5 
       (.I0(Dout_OBUF[1]),
        .I1(Dout_OBUF[2]),
        .O(\count[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[4]_i_6 
       (.I0(Dout_OBUF[1]),
        .I1(SENS_IBUF),
        .O(\count[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[5]_i_1 
       (.I0(Din_IBUF[5]),
        .I1(LOAD_IBUF),
        .I2(\count_reg[7]_i_4_n_7 ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[6]_i_1 
       (.I0(Din_IBUF[6]),
        .I1(LOAD_IBUF),
        .I2(\count_reg[7]_i_4_n_6 ),
        .O(p_0_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \count[7]_i_1 
       (.I0(RST_IBUF),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \count[7]_i_2 
       (.I0(EN_IBUF),
        .O(\count[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \count[7]_i_3 
       (.I0(Din_IBUF[7]),
        .I1(LOAD_IBUF),
        .I2(\count_reg[7]_i_4_n_5 ),
        .O(p_0_in[7]));
  LUT2 #(
    .INIT(4'h9)) 
    \count[7]_i_5 
       (.I0(Dout_OBUF[6]),
        .I1(Dout_OBUF[7]),
        .O(\count[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[7]_i_6 
       (.I0(Dout_OBUF[5]),
        .I1(Dout_OBUF[6]),
        .O(\count[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[7]_i_7 
       (.I0(Dout_OBUF[4]),
        .I1(Dout_OBUF[5]),
        .O(\count[7]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CK_IBUF_BUFG),
        .CE(\count[7]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(Dout_OBUF[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CK_IBUF_BUFG),
        .CE(\count[7]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(Dout_OBUF[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CK_IBUF_BUFG),
        .CE(\count[7]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(Dout_OBUF[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CK_IBUF_BUFG),
        .CE(\count[7]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(Dout_OBUF[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CK_IBUF_BUFG),
        .CE(\count[7]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(Dout_OBUF[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \count_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[4]_i_2_n_0 ,\NLW_count_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(Dout_OBUF[0]),
        .DI({Dout_OBUF[3:1],SENS_IBUF}),
        .O({\count_reg[4]_i_2_n_4 ,\count_reg[4]_i_2_n_5 ,\count_reg[4]_i_2_n_6 ,\count_reg[4]_i_2_n_7 }),
        .S({\count[4]_i_3_n_0 ,\count[4]_i_4_n_0 ,\count[4]_i_5_n_0 ,\count[4]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CK_IBUF_BUFG),
        .CE(\count[7]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(Dout_OBUF[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CK_IBUF_BUFG),
        .CE(\count[7]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(Dout_OBUF[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CK_IBUF_BUFG),
        .CE(\count[7]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(Dout_OBUF[7]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \count_reg[7]_i_4 
       (.CI(\count_reg[4]_i_2_n_0 ),
        .CO(\NLW_count_reg[7]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Dout_OBUF[5:4]}),
        .O({\NLW_count_reg[7]_i_4_O_UNCONNECTED [3],\count_reg[7]_i_4_n_5 ,\count_reg[7]_i_4_n_6 ,\count_reg[7]_i_4_n_7 }),
        .S({1'b0,\count[7]_i_5_n_0 ,\count[7]_i_6_n_0 ,\count[7]_i_7_n_0 }));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
