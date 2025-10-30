-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "12/02/2024 12:52:24"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	motorcontroller IS
    PORT (
	LSEG0 : OUT std_logic;
	RESET : IN std_logic;
	KEY0 : IN std_logic;
	KEY1 : IN std_logic;
	CLK : IN std_logic;
	LSEG1 : OUT std_logic;
	LSEG2 : OUT std_logic;
	LSEG3 : OUT std_logic;
	LSEG4 : OUT std_logic;
	LSEG5 : OUT std_logic;
	LSEG6 : OUT std_logic;
	RSEG0 : OUT std_logic;
	RSEG1 : OUT std_logic;
	RSEG2 : OUT std_logic;
	RSEG3 : OUT std_logic;
	RSEG4 : OUT std_logic;
	RSEG5 : OUT std_logic;
	RSEG6 : OUT std_logic;
	MOTORSPEED : OUT std_logic;
	TCLK : IN std_logic;
	RCOoutput : OUT std_logic
	);
END motorcontroller;

-- Design Ports Information
-- LSEG0	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LSEG1	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LSEG2	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LSEG3	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LSEG4	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LSEG5	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LSEG6	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSEG0	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSEG1	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSEG2	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSEG3	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSEG4	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSEG5	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSEG6	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MOTORSPEED	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RCOoutput	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY0	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY1	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TCLK	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF motorcontroller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LSEG0 : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_KEY0 : std_logic;
SIGNAL ww_KEY1 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_LSEG1 : std_logic;
SIGNAL ww_LSEG2 : std_logic;
SIGNAL ww_LSEG3 : std_logic;
SIGNAL ww_LSEG4 : std_logic;
SIGNAL ww_LSEG5 : std_logic;
SIGNAL ww_LSEG6 : std_logic;
SIGNAL ww_RSEG0 : std_logic;
SIGNAL ww_RSEG1 : std_logic;
SIGNAL ww_RSEG2 : std_logic;
SIGNAL ww_RSEG3 : std_logic;
SIGNAL ww_RSEG4 : std_logic;
SIGNAL ww_RSEG5 : std_logic;
SIGNAL ww_RSEG6 : std_logic;
SIGNAL ww_MOTORSPEED : std_logic;
SIGNAL ww_TCLK : std_logic;
SIGNAL ww_RCOoutput : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|inst3~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LSEG0~output_o\ : std_logic;
SIGNAL \LSEG1~output_o\ : std_logic;
SIGNAL \LSEG2~output_o\ : std_logic;
SIGNAL \LSEG3~output_o\ : std_logic;
SIGNAL \LSEG4~output_o\ : std_logic;
SIGNAL \LSEG5~output_o\ : std_logic;
SIGNAL \LSEG6~output_o\ : std_logic;
SIGNAL \RSEG0~output_o\ : std_logic;
SIGNAL \RSEG1~output_o\ : std_logic;
SIGNAL \RSEG2~output_o\ : std_logic;
SIGNAL \RSEG3~output_o\ : std_logic;
SIGNAL \RSEG4~output_o\ : std_logic;
SIGNAL \RSEG5~output_o\ : std_logic;
SIGNAL \RSEG6~output_o\ : std_logic;
SIGNAL \MOTORSPEED~output_o\ : std_logic;
SIGNAL \RCOoutput~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst6|Add0~0_combout\ : std_logic;
SIGNAL \inst6|count[0]~20_combout\ : std_logic;
SIGNAL \inst6|Add0~1\ : std_logic;
SIGNAL \inst6|Add0~2_combout\ : std_logic;
SIGNAL \inst6|Add0~3\ : std_logic;
SIGNAL \inst6|Add0~4_combout\ : std_logic;
SIGNAL \inst6|Add0~5\ : std_logic;
SIGNAL \inst6|Add0~6_combout\ : std_logic;
SIGNAL \inst6|Add0~7\ : std_logic;
SIGNAL \inst6|Add0~8_combout\ : std_logic;
SIGNAL \inst6|Add0~9\ : std_logic;
SIGNAL \inst6|Add0~10_combout\ : std_logic;
SIGNAL \inst6|Add0~11\ : std_logic;
SIGNAL \inst6|Add0~12_combout\ : std_logic;
SIGNAL \inst6|count~15_combout\ : std_logic;
SIGNAL \inst6|Add0~13\ : std_logic;
SIGNAL \inst6|Add0~14_combout\ : std_logic;
SIGNAL \inst6|Add0~15\ : std_logic;
SIGNAL \inst6|Add0~16_combout\ : std_logic;
SIGNAL \inst6|Add0~17\ : std_logic;
SIGNAL \inst6|Add0~18_combout\ : std_logic;
SIGNAL \inst6|Add0~19\ : std_logic;
SIGNAL \inst6|Add0~20_combout\ : std_logic;
SIGNAL \inst6|Add0~21\ : std_logic;
SIGNAL \inst6|Add0~22_combout\ : std_logic;
SIGNAL \inst6|count~14_combout\ : std_logic;
SIGNAL \inst6|Add0~23\ : std_logic;
SIGNAL \inst6|Add0~24_combout\ : std_logic;
SIGNAL \inst6|count~13_combout\ : std_logic;
SIGNAL \inst6|Add0~25\ : std_logic;
SIGNAL \inst6|Add0~26_combout\ : std_logic;
SIGNAL \inst6|count~12_combout\ : std_logic;
SIGNAL \inst6|Add0~27\ : std_logic;
SIGNAL \inst6|Add0~28_combout\ : std_logic;
SIGNAL \inst6|count~11_combout\ : std_logic;
SIGNAL \inst6|Add0~29\ : std_logic;
SIGNAL \inst6|Add0~30_combout\ : std_logic;
SIGNAL \inst6|Equal0~5_combout\ : std_logic;
SIGNAL \inst6|Equal0~6_combout\ : std_logic;
SIGNAL \inst6|Equal0~8_combout\ : std_logic;
SIGNAL \inst6|Equal0~7_combout\ : std_logic;
SIGNAL \inst6|Equal0~9_combout\ : std_logic;
SIGNAL \inst6|Add0~31\ : std_logic;
SIGNAL \inst6|Add0~32_combout\ : std_logic;
SIGNAL \inst6|count~10_combout\ : std_logic;
SIGNAL \inst6|Add0~33\ : std_logic;
SIGNAL \inst6|Add0~34_combout\ : std_logic;
SIGNAL \inst6|Add0~35\ : std_logic;
SIGNAL \inst6|Add0~36_combout\ : std_logic;
SIGNAL \inst6|count~9_combout\ : std_logic;
SIGNAL \inst6|Add0~37\ : std_logic;
SIGNAL \inst6|Add0~38_combout\ : std_logic;
SIGNAL \inst6|count~8_combout\ : std_logic;
SIGNAL \inst6|Equal0~3_combout\ : std_logic;
SIGNAL \inst6|Add0~39\ : std_logic;
SIGNAL \inst6|Add0~40_combout\ : std_logic;
SIGNAL \inst6|count~19_combout\ : std_logic;
SIGNAL \inst6|Add0~41\ : std_logic;
SIGNAL \inst6|Add0~42_combout\ : std_logic;
SIGNAL \inst6|count~18_combout\ : std_logic;
SIGNAL \inst6|Add0~43\ : std_logic;
SIGNAL \inst6|Add0~44_combout\ : std_logic;
SIGNAL \inst6|count~17_combout\ : std_logic;
SIGNAL \inst6|Add0~45\ : std_logic;
SIGNAL \inst6|Add0~46_combout\ : std_logic;
SIGNAL \inst6|Add0~47\ : std_logic;
SIGNAL \inst6|Add0~48_combout\ : std_logic;
SIGNAL \inst6|count~16_combout\ : std_logic;
SIGNAL \inst6|Add0~49\ : std_logic;
SIGNAL \inst6|Add0~50_combout\ : std_logic;
SIGNAL \inst6|Add0~51\ : std_logic;
SIGNAL \inst6|Add0~52_combout\ : std_logic;
SIGNAL \inst6|Add0~53\ : std_logic;
SIGNAL \inst6|Add0~54_combout\ : std_logic;
SIGNAL \inst6|Add0~55\ : std_logic;
SIGNAL \inst6|Add0~56_combout\ : std_logic;
SIGNAL \inst6|Add0~57\ : std_logic;
SIGNAL \inst6|Add0~58_combout\ : std_logic;
SIGNAL \inst6|Add0~59\ : std_logic;
SIGNAL \inst6|Add0~60_combout\ : std_logic;
SIGNAL \inst6|Add0~61\ : std_logic;
SIGNAL \inst6|Add0~62_combout\ : std_logic;
SIGNAL \inst6|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|Equal0~1_combout\ : std_logic;
SIGNAL \inst6|Equal0~2_combout\ : std_logic;
SIGNAL \inst6|Equal0~4_combout\ : std_logic;
SIGNAL \inst6|tmp~0_combout\ : std_logic;
SIGNAL \inst6|tmp~feeder_combout\ : std_logic;
SIGNAL \inst6|tmp~q\ : std_logic;
SIGNAL \inst6|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \inst7|inst41~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst40~q\ : std_logic;
SIGNAL \inst7|inst35~0_combout\ : std_logic;
SIGNAL \inst7|inst17~0_combout\ : std_logic;
SIGNAL \inst7|inst34~q\ : std_logic;
SIGNAL \inst7|inst47~0_combout\ : std_logic;
SIGNAL \inst7|inst46~q\ : std_logic;
SIGNAL \inst7|inst12~0_combout\ : std_logic;
SIGNAL \inst7|inst120~q\ : std_logic;
SIGNAL \inst7|inst17~1_combout\ : std_logic;
SIGNAL \inst7|inst16~q\ : std_logic;
SIGNAL \inst7|inst23~0_combout\ : std_logic;
SIGNAL \inst7|inst22~q\ : std_logic;
SIGNAL \inst7|inst29~0_combout\ : std_logic;
SIGNAL \inst7|inst28~q\ : std_logic;
SIGNAL \inst2|inst~combout\ : std_logic;
SIGNAL \inst2|inst3~combout\ : std_logic;
SIGNAL \inst2|inst2~combout\ : std_logic;
SIGNAL \inst|81~combout\ : std_logic;
SIGNAL \inst|82~0_combout\ : std_logic;
SIGNAL \inst|83~0_combout\ : std_logic;
SIGNAL \inst|84~0_combout\ : std_logic;
SIGNAL \inst|85~combout\ : std_logic;
SIGNAL \inst|86~0_combout\ : std_logic;
SIGNAL \inst|87~combout\ : std_logic;
SIGNAL \inst2|inst4~combout\ : std_logic;
SIGNAL \TCLK~input_o\ : std_logic;
SIGNAL \inst3|inst3~0_combout\ : std_logic;
SIGNAL \inst3|inst3~feeder_combout\ : std_logic;
SIGNAL \inst3|inst3~q\ : std_logic;
SIGNAL \inst3|inst3~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|inst|sub|9~0_combout\ : std_logic;
SIGNAL \inst5|inst|sub|9~q\ : std_logic;
SIGNAL \inst5|inst|sub|87~0_combout\ : std_logic;
SIGNAL \inst5|inst|sub|87~q\ : std_logic;
SIGNAL \inst5|inst|sub|99~0_combout\ : std_logic;
SIGNAL \inst5|inst|sub|99~q\ : std_logic;
SIGNAL \inst5|inst|sub|110~0_combout\ : std_logic;
SIGNAL \inst5|inst|sub|110~q\ : std_logic;
SIGNAL \inst5|inst|sub|104~combout\ : std_logic;
SIGNAL \inst5|inst1|sub|9~0_combout\ : std_logic;
SIGNAL \inst5|inst1|sub|9~q\ : std_logic;
SIGNAL \inst5|inst4|sub|90~combout\ : std_logic;
SIGNAL \inst5|inst2|sub|88~3_combout\ : std_logic;
SIGNAL \inst4|inst4~combout\ : std_logic;
SIGNAL \inst4|inst1~combout\ : std_logic;
SIGNAL \inst5|inst2|sub|91~combout\ : std_logic;
SIGNAL \inst5|inst2|sub|88~0_combout\ : std_logic;
SIGNAL \inst5|inst2|sub|88~1_combout\ : std_logic;
SIGNAL \inst5|inst2|sub|88~2_combout\ : std_logic;
SIGNAL \inst5|inst2|sub|84~combout\ : std_logic;
SIGNAL \inst5|inst2|sub|90~combout\ : std_logic;
SIGNAL \inst5|inst4|sub|87~0_combout\ : std_logic;
SIGNAL \inst5|inst4|sub|84~combout\ : std_logic;
SIGNAL \inst5|inst4|sub|87~1_combout\ : std_logic;
SIGNAL \inst3|inst|sub|9~0_combout\ : std_logic;
SIGNAL \inst3|inst|sub|9~q\ : std_logic;
SIGNAL \inst3|inst|sub|92~combout\ : std_logic;
SIGNAL \inst3|inst|sub|87~q\ : std_logic;
SIGNAL \inst3|inst|sub|102~combout\ : std_logic;
SIGNAL \inst3|inst|sub|99~q\ : std_logic;
SIGNAL \inst3|inst4|sub|96~0_combout\ : std_logic;
SIGNAL \inst3|inst4|sub|9~0_combout\ : std_logic;
SIGNAL \inst3|inst4|sub|9~q\ : std_logic;
SIGNAL \inst3|inst4|sub|96~1_combout\ : std_logic;
SIGNAL \inst3|inst4|sub|98~combout\ : std_logic;
SIGNAL \inst3|inst4|sub|99~q\ : std_logic;
SIGNAL \inst3|inst4|sub|110~0_combout\ : std_logic;
SIGNAL \inst3|inst4|sub|110~q\ : std_logic;
SIGNAL \inst3|inst|sub|107~combout\ : std_logic;
SIGNAL \inst3|inst|sub|108~combout\ : std_logic;
SIGNAL \inst3|inst|sub|110~q\ : std_logic;
SIGNAL \inst3|inst4|sub|87~0_combout\ : std_logic;
SIGNAL \inst3|inst4|sub|87~q\ : std_logic;
SIGNAL \inst3|inst4|sub|104~0_combout\ : std_logic;
SIGNAL \inst3|inst4|sub|104~combout\ : std_logic;
SIGNAL \inst6|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst2|ALT_INV_inst4~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LSEG0 <= ww_LSEG0;
ww_RESET <= RESET;
ww_KEY0 <= KEY0;
ww_KEY1 <= KEY1;
ww_CLK <= CLK;
LSEG1 <= ww_LSEG1;
LSEG2 <= ww_LSEG2;
LSEG3 <= ww_LSEG3;
LSEG4 <= ww_LSEG4;
LSEG5 <= ww_LSEG5;
LSEG6 <= ww_LSEG6;
RSEG0 <= ww_RSEG0;
RSEG1 <= ww_RSEG1;
RSEG2 <= ww_RSEG2;
RSEG3 <= ww_RSEG3;
RSEG4 <= ww_RSEG4;
RSEG5 <= ww_RSEG5;
RSEG6 <= ww_RSEG6;
MOTORSPEED <= ww_MOTORSPEED;
ww_TCLK <= TCLK;
RCOoutput <= ww_RCOoutput;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst3|inst3~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|inst3~q\);

