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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/07/2023 13:04:40"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VendingMachine IS
    PORT (
	CLOCK : IN std_logic;
	Confirmar : IN std_logic;
	Dinheiro : IN std_logic_vector(7 DOWNTO 0);
	Produto_selecionado : IN std_logic_vector(2 DOWNTO 0);
	Troco : OUT std_logic_vector(7 DOWNTO 0);
	Display : OUT std_logic_vector(6 DOWNTO 0);
	Produto_liberado : OUT std_logic
	);
END VendingMachine;

-- Design Ports Information
-- Troco[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Troco[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Troco[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Troco[3]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Troco[4]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Troco[5]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Troco[6]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Troco[7]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[0]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[5]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Produto_liberado	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dinheiro[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Produto_selecionado[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dinheiro[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Produto_selecionado[1]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dinheiro[2]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Produto_selecionado[2]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dinheiro[3]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dinheiro[4]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dinheiro[5]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dinheiro[6]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dinheiro[7]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Confirmar	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VendingMachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_Confirmar : std_logic;
SIGNAL ww_Dinheiro : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Produto_selecionado : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Troco : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Display : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Produto_liberado : std_logic;
SIGNAL \CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Ctrl|Selector10~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DPath|Comparador_preco|Equal0~2_combout\ : std_logic;
SIGNAL \Ctrl|Selector7~0_combout\ : std_logic;
SIGNAL \Dinheiro[2]~input_o\ : std_logic;
SIGNAL \Dinheiro[3]~input_o\ : std_logic;
SIGNAL \Dinheiro[4]~input_o\ : std_logic;
SIGNAL \Dinheiro[5]~input_o\ : std_logic;
SIGNAL \Troco[0]~output_o\ : std_logic;
SIGNAL \Troco[1]~output_o\ : std_logic;
SIGNAL \Troco[2]~output_o\ : std_logic;
SIGNAL \Troco[3]~output_o\ : std_logic;
SIGNAL \Troco[4]~output_o\ : std_logic;
SIGNAL \Troco[5]~output_o\ : std_logic;
SIGNAL \Troco[6]~output_o\ : std_logic;
SIGNAL \Troco[7]~output_o\ : std_logic;
SIGNAL \Display[0]~output_o\ : std_logic;
SIGNAL \Display[1]~output_o\ : std_logic;
SIGNAL \Display[2]~output_o\ : std_logic;
SIGNAL \Display[3]~output_o\ : std_logic;
SIGNAL \Display[4]~output_o\ : std_logic;
SIGNAL \Display[5]~output_o\ : std_logic;
SIGNAL \Display[6]~output_o\ : std_logic;
SIGNAL \Produto_liberado~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Produto_selecionado[0]~input_o\ : std_logic;
SIGNAL \DPath|Reg_Produto|registro[0]~feeder_combout\ : std_logic;
SIGNAL \Confirmar~input_o\ : std_logic;
SIGNAL \Produto_selecionado[2]~input_o\ : std_logic;
SIGNAL \Produto_selecionado[1]~input_o\ : std_logic;
SIGNAL \Ctrl|Produto_selecionado_ld~1_combout\ : std_logic;
SIGNAL \Dinheiro[1]~input_o\ : std_logic;
SIGNAL \Dinheiro[0]~input_o\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[0]~9\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[1]~11\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[2]~12_combout\ : std_logic;
SIGNAL \Ctrl|WideOr5~0_combout\ : std_logic;
SIGNAL \Ctrl|WideOr5~1_combout\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[0]~8_combout\ : std_logic;
SIGNAL \Ctrl|Selector7~1_combout\ : std_logic;
SIGNAL \Ctrl|Selector7~2_combout\ : std_logic;
SIGNAL \Dinheiro[7]~input_o\ : std_logic;
SIGNAL \Dinheiro[6]~input_o\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[2]~13\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[3]~14_combout\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[3]~15\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[4]~16_combout\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[4]~17\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[5]~18_combout\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[5]~19\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[6]~21\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[7]~22_combout\ : std_logic;
SIGNAL \DPath|Comparador_preco|Equal0~0_combout\ : std_logic;
SIGNAL \DPath|Comparador_preco|Equal0~1_combout\ : std_logic;
SIGNAL \Ctrl|Selector7~3_combout\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[1]~10_combout\ : std_logic;
SIGNAL \DPath|Comparador_preco|LessThan0~0_combout\ : std_logic;
SIGNAL \DPath|Comparador_preco|LessThan0~1_combout\ : std_logic;
SIGNAL \DPath|Comparador_preco|LessThan0~2_combout\ : std_logic;
SIGNAL \Ctrl|Selector8~0_combout\ : std_logic;
SIGNAL \Ctrl|Selector7~4_combout\ : std_logic;
SIGNAL \Ctrl|state.leiaDinheiro~q\ : std_logic;
SIGNAL \Ctrl|state.calculaDinheiro~q\ : std_logic;
SIGNAL \Ctrl|next_state.calculaTroco~0_combout\ : std_logic;
SIGNAL \Ctrl|state.calculaTroco~q\ : std_logic;
SIGNAL \Ctrl|state.entregaTroco~q\ : std_logic;
SIGNAL \DPath|Comparador_preco|Equal0~3_combout\ : std_logic;
SIGNAL \Ctrl|Selector8~1_combout\ : std_logic;
SIGNAL \Ctrl|state.entregaProduto~q\ : std_logic;
SIGNAL \Ctrl|next_state.inicio~combout\ : std_logic;
SIGNAL \Ctrl|state.inicio~q\ : std_logic;
SIGNAL \Ctrl|Selector5~0_combout\ : std_logic;
SIGNAL \Ctrl|state.validaProduto~q\ : std_logic;
SIGNAL \Ctrl|Selector0~0_combout\ : std_logic;
SIGNAL \Ctrl|state.confirma~q\ : std_logic;
SIGNAL \Ctrl|Selector6~0_combout\ : std_logic;
SIGNAL \Ctrl|state.cancela~q\ : std_logic;
SIGNAL \Ctrl|Produto_selecionado_clr~2_combout\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[0]~8_combout\ : std_logic;
SIGNAL \Ctrl|Troco_ld~combout\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[0]~9\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[1]~10_combout\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[1]~11\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[2]~12_combout\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[2]~13\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[3]~14_combout\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[3]~15\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[4]~16_combout\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[4]~17\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[5]~18_combout\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[6]~20_combout\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[5]~19\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[6]~20_combout\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[6]~21\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[7]~22_combout\ : std_logic;
SIGNAL \Ctrl|Selector10~0_combout\ : std_logic;
SIGNAL \Ctrl|Selector10~0clkctrl_outclk\ : std_logic;
SIGNAL \Ctrl|WideOr3~0_combout\ : std_logic;
SIGNAL \Ctrl|Selector4~0_combout\ : std_logic;
SIGNAL \Ctrl|WideOr0~0_combout\ : std_logic;
SIGNAL \Ctrl|WideOr1~combout\ : std_logic;
SIGNAL \DPath|BCD_Display|Mux6~0_combout\ : std_logic;
SIGNAL \DPath|BCD_Display|Mux5~0_combout\ : std_logic;
SIGNAL \DPath|BCD_Display|Mux4~0_combout\ : std_logic;
SIGNAL \DPath|BCD_Display|Mux3~0_combout\ : std_logic;
SIGNAL \DPath|BCD_Display|Mux2~0_combout\ : std_logic;
SIGNAL \DPath|BCD_Display|Mux1~0_combout\ : std_logic;
SIGNAL \DPath|BCD_Display|Mux0~0_combout\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DPath|Reg_Produto|registro\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DPath|Reg_Mensagem|registro\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DPath|Reg_Troco|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Ctrl|Mensagem_do_sistema\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Ctrl|ALT_INV_Produto_selecionado_clr~2_combout\ : std_logic;
SIGNAL \Ctrl|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \Ctrl|ALT_INV_Troco_ld~combout\ : std_logic;

BEGIN

ww_CLOCK <= CLOCK;
ww_Confirmar <= Confirmar;
ww_Dinheiro <= Dinheiro;
ww_Produto_selecionado <= Produto_selecionado;
Troco <= ww_Troco;
Display <= ww_Display;
Produto_liberado <= ww_Produto_liberado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK~input_o\);

\Ctrl|Selector10~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Ctrl|Selector10~0_combout\);
\Ctrl|ALT_INV_Produto_selecionado_clr~2_combout\ <= NOT \Ctrl|Produto_selecionado_clr~2_combout\;
\Ctrl|ALT_INV_WideOr5~0_combout\ <= NOT \Ctrl|WideOr5~0_combout\;
\Ctrl|ALT_INV_Troco_ld~combout\ <= NOT \Ctrl|Troco_ld~combout\;

-- Location: LCCOMB_X23_Y8_N26
\DPath|Comparador_preco|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Comparador_preco|Equal0~2_combout\ = (\DPath|Reg_Produto|registro\(2) & (\DPath|Reg_Dinheiro|registro\(2) & (\DPath|Reg_Dinheiro|registro\(1) $ (!\DPath|Reg_Produto|registro\(1))))) # (!\DPath|Reg_Produto|registro\(2) & 
-- (!\DPath|Reg_Dinheiro|registro\(2) & (\DPath|Reg_Dinheiro|registro\(1) $ (!\DPath|Reg_Produto|registro\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Produto|registro\(2),
	datab => \DPath|Reg_Dinheiro|registro\(2),
	datac => \DPath|Reg_Dinheiro|registro\(1),
	datad => \DPath|Reg_Produto|registro\(1),
	combout => \DPath|Comparador_preco|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y8_N28
\Ctrl|Selector7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|Selector7~0_combout\ = (\Confirmar~input_o\ & \Ctrl|state.confirma~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Confirmar~input_o\,
	datad => \Ctrl|state.confirma~q\,
	combout => \Ctrl|Selector7~0_combout\);

-- Location: IOIBUF_X29_Y0_N8
\Dinheiro[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dinheiro(2),
	o => \Dinheiro[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\Dinheiro[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dinheiro(3),
	o => \Dinheiro[3]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\Dinheiro[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dinheiro(4),
	o => \Dinheiro[4]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\Dinheiro[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dinheiro(5),
	o => \Dinheiro[5]~input_o\);

-- Location: IOOBUF_X33_Y15_N9
\Troco[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DPath|Reg_Troco|registro\(0),
	devoe => ww_devoe,
	o => \Troco[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\Troco[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DPath|Reg_Troco|registro\(1),
	devoe => ww_devoe,
	o => \Troco[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\Troco[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DPath|Reg_Troco|registro\(2),
	devoe => ww_devoe,
	o => \Troco[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Troco[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DPath|Reg_Troco|registro\(3),
	devoe => ww_devoe,
	o => \Troco[3]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\Troco[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DPath|Reg_Troco|registro\(4),
	devoe => ww_devoe,
	o => \Troco[4]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\Troco[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DPath|Reg_Troco|registro\(5),
	devoe => ww_devoe,
	o => \Troco[5]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\Troco[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DPath|Reg_Troco|registro\(6),
	devoe => ww_devoe,
	o => \Troco[6]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\Troco[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DPath|Reg_Troco|registro\(7),
	devoe => ww_devoe,
	o => \Troco[7]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\Display[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DPath|BCD_Display|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Display[0]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\Display[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DPath|BCD_Display|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Display[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\Display[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DPath|BCD_Display|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Display[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\Display[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DPath|BCD_Display|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Display[3]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\Display[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DPath|BCD_Display|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Display[4]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\Display[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DPath|BCD_Display|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Display[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\Display[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DPath|BCD_Display|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Display[6]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\Produto_liberado~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ctrl|state.entregaProduto~q\,
	devoe => ww_devoe,
	o => \Produto_liberado~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\CLOCK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G17
\CLOCK~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~inputclkctrl_outclk\);

-- Location: IOIBUF_X16_Y0_N1
\Produto_selecionado[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Produto_selecionado(0),
	o => \Produto_selecionado[0]~input_o\);

-- Location: LCCOMB_X22_Y8_N0
\DPath|Reg_Produto|registro[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Reg_Produto|registro[0]~feeder_combout\ = \Produto_selecionado[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Produto_selecionado[0]~input_o\,
	combout => \DPath|Reg_Produto|registro[0]~feeder_combout\);

-- Location: IOIBUF_X20_Y31_N1
\Confirmar~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Confirmar,
	o => \Confirmar~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\Produto_selecionado[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Produto_selecionado(2),
	o => \Produto_selecionado[2]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\Produto_selecionado[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Produto_selecionado(1),
	o => \Produto_selecionado[1]~input_o\);

-- Location: FF_X22_Y8_N21
\DPath|Reg_Produto|registro[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	asdata => \Produto_selecionado[1]~input_o\,
	clrn => \Ctrl|ALT_INV_Produto_selecionado_clr~2_combout\,
	sload => VCC,
	ena => \Ctrl|Produto_selecionado_ld~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Produto|registro\(1));

-- Location: LCCOMB_X22_Y8_N28
\Ctrl|Produto_selecionado_ld~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|Produto_selecionado_ld~1_combout\ = (\Ctrl|state.validaProduto~q\ & (!\DPath|Reg_Produto|registro\(0) & (!\DPath|Reg_Produto|registro\(2) & !\DPath|Reg_Produto|registro\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.validaProduto~q\,
	datab => \DPath|Reg_Produto|registro\(0),
	datac => \DPath|Reg_Produto|registro\(2),
	datad => \DPath|Reg_Produto|registro\(1),
	combout => \Ctrl|Produto_selecionado_ld~1_combout\);

-- Location: FF_X22_Y8_N15
\DPath|Reg_Produto|registro[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	asdata => \Produto_selecionado[2]~input_o\,
	clrn => \Ctrl|ALT_INV_Produto_selecionado_clr~2_combout\,
	sload => VCC,
	ena => \Ctrl|Produto_selecionado_ld~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Produto|registro\(2));

-- Location: IOIBUF_X24_Y0_N1
\Dinheiro[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dinheiro(1),
	o => \Dinheiro[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\Dinheiro[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dinheiro(0),
	o => \Dinheiro[0]~input_o\);

-- Location: LCCOMB_X23_Y8_N10
\DPath|Reg_Dinheiro|registro[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Reg_Dinheiro|registro[0]~8_combout\ = (\DPath|Reg_Dinheiro|registro\(0) & (\Dinheiro[0]~input_o\ $ (VCC))) # (!\DPath|Reg_Dinheiro|registro\(0) & (\Dinheiro[0]~input_o\ & VCC))
-- \DPath|Reg_Dinheiro|registro[0]~9\ = CARRY((\DPath|Reg_Dinheiro|registro\(0) & \Dinheiro[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(0),
	datab => \Dinheiro[0]~input_o\,
	datad => VCC,
	combout => \DPath|Reg_Dinheiro|registro[0]~8_combout\,
	cout => \DPath|Reg_Dinheiro|registro[0]~9\);

-- Location: LCCOMB_X23_Y8_N12
\DPath|Reg_Dinheiro|registro[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Reg_Dinheiro|registro[1]~10_combout\ = (\DPath|Reg_Dinheiro|registro\(1) & ((\Dinheiro[1]~input_o\ & (\DPath|Reg_Dinheiro|registro[0]~9\ & VCC)) # (!\Dinheiro[1]~input_o\ & (!\DPath|Reg_Dinheiro|registro[0]~9\)))) # 
-- (!\DPath|Reg_Dinheiro|registro\(1) & ((\Dinheiro[1]~input_o\ & (!\DPath|Reg_Dinheiro|registro[0]~9\)) # (!\Dinheiro[1]~input_o\ & ((\DPath|Reg_Dinheiro|registro[0]~9\) # (GND)))))
-- \DPath|Reg_Dinheiro|registro[1]~11\ = CARRY((\DPath|Reg_Dinheiro|registro\(1) & (!\Dinheiro[1]~input_o\ & !\DPath|Reg_Dinheiro|registro[0]~9\)) # (!\DPath|Reg_Dinheiro|registro\(1) & ((!\DPath|Reg_Dinheiro|registro[0]~9\) # (!\Dinheiro[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(1),
	datab => \Dinheiro[1]~input_o\,
	datad => VCC,
	cin => \DPath|Reg_Dinheiro|registro[0]~9\,
	combout => \DPath|Reg_Dinheiro|registro[1]~10_combout\,
	cout => \DPath|Reg_Dinheiro|registro[1]~11\);

-- Location: LCCOMB_X23_Y8_N14
\DPath|Reg_Dinheiro|registro[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Reg_Dinheiro|registro[2]~12_combout\ = ((\Dinheiro[2]~input_o\ $ (\DPath|Reg_Dinheiro|registro\(2) $ (!\DPath|Reg_Dinheiro|registro[1]~11\)))) # (GND)
-- \DPath|Reg_Dinheiro|registro[2]~13\ = CARRY((\Dinheiro[2]~input_o\ & ((\DPath|Reg_Dinheiro|registro\(2)) # (!\DPath|Reg_Dinheiro|registro[1]~11\))) # (!\Dinheiro[2]~input_o\ & (\DPath|Reg_Dinheiro|registro\(2) & !\DPath|Reg_Dinheiro|registro[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dinheiro[2]~input_o\,
	datab => \DPath|Reg_Dinheiro|registro\(2),
	datad => VCC,
	cin => \DPath|Reg_Dinheiro|registro[1]~11\,
	combout => \DPath|Reg_Dinheiro|registro[2]~12_combout\,
	cout => \DPath|Reg_Dinheiro|registro[2]~13\);

-- Location: LCCOMB_X23_Y8_N8
\Ctrl|WideOr5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|WideOr5~0_combout\ = (!\Ctrl|state.entregaTroco~q\ & (!\Ctrl|state.calculaDinheiro~q\ & (!\Ctrl|state.leiaDinheiro~q\ & !\Ctrl|state.calculaTroco~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.entregaTroco~q\,
	datab => \Ctrl|state.calculaDinheiro~q\,
	datac => \Ctrl|state.leiaDinheiro~q\,
	datad => \Ctrl|state.calculaTroco~q\,
	combout => \Ctrl|WideOr5~0_combout\);

-- Location: LCCOMB_X23_Y8_N0
\Ctrl|WideOr5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|WideOr5~1_combout\ = (\Ctrl|state.entregaTroco~q\) # (\Ctrl|state.leiaDinheiro~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.entregaTroco~q\,
	datac => \Ctrl|state.leiaDinheiro~q\,
	combout => \Ctrl|WideOr5~1_combout\);

-- Location: FF_X23_Y8_N15
\DPath|Reg_Dinheiro|registro[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \DPath|Reg_Dinheiro|registro[2]~12_combout\,
	clrn => \Ctrl|ALT_INV_WideOr5~0_combout\,
	ena => \Ctrl|WideOr5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Dinheiro|registro\(2));

-- Location: FF_X23_Y8_N11
\DPath|Reg_Dinheiro|registro[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \DPath|Reg_Dinheiro|registro[0]~8_combout\,
	clrn => \Ctrl|ALT_INV_WideOr5~0_combout\,
	ena => \Ctrl|WideOr5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Dinheiro|registro\(0));

-- Location: LCCOMB_X22_Y8_N10
\Ctrl|Selector7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|Selector7~1_combout\ = (\DPath|Reg_Dinheiro|registro\(1) & (\DPath|Reg_Produto|registro\(1) & (!\DPath|Reg_Dinheiro|registro\(0) & \DPath|Reg_Produto|registro\(0)))) # (!\DPath|Reg_Dinheiro|registro\(1) & ((\DPath|Reg_Produto|registro\(1)) # 
-- ((!\DPath|Reg_Dinheiro|registro\(0) & \DPath|Reg_Produto|registro\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(1),
	datab => \DPath|Reg_Produto|registro\(1),
	datac => \DPath|Reg_Dinheiro|registro\(0),
	datad => \DPath|Reg_Produto|registro\(0),
	combout => \Ctrl|Selector7~1_combout\);

-- Location: LCCOMB_X22_Y8_N6
\Ctrl|Selector7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|Selector7~2_combout\ = (\DPath|Reg_Produto|registro\(2) & ((\Ctrl|Selector7~1_combout\) # (!\DPath|Reg_Dinheiro|registro\(2)))) # (!\DPath|Reg_Produto|registro\(2) & (!\DPath|Reg_Dinheiro|registro\(2) & \Ctrl|Selector7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_Produto|registro\(2),
	datac => \DPath|Reg_Dinheiro|registro\(2),
	datad => \Ctrl|Selector7~1_combout\,
	combout => \Ctrl|Selector7~2_combout\);

-- Location: IOIBUF_X24_Y0_N8
\Dinheiro[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dinheiro(7),
	o => \Dinheiro[7]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\Dinheiro[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dinheiro(6),
	o => \Dinheiro[6]~input_o\);

-- Location: LCCOMB_X23_Y8_N16
\DPath|Reg_Dinheiro|registro[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Reg_Dinheiro|registro[3]~14_combout\ = (\Dinheiro[3]~input_o\ & ((\DPath|Reg_Dinheiro|registro\(3) & (\DPath|Reg_Dinheiro|registro[2]~13\ & VCC)) # (!\DPath|Reg_Dinheiro|registro\(3) & (!\DPath|Reg_Dinheiro|registro[2]~13\)))) # 
-- (!\Dinheiro[3]~input_o\ & ((\DPath|Reg_Dinheiro|registro\(3) & (!\DPath|Reg_Dinheiro|registro[2]~13\)) # (!\DPath|Reg_Dinheiro|registro\(3) & ((\DPath|Reg_Dinheiro|registro[2]~13\) # (GND)))))
-- \DPath|Reg_Dinheiro|registro[3]~15\ = CARRY((\Dinheiro[3]~input_o\ & (!\DPath|Reg_Dinheiro|registro\(3) & !\DPath|Reg_Dinheiro|registro[2]~13\)) # (!\Dinheiro[3]~input_o\ & ((!\DPath|Reg_Dinheiro|registro[2]~13\) # (!\DPath|Reg_Dinheiro|registro\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dinheiro[3]~input_o\,
	datab => \DPath|Reg_Dinheiro|registro\(3),
	datad => VCC,
	cin => \DPath|Reg_Dinheiro|registro[2]~13\,
	combout => \DPath|Reg_Dinheiro|registro[3]~14_combout\,
	cout => \DPath|Reg_Dinheiro|registro[3]~15\);

-- Location: FF_X23_Y8_N17
\DPath|Reg_Dinheiro|registro[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \DPath|Reg_Dinheiro|registro[3]~14_combout\,
	clrn => \Ctrl|ALT_INV_WideOr5~0_combout\,
	ena => \Ctrl|WideOr5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Dinheiro|registro\(3));

-- Location: LCCOMB_X23_Y8_N18
\DPath|Reg_Dinheiro|registro[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Reg_Dinheiro|registro[4]~16_combout\ = ((\Dinheiro[4]~input_o\ $ (\DPath|Reg_Dinheiro|registro\(4) $ (!\DPath|Reg_Dinheiro|registro[3]~15\)))) # (GND)
-- \DPath|Reg_Dinheiro|registro[4]~17\ = CARRY((\Dinheiro[4]~input_o\ & ((\DPath|Reg_Dinheiro|registro\(4)) # (!\DPath|Reg_Dinheiro|registro[3]~15\))) # (!\Dinheiro[4]~input_o\ & (\DPath|Reg_Dinheiro|registro\(4) & !\DPath|Reg_Dinheiro|registro[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dinheiro[4]~input_o\,
	datab => \DPath|Reg_Dinheiro|registro\(4),
	datad => VCC,
	cin => \DPath|Reg_Dinheiro|registro[3]~15\,
	combout => \DPath|Reg_Dinheiro|registro[4]~16_combout\,
	cout => \DPath|Reg_Dinheiro|registro[4]~17\);

-- Location: FF_X23_Y8_N19
\DPath|Reg_Dinheiro|registro[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \DPath|Reg_Dinheiro|registro[4]~16_combout\,
	clrn => \Ctrl|ALT_INV_WideOr5~0_combout\,
	ena => \Ctrl|WideOr5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Dinheiro|registro\(4));

-- Location: LCCOMB_X23_Y8_N20
\DPath|Reg_Dinheiro|registro[5]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Reg_Dinheiro|registro[5]~18_combout\ = (\Dinheiro[5]~input_o\ & ((\DPath|Reg_Dinheiro|registro\(5) & (\DPath|Reg_Dinheiro|registro[4]~17\ & VCC)) # (!\DPath|Reg_Dinheiro|registro\(5) & (!\DPath|Reg_Dinheiro|registro[4]~17\)))) # 
-- (!\Dinheiro[5]~input_o\ & ((\DPath|Reg_Dinheiro|registro\(5) & (!\DPath|Reg_Dinheiro|registro[4]~17\)) # (!\DPath|Reg_Dinheiro|registro\(5) & ((\DPath|Reg_Dinheiro|registro[4]~17\) # (GND)))))
-- \DPath|Reg_Dinheiro|registro[5]~19\ = CARRY((\Dinheiro[5]~input_o\ & (!\DPath|Reg_Dinheiro|registro\(5) & !\DPath|Reg_Dinheiro|registro[4]~17\)) # (!\Dinheiro[5]~input_o\ & ((!\DPath|Reg_Dinheiro|registro[4]~17\) # (!\DPath|Reg_Dinheiro|registro\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dinheiro[5]~input_o\,
	datab => \DPath|Reg_Dinheiro|registro\(5),
	datad => VCC,
	cin => \DPath|Reg_Dinheiro|registro[4]~17\,
	combout => \DPath|Reg_Dinheiro|registro[5]~18_combout\,
	cout => \DPath|Reg_Dinheiro|registro[5]~19\);

-- Location: FF_X23_Y8_N21
\DPath|Reg_Dinheiro|registro[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \DPath|Reg_Dinheiro|registro[5]~18_combout\,
	clrn => \Ctrl|ALT_INV_WideOr5~0_combout\,
	ena => \Ctrl|WideOr5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Dinheiro|registro\(5));

-- Location: LCCOMB_X23_Y8_N22
\DPath|Reg_Dinheiro|registro[6]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Reg_Dinheiro|registro[6]~20_combout\ = ((\DPath|Reg_Dinheiro|registro\(6) $ (\Dinheiro[6]~input_o\ $ (!\DPath|Reg_Dinheiro|registro[5]~19\)))) # (GND)
-- \DPath|Reg_Dinheiro|registro[6]~21\ = CARRY((\DPath|Reg_Dinheiro|registro\(6) & ((\Dinheiro[6]~input_o\) # (!\DPath|Reg_Dinheiro|registro[5]~19\))) # (!\DPath|Reg_Dinheiro|registro\(6) & (\Dinheiro[6]~input_o\ & !\DPath|Reg_Dinheiro|registro[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(6),
	datab => \Dinheiro[6]~input_o\,
	datad => VCC,
	cin => \DPath|Reg_Dinheiro|registro[5]~19\,
	combout => \DPath|Reg_Dinheiro|registro[6]~20_combout\,
	cout => \DPath|Reg_Dinheiro|registro[6]~21\);

-- Location: LCCOMB_X23_Y8_N24
\DPath|Reg_Dinheiro|registro[7]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Reg_Dinheiro|registro[7]~22_combout\ = \DPath|Reg_Dinheiro|registro\(7) $ (\DPath|Reg_Dinheiro|registro[6]~21\ $ (\Dinheiro[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_Dinheiro|registro\(7),
	datad => \Dinheiro[7]~input_o\,
	cin => \DPath|Reg_Dinheiro|registro[6]~21\,
	combout => \DPath|Reg_Dinheiro|registro[7]~22_combout\);

-- Location: FF_X23_Y8_N25
\DPath|Reg_Dinheiro|registro[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \DPath|Reg_Dinheiro|registro[7]~22_combout\,
	clrn => \Ctrl|ALT_INV_WideOr5~0_combout\,
	ena => \Ctrl|WideOr5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Dinheiro|registro\(7));

-- Location: LCCOMB_X23_Y8_N6
\DPath|Comparador_preco|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Comparador_preco|Equal0~0_combout\ = (!\DPath|Reg_Dinheiro|registro\(6) & (!\DPath|Reg_Dinheiro|registro\(5) & (!\DPath|Reg_Dinheiro|registro\(4) & !\DPath|Reg_Dinheiro|registro\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(6),
	datab => \DPath|Reg_Dinheiro|registro\(5),
	datac => \DPath|Reg_Dinheiro|registro\(4),
	datad => \DPath|Reg_Dinheiro|registro\(3),
	combout => \DPath|Comparador_preco|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y8_N28
\DPath|Comparador_preco|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Comparador_preco|Equal0~1_combout\ = (!\DPath|Reg_Dinheiro|registro\(7) & \DPath|Comparador_preco|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_Dinheiro|registro\(7),
	datad => \DPath|Comparador_preco|Equal0~0_combout\,
	combout => \DPath|Comparador_preco|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y8_N4
\Ctrl|Selector7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|Selector7~3_combout\ = (\DPath|Comparador_preco|Equal0~1_combout\ & ((\DPath|Reg_Produto|registro\(0) $ (\DPath|Reg_Dinheiro|registro\(0))) # (!\DPath|Comparador_preco|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Comparador_preco|Equal0~2_combout\,
	datab => \DPath|Reg_Produto|registro\(0),
	datac => \DPath|Reg_Dinheiro|registro\(0),
	datad => \DPath|Comparador_preco|Equal0~1_combout\,
	combout => \Ctrl|Selector7~3_combout\);

-- Location: FF_X23_Y8_N13
\DPath|Reg_Dinheiro|registro[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \DPath|Reg_Dinheiro|registro[1]~10_combout\,
	clrn => \Ctrl|ALT_INV_WideOr5~0_combout\,
	ena => \Ctrl|WideOr5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Dinheiro|registro\(1));

-- Location: LCCOMB_X22_Y8_N8
\DPath|Comparador_preco|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Comparador_preco|LessThan0~0_combout\ = (\DPath|Reg_Dinheiro|registro\(1) & (((!\DPath|Reg_Produto|registro\(0) & \DPath|Reg_Dinheiro|registro\(0))) # (!\DPath|Reg_Produto|registro\(1)))) # (!\DPath|Reg_Dinheiro|registro\(1) & 
-- (!\DPath|Reg_Produto|registro\(0) & (\DPath|Reg_Dinheiro|registro\(0) & !\DPath|Reg_Produto|registro\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Produto|registro\(0),
	datab => \DPath|Reg_Dinheiro|registro\(1),
	datac => \DPath|Reg_Dinheiro|registro\(0),
	datad => \DPath|Reg_Produto|registro\(1),
	combout => \DPath|Comparador_preco|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y8_N10
\DPath|Comparador_preco|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Comparador_preco|LessThan0~1_combout\ = \DPath|Reg_Produto|registro\(2) $ (\DPath|Reg_Dinheiro|registro\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DPath|Reg_Produto|registro\(2),
	datad => \DPath|Reg_Dinheiro|registro\(2),
	combout => \DPath|Comparador_preco|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y8_N0
\DPath|Comparador_preco|LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Comparador_preco|LessThan0~2_combout\ = (\DPath|Reg_Dinheiro|registro\(7)) # (((\DPath|Comparador_preco|LessThan0~0_combout\ & !\DPath|Comparador_preco|LessThan0~1_combout\)) # (!\DPath|Comparador_preco|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(7),
	datab => \DPath|Comparador_preco|Equal0~0_combout\,
	datac => \DPath|Comparador_preco|LessThan0~0_combout\,
	datad => \DPath|Comparador_preco|LessThan0~1_combout\,
	combout => \DPath|Comparador_preco|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y8_N6
\Ctrl|Selector8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|Selector8~0_combout\ = (\Ctrl|state.calculaDinheiro~q\ & (!\DPath|Comparador_preco|LessThan0~2_combout\ & ((\DPath|Reg_Produto|registro\(2)) # (!\DPath|Reg_Dinheiro|registro\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(2),
	datab => \DPath|Reg_Produto|registro\(2),
	datac => \Ctrl|state.calculaDinheiro~q\,
	datad => \DPath|Comparador_preco|LessThan0~2_combout\,
	combout => \Ctrl|Selector8~0_combout\);

-- Location: LCCOMB_X23_Y8_N30
\Ctrl|Selector7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|Selector7~4_combout\ = (\Ctrl|Selector7~0_combout\) # ((\Ctrl|Selector7~2_combout\ & (\Ctrl|Selector7~3_combout\ & \Ctrl|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|Selector7~0_combout\,
	datab => \Ctrl|Selector7~2_combout\,
	datac => \Ctrl|Selector7~3_combout\,
	datad => \Ctrl|Selector8~0_combout\,
	combout => \Ctrl|Selector7~4_combout\);

-- Location: FF_X23_Y8_N31
\Ctrl|state.leiaDinheiro\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Ctrl|Selector7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ctrl|state.leiaDinheiro~q\);

-- Location: FF_X23_Y8_N1
\Ctrl|state.calculaDinheiro\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \Ctrl|state.leiaDinheiro~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ctrl|state.calculaDinheiro~q\);

-- Location: LCCOMB_X24_Y8_N28
\Ctrl|next_state.calculaTroco~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|next_state.calculaTroco~0_combout\ = (\Ctrl|state.calculaDinheiro~q\ & ((\DPath|Comparador_preco|LessThan0~2_combout\) # ((\DPath|Reg_Dinheiro|registro\(2) & !\DPath|Reg_Produto|registro\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(2),
	datab => \DPath|Reg_Produto|registro\(2),
	datac => \Ctrl|state.calculaDinheiro~q\,
	datad => \DPath|Comparador_preco|LessThan0~2_combout\,
	combout => \Ctrl|next_state.calculaTroco~0_combout\);

-- Location: FF_X24_Y8_N29
\Ctrl|state.calculaTroco\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Ctrl|next_state.calculaTroco~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ctrl|state.calculaTroco~q\);

-- Location: FF_X23_Y8_N29
\Ctrl|state.entregaTroco\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \Ctrl|state.calculaTroco~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ctrl|state.entregaTroco~q\);

-- Location: LCCOMB_X23_Y8_N2
\DPath|Comparador_preco|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Comparador_preco|Equal0~3_combout\ = (\DPath|Comparador_preco|Equal0~2_combout\ & (\DPath|Comparador_preco|Equal0~1_combout\ & (\DPath|Reg_Produto|registro\(0) $ (!\DPath|Reg_Dinheiro|registro\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Comparador_preco|Equal0~2_combout\,
	datab => \DPath|Reg_Produto|registro\(0),
	datac => \DPath|Reg_Dinheiro|registro\(0),
	datad => \DPath|Comparador_preco|Equal0~1_combout\,
	combout => \DPath|Comparador_preco|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y8_N30
\Ctrl|Selector8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|Selector8~1_combout\ = (\Ctrl|state.entregaTroco~q\) # ((\Ctrl|Selector8~0_combout\ & \DPath|Comparador_preco|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|Selector8~0_combout\,
	datab => \Ctrl|state.entregaTroco~q\,
	datad => \DPath|Comparador_preco|Equal0~3_combout\,
	combout => \Ctrl|Selector8~1_combout\);

-- Location: FF_X24_Y8_N31
\Ctrl|state.entregaProduto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Ctrl|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ctrl|state.entregaProduto~q\);

-- Location: LCCOMB_X21_Y8_N12
\Ctrl|next_state.inicio\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|next_state.inicio~combout\ = (!\Ctrl|state.cancela~q\ & !\Ctrl|state.entregaProduto~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctrl|state.cancela~q\,
	datad => \Ctrl|state.entregaProduto~q\,
	combout => \Ctrl|next_state.inicio~combout\);

-- Location: FF_X21_Y8_N13
\Ctrl|state.inicio\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Ctrl|next_state.inicio~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ctrl|state.inicio~q\);

-- Location: LCCOMB_X22_Y8_N22
\Ctrl|Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|Selector5~0_combout\ = (\Ctrl|Produto_selecionado_ld~1_combout\) # (!\Ctrl|state.inicio~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctrl|Produto_selecionado_ld~1_combout\,
	datad => \Ctrl|state.inicio~q\,
	combout => \Ctrl|Selector5~0_combout\);

-- Location: FF_X22_Y8_N23
\Ctrl|state.validaProduto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \Ctrl|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ctrl|state.validaProduto~q\);

-- Location: LCCOMB_X22_Y8_N30
\Ctrl|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|Selector0~0_combout\ = (\Ctrl|state.validaProduto~q\ & ((\DPath|Reg_Produto|registro\(0)) # ((\DPath|Reg_Produto|registro\(2)) # (\DPath|Reg_Produto|registro\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Produto|registro\(0),
	datab => \DPath|Reg_Produto|registro\(2),
	datac => \Ctrl|state.validaProduto~q\,
	datad => \DPath|Reg_Produto|registro\(1),
	combout => \Ctrl|Selector0~0_combout\);

-- Location: FF_X21_Y8_N15
\Ctrl|state.confirma\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \Ctrl|Selector0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ctrl|state.confirma~q\);

-- Location: LCCOMB_X21_Y8_N6
\Ctrl|Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|Selector6~0_combout\ = (!\Confirmar~input_o\ & \Ctrl|state.confirma~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Confirmar~input_o\,
	datad => \Ctrl|state.confirma~q\,
	combout => \Ctrl|Selector6~0_combout\);

-- Location: FF_X21_Y8_N7
\Ctrl|state.cancela\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \Ctrl|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ctrl|state.cancela~q\);

-- Location: LCCOMB_X22_Y8_N18
\Ctrl|Produto_selecionado_clr~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|Produto_selecionado_clr~2_combout\ = (\Ctrl|state.cancela~q\) # (!\Ctrl|state.inicio~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctrl|state.cancela~q\,
	datad => \Ctrl|state.inicio~q\,
	combout => \Ctrl|Produto_selecionado_clr~2_combout\);

-- Location: FF_X22_Y8_N1
\DPath|Reg_Produto|registro[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \DPath|Reg_Produto|registro[0]~feeder_combout\,
	clrn => \Ctrl|ALT_INV_Produto_selecionado_clr~2_combout\,
	ena => \Ctrl|Produto_selecionado_ld~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Produto|registro\(0));

-- Location: LCCOMB_X24_Y8_N12
\DPath|Reg_Troco|registro[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Reg_Troco|registro[0]~8_combout\ = (\DPath|Reg_Dinheiro|registro\(0) & ((GND) # (!\DPath|Reg_Produto|registro\(0)))) # (!\DPath|Reg_Dinheiro|registro\(0) & (\DPath|Reg_Produto|registro\(0) $ (GND)))
-- \DPath|Reg_Troco|registro[0]~9\ = CARRY((\DPath|Reg_Dinheiro|registro\(0)) # (!\DPath|Reg_Produto|registro\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(0),
	datab => \DPath|Reg_Produto|registro\(0),
	datad => VCC,
	combout => \DPath|Reg_Troco|registro[0]~8_combout\,
	cout => \DPath|Reg_Troco|registro[0]~9\);

-- Location: LCCOMB_X24_Y8_N4
\Ctrl|Troco_ld\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|Troco_ld~combout\ = (!\Ctrl|state.calculaTroco~q\ & !\Ctrl|state.entregaTroco~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrl|state.calculaTroco~q\,
	datad => \Ctrl|state.entregaTroco~q\,
	combout => \Ctrl|Troco_ld~combout\);

-- Location: FF_X24_Y8_N5
\DPath|Reg_Troco|registro[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \DPath|Reg_Troco|registro[0]~8_combout\,
	clrn => \Ctrl|ALT_INV_Troco_ld~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Troco|registro\(0));

-- Location: LCCOMB_X24_Y8_N14
\DPath|Reg_Troco|registro[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Reg_Troco|registro[1]~10_combout\ = (\DPath|Reg_Dinheiro|registro\(1) & ((\DPath|Reg_Produto|registro\(1) & (!\DPath|Reg_Troco|registro[0]~9\)) # (!\DPath|Reg_Produto|registro\(1) & (\DPath|Reg_Troco|registro[0]~9\ & VCC)))) # 
-- (!\DPath|Reg_Dinheiro|registro\(1) & ((\DPath|Reg_Produto|registro\(1) & ((\DPath|Reg_Troco|registro[0]~9\) # (GND))) # (!\DPath|Reg_Produto|registro\(1) & (!\DPath|Reg_Troco|registro[0]~9\))))
-- \DPath|Reg_Troco|registro[1]~11\ = CARRY((\DPath|Reg_Dinheiro|registro\(1) & (\DPath|Reg_Produto|registro\(1) & !\DPath|Reg_Troco|registro[0]~9\)) # (!\DPath|Reg_Dinheiro|registro\(1) & ((\DPath|Reg_Produto|registro\(1)) # 
-- (!\DPath|Reg_Troco|registro[0]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(1),
	datab => \DPath|Reg_Produto|registro\(1),
	datad => VCC,
	cin => \DPath|Reg_Troco|registro[0]~9\,
	combout => \DPath|Reg_Troco|registro[1]~10_combout\,
	cout => \DPath|Reg_Troco|registro[1]~11\);

-- Location: FF_X24_Y8_N15
\DPath|Reg_Troco|registro[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \DPath|Reg_Troco|registro[1]~10_combout\,
	clrn => \Ctrl|ALT_INV_Troco_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Troco|registro\(1));

-- Location: LCCOMB_X24_Y8_N16
\DPath|Reg_Troco|registro[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Reg_Troco|registro[2]~12_combout\ = ((\DPath|Reg_Dinheiro|registro\(2) $ (\DPath|Reg_Produto|registro\(2) $ (\DPath|Reg_Troco|registro[1]~11\)))) # (GND)
-- \DPath|Reg_Troco|registro[2]~13\ = CARRY((\DPath|Reg_Dinheiro|registro\(2) & ((!\DPath|Reg_Troco|registro[1]~11\) # (!\DPath|Reg_Produto|registro\(2)))) # (!\DPath|Reg_Dinheiro|registro\(2) & (!\DPath|Reg_Produto|registro\(2) & 
-- !\DPath|Reg_Troco|registro[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(2),
	datab => \DPath|Reg_Produto|registro\(2),
	datad => VCC,
	cin => \DPath|Reg_Troco|registro[1]~11\,
	combout => \DPath|Reg_Troco|registro[2]~12_combout\,
	cout => \DPath|Reg_Troco|registro[2]~13\);

-- Location: FF_X24_Y8_N17
\DPath|Reg_Troco|registro[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \DPath|Reg_Troco|registro[2]~12_combout\,
	clrn => \Ctrl|ALT_INV_Troco_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Troco|registro\(2));

-- Location: LCCOMB_X24_Y8_N18
\DPath|Reg_Troco|registro[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Reg_Troco|registro[3]~14_combout\ = (\DPath|Reg_Dinheiro|registro\(3) & (\DPath|Reg_Troco|registro[2]~13\ & VCC)) # (!\DPath|Reg_Dinheiro|registro\(3) & (!\DPath|Reg_Troco|registro[2]~13\))
-- \DPath|Reg_Troco|registro[3]~15\ = CARRY((!\DPath|Reg_Dinheiro|registro\(3) & !\DPath|Reg_Troco|registro[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(3),
	datad => VCC,
	cin => \DPath|Reg_Troco|registro[2]~13\,
	combout => \DPath|Reg_Troco|registro[3]~14_combout\,
	cout => \DPath|Reg_Troco|registro[3]~15\);

-- Location: FF_X24_Y8_N19
\DPath|Reg_Troco|registro[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \DPath|Reg_Troco|registro[3]~14_combout\,
	clrn => \Ctrl|ALT_INV_Troco_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Troco|registro\(3));

-- Location: LCCOMB_X24_Y8_N20
\DPath|Reg_Troco|registro[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Reg_Troco|registro[4]~16_combout\ = (\DPath|Reg_Dinheiro|registro\(4) & ((GND) # (!\DPath|Reg_Troco|registro[3]~15\))) # (!\DPath|Reg_Dinheiro|registro\(4) & (\DPath|Reg_Troco|registro[3]~15\ $ (GND)))
-- \DPath|Reg_Troco|registro[4]~17\ = CARRY((\DPath|Reg_Dinheiro|registro\(4)) # (!\DPath|Reg_Troco|registro[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_Dinheiro|registro\(4),
	datad => VCC,
	cin => \DPath|Reg_Troco|registro[3]~15\,
	combout => \DPath|Reg_Troco|registro[4]~16_combout\,
	cout => \DPath|Reg_Troco|registro[4]~17\);

-- Location: FF_X24_Y8_N21
\DPath|Reg_Troco|registro[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \DPath|Reg_Troco|registro[4]~16_combout\,
	clrn => \Ctrl|ALT_INV_Troco_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Troco|registro\(4));

-- Location: LCCOMB_X24_Y8_N22
\DPath|Reg_Troco|registro[5]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Reg_Troco|registro[5]~18_combout\ = (\DPath|Reg_Dinheiro|registro\(5) & (\DPath|Reg_Troco|registro[4]~17\ & VCC)) # (!\DPath|Reg_Dinheiro|registro\(5) & (!\DPath|Reg_Troco|registro[4]~17\))
-- \DPath|Reg_Troco|registro[5]~19\ = CARRY((!\DPath|Reg_Dinheiro|registro\(5) & !\DPath|Reg_Troco|registro[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_Dinheiro|registro\(5),
	datad => VCC,
	cin => \DPath|Reg_Troco|registro[4]~17\,
	combout => \DPath|Reg_Troco|registro[5]~18_combout\,
	cout => \DPath|Reg_Troco|registro[5]~19\);

-- Location: FF_X24_Y8_N23
\DPath|Reg_Troco|registro[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \DPath|Reg_Troco|registro[5]~18_combout\,
	clrn => \Ctrl|ALT_INV_Troco_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Troco|registro\(5));

-- Location: FF_X23_Y8_N23
\DPath|Reg_Dinheiro|registro[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \DPath|Reg_Dinheiro|registro[6]~20_combout\,
	clrn => \Ctrl|ALT_INV_WideOr5~0_combout\,
	ena => \Ctrl|WideOr5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Dinheiro|registro\(6));

-- Location: LCCOMB_X24_Y8_N24
\DPath|Reg_Troco|registro[6]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Reg_Troco|registro[6]~20_combout\ = (\DPath|Reg_Dinheiro|registro\(6) & ((GND) # (!\DPath|Reg_Troco|registro[5]~19\))) # (!\DPath|Reg_Dinheiro|registro\(6) & (\DPath|Reg_Troco|registro[5]~19\ $ (GND)))
-- \DPath|Reg_Troco|registro[6]~21\ = CARRY((\DPath|Reg_Dinheiro|registro\(6)) # (!\DPath|Reg_Troco|registro[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_Dinheiro|registro\(6),
	datad => VCC,
	cin => \DPath|Reg_Troco|registro[5]~19\,
	combout => \DPath|Reg_Troco|registro[6]~20_combout\,
	cout => \DPath|Reg_Troco|registro[6]~21\);

-- Location: FF_X24_Y8_N25
\DPath|Reg_Troco|registro[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \DPath|Reg_Troco|registro[6]~20_combout\,
	clrn => \Ctrl|ALT_INV_Troco_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Troco|registro\(6));

-- Location: LCCOMB_X24_Y8_N26
\DPath|Reg_Troco|registro[7]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|Reg_Troco|registro[7]~22_combout\ = \DPath|Reg_Dinheiro|registro\(7) $ (!\DPath|Reg_Troco|registro[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(7),
	cin => \DPath|Reg_Troco|registro[6]~21\,
	combout => \DPath|Reg_Troco|registro[7]~22_combout\);

-- Location: FF_X24_Y8_N27
\DPath|Reg_Troco|registro[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \DPath|Reg_Troco|registro[7]~22_combout\,
	clrn => \Ctrl|ALT_INV_Troco_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Troco|registro\(7));

-- Location: LCCOMB_X22_Y8_N24
\Ctrl|Selector10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|Selector10~0_combout\ = (!\Ctrl|Selector0~0_combout\ & !\Ctrl|state.calculaDinheiro~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctrl|Selector0~0_combout\,
	datad => \Ctrl|state.calculaDinheiro~q\,
	combout => \Ctrl|Selector10~0_combout\);

-- Location: CLKCTRL_G15
\Ctrl|Selector10~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Ctrl|Selector10~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Ctrl|Selector10~0clkctrl_outclk\);

-- Location: LCCOMB_X21_Y8_N18
\Ctrl|WideOr3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|WideOr3~0_combout\ = (\Ctrl|state.validaProduto~q\) # ((\Ctrl|state.cancela~q\) # (\Ctrl|state.calculaTroco~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.validaProduto~q\,
	datab => \Ctrl|state.cancela~q\,
	datad => \Ctrl|state.calculaTroco~q\,
	combout => \Ctrl|WideOr3~0_combout\);

-- Location: LCCOMB_X21_Y8_N8
\Ctrl|Mensagem_do_sistema[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|Mensagem_do_sistema\(0) = (GLOBAL(\Ctrl|Selector10~0clkctrl_outclk\) & ((!\Ctrl|WideOr3~0_combout\))) # (!GLOBAL(\Ctrl|Selector10~0clkctrl_outclk\) & (\Ctrl|Mensagem_do_sistema\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrl|Mensagem_do_sistema\(0),
	datac => \Ctrl|Selector10~0clkctrl_outclk\,
	datad => \Ctrl|WideOr3~0_combout\,
	combout => \Ctrl|Mensagem_do_sistema\(0));

-- Location: LCCOMB_X21_Y8_N16
\Ctrl|Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|Selector4~0_combout\ = (\Ctrl|Produto_selecionado_ld~1_combout\) # ((!\Ctrl|state.validaProduto~q\ & !\Ctrl|state.calculaDinheiro~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.validaProduto~q\,
	datab => \Ctrl|state.calculaDinheiro~q\,
	datad => \Ctrl|Produto_selecionado_ld~1_combout\,
	combout => \Ctrl|Selector4~0_combout\);

-- Location: FF_X21_Y8_N19
\DPath|Reg_Mensagem|registro[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \Ctrl|Mensagem_do_sistema\(0),
	sload => VCC,
	ena => \Ctrl|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Mensagem|registro\(0));

-- Location: LCCOMB_X21_Y8_N20
\Ctrl|WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|WideOr0~0_combout\ = ((\Ctrl|state.validaProduto~q\) # (\Ctrl|state.confirma~q\)) # (!\Ctrl|state.inicio~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.inicio~q\,
	datab => \Ctrl|state.validaProduto~q\,
	datad => \Ctrl|state.confirma~q\,
	combout => \Ctrl|WideOr0~0_combout\);

-- Location: LCCOMB_X21_Y8_N30
\Ctrl|Mensagem_do_sistema[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|Mensagem_do_sistema\(2) = (GLOBAL(\Ctrl|Selector10~0clkctrl_outclk\) & ((!\Ctrl|WideOr0~0_combout\))) # (!GLOBAL(\Ctrl|Selector10~0clkctrl_outclk\) & (\Ctrl|Mensagem_do_sistema\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|Mensagem_do_sistema\(2),
	datab => \Ctrl|WideOr0~0_combout\,
	datac => \Ctrl|Selector10~0clkctrl_outclk\,
	combout => \Ctrl|Mensagem_do_sistema\(2));

-- Location: FF_X21_Y8_N17
\DPath|Reg_Mensagem|registro[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \Ctrl|Mensagem_do_sistema\(2),
	sload => VCC,
	ena => \Ctrl|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Mensagem|registro\(2));

-- Location: LCCOMB_X22_Y8_N26
\Ctrl|WideOr1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|WideOr1~combout\ = (\Ctrl|state.leiaDinheiro~q\) # ((\Ctrl|state.cancela~q\) # (!\Ctrl|state.inicio~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.leiaDinheiro~q\,
	datab => \Ctrl|state.cancela~q\,
	datad => \Ctrl|state.inicio~q\,
	combout => \Ctrl|WideOr1~combout\);

-- Location: LCCOMB_X22_Y8_N12
\Ctrl|Mensagem_do_sistema[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Ctrl|Mensagem_do_sistema\(1) = (GLOBAL(\Ctrl|Selector10~0clkctrl_outclk\) & ((!\Ctrl|WideOr1~combout\))) # (!GLOBAL(\Ctrl|Selector10~0clkctrl_outclk\) & (\Ctrl|Mensagem_do_sistema\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|Mensagem_do_sistema\(1),
	datac => \Ctrl|WideOr1~combout\,
	datad => \Ctrl|Selector10~0clkctrl_outclk\,
	combout => \Ctrl|Mensagem_do_sistema\(1));

-- Location: FF_X21_Y8_N21
\DPath|Reg_Mensagem|registro[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \Ctrl|Mensagem_do_sistema\(1),
	sload => VCC,
	ena => \Ctrl|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DPath|Reg_Mensagem|registro\(1));

-- Location: LCCOMB_X21_Y8_N14
\DPath|BCD_Display|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|BCD_Display|Mux6~0_combout\ = (!\DPath|Reg_Mensagem|registro\(1) & (\DPath|Reg_Mensagem|registro\(0) $ (\DPath|Reg_Mensagem|registro\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Mensagem|registro\(0),
	datab => \DPath|Reg_Mensagem|registro\(2),
	datad => \DPath|Reg_Mensagem|registro\(1),
	combout => \DPath|BCD_Display|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y8_N4
\DPath|BCD_Display|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|BCD_Display|Mux5~0_combout\ = (\DPath|Reg_Mensagem|registro\(2) & (\DPath|Reg_Mensagem|registro\(1) $ (\DPath|Reg_Mensagem|registro\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Mensagem|registro\(1),
	datac => \DPath|Reg_Mensagem|registro\(0),
	datad => \DPath|Reg_Mensagem|registro\(2),
	combout => \DPath|BCD_Display|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y8_N22
\DPath|BCD_Display|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|BCD_Display|Mux4~0_combout\ = (\DPath|Reg_Mensagem|registro\(1) & (!\DPath|Reg_Mensagem|registro\(0) & !\DPath|Reg_Mensagem|registro\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Mensagem|registro\(1),
	datac => \DPath|Reg_Mensagem|registro\(0),
	datad => \DPath|Reg_Mensagem|registro\(2),
	combout => \DPath|BCD_Display|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y8_N0
\DPath|BCD_Display|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|BCD_Display|Mux3~0_combout\ = (\DPath|Reg_Mensagem|registro\(1) & (\DPath|Reg_Mensagem|registro\(0) & \DPath|Reg_Mensagem|registro\(2))) # (!\DPath|Reg_Mensagem|registro\(1) & (\DPath|Reg_Mensagem|registro\(0) $ (\DPath|Reg_Mensagem|registro\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Mensagem|registro\(1),
	datac => \DPath|Reg_Mensagem|registro\(0),
	datad => \DPath|Reg_Mensagem|registro\(2),
	combout => \DPath|BCD_Display|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y8_N10
\DPath|BCD_Display|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|BCD_Display|Mux2~0_combout\ = (\DPath|Reg_Mensagem|registro\(0)) # ((!\DPath|Reg_Mensagem|registro\(1) & \DPath|Reg_Mensagem|registro\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Mensagem|registro\(1),
	datac => \DPath|Reg_Mensagem|registro\(0),
	datad => \DPath|Reg_Mensagem|registro\(2),
	combout => \DPath|BCD_Display|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y8_N24
\DPath|BCD_Display|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|BCD_Display|Mux1~0_combout\ = (\DPath|Reg_Mensagem|registro\(1) & ((\DPath|Reg_Mensagem|registro\(0)) # (!\DPath|Reg_Mensagem|registro\(2)))) # (!\DPath|Reg_Mensagem|registro\(1) & (\DPath|Reg_Mensagem|registro\(0) & 
-- !\DPath|Reg_Mensagem|registro\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Mensagem|registro\(1),
	datac => \DPath|Reg_Mensagem|registro\(0),
	datad => \DPath|Reg_Mensagem|registro\(2),
	combout => \DPath|BCD_Display|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y8_N26
\DPath|BCD_Display|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DPath|BCD_Display|Mux0~0_combout\ = (\DPath|Reg_Mensagem|registro\(1) & (\DPath|Reg_Mensagem|registro\(0) & \DPath|Reg_Mensagem|registro\(2))) # (!\DPath|Reg_Mensagem|registro\(1) & ((!\DPath|Reg_Mensagem|registro\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Mensagem|registro\(1),
	datac => \DPath|Reg_Mensagem|registro\(0),
	datad => \DPath|Reg_Mensagem|registro\(2),
	combout => \DPath|BCD_Display|Mux0~0_combout\);

ww_Troco(0) <= \Troco[0]~output_o\;

ww_Troco(1) <= \Troco[1]~output_o\;

ww_Troco(2) <= \Troco[2]~output_o\;

ww_Troco(3) <= \Troco[3]~output_o\;

ww_Troco(4) <= \Troco[4]~output_o\;

ww_Troco(5) <= \Troco[5]~output_o\;

ww_Troco(6) <= \Troco[6]~output_o\;

ww_Troco(7) <= \Troco[7]~output_o\;

ww_Display(0) <= \Display[0]~output_o\;

ww_Display(1) <= \Display[1]~output_o\;

ww_Display(2) <= \Display[2]~output_o\;

ww_Display(3) <= \Display[3]~output_o\;

ww_Display(4) <= \Display[4]~output_o\;

ww_Display(5) <= \Display[5]~output_o\;

ww_Display(6) <= \Display[6]~output_o\;

ww_Produto_liberado <= \Produto_liberado~output_o\;
END structure;


