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
-- Generated on "12/02/2024 13:05:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          frequencyDivider
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY frequencyDivider_vhd_vec_tst IS
END frequencyDivider_vhd_vec_tst;
ARCHITECTURE frequencyDivider_arch OF frequencyDivider_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL FOUT : STD_LOGIC;
SIGNAL RCOout : STD_LOGIC;
SIGNAL TCLK : STD_LOGIC;
COMPONENT frequencyDivider
	PORT (
	CLK : IN STD_LOGIC;
	FOUT : OUT STD_LOGIC;
	RCOout : OUT STD_LOGIC;
	TCLK : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : frequencyDivider
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	FOUT => FOUT,
	RCOout => RCOout,
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
END frequencyDivider_arch;