\inst6|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|tmp~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);
\inst2|ALT_INV_inst4~combout\ <= NOT \inst2|inst4~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X20_Y0_N30
\LSEG0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|81~combout\,
	devoe => ww_devoe,
	o => \LSEG0~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\LSEG1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|82~0_combout\,
	devoe => ww_devoe,
	o => \LSEG1~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\LSEG2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|83~0_combout\,
	devoe => ww_devoe,
	o => \LSEG2~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\LSEG3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|84~0_combout\,
	devoe => ww_devoe,
	o => \LSEG3~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\LSEG4~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|85~combout\,
	devoe => ww_devoe,
	o => \LSEG4~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\LSEG5~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|86~0_combout\,
	devoe => ww_devoe,
	o => \LSEG5~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\LSEG6~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|87~combout\,
	devoe => ww_devoe,
	o => \LSEG6~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\RSEG0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RSEG0~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\RSEG1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst4~combout\,
	devoe => ww_devoe,
	o => \RSEG1~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\RSEG2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RSEG2~output_o\);

-- Location: IOOBUF_X78_Y45_N16
\RSEG3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RSEG3~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\RSEG4~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst4~combout\,
	devoe => ww_devoe,
	o => \RSEG4~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\RSEG5~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RSEG5~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\RSEG6~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_inst4~combout\,
	devoe => ww_devoe,
	o => \RSEG6~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\MOTORSPEED~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst4|sub|87~1_combout\,
	devoe => ww_devoe,
	o => \MOTORSPEED~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\RCOoutput~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst4|sub|104~combout\,
	devoe => ww_devoe,
	o => \RCOoutput~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X46_Y53_N0
\inst6|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~0_combout\ = \inst6|count\(0) $ (GND)
-- \inst6|Add0~1\ = CARRY(!\inst6|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(0),
	datad => VCC,
	combout => \inst6|Add0~0_combout\,
	cout => \inst6|Add0~1\);

-- Location: LCCOMB_X45_Y53_N4
\inst6|count[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count[0]~20_combout\ = !\inst6|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add0~0_combout\,
	combout => \inst6|count[0]~20_combout\);

-- Location: FF_X46_Y53_N27
\inst6|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst6|count[0]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(0));

-- Location: LCCOMB_X46_Y53_N2
\inst6|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~2_combout\ = (\inst6|count\(1) & (!\inst6|Add0~1\)) # (!\inst6|count\(1) & ((\inst6|Add0~1\) # (GND)))
-- \inst6|Add0~3\ = CARRY((!\inst6|Add0~1\) # (!\inst6|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(1),
	datad => VCC,
	cin => \inst6|Add0~1\,
	combout => \inst6|Add0~2_combout\,
	cout => \inst6|Add0~3\);

-- Location: FF_X46_Y53_N3
\inst6|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(1));

