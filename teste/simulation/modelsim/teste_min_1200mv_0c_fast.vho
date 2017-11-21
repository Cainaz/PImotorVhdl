-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "11/20/2017 13:36:39"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	teste IS
    PORT (
	in1 : IN std_logic;
	stop : IN std_logic;
	rst : IN std_logic;
	out1 : OUT std_logic;
	out2 : OUT std_logic;
	out3 : OUT std_logic;
	out4 : OUT std_logic;
	out5 : OUT std_logic;
	out6 : OUT std_logic;
	out7 : OUT std_logic;
	clk : IN std_logic
	);
END teste;

-- Design Ports Information
-- stop	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out3	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out4	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out5	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out6	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out7	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF teste IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in1 : std_logic;
SIGNAL ww_stop : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_out1 : std_logic;
SIGNAL ww_out2 : std_logic;
SIGNAL ww_out3 : std_logic;
SIGNAL ww_out4 : std_logic;
SIGNAL ww_out5 : std_logic;
SIGNAL ww_out6 : std_logic;
SIGNAL ww_out7 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \stop~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \in1~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \out1~output_o\ : std_logic;
SIGNAL \out2~output_o\ : std_logic;
SIGNAL \out3~output_o\ : std_logic;
SIGNAL \out4~output_o\ : std_logic;
SIGNAL \out5~output_o\ : std_logic;
SIGNAL \out6~output_o\ : std_logic;
SIGNAL \out7~output_o\ : std_logic;

BEGIN

ww_in1 <= in1;
ww_stop <= stop;
ww_rst <= rst;
out1 <= ww_out1;
out2 <= ww_out2;
out3 <= ww_out3;
out4 <= ww_out4;
out5 <= ww_out5;
out6 <= ww_out6;
out7 <= ww_out7;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X29_Y0_N9
\out1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \out1~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\out2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out2~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\out3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out3~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\out4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out4~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\out5~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out5~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\out6~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out6~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\out7~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out7~output_o\);

-- Location: IOIBUF_X33_Y22_N8
\stop~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stop,
	o => \stop~input_o\);

-- Location: IOIBUF_X29_Y31_N8
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\in1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1,
	o => \in1~input_o\);

-- Location: IOIBUF_X33_Y16_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

ww_out1 <= \out1~output_o\;

ww_out2 <= \out2~output_o\;

ww_out3 <= \out3~output_o\;

ww_out4 <= \out4~output_o\;

ww_out5 <= \out5~output_o\;

ww_out6 <= \out6~output_o\;

ww_out7 <= \out7~output_o\;
END structure;


