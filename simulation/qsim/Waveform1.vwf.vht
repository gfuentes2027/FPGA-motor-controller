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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/02/2024 12:52:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          motorcontroller
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY motorcontroller_vhd_vec_tst IS
END motorcontroller_vhd_vec_tst;
ARCHITECTURE motorcontroller_arch OF motorcontroller_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL KEY0 : STD_LOGIC;
SIGNAL KEY1 : STD_LOGIC;
SIGNAL LSEG0 : STD_LOGIC;
SIGNAL LSEG1 : STD_LOGIC;
SIGNAL LSEG2 : STD_LOGIC;
SIGNAL LSEG3 : STD_LOGIC;
SIGNAL LSEG4 : STD_LOGIC;
SIGNAL LSEG5 : STD_LOGIC;
SIGNAL LSEG6 : STD_LOGIC;
SIGNAL MOTORSPEED : STD_LOGIC;
SIGNAL RCOoutput : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL RSEG0 : STD_LOGIC;
SIGNAL RSEG1 : STD_LOGIC;
SIGNAL RSEG2 : STD_LOGIC;
SIGNAL RSEG3 : STD_LOGIC;
SIGNAL RSEG4 : STD_LOGIC;
SIGNAL RSEG5 : STD_LOGIC;
SIGNAL RSEG6 : STD_LOGIC;
SIGNAL TCLK : STD_LOGIC;
COMPONENT motorcontroller
	PORT (
	CLK : IN STD_LOGIC;
	KEY0 : IN STD_LOGIC;
	KEY1 : IN STD_LOGIC;
	LSEG0 : OUT STD_LOGIC;
	LSEG1 : OUT STD_LOGIC;
	LSEG2 : OUT STD_LOGIC;
	LSEG3 : OUT STD_LOGIC;
	LSEG4 : OUT STD_LOGIC;
	LSEG5 : OUT STD_LOGIC;
	LSEG6 : OUT STD_LOGIC;
	MOTORSPEED : OUT STD_LOGIC;
	RCOoutput : OUT STD_LOGIC;
	RESET : IN STD_LOGIC;
	RSEG0 : OUT STD_LOGIC;
	RSEG1 : OUT STD_LOGIC;
	RSEG2 : OUT STD_LOGIC;
	RSEG3 : OUT STD_LOGIC;
	RSEG4 : OUT STD_LOGIC;
	RSEG5 : OUT STD_LOGIC;
	RSEG6 : OUT STD_LOGIC;
	TCLK : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : motorcontroller
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	KEY0 => KEY0,
	KEY1 => KEY1,
	LSEG0 => LSEG0,
	LSEG1 => LSEG1,
	LSEG2 => LSEG2,
	LSEG3 => LSEG3,
	LSEG4 => LSEG4,
	LSEG5 => LSEG5,
	LSEG6 => LSEG6,
	MOTORSPEED => MOTORSPEED,
	RCOoutput => RCOoutput,
	RESET => RESET,
	RSEG0 => RSEG0,
	RSEG1 => RSEG1,
	RSEG2 => RSEG2,
	RSEG3 => RSEG3,
	RSEG4 => RSEG4,
	RSEG5 => RSEG5,
	RSEG6 => RSEG6,
	TCLK => TCLK
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- TCLK
t_prcs_TCLK: PROCESS
BEGIN
LOOP
	TCLK <= '0';
	WAIT FOR 5000 ps;
	TCLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_TCLK;

-- KEY0
t_prcs_KEY0: PROCESS
BEGIN
	KEY0 <= '0';
	WAIT FOR 30000 ps;
	KEY0 <= '1';
	WAIT FOR 20000 ps;
	KEY0 <= '0';
WAIT;
END PROCESS t_prcs_KEY0;

-- KEY1
t_prcs_KEY1: PROCESS
BEGIN
	KEY1 <= '0';
	WAIT FOR 10000 ps;
	KEY1 <= '1';
	WAIT FOR 20000 ps;
	KEY1 <= '0';
WAIT;
END PROCESS t_prcs_KEY1;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '1';
	WAIT FOR 10000 ps;
	RESET <= '0';
WAIT;
END PROCESS t_prcs_RESET;
END motorcontroller_arch;