-- Location: LCCOMB_X46_Y53_N4
\inst6|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~4_combout\ = (\inst6|count\(2) & (\inst6|Add0~3\ $ (GND))) # (!\inst6|count\(2) & (!\inst6|Add0~3\ & VCC))
-- \inst6|Add0~5\ = CARRY((\inst6|count\(2) & !\inst6|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(2),
	datad => VCC,
	cin => \inst6|Add0~3\,
	combout => \inst6|Add0~4_combout\,
	cout => \inst6|Add0~5\);

-- Location: FF_X46_Y53_N5
\inst6|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(2));

-- Location: LCCOMB_X46_Y53_N6
\inst6|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~6_combout\ = (\inst6|count\(3) & (!\inst6|Add0~5\)) # (!\inst6|count\(3) & ((\inst6|Add0~5\) # (GND)))
-- \inst6|Add0~7\ = CARRY((!\inst6|Add0~5\) # (!\inst6|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(3),
	datad => VCC,
	cin => \inst6|Add0~5\,
	combout => \inst6|Add0~6_combout\,
	cout => \inst6|Add0~7\);

-- Location: FF_X46_Y53_N7
\inst6|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(3));

-- Location: LCCOMB_X46_Y53_N8
\inst6|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~8_combout\ = (\inst6|count\(4) & (\inst6|Add0~7\ $ (GND))) # (!\inst6|count\(4) & (!\inst6|Add0~7\ & VCC))
-- \inst6|Add0~9\ = CARRY((\inst6|count\(4) & !\inst6|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(4),
	datad => VCC,
	cin => \inst6|Add0~7\,
	combout => \inst6|Add0~8_combout\,
	cout => \inst6|Add0~9\);

-- Location: FF_X46_Y53_N9
\inst6|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(4));

-- Location: LCCOMB_X46_Y53_N10
\inst6|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~10_combout\ = (\inst6|count\(5) & (!\inst6|Add0~9\)) # (!\inst6|count\(5) & ((\inst6|Add0~9\) # (GND)))
-- \inst6|Add0~11\ = CARRY((!\inst6|Add0~9\) # (!\inst6|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(5),
	datad => VCC,
	cin => \inst6|Add0~9\,
	combout => \inst6|Add0~10_combout\,
	cout => \inst6|Add0~11\);

-- Location: FF_X46_Y53_N11
\inst6|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(5));

-- Location: LCCOMB_X46_Y53_N12
\inst6|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~12_combout\ = (\inst6|count\(6) & (\inst6|Add0~11\ $ (GND))) # (!\inst6|count\(6) & (!\inst6|Add0~11\ & VCC))
-- \inst6|Add0~13\ = CARRY((\inst6|count\(6) & !\inst6|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(6),
	datad => VCC,
	cin => \inst6|Add0~11\,
	combout => \inst6|Add0~12_combout\,
	cout => \inst6|Add0~13\);

-- Location: LCCOMB_X45_Y53_N20
\inst6|count~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count~15_combout\ = (\inst6|Add0~12_combout\ & ((!\inst6|Equal0~4_combout\) # (!\inst6|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~9_combout\,
	datac => \inst6|Add0~12_combout\,
	datad => \inst6|Equal0~4_combout\,
	combout => \inst6|count~15_combout\);

-- Location: FF_X46_Y53_N23
\inst6|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst6|count~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(6));

-- Location: LCCOMB_X46_Y53_N14
\inst6|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~14_combout\ = (\inst6|count\(7) & (!\inst6|Add0~13\)) # (!\inst6|count\(7) & ((\inst6|Add0~13\) # (GND)))
-- \inst6|Add0~15\ = CARRY((!\inst6|Add0~13\) # (!\inst6|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(7),
	datad => VCC,
	cin => \inst6|Add0~13\,
	combout => \inst6|Add0~14_combout\,
	cout => \inst6|Add0~15\);

-- Location: FF_X46_Y53_N15
\inst6|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(7));

-- Location: LCCOMB_X46_Y53_N16
\inst6|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~16_combout\ = (\inst6|count\(8) & (\inst6|Add0~15\ $ (GND))) # (!\inst6|count\(8) & (!\inst6|Add0~15\ & VCC))
-- \inst6|Add0~17\ = CARRY((\inst6|count\(8) & !\inst6|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(8),
	datad => VCC,
	cin => \inst6|Add0~15\,
	combout => \inst6|Add0~16_combout\,
	cout => \inst6|Add0~17\);

-- Location: FF_X46_Y53_N17
\inst6|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(8));

-- Location: LCCOMB_X46_Y53_N18
\inst6|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~18_combout\ = (\inst6|count\(9) & (!\inst6|Add0~17\)) # (!\inst6|count\(9) & ((\inst6|Add0~17\) # (GND)))
-- \inst6|Add0~19\ = CARRY((!\inst6|Add0~17\) # (!\inst6|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(9),
	datad => VCC,
	cin => \inst6|Add0~17\,
	combout => \inst6|Add0~18_combout\,
	cout => \inst6|Add0~19\);

-- Location: FF_X46_Y53_N19
\inst6|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(9));

-- Location: LCCOMB_X46_Y53_N20
\inst6|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~20_combout\ = (\inst6|count\(10) & (\inst6|Add0~19\ $ (GND))) # (!\inst6|count\(10) & (!\inst6|Add0~19\ & VCC))
-- \inst6|Add0~21\ = CARRY((\inst6|count\(10) & !\inst6|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(10),
	datad => VCC,
	cin => \inst6|Add0~19\,
	combout => \inst6|Add0~20_combout\,
	cout => \inst6|Add0~21\);

-- Location: FF_X46_Y53_N21
\inst6|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(10));

-- Location: LCCOMB_X46_Y53_N22
\inst6|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~22_combout\ = (\inst6|count\(11) & (!\inst6|Add0~21\)) # (!\inst6|count\(11) & ((\inst6|Add0~21\) # (GND)))
-- \inst6|Add0~23\ = CARRY((!\inst6|Add0~21\) # (!\inst6|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(11),
	datad => VCC,
	cin => \inst6|Add0~21\,
	combout => \inst6|Add0~22_combout\,
	cout => \inst6|Add0~23\);

-- Location: LCCOMB_X45_Y53_N26
\inst6|count~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count~14_combout\ = (\inst6|Add0~22_combout\ & ((!\inst6|Equal0~9_combout\) # (!\inst6|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Equal0~4_combout\,
	datac => \inst6|Equal0~9_combout\,
	datad => \inst6|Add0~22_combout\,
	combout => \inst6|count~14_combout\);

-- Location: FF_X45_Y53_N27
\inst6|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|count~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(11));

