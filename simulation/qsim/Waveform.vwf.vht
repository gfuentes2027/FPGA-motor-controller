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
-- Generated on "12/01/2024 12:43:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          pwm
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pwm_vhd_vec_tst IS
END pwm_vhd_vec_tst;
ARCHITECTURE pwm_arch OF pwm_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL CV0 : STD_LOGIC;
SIGNAL CV1 : STD_LOGIC;
SIGNAL CV2 : STD_LOGIC;
SIGNAL CV3 : STD_LOGIC;
SIGNAL CV4 : STD_LOGIC;
SIGNAL PWM : STD_LOGIC;
COMPONENT pwm
	PORT (
	clk : IN STD_LOGIC;
	CV0 : IN STD_LOGIC;
	CV1 : IN STD_LOGIC;
	CV2 : IN STD_LOGIC;
	CV3 : IN STD_LOGIC;
	CV4 : IN STD_LOGIC;
	PWM : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pwm
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	CV0 => CV0,
	CV1 => CV1,
	CV2 => CV2,
	CV3 => CV3,
	CV4 => CV4,
	PWM => PWM
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- CV4
t_prcs_CV4: PROCESS
BEGIN
	CV4 <= '0';
	WAIT FOR 30000 ps;
	CV4 <= '1';
	WAIT FOR 30000 ps;
	CV4 <= '0';
WAIT;
END PROCESS t_prcs_CV4;

-- CV3
t_prcs_CV3: PROCESS
BEGIN
	CV3 <= '0';
	WAIT FOR 10000 ps;
	CV3 <= '1';
	WAIT FOR 20000 ps;
	CV3 <= '0';
	WAIT FOR 10000 ps;
	CV3 <= '1';
	WAIT FOR 20000 ps;
	CV3 <= '0';
WAIT;
END PROCESS t_prcs_CV3;

-- CV2
t_prcs_CV2: PROCESS
BEGIN
	CV2 <= '1';
	WAIT FOR 10000 ps;
	CV2 <= '0';
	WAIT FOR 10000 ps;
	CV2 <= '1';
	WAIT FOR 10000 ps;
	CV2 <= '0';
	WAIT FOR 20000 ps;
	CV2 <= '1';
	WAIT FOR 10000 ps;
	CV2 <= '0';
WAIT;
END PROCESS t_prcs_CV2;

-- CV1
t_prcs_CV1: PROCESS
BEGIN
	CV1 <= '0';
	WAIT FOR 10000 ps;
	CV1 <= '1';
	WAIT FOR 30000 ps;
	CV1 <= '0';
WAIT;
END PROCESS t_prcs_CV1;

-- CV0
t_prcs_CV0: PROCESS
BEGIN
	CV0 <= '1';
	WAIT FOR 10000 ps;
	CV0 <= '0';
	WAIT FOR 20000 ps;
	CV0 <= '1';
	WAIT FOR 10000 ps;
	CV0 <= '0';
	WAIT FOR 10000 ps;
	CV0 <= '1';
	WAIT FOR 10000 ps;
	CV0 <= '0';
WAIT;
END PROCESS t_prcs_CV0;
END pwm_arch;