-- Location: LCCOMB_X46_Y53_N24
\inst6|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~24_combout\ = (\inst6|count\(12) & (\inst6|Add0~23\ $ (GND))) # (!\inst6|count\(12) & (!\inst6|Add0~23\ & VCC))
-- \inst6|Add0~25\ = CARRY((\inst6|count\(12) & !\inst6|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(12),
	datad => VCC,
	cin => \inst6|Add0~23\,
	combout => \inst6|Add0~24_combout\,
	cout => \inst6|Add0~25\);

-- Location: LCCOMB_X45_Y53_N8
\inst6|count~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count~13_combout\ = (\inst6|Add0~24_combout\ & ((!\inst6|Equal0~4_combout\) # (!\inst6|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~9_combout\,
	datab => \inst6|Equal0~4_combout\,
	datac => \inst6|Add0~24_combout\,
	combout => \inst6|count~13_combout\);

-- Location: FF_X45_Y53_N9
\inst6|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|count~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(12));

-- Location: LCCOMB_X46_Y53_N26
\inst6|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~26_combout\ = (\inst6|count\(13) & (!\inst6|Add0~25\)) # (!\inst6|count\(13) & ((\inst6|Add0~25\) # (GND)))
-- \inst6|Add0~27\ = CARRY((!\inst6|Add0~25\) # (!\inst6|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(13),
	datad => VCC,
	cin => \inst6|Add0~25\,
	combout => \inst6|Add0~26_combout\,
	cout => \inst6|Add0~27\);

-- Location: LCCOMB_X45_Y53_N18
\inst6|count~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count~12_combout\ = (\inst6|Add0~26_combout\ & ((!\inst6|Equal0~9_combout\) # (!\inst6|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Equal0~4_combout\,
	datac => \inst6|Equal0~9_combout\,
	datad => \inst6|Add0~26_combout\,
	combout => \inst6|count~12_combout\);

-- Location: FF_X45_Y53_N19
\inst6|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(13));

-- Location: LCCOMB_X46_Y53_N28
\inst6|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~28_combout\ = (\inst6|count\(14) & (\inst6|Add0~27\ $ (GND))) # (!\inst6|count\(14) & (!\inst6|Add0~27\ & VCC))
-- \inst6|Add0~29\ = CARRY((\inst6|count\(14) & !\inst6|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(14),
	datad => VCC,
	cin => \inst6|Add0~27\,
	combout => \inst6|Add0~28_combout\,
	cout => \inst6|Add0~29\);

-- Location: LCCOMB_X45_Y53_N24
\inst6|count~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count~11_combout\ = (\inst6|Add0~28_combout\ & ((!\inst6|Equal0~9_combout\) # (!\inst6|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Equal0~4_combout\,
	datac => \inst6|Equal0~9_combout\,
	datad => \inst6|Add0~28_combout\,
	combout => \inst6|count~11_combout\);

-- Location: FF_X45_Y53_N25
\inst6|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(14));

-- Location: LCCOMB_X46_Y53_N30
\inst6|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~30_combout\ = (\inst6|count\(15) & (!\inst6|Add0~29\)) # (!\inst6|count\(15) & ((\inst6|Add0~29\) # (GND)))
-- \inst6|Add0~31\ = CARRY((!\inst6|Add0~29\) # (!\inst6|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(15),
	datad => VCC,
	cin => \inst6|Add0~29\,
	combout => \inst6|Add0~30_combout\,
	cout => \inst6|Add0~31\);

-- Location: FF_X46_Y53_N31
\inst6|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(15));

-- Location: LCCOMB_X45_Y53_N10
\inst6|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Equal0~5_combout\ = (!\inst6|count\(15) & (\inst6|count\(13) & (\inst6|count\(12) & \inst6|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(15),
	datab => \inst6|count\(13),
	datac => \inst6|count\(12),
	datad => \inst6|count\(14),
	combout => \inst6|Equal0~5_combout\);

-- Location: LCCOMB_X45_Y53_N14
\inst6|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Equal0~6_combout\ = (\inst6|count\(11) & (!\inst6|count\(8) & (!\inst6|count\(10) & !\inst6|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(11),
	datab => \inst6|count\(8),
	datac => \inst6|count\(10),
	datad => \inst6|count\(9),
	combout => \inst6|Equal0~6_combout\);

-- Location: LCCOMB_X45_Y53_N22
\inst6|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Equal0~8_combout\ = (!\inst6|count\(1) & (\inst6|count\(0) & (!\inst6|count\(2) & !\inst6|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(1),
	datab => \inst6|count\(0),
	datac => \inst6|count\(2),
	datad => \inst6|count\(3),
	combout => \inst6|Equal0~8_combout\);

-- Location: LCCOMB_X45_Y53_N28
\inst6|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Equal0~7_combout\ = (\inst6|count\(6) & (!\inst6|count\(5) & (!\inst6|count\(4) & !\inst6|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(6),
	datab => \inst6|count\(5),
	datac => \inst6|count\(4),
	datad => \inst6|count\(7),
	combout => \inst6|Equal0~7_combout\);

-- Location: LCCOMB_X45_Y53_N30
\inst6|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Equal0~9_combout\ = (\inst6|Equal0~5_combout\ & (\inst6|Equal0~6_combout\ & (\inst6|Equal0~8_combout\ & \inst6|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~5_combout\,
	datab => \inst6|Equal0~6_combout\,
	datac => \inst6|Equal0~8_combout\,
	datad => \inst6|Equal0~7_combout\,
	combout => \inst6|Equal0~9_combout\);

-- Location: LCCOMB_X46_Y52_N0
\inst6|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~32_combout\ = (\inst6|count\(16) & (\inst6|Add0~31\ $ (GND))) # (!\inst6|count\(16) & (!\inst6|Add0~31\ & VCC))
-- \inst6|Add0~33\ = CARRY((\inst6|count\(16) & !\inst6|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(16),
	datad => VCC,
	cin => \inst6|Add0~31\,
	combout => \inst6|Add0~32_combout\,
	cout => \inst6|Add0~33\);

-- Location: LCCOMB_X45_Y52_N26
\inst6|count~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count~10_combout\ = (\inst6|Add0~32_combout\ & ((!\inst6|Equal0~4_combout\) # (!\inst6|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~9_combout\,
	datac => \inst6|Add0~32_combout\,
	datad => \inst6|Equal0~4_combout\,
	combout => \inst6|count~10_combout\);

-- Location: FF_X45_Y52_N27
\inst6|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(16));

-- Location: LCCOMB_X46_Y52_N2
\inst6|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~34_combout\ = (\inst6|count\(17) & (!\inst6|Add0~33\)) # (!\inst6|count\(17) & ((\inst6|Add0~33\) # (GND)))
-- \inst6|Add0~35\ = CARRY((!\inst6|Add0~33\) # (!\inst6|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(17),
	datad => VCC,
	cin => \inst6|Add0~33\,
	combout => \inst6|Add0~34_combout\,
	cout => \inst6|Add0~35\);

-- Location: FF_X46_Y52_N3
\inst6|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(17));

-- Location: LCCOMB_X46_Y52_N4
\inst6|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~36_combout\ = (\inst6|count\(18) & (\inst6|Add0~35\ $ (GND))) # (!\inst6|count\(18) & (!\inst6|Add0~35\ & VCC))
-- \inst6|Add0~37\ = CARRY((\inst6|count\(18) & !\inst6|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(18),
	datad => VCC,
	cin => \inst6|Add0~35\,
	combout => \inst6|Add0~36_combout\,
	cout => \inst6|Add0~37\);

-- Location: LCCOMB_X45_Y52_N18
\inst6|count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count~9_combout\ = (\inst6|Add0~36_combout\ & ((!\inst6|Equal0~9_combout\) # (!\inst6|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Equal0~4_combout\,
	datac => \inst6|Equal0~9_combout\,
	datad => \inst6|Add0~36_combout\,
	combout => \inst6|count~9_combout\);

-- Location: FF_X45_Y52_N19
\inst6|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(18));

-- Location: LCCOMB_X46_Y52_N6
\inst6|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~38_combout\ = (\inst6|count\(19) & (!\inst6|Add0~37\)) # (!\inst6|count\(19) & ((\inst6|Add0~37\) # (GND)))
-- \inst6|Add0~39\ = CARRY((!\inst6|Add0~37\) # (!\inst6|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(19),
	datad => VCC,
	cin => \inst6|Add0~37\,
	combout => \inst6|Add0~38_combout\,
	cout => \inst6|Add0~39\);

-- Location: LCCOMB_X45_Y52_N30
\inst6|count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count~8_combout\ = (\inst6|Add0~38_combout\ & ((!\inst6|Equal0~9_combout\) # (!\inst6|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Equal0~4_combout\,
	datac => \inst6|Equal0~9_combout\,
	datad => \inst6|Add0~38_combout\,
	combout => \inst6|count~8_combout\);

-- Location: FF_X45_Y52_N31
\inst6|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(19));

-- Location: LCCOMB_X45_Y52_N22
\inst6|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Equal0~3_combout\ = (\inst6|count\(16) & (\inst6|count\(18) & (\inst6|count\(19) & !\inst6|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(16),
	datab => \inst6|count\(18),
	datac => \inst6|count\(19),
	datad => \inst6|count\(17),
	combout => \inst6|Equal0~3_combout\);

-- Location: LCCOMB_X46_Y52_N8
\inst6|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~40_combout\ = (\inst6|count\(20) & (\inst6|Add0~39\ $ (GND))) # (!\inst6|count\(20) & (!\inst6|Add0~39\ & VCC))
-- \inst6|Add0~41\ = CARRY((\inst6|count\(20) & !\inst6|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(20),
	datad => VCC,
	cin => \inst6|Add0~39\,
	combout => \inst6|Add0~40_combout\,
	cout => \inst6|Add0~41\);

-- Location: LCCOMB_X45_Y52_N20
\inst6|count~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count~19_combout\ = (\inst6|Add0~40_combout\ & ((!\inst6|Equal0~4_combout\) # (!\inst6|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~9_combout\,
	datac => \inst6|Add0~40_combout\,
	datad => \inst6|Equal0~4_combout\,
	combout => \inst6|count~19_combout\);

-- Location: FF_X45_Y52_N21
\inst6|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|count~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(20));

-- Location: LCCOMB_X46_Y52_N10
\inst6|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~42_combout\ = (\inst6|count\(21) & (!\inst6|Add0~41\)) # (!\inst6|count\(21) & ((\inst6|Add0~41\) # (GND)))
-- \inst6|Add0~43\ = CARRY((!\inst6|Add0~41\) # (!\inst6|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(21),
	datad => VCC,
	cin => \inst6|Add0~41\,
	combout => \inst6|Add0~42_combout\,
	cout => \inst6|Add0~43\);

-- Location: LCCOMB_X45_Y52_N8
\inst6|count~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count~18_combout\ = (\inst6|Add0~42_combout\ & ((!\inst6|Equal0~4_combout\) # (!\inst6|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~9_combout\,
	datac => \inst6|Add0~42_combout\,
	datad => \inst6|Equal0~4_combout\,
	combout => \inst6|count~18_combout\);

-- Location: FF_X45_Y52_N9
\inst6|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(21));

-- Location: LCCOMB_X46_Y52_N12
\inst6|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~44_combout\ = (\inst6|count\(22) & (\inst6|Add0~43\ $ (GND))) # (!\inst6|count\(22) & (!\inst6|Add0~43\ & VCC))
-- \inst6|Add0~45\ = CARRY((\inst6|count\(22) & !\inst6|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(22),
	datad => VCC,
	cin => \inst6|Add0~43\,
	combout => \inst6|Add0~44_combout\,
	cout => \inst6|Add0~45\);

-- Location: LCCOMB_X45_Y52_N14
\inst6|count~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count~17_combout\ = (\inst6|Add0~44_combout\ & ((!\inst6|Equal0~4_combout\) # (!\inst6|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~9_combout\,
	datac => \inst6|Add0~44_combout\,
	datad => \inst6|Equal0~4_combout\,
	combout => \inst6|count~17_combout\);

-- Location: FF_X45_Y52_N15
\inst6|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|count~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(22));

-- Location: LCCOMB_X46_Y52_N14
\inst6|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~46_combout\ = (\inst6|count\(23) & (!\inst6|Add0~45\)) # (!\inst6|count\(23) & ((\inst6|Add0~45\) # (GND)))
-- \inst6|Add0~47\ = CARRY((!\inst6|Add0~45\) # (!\inst6|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(23),
	datad => VCC,
	cin => \inst6|Add0~45\,
	combout => \inst6|Add0~46_combout\,
	cout => \inst6|Add0~47\);

-- Location: FF_X46_Y52_N15
\inst6|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(23));

-- Location: LCCOMB_X46_Y52_N16
\inst6|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~48_combout\ = (\inst6|count\(24) & (\inst6|Add0~47\ $ (GND))) # (!\inst6|count\(24) & (!\inst6|Add0~47\ & VCC))
-- \inst6|Add0~49\ = CARRY((\inst6|count\(24) & !\inst6|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(24),
	datad => VCC,
	cin => \inst6|Add0~47\,
	combout => \inst6|Add0~48_combout\,
	cout => \inst6|Add0~49\);

-- Location: LCCOMB_X45_Y52_N10
\inst6|count~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|count~16_combout\ = (\inst6|Add0~48_combout\ & ((!\inst6|Equal0~9_combout\) # (!\inst6|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Equal0~4_combout\,
	datac => \inst6|Equal0~9_combout\,
	datad => \inst6|Add0~48_combout\,
	combout => \inst6|count~16_combout\);

-- Location: FF_X45_Y52_N11
\inst6|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|count~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(24));

-- Location: LCCOMB_X46_Y52_N18
\inst6|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~50_combout\ = (\inst6|count\(25) & (!\inst6|Add0~49\)) # (!\inst6|count\(25) & ((\inst6|Add0~49\) # (GND)))
-- \inst6|Add0~51\ = CARRY((!\inst6|Add0~49\) # (!\inst6|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(25),
	datad => VCC,
	cin => \inst6|Add0~49\,
	combout => \inst6|Add0~50_combout\,
	cout => \inst6|Add0~51\);

-- Location: FF_X46_Y52_N19
\inst6|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(25));

-- Location: LCCOMB_X46_Y52_N20
\inst6|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~52_combout\ = (\inst6|count\(26) & (\inst6|Add0~51\ $ (GND))) # (!\inst6|count\(26) & (!\inst6|Add0~51\ & VCC))
-- \inst6|Add0~53\ = CARRY((\inst6|count\(26) & !\inst6|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(26),
	datad => VCC,
	cin => \inst6|Add0~51\,
	combout => \inst6|Add0~52_combout\,
	cout => \inst6|Add0~53\);

-- Location: FF_X46_Y52_N21
\inst6|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(26));

-- Location: LCCOMB_X46_Y52_N22
\inst6|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~54_combout\ = (\inst6|count\(27) & (!\inst6|Add0~53\)) # (!\inst6|count\(27) & ((\inst6|Add0~53\) # (GND)))
-- \inst6|Add0~55\ = CARRY((!\inst6|Add0~53\) # (!\inst6|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(27),
	datad => VCC,
	cin => \inst6|Add0~53\,
	combout => \inst6|Add0~54_combout\,
	cout => \inst6|Add0~55\);

-- Location: FF_X46_Y52_N23
\inst6|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(27));

-- Location: LCCOMB_X46_Y52_N24
\inst6|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~56_combout\ = (\inst6|count\(28) & (\inst6|Add0~55\ $ (GND))) # (!\inst6|count\(28) & (!\inst6|Add0~55\ & VCC))
-- \inst6|Add0~57\ = CARRY((\inst6|count\(28) & !\inst6|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(28),
	datad => VCC,
	cin => \inst6|Add0~55\,
	combout => \inst6|Add0~56_combout\,
	cout => \inst6|Add0~57\);

-- Location: FF_X46_Y52_N25
\inst6|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(28));

-- Location: LCCOMB_X46_Y52_N26
\inst6|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~58_combout\ = (\inst6|count\(29) & (!\inst6|Add0~57\)) # (!\inst6|count\(29) & ((\inst6|Add0~57\) # (GND)))
-- \inst6|Add0~59\ = CARRY((!\inst6|Add0~57\) # (!\inst6|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(29),
	datad => VCC,
	cin => \inst6|Add0~57\,
	combout => \inst6|Add0~58_combout\,
	cout => \inst6|Add0~59\);

-- Location: FF_X46_Y52_N27
\inst6|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(29));

-- Location: LCCOMB_X46_Y52_N28
\inst6|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~60_combout\ = (\inst6|count\(30) & (\inst6|Add0~59\ $ (GND))) # (!\inst6|count\(30) & (!\inst6|Add0~59\ & VCC))
-- \inst6|Add0~61\ = CARRY((\inst6|count\(30) & !\inst6|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(30),
	datad => VCC,
	cin => \inst6|Add0~59\,
	combout => \inst6|Add0~60_combout\,
	cout => \inst6|Add0~61\);

-- Location: FF_X46_Y52_N29
\inst6|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(30));

-- Location: LCCOMB_X46_Y52_N30
\inst6|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Add0~62_combout\ = \inst6|count\(31) $ (\inst6|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(31),
	cin => \inst6|Add0~61\,
	combout => \inst6|Add0~62_combout\);

-- Location: FF_X46_Y52_N31
\inst6|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(31));

-- Location: LCCOMB_X45_Y52_N24
\inst6|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Equal0~0_combout\ = (!\inst6|count\(31) & (!\inst6|count\(30) & (!\inst6|count\(29) & !\inst6|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(31),
	datab => \inst6|count\(30),
	datac => \inst6|count\(29),
	datad => \inst6|count\(28),
	combout => \inst6|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y52_N4
\inst6|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Equal0~1_combout\ = (\inst6|count\(24) & (!\inst6|count\(27) & (!\inst6|count\(26) & !\inst6|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(24),
	datab => \inst6|count\(27),
	datac => \inst6|count\(26),
	datad => \inst6|count\(25),
	combout => \inst6|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y52_N12
\inst6|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Equal0~2_combout\ = (\inst6|count\(20) & (\inst6|count\(22) & (!\inst6|count\(23) & \inst6|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(20),
	datab => \inst6|count\(22),
	datac => \inst6|count\(23),
	datad => \inst6|count\(21),
	combout => \inst6|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y52_N0
\inst6|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|Equal0~4_combout\ = (\inst6|Equal0~3_combout\ & (\inst6|Equal0~0_combout\ & (\inst6|Equal0~1_combout\ & \inst6|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~3_combout\,
	datab => \inst6|Equal0~0_combout\,
	datac => \inst6|Equal0~1_combout\,
	datad => \inst6|Equal0~2_combout\,
	combout => \inst6|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y52_N2
\inst6|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|tmp~0_combout\ = \inst6|tmp~q\ $ (((\inst6|Equal0~4_combout\ & \inst6|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Equal0~4_combout\,
	datac => \inst6|Equal0~9_combout\,
	datad => \inst6|tmp~q\,
	combout => \inst6|tmp~0_combout\);

-- Location: LCCOMB_X45_Y52_N28
\inst6|tmp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|tmp~feeder_combout\ = \inst6|tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|tmp~0_combout\,
	combout => \inst6|tmp~feeder_combout\);

-- Location: FF_X45_Y52_N29
\inst6|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|tmp~q\);

-- Location: CLKCTRL_G10
\inst6|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|tmp~clkctrl_outclk\);

-- Location: IOIBUF_X20_Y0_N1
\KEY0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\KEY1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1,
	o => \KEY1~input_o\);

-- Location: LCCOMB_X19_Y3_N4
\inst7|inst41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst41~0_combout\ = (\KEY1~input_o\ & ((\inst7|inst40~q\) # ((!\KEY0~input_o\ & \inst7|inst34~q\)))) # (!\KEY1~input_o\ & (!\KEY0~input_o\ & (\inst7|inst40~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \KEY0~input_o\,
	datac => \inst7|inst40~q\,
	datad => \inst7|inst34~q\,
	combout => \inst7|inst41~0_combout\);

-- Location: IOIBUF_X0_Y18_N22
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G1
\RESET~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X19_Y3_N5
\inst7|inst40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|tmp~clkctrl_outclk\,
	d => \inst7|inst41~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst40~q\);

-- Location: LCCOMB_X19_Y3_N16
\inst7|inst35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst35~0_combout\ = (\KEY0~input_o\ & (\inst7|inst40~q\)) # (!\KEY0~input_o\ & ((\inst7|inst28~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY0~input_o\,
	datac => \inst7|inst40~q\,
	datad => \inst7|inst28~q\,
	combout => \inst7|inst35~0_combout\);

-- Location: LCCOMB_X19_Y3_N6
\inst7|inst17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst17~0_combout\ = \KEY0~input_o\ $ (\KEY1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY0~input_o\,
	datad => \KEY1~input_o\,
	combout => \inst7|inst17~0_combout\);

-- Location: FF_X19_Y3_N17
\inst7|inst34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|tmp~clkctrl_outclk\,
	d => \inst7|inst35~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst34~q\);

-- Location: LCCOMB_X19_Y3_N8
\inst7|inst47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst47~0_combout\ = (\KEY1~input_o\ & (((\inst7|inst46~q\)) # (!\KEY0~input_o\))) # (!\KEY1~input_o\ & (\inst7|inst46~q\ & ((!\inst7|inst120~q\) # (!\KEY0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1~input_o\,
	datab => \KEY0~input_o\,
	datac => \inst7|inst46~q\,
	datad => \inst7|inst120~q\,
	combout => \inst7|inst47~0_combout\);

-- Location: FF_X19_Y3_N9
\inst7|inst46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|tmp~clkctrl_outclk\,
	d => \inst7|inst47~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst46~q\);

-- Location: LCCOMB_X19_Y3_N10
\inst7|inst12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst12~0_combout\ = (\KEY0~input_o\ & ((\inst7|inst16~q\))) # (!\KEY0~input_o\ & (!\inst7|inst46~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY0~input_o\,
	datac => \inst7|inst46~q\,
	datad => \inst7|inst16~q\,
	combout => \inst7|inst12~0_combout\);

-- Location: FF_X19_Y3_N11
\inst7|inst120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|tmp~clkctrl_outclk\,
	d => \inst7|inst12~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst120~q\);

-- Location: LCCOMB_X19_Y3_N2
\inst7|inst17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst17~1_combout\ = (\KEY0~input_o\ & ((\inst7|inst22~q\))) # (!\KEY0~input_o\ & (\inst7|inst120~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst120~q\,
	datab => \KEY0~input_o\,
	datad => \inst7|inst22~q\,
	combout => \inst7|inst17~1_combout\);

-- Location: FF_X19_Y3_N3
\inst7|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|tmp~clkctrl_outclk\,
	d => \inst7|inst17~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst16~q\);

-- Location: LCCOMB_X19_Y3_N18
\inst7|inst23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst23~0_combout\ = (\KEY0~input_o\ & ((\inst7|inst28~q\))) # (!\KEY0~input_o\ & (\inst7|inst16~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY0~input_o\,
	datac => \inst7|inst16~q\,
	datad => \inst7|inst28~q\,
	combout => \inst7|inst23~0_combout\);

-- Location: FF_X19_Y3_N19
\inst7|inst22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|tmp~clkctrl_outclk\,
	d => \inst7|inst23~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst22~q\);

-- Location: LCCOMB_X19_Y3_N12
\inst7|inst29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|inst29~0_combout\ = (\KEY0~input_o\ & (\inst7|inst34~q\)) # (!\KEY0~input_o\ & ((\inst7|inst22~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst34~q\,
	datac => \KEY0~input_o\,
	datad => \inst7|inst22~q\,
	combout => \inst7|inst29~0_combout\);

-- Location: FF_X19_Y3_N13
\inst7|inst28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|tmp~clkctrl_outclk\,
	d => \inst7|inst29~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst7|inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst28~q\);

-- Location: LCCOMB_X19_Y3_N20
\inst2|inst\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst~combout\ = (\inst7|inst28~q\) # ((\inst7|inst22~q\) # (\inst7|inst34~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst28~q\,
	datac => \inst7|inst22~q\,
	datad => \inst7|inst34~q\,
	combout => \inst2|inst~combout\);

-- Location: LCCOMB_X19_Y3_N28
\inst2|inst3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3~combout\ = (\inst7|inst34~q\) # ((\inst7|inst120~q\) # ((\inst7|inst16~q\) # (\inst7|inst40~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst34~q\,
	datab => \inst7|inst120~q\,
	datac => \inst7|inst16~q\,
	datad => \inst7|inst40~q\,
	combout => \inst2|inst3~combout\);

-- Location: LCCOMB_X19_Y3_N30
\inst2|inst2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2~combout\ = (\inst7|inst34~q\) # ((\inst7|inst16~q\) # (\inst7|inst28~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst34~q\,
	datac => \inst7|inst16~q\,
	datad => \inst7|inst28~q\,
	combout => \inst2|inst2~combout\);

-- Location: LCCOMB_X19_Y1_N0
\inst|81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|81~combout\ = (\inst2|inst~combout\ & (((\inst7|inst40~q\ & \inst2|inst2~combout\)) # (!\inst2|inst3~combout\))) # (!\inst2|inst~combout\ & ((\inst7|inst40~q\ & ((\inst2|inst2~combout\))) # (!\inst7|inst40~q\ & (\inst2|inst3~combout\ & 
-- !\inst2|inst2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst~combout\,
	datab => \inst7|inst40~q\,
	datac => \inst2|inst3~combout\,
	datad => \inst2|inst2~combout\,
	combout => \inst|81~combout\);

-- Location: LCCOMB_X19_Y1_N2
\inst|82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|82~0_combout\ = (\inst2|inst3~combout\ & ((\inst2|inst2~combout\ & ((\inst7|inst40~q\))) # (!\inst2|inst2~combout\ & (\inst2|inst~combout\)))) # (!\inst2|inst3~combout\ & (((\inst2|inst2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst~combout\,
	datab => \inst7|inst40~q\,
	datac => \inst2|inst3~combout\,
	datad => \inst2|inst2~combout\,
	combout => \inst|82~0_combout\);

-- Location: LCCOMB_X19_Y3_N14
\inst|83~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|83~0_combout\ = (\inst7|inst40~q\ & ((\inst7|inst22~q\) # ((\inst7|inst28~q\) # (\inst7|inst34~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst22~q\,
	datab => \inst7|inst40~q\,
	datac => \inst7|inst28~q\,
	datad => \inst7|inst34~q\,
	combout => \inst|83~0_combout\);

-- Location: LCCOMB_X19_Y1_N12
\inst|84~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|84~0_combout\ = (\inst2|inst~combout\ & (\inst2|inst3~combout\ $ (!\inst2|inst2~combout\))) # (!\inst2|inst~combout\ & (\inst2|inst3~combout\ & !\inst2|inst2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst~combout\,
	datac => \inst2|inst3~combout\,
	datad => \inst2|inst2~combout\,
	combout => \inst|84~0_combout\);

-- Location: LCCOMB_X19_Y1_N10
\inst|85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|85~combout\ = (\inst2|inst3~combout\) # ((\inst2|inst~combout\ & !\inst2|inst2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst~combout\,
	datac => \inst2|inst3~combout\,
	datad => \inst2|inst2~combout\,
	combout => \inst|85~combout\);

-- Location: LCCOMB_X19_Y1_N28
\inst|86~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|86~0_combout\ = (\inst2|inst~combout\ & (((\inst2|inst3~combout\ & \inst2|inst2~combout\)))) # (!\inst2|inst~combout\ & ((\inst2|inst2~combout\) # ((!\inst7|inst40~q\ & \inst2|inst3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst~combout\,
	datab => \inst7|inst40~q\,
	datac => \inst2|inst3~combout\,
	datad => \inst2|inst2~combout\,
	combout => \inst|86~0_combout\);

-- Location: LCCOMB_X19_Y1_N22
\inst|87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|87~combout\ = (\inst2|inst~combout\ & (((\inst2|inst3~combout\ & \inst2|inst2~combout\)))) # (!\inst2|inst~combout\ & (!\inst7|inst40~q\ & ((!\inst2|inst2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst~combout\,
	datab => \inst7|inst40~q\,
	datac => \inst2|inst3~combout\,
	datad => \inst2|inst2~combout\,
	combout => \inst|87~combout\);

-- Location: LCCOMB_X19_Y3_N24
\inst2|inst4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst4~combout\ = (\inst7|inst34~q\) # ((\inst7|inst22~q\) # (\inst7|inst120~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst34~q\,
	datac => \inst7|inst22~q\,
	datad => \inst7|inst120~q\,
	combout => \inst2|inst4~combout\);

-- Location: IOIBUF_X46_Y54_N15
\TCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TCLK,
	o => \TCLK~input_o\);

-- Location: LCCOMB_X45_Y53_N12
\inst3|inst3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst3~0_combout\ = !\inst3|inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst3~q\,
	combout => \inst3|inst3~0_combout\);

-- Location: LCCOMB_X45_Y53_N16
\inst3|inst3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst3~feeder_combout\ = \inst3|inst3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst3~0_combout\,
	combout => \inst3|inst3~feeder_combout\);

-- Location: FF_X45_Y53_N17
\inst3|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~input_o\,
	d => \inst3|inst3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst3~q\);

-- Location: CLKCTRL_G12
\inst3|inst3~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|inst3~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|inst3~clkctrl_outclk\);

-- Location: LCCOMB_X20_Y3_N28
\inst5|inst|sub|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst|sub|9~0_combout\ = !\inst5|inst|sub|9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst|sub|9~q\,
	combout => \inst5|inst|sub|9~0_combout\);

-- Location: FF_X20_Y3_N29
\inst5|inst|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst3~clkctrl_outclk\,
	d => \inst5|inst|sub|9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|sub|9~q\);

-- Location: LCCOMB_X20_Y3_N8
\inst5|inst|sub|87~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst|sub|87~0_combout\ = \inst5|inst|sub|87~q\ $ (\inst5|inst|sub|9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst|sub|87~q\,
	datad => \inst5|inst|sub|9~q\,
	combout => \inst5|inst|sub|87~0_combout\);

-- Location: FF_X20_Y3_N9
\inst5|inst|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst3~clkctrl_outclk\,
	d => \inst5|inst|sub|87~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|sub|87~q\);

-- Location: LCCOMB_X20_Y3_N20
\inst5|inst|sub|99~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst|sub|99~0_combout\ = \inst5|inst|sub|99~q\ $ (((\inst5|inst|sub|9~q\ & \inst5|inst|sub|87~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst|sub|9~q\,
	datac => \inst5|inst|sub|99~q\,
	datad => \inst5|inst|sub|87~q\,
	combout => \inst5|inst|sub|99~0_combout\);

-- Location: FF_X20_Y3_N21
\inst5|inst|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst3~clkctrl_outclk\,
	d => \inst5|inst|sub|99~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|sub|99~q\);

-- Location: LCCOMB_X20_Y3_N26
\inst5|inst|sub|110~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst|sub|110~0_combout\ = \inst5|inst|sub|110~q\ $ (((\inst5|inst|sub|99~q\ & (\inst5|inst|sub|9~q\ & \inst5|inst|sub|87~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|sub|99~q\,
	datab => \inst5|inst|sub|9~q\,
	datac => \inst5|inst|sub|110~q\,
	datad => \inst5|inst|sub|87~q\,
	combout => \inst5|inst|sub|110~0_combout\);

-- Location: FF_X20_Y3_N27
\inst5|inst|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst3~clkctrl_outclk\,
	d => \inst5|inst|sub|110~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|sub|110~q\);

-- Location: LCCOMB_X20_Y3_N6
\inst5|inst|sub|104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst|sub|104~combout\ = (\inst5|inst|sub|99~q\ & (\inst5|inst|sub|87~q\ & (\inst5|inst|sub|110~q\ & \inst5|inst|sub|9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|sub|99~q\,
	datab => \inst5|inst|sub|87~q\,
	datac => \inst5|inst|sub|110~q\,
	datad => \inst5|inst|sub|9~q\,
	combout => \inst5|inst|sub|104~combout\);

-- Location: LCCOMB_X20_Y3_N0
\inst5|inst1|sub|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst1|sub|9~0_combout\ = \inst5|inst1|sub|9~q\ $ (\inst5|inst|sub|104~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst1|sub|9~q\,
	datad => \inst5|inst|sub|104~combout\,
	combout => \inst5|inst1|sub|9~0_combout\);

-- Location: FF_X20_Y3_N1
\inst5|inst1|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|inst3~clkctrl_outclk\,
	d => \inst5|inst1|sub|9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst1|sub|9~q\);

-- Location: LCCOMB_X20_Y3_N30
\inst5|inst4|sub|90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst4|sub|90~combout\ = \inst5|inst1|sub|9~q\ $ (((\inst7|inst28~q\) # ((\inst7|inst34~q\) # (\inst7|inst40~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst28~q\,
	datab => \inst7|inst34~q\,
	datac => \inst7|inst40~q\,
	datad => \inst5|inst1|sub|9~q\,
	combout => \inst5|inst4|sub|90~combout\);

-- Location: LCCOMB_X20_Y3_N14
\inst5|inst2|sub|88~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst2|sub|88~3_combout\ = (\inst5|inst|sub|99~q\ & (!\inst7|inst40~q\ & (!\inst7|inst22~q\ & !\inst7|inst120~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|sub|99~q\,
	datab => \inst7|inst40~q\,
	datac => \inst7|inst22~q\,
	datad => \inst7|inst120~q\,
	combout => \inst5|inst2|sub|88~3_combout\);

-- Location: LCCOMB_X19_Y3_N0
\inst4|inst4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst4~combout\ = (\inst7|inst22~q\) # ((\inst7|inst16~q\) # ((\inst7|inst40~q\) # (\inst7|inst34~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst22~q\,
	datab => \inst7|inst16~q\,
	datac => \inst7|inst40~q\,
	datad => \inst7|inst34~q\,
	combout => \inst4|inst4~combout\);

-- Location: LCCOMB_X19_Y3_N22
\inst4|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|inst1~combout\ = (\inst7|inst28~q\) # ((\inst7|inst16~q\) # (\inst7|inst22~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst28~q\,
	datab => \inst7|inst16~q\,
	datac => \inst7|inst22~q\,
	combout => \inst4|inst1~combout\);

-- Location: LCCOMB_X20_Y3_N18
\inst5|inst2|sub|91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst2|sub|91~combout\ = \inst5|inst|sub|99~q\ $ (((\inst7|inst40~q\) # ((\inst7|inst22~q\) # (\inst7|inst120~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|sub|99~q\,
	datab => \inst7|inst40~q\,
	datac => \inst7|inst22~q\,
	datad => \inst7|inst120~q\,
	combout => \inst5|inst2|sub|91~combout\);

-- Location: LCCOMB_X20_Y3_N16
\inst5|inst2|sub|88~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst2|sub|88~0_combout\ = (!\inst5|inst2|sub|91~combout\ & (\inst5|inst|sub|110~q\ $ (!\inst4|inst4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|sub|110~q\,
	datac => \inst4|inst4~combout\,
	datad => \inst5|inst2|sub|91~combout\,
	combout => \inst5|inst2|sub|88~0_combout\);

-- Location: LCCOMB_X19_Y3_N26
\inst5|inst2|sub|88~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst2|sub|88~1_combout\ = (\inst5|inst|sub|9~q\ & (!\inst7|inst28~q\ & (!\inst7|inst40~q\ & !\inst7|inst120~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|sub|9~q\,
	datab => \inst7|inst28~q\,
	datac => \inst7|inst40~q\,
	datad => \inst7|inst120~q\,
	combout => \inst5|inst2|sub|88~1_combout\);

-- Location: LCCOMB_X20_Y3_N12
\inst5|inst2|sub|88~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst2|sub|88~2_combout\ = (\inst5|inst2|sub|88~0_combout\ & ((\inst4|inst1~combout\ & (\inst5|inst2|sub|88~1_combout\ & \inst5|inst|sub|87~q\)) # (!\inst4|inst1~combout\ & ((\inst5|inst2|sub|88~1_combout\) # (\inst5|inst|sub|87~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1~combout\,
	datab => \inst5|inst2|sub|88~0_combout\,
	datac => \inst5|inst2|sub|88~1_combout\,
	datad => \inst5|inst|sub|87~q\,
	combout => \inst5|inst2|sub|88~2_combout\);

-- Location: LCCOMB_X20_Y3_N4
\inst5|inst2|sub|84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst2|sub|84~combout\ = LCELL((\inst5|inst2|sub|88~2_combout\) # ((\inst5|inst|sub|110~q\ & ((\inst5|inst2|sub|88~3_combout\) # (!\inst4|inst4~combout\))) # (!\inst5|inst|sub|110~q\ & (\inst5|inst2|sub|88~3_combout\ & !\inst4|inst4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|sub|110~q\,
	datab => \inst5|inst2|sub|88~3_combout\,
	datac => \inst4|inst4~combout\,
	datad => \inst5|inst2|sub|88~2_combout\,
	combout => \inst5|inst2|sub|84~combout\);

-- Location: LCCOMB_X20_Y3_N22
\inst5|inst2|sub|90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst2|sub|90~combout\ = \inst5|inst|sub|9~q\ $ (((\inst7|inst28~q\) # ((\inst7|inst40~q\) # (\inst7|inst120~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst28~q\,
	datab => \inst5|inst|sub|9~q\,
	datac => \inst7|inst40~q\,
	datad => \inst7|inst120~q\,
	combout => \inst5|inst2|sub|90~combout\);

-- Location: LCCOMB_X20_Y3_N2
\inst5|inst4|sub|87~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst4|sub|87~0_combout\ = ((\inst5|inst2|sub|90~combout\) # (\inst5|inst|sub|87~q\ $ (\inst4|inst1~combout\))) # (!\inst5|inst2|sub|88~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|sub|87~q\,
	datab => \inst5|inst2|sub|88~0_combout\,
	datac => \inst5|inst2|sub|90~combout\,
	datad => \inst4|inst1~combout\,
	combout => \inst5|inst4|sub|87~0_combout\);

-- Location: LCCOMB_X20_Y3_N10
\inst5|inst4|sub|84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst4|sub|84~combout\ = LCELL((!\inst7|inst28~q\ & (!\inst7|inst34~q\ & (!\inst7|inst40~q\ & \inst5|inst1|sub|9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst28~q\,
	datab => \inst7|inst34~q\,
	datac => \inst7|inst40~q\,
	datad => \inst5|inst1|sub|9~q\,
	combout => \inst5|inst4|sub|84~combout\);

-- Location: LCCOMB_X20_Y3_N24
\inst5|inst4|sub|87~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|inst4|sub|87~1_combout\ = (\inst5|inst4|sub|90~combout\ & (((!\inst5|inst4|sub|84~combout\)))) # (!\inst5|inst4|sub|90~combout\ & (!\inst5|inst2|sub|84~combout\ & (\inst5|inst4|sub|87~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst4|sub|90~combout\,
	datab => \inst5|inst2|sub|84~combout\,
	datac => \inst5|inst4|sub|87~0_combout\,
	datad => \inst5|inst4|sub|84~combout\,
	combout => \inst5|inst4|sub|87~1_combout\);

-- Location: LCCOMB_X32_Y1_N16
\inst3|inst|sub|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst|sub|9~0_combout\ = !\inst3|inst|sub|9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|sub|9~q\,
	combout => \inst3|inst|sub|9~0_combout\);

-- Location: FF_X32_Y1_N17
\inst3|inst|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst|sub|9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|sub|9~q\);

-- Location: LCCOMB_X32_Y1_N14
\inst3|inst|sub|92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst|sub|92~combout\ = (\inst3|inst4|sub|104~combout\) # (\inst3|inst|sub|9~q\ $ (\inst3|inst|sub|87~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|sub|9~q\,
	datac => \inst3|inst|sub|87~q\,
	datad => \inst3|inst4|sub|104~combout\,
	combout => \inst3|inst|sub|92~combout\);

-- Location: FF_X32_Y1_N15
\inst3|inst|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst|sub|92~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|sub|87~q\);

-- Location: LCCOMB_X32_Y1_N4
\inst3|inst|sub|102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst|sub|102~combout\ = (\inst3|inst4|sub|104~combout\) # (\inst3|inst|sub|99~q\ $ (((\inst3|inst|sub|9~q\ & \inst3|inst|sub|87~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|sub|9~q\,
	datab => \inst3|inst|sub|87~q\,
	datac => \inst3|inst|sub|99~q\,
	datad => \inst3|inst4|sub|104~combout\,
	combout => \inst3|inst|sub|102~combout\);

-- Location: FF_X32_Y1_N5
\inst3|inst|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst|sub|102~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|sub|99~q\);

-- Location: LCCOMB_X32_Y1_N2
\inst3|inst4|sub|96~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst4|sub|96~0_combout\ = (\inst3|inst|sub|9~q\ & (\inst3|inst|sub|87~q\ & \inst3|inst|sub|99~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|sub|9~q\,
	datab => \inst3|inst|sub|87~q\,
	datac => \inst3|inst|sub|99~q\,
	combout => \inst3|inst4|sub|96~0_combout\);

-- Location: LCCOMB_X32_Y1_N26
\inst3|inst4|sub|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst4|sub|9~0_combout\ = \inst3|inst4|sub|9~q\ $ (((\inst3|inst|sub|110~q\ & \inst3|inst4|sub|96~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|sub|110~q\,
	datac => \inst3|inst4|sub|9~q\,
	datad => \inst3|inst4|sub|96~0_combout\,
	combout => \inst3|inst4|sub|9~0_combout\);

-- Location: FF_X32_Y1_N27
\inst3|inst4|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst4|sub|9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst4|sub|9~q\);

-- Location: LCCOMB_X32_Y1_N6
\inst3|inst4|sub|96~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst4|sub|96~1_combout\ = (\inst3|inst|sub|110~q\ & (\inst3|inst4|sub|9~q\ & (\inst3|inst4|sub|87~q\ & \inst3|inst4|sub|96~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|sub|110~q\,
	datab => \inst3|inst4|sub|9~q\,
	datac => \inst3|inst4|sub|87~q\,
	datad => \inst3|inst4|sub|96~0_combout\,
	combout => \inst3|inst4|sub|96~1_combout\);

-- Location: LCCOMB_X32_Y1_N8
\inst3|inst4|sub|98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst4|sub|98~combout\ = \inst3|inst4|sub|99~q\ $ (\inst3|inst4|sub|96~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst4|sub|99~q\,
	datad => \inst3|inst4|sub|96~1_combout\,
	combout => \inst3|inst4|sub|98~combout\);

-- Location: FF_X32_Y1_N9
\inst3|inst4|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst4|sub|98~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst4|sub|99~q\);

-- Location: LCCOMB_X32_Y1_N24
\inst3|inst4|sub|110~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst4|sub|110~0_combout\ = \inst3|inst4|sub|110~q\ $ (((\inst3|inst4|sub|99~q\ & \inst3|inst4|sub|96~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst4|sub|99~q\,
	datac => \inst3|inst4|sub|110~q\,
	datad => \inst3|inst4|sub|96~1_combout\,
	combout => \inst3|inst4|sub|110~0_combout\);

-- Location: FF_X32_Y1_N25
\inst3|inst4|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst4|sub|110~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst4|sub|110~q\);

-- Location: LCCOMB_X32_Y1_N12
\inst3|inst|sub|107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst|sub|107~combout\ = \inst3|inst|sub|110~q\ $ (((\inst3|inst|sub|87~q\ & (\inst3|inst|sub|99~q\ & \inst3|inst|sub|9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|sub|110~q\,
	datab => \inst3|inst|sub|87~q\,
	datac => \inst3|inst|sub|99~q\,
	datad => \inst3|inst|sub|9~q\,
	combout => \inst3|inst|sub|107~combout\);

-- Location: LCCOMB_X32_Y1_N28
\inst3|inst|sub|108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst|sub|108~combout\ = (\inst3|inst|sub|107~combout\ & (((!\inst3|inst4|sub|96~1_combout\) # (!\inst3|inst4|sub|110~q\)) # (!\inst3|inst4|sub|99~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst4|sub|99~q\,
	datab => \inst3|inst4|sub|110~q\,
	datac => \inst3|inst4|sub|96~1_combout\,
	datad => \inst3|inst|sub|107~combout\,
	combout => \inst3|inst|sub|108~combout\);

-- Location: FF_X32_Y1_N29
\inst3|inst|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst|sub|108~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|sub|110~q\);

-- Location: LCCOMB_X32_Y1_N22
\inst3|inst4|sub|87~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst4|sub|87~0_combout\ = \inst3|inst4|sub|87~q\ $ (((\inst3|inst|sub|110~q\ & (\inst3|inst4|sub|9~q\ & \inst3|inst4|sub|96~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|sub|110~q\,
	datab => \inst3|inst4|sub|9~q\,
	datac => \inst3|inst4|sub|87~q\,
	datad => \inst3|inst4|sub|96~0_combout\,
	combout => \inst3|inst4|sub|87~0_combout\);

-- Location: FF_X32_Y1_N23
\inst3|inst4|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst4|sub|87~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst4|sub|87~q\);

-- Location: LCCOMB_X32_Y1_N30
\inst3|inst4|sub|104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst4|sub|104~0_combout\ = (\inst3|inst|sub|110~q\ & (\inst3|inst4|sub|99~q\ & \inst3|inst4|sub|9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|sub|110~q\,
	datac => \inst3|inst4|sub|99~q\,
	datad => \inst3|inst4|sub|9~q\,
	combout => \inst3|inst4|sub|104~0_combout\);

-- Location: LCCOMB_X32_Y1_N20
\inst3|inst4|sub|104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst4|sub|104~combout\ = (\inst3|inst4|sub|87~q\ & (\inst3|inst4|sub|110~q\ & (\inst3|inst4|sub|104~0_combout\ & \inst3|inst4|sub|96~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst4|sub|87~q\,
	datab => \inst3|inst4|sub|110~q\,
	datac => \inst3|inst4|sub|104~0_combout\,
	datad => \inst3|inst4|sub|96~0_combout\,
	combout => \inst3|inst4|sub|104~combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_LSEG0 <= \LSEG0~output_o\;

ww_LSEG1 <= \LSEG1~output_o\;

ww_LSEG2 <= \LSEG2~output_o\;

ww_LSEG3 <= \LSEG3~output_o\;

ww_LSEG4 <= \LSEG4~output_o\;

ww_LSEG5 <= \LSEG5~output_o\;

ww_LSEG6 <= \LSEG6~output_o\;

ww_RSEG0 <= \RSEG0~output_o\;

ww_RSEG1 <= \RSEG1~output_o\;

ww_RSEG2 <= \RSEG2~output_o\;

ww_RSEG3 <= \RSEG3~output_o\;

ww_RSEG4 <= \RSEG4~output_o\;

ww_RSEG5 <= \RSEG5~output_o\;

ww_RSEG6 <= \RSEG6~output_o\;

ww_MOTORSPEED <= \MOTORSPEED~output_o\;

ww_RCOoutput <= \RCOoutput~output_o\;
END structure;


