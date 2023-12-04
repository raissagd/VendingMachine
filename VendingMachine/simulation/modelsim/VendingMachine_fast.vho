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

-- DATE "12/03/2023 22:21:41"

-- 
-- Device: Altera EP2C5T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
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
-- Troco[0]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Troco[1]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Troco[2]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Troco[3]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Troco[4]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Troco[5]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Troco[6]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Troco[7]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[0]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[1]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[2]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[3]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[4]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[5]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[6]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Produto_liberado	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Produto_selecionado[0]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Confirmar	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Produto_selecionado[1]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Produto_selecionado[2]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dinheiro[0]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dinheiro[2]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dinheiro[1]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dinheiro[7]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dinheiro[6]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dinheiro[5]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dinheiro[4]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dinheiro[3]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \Ctrl|Selector11~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~combout\ : std_logic;
SIGNAL \CLOCK~clkctrl_outclk\ : std_logic;
SIGNAL \DPath|Reg_DinheiroAtual|registro[0]~8_combout\ : std_logic;
SIGNAL \Confirmar~combout\ : std_logic;
SIGNAL \DPath|Reg_Produto|registro[2]~feeder_combout\ : std_logic;
SIGNAL \Ctrl|Selector6~0_combout\ : std_logic;
SIGNAL \Ctrl|state.cancela~regout\ : std_logic;
SIGNAL \DPath|Reg_DinheiroAtual|registro[0]~9\ : std_logic;
SIGNAL \DPath|Reg_DinheiroAtual|registro[1]~10_combout\ : std_logic;
SIGNAL \DPath|Reg_DinheiroAtual|registro[2]~12_combout\ : std_logic;
SIGNAL \DPath|Reg_Produto|registro[0]~feeder_combout\ : std_logic;
SIGNAL \DPath|Reg_Produto|registro[1]~feeder_combout\ : std_logic;
SIGNAL \Ctrl|Produto_selecionado_ld~1_combout\ : std_logic;
SIGNAL \Ctrl|Dinheiro_total_ld~0_combout\ : std_logic;
SIGNAL \Ctrl|Dinheiro_total_ld~1_combout\ : std_logic;
SIGNAL \Ctrl|Dinheiro_total_ld~3_combout\ : std_logic;
SIGNAL \DPath|Reg_DinheiroAtual|registro[1]~11\ : std_logic;
SIGNAL \DPath|Reg_DinheiroAtual|registro[2]~13\ : std_logic;
SIGNAL \DPath|Reg_DinheiroAtual|registro[3]~14_combout\ : std_logic;
SIGNAL \DPath|Reg_DinheiroAtual|registro[3]~15\ : std_logic;
SIGNAL \DPath|Reg_DinheiroAtual|registro[4]~16_combout\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[4]~feeder_combout\ : std_logic;
SIGNAL \DPath|Reg_DinheiroAtual|registro[4]~17\ : std_logic;
SIGNAL \DPath|Reg_DinheiroAtual|registro[5]~19\ : std_logic;
SIGNAL \DPath|Reg_DinheiroAtual|registro[6]~20_combout\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[6]~feeder_combout\ : std_logic;
SIGNAL \DPath|Reg_DinheiroAtual|registro[6]~21\ : std_logic;
SIGNAL \DPath|Reg_DinheiroAtual|registro[7]~22_combout\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[7]~feeder_combout\ : std_logic;
SIGNAL \DPath|Comparador_preco|Equal0~0_combout\ : std_logic;
SIGNAL \DPath|Comparador_preco|Equal0~1_combout\ : std_logic;
SIGNAL \DPath|Comparador_preco|LessThan0~0_combout\ : std_logic;
SIGNAL \DPath|Comparador_preco|LessThan0~1_combout\ : std_logic;
SIGNAL \Ctrl|Selector4~1_combout\ : std_logic;
SIGNAL \Ctrl|state.troco~regout\ : std_logic;
SIGNAL \DPath|Comparador_preco|Equal0~3_combout\ : std_logic;
SIGNAL \DPath|Comparador_preco|Equal0~2_combout\ : std_logic;
SIGNAL \DPath|Comparador_preco|Equal0~4_combout\ : std_logic;
SIGNAL \Ctrl|Selector8~0_combout\ : std_logic;
SIGNAL \Ctrl|state.entrega~regout\ : std_logic;
SIGNAL \Ctrl|WideOr0~0_combout\ : std_logic;
SIGNAL \Ctrl|state.inicio~regout\ : std_logic;
SIGNAL \Ctrl|Produto_selecionado_clr~2_combout\ : std_logic;
SIGNAL \Ctrl|Selector5~0_combout\ : std_logic;
SIGNAL \Ctrl|state.validaProduto~regout\ : std_logic;
SIGNAL \Ctrl|Selector1~0_combout\ : std_logic;
SIGNAL \Ctrl|state.confirma~regout\ : std_logic;
SIGNAL \Ctrl|next_state.espera~0_combout\ : std_logic;
SIGNAL \Ctrl|state.espera~regout\ : std_logic;
SIGNAL \Ctrl|Dinheiro_total_ld~2_combout\ : std_logic;
SIGNAL \Ctrl|Selector7~0_combout\ : std_logic;
SIGNAL \Ctrl|Selector7~1_combout\ : std_logic;
SIGNAL \Ctrl|state.calcula~regout\ : std_logic;
SIGNAL \Ctrl|Dinheiro_total_clr~0_combout\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[0]~8_combout\ : std_logic;
SIGNAL \Ctrl|WideOr5~combout\ : std_logic;
SIGNAL \Ctrl|Selector4~0_combout\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[0]~9\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[1]~10_combout\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[1]~11\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[2]~12_combout\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[2]~13\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[3]~14_combout\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[3]~15\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[4]~16_combout\ : std_logic;
SIGNAL \DPath|Reg_DinheiroAtual|registro[5]~18_combout\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[5]~feeder_combout\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[4]~17\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[5]~18_combout\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[5]~19\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[6]~20_combout\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[6]~21\ : std_logic;
SIGNAL \DPath|Reg_Troco|registro[7]~22_combout\ : std_logic;
SIGNAL \Ctrl|Selector11~0_combout\ : std_logic;
SIGNAL \Ctrl|Selector11~0clkctrl_outclk\ : std_logic;
SIGNAL \Ctrl|WideOr1~combout\ : std_logic;
SIGNAL \Ctrl|Selector3~0_combout\ : std_logic;
SIGNAL \Ctrl|WideOr0~1_combout\ : std_logic;
SIGNAL \Ctrl|WideOr3~0_combout\ : std_logic;
SIGNAL \DPath|BCD_Display|Mux6~0_combout\ : std_logic;
SIGNAL \DPath|BCD_Display|Mux5~0_combout\ : std_logic;
SIGNAL \DPath|BCD_Display|Mux4~0_combout\ : std_logic;
SIGNAL \DPath|BCD_Display|Mux3~0_combout\ : std_logic;
SIGNAL \DPath|BCD_Display|Mux2~0_combout\ : std_logic;
SIGNAL \DPath|BCD_Display|Mux1~0_combout\ : std_logic;
SIGNAL \DPath|BCD_Display|Mux0~0_combout\ : std_logic;
SIGNAL \Ctrl|Mensagem_do_sistema\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Produto_selecionado~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Dinheiro~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DPath|Reg_Produto|registro\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DPath|Reg_Mensagem|registro\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DPath|Reg_Dinheiro|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DPath|Reg_Troco|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DPath|Reg_DinheiroAtual|registro\ : std_logic_vector(7 DOWNTO 0);

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

\Ctrl|Selector11~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Ctrl|Selector11~0_combout\);

\CLOCK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK~combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dinheiro[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dinheiro(0),
	combout => \Dinheiro~combout\(0));

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dinheiro[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dinheiro(1),
	combout => \Dinheiro~combout\(1));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dinheiro[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dinheiro(4),
	combout => \Dinheiro~combout\(4));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK,
	combout => \CLOCK~combout\);

-- Location: CLKCTRL_G2
\CLOCK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y12_N14
\DPath|Reg_DinheiroAtual|registro[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_DinheiroAtual|registro[0]~8_combout\ = (\Dinheiro~combout\(0) & (\DPath|Reg_Dinheiro|registro\(0) $ (VCC))) # (!\Dinheiro~combout\(0) & (\DPath|Reg_Dinheiro|registro\(0) & VCC))
-- \DPath|Reg_DinheiroAtual|registro[0]~9\ = CARRY((\Dinheiro~combout\(0) & \DPath|Reg_Dinheiro|registro\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dinheiro~combout\(0),
	datab => \DPath|Reg_Dinheiro|registro\(0),
	datad => VCC,
	combout => \DPath|Reg_DinheiroAtual|registro[0]~8_combout\,
	cout => \DPath|Reg_DinheiroAtual|registro[0]~9\);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Confirmar~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Confirmar,
	combout => \Confirmar~combout\);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Produto_selecionado[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Produto_selecionado(2),
	combout => \Produto_selecionado~combout\(2));

-- Location: LCCOMB_X17_Y12_N26
\DPath|Reg_Produto|registro[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_Produto|registro[2]~feeder_combout\ = \Produto_selecionado~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Produto_selecionado~combout\(2),
	combout => \DPath|Reg_Produto|registro[2]~feeder_combout\);

-- Location: LCCOMB_X20_Y12_N2
\Ctrl|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector6~0_combout\ = (\Ctrl|state.confirma~regout\ & !\Confirmar~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrl|state.confirma~regout\,
	datad => \Confirmar~combout\,
	combout => \Ctrl|Selector6~0_combout\);

-- Location: LCFF_X20_Y12_N3
\Ctrl|state.cancela\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.cancela~regout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dinheiro[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dinheiro(3),
	combout => \Dinheiro~combout\(3));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dinheiro[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dinheiro(2),
	combout => \Dinheiro~combout\(2));

-- Location: LCCOMB_X19_Y12_N16
\DPath|Reg_DinheiroAtual|registro[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_DinheiroAtual|registro[1]~10_combout\ = (\Dinheiro~combout\(1) & ((\DPath|Reg_Dinheiro|registro\(1) & (\DPath|Reg_DinheiroAtual|registro[0]~9\ & VCC)) # (!\DPath|Reg_Dinheiro|registro\(1) & (!\DPath|Reg_DinheiroAtual|registro[0]~9\)))) # 
-- (!\Dinheiro~combout\(1) & ((\DPath|Reg_Dinheiro|registro\(1) & (!\DPath|Reg_DinheiroAtual|registro[0]~9\)) # (!\DPath|Reg_Dinheiro|registro\(1) & ((\DPath|Reg_DinheiroAtual|registro[0]~9\) # (GND)))))
-- \DPath|Reg_DinheiroAtual|registro[1]~11\ = CARRY((\Dinheiro~combout\(1) & (!\DPath|Reg_Dinheiro|registro\(1) & !\DPath|Reg_DinheiroAtual|registro[0]~9\)) # (!\Dinheiro~combout\(1) & ((!\DPath|Reg_DinheiroAtual|registro[0]~9\) # 
-- (!\DPath|Reg_Dinheiro|registro\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dinheiro~combout\(1),
	datab => \DPath|Reg_Dinheiro|registro\(1),
	datad => VCC,
	cin => \DPath|Reg_DinheiroAtual|registro[0]~9\,
	combout => \DPath|Reg_DinheiroAtual|registro[1]~10_combout\,
	cout => \DPath|Reg_DinheiroAtual|registro[1]~11\);

-- Location: LCCOMB_X19_Y12_N18
\DPath|Reg_DinheiroAtual|registro[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_DinheiroAtual|registro[2]~12_combout\ = ((\DPath|Reg_Dinheiro|registro\(2) $ (\Dinheiro~combout\(2) $ (!\DPath|Reg_DinheiroAtual|registro[1]~11\)))) # (GND)
-- \DPath|Reg_DinheiroAtual|registro[2]~13\ = CARRY((\DPath|Reg_Dinheiro|registro\(2) & ((\Dinheiro~combout\(2)) # (!\DPath|Reg_DinheiroAtual|registro[1]~11\))) # (!\DPath|Reg_Dinheiro|registro\(2) & (\Dinheiro~combout\(2) & 
-- !\DPath|Reg_DinheiroAtual|registro[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(2),
	datab => \Dinheiro~combout\(2),
	datad => VCC,
	cin => \DPath|Reg_DinheiroAtual|registro[1]~11\,
	combout => \DPath|Reg_DinheiroAtual|registro[2]~12_combout\,
	cout => \DPath|Reg_DinheiroAtual|registro[2]~13\);

-- Location: LCFF_X19_Y12_N19
\DPath|Reg_DinheiroAtual|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_DinheiroAtual|registro[2]~12_combout\,
	aclr => \Ctrl|Dinheiro_total_clr~0_combout\,
	ena => \Ctrl|Dinheiro_total_ld~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_DinheiroAtual|registro\(2));

-- Location: LCFF_X19_Y12_N5
\DPath|Reg_Dinheiro|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \DPath|Reg_DinheiroAtual|registro\(2),
	aclr => \Ctrl|Dinheiro_total_clr~0_combout\,
	sload => VCC,
	ena => \Ctrl|Dinheiro_total_ld~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Dinheiro|registro\(2));

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Produto_selecionado[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Produto_selecionado(0),
	combout => \Produto_selecionado~combout\(0));

-- Location: LCCOMB_X17_Y12_N8
\DPath|Reg_Produto|registro[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_Produto|registro[0]~feeder_combout\ = \Produto_selecionado~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Produto_selecionado~combout\(0),
	combout => \DPath|Reg_Produto|registro[0]~feeder_combout\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Produto_selecionado[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Produto_selecionado(1),
	combout => \Produto_selecionado~combout\(1));

-- Location: LCCOMB_X17_Y12_N24
\DPath|Reg_Produto|registro[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_Produto|registro[1]~feeder_combout\ = \Produto_selecionado~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Produto_selecionado~combout\(1),
	combout => \DPath|Reg_Produto|registro[1]~feeder_combout\);

-- Location: LCFF_X17_Y12_N25
\DPath|Reg_Produto|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~combout\,
	datain => \DPath|Reg_Produto|registro[1]~feeder_combout\,
	aclr => \Ctrl|Produto_selecionado_clr~2_combout\,
	ena => \Ctrl|Produto_selecionado_ld~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Produto|registro\(1));

-- Location: LCCOMB_X17_Y12_N22
\Ctrl|Produto_selecionado_ld~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Produto_selecionado_ld~1_combout\ = (\Ctrl|state.validaProduto~regout\ & (!\DPath|Reg_Produto|registro\(0) & (!\DPath|Reg_Produto|registro\(1) & !\DPath|Reg_Produto|registro\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.validaProduto~regout\,
	datab => \DPath|Reg_Produto|registro\(0),
	datac => \DPath|Reg_Produto|registro\(1),
	datad => \DPath|Reg_Produto|registro\(2),
	combout => \Ctrl|Produto_selecionado_ld~1_combout\);

-- Location: LCFF_X17_Y12_N9
\DPath|Reg_Produto|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~combout\,
	datain => \DPath|Reg_Produto|registro[0]~feeder_combout\,
	aclr => \Ctrl|Produto_selecionado_clr~2_combout\,
	ena => \Ctrl|Produto_selecionado_ld~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Produto|registro\(0));

-- Location: LCCOMB_X19_Y12_N10
\Ctrl|Dinheiro_total_ld~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Dinheiro_total_ld~0_combout\ = (\DPath|Reg_Dinheiro|registro\(1) & (\DPath|Reg_Produto|registro\(0) & (!\DPath|Reg_Dinheiro|registro\(0) & \DPath|Reg_Produto|registro\(1)))) # (!\DPath|Reg_Dinheiro|registro\(1) & ((\DPath|Reg_Produto|registro\(1)) # 
-- ((\DPath|Reg_Produto|registro\(0) & !\DPath|Reg_Dinheiro|registro\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(1),
	datab => \DPath|Reg_Produto|registro\(0),
	datac => \DPath|Reg_Dinheiro|registro\(0),
	datad => \DPath|Reg_Produto|registro\(1),
	combout => \Ctrl|Dinheiro_total_ld~0_combout\);

-- Location: LCCOMB_X19_Y12_N6
\Ctrl|Dinheiro_total_ld~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Dinheiro_total_ld~1_combout\ = (\DPath|Reg_Dinheiro|registro\(2) & (\DPath|Reg_Produto|registro\(2) & \Ctrl|Dinheiro_total_ld~0_combout\)) # (!\DPath|Reg_Dinheiro|registro\(2) & ((\DPath|Reg_Produto|registro\(2)) # 
-- (\Ctrl|Dinheiro_total_ld~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_Dinheiro|registro\(2),
	datac => \DPath|Reg_Produto|registro\(2),
	datad => \Ctrl|Dinheiro_total_ld~0_combout\,
	combout => \Ctrl|Dinheiro_total_ld~1_combout\);

-- Location: LCCOMB_X19_Y12_N30
\Ctrl|Dinheiro_total_ld~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Dinheiro_total_ld~3_combout\ = (\Ctrl|Dinheiro_total_ld~2_combout\ & (\Ctrl|state.calcula~regout\ & (!\DPath|Comparador_preco|LessThan0~1_combout\ & \Ctrl|Dinheiro_total_ld~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|Dinheiro_total_ld~2_combout\,
	datab => \Ctrl|state.calcula~regout\,
	datac => \DPath|Comparador_preco|LessThan0~1_combout\,
	datad => \Ctrl|Dinheiro_total_ld~1_combout\,
	combout => \Ctrl|Dinheiro_total_ld~3_combout\);

-- Location: LCFF_X19_Y12_N17
\DPath|Reg_DinheiroAtual|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_DinheiroAtual|registro[1]~10_combout\,
	aclr => \Ctrl|Dinheiro_total_clr~0_combout\,
	ena => \Ctrl|Dinheiro_total_ld~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_DinheiroAtual|registro\(1));

-- Location: LCFF_X19_Y12_N1
\DPath|Reg_Dinheiro|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \DPath|Reg_DinheiroAtual|registro\(1),
	aclr => \Ctrl|Dinheiro_total_clr~0_combout\,
	sload => VCC,
	ena => \Ctrl|Dinheiro_total_ld~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Dinheiro|registro\(1));

-- Location: LCCOMB_X19_Y12_N20
\DPath|Reg_DinheiroAtual|registro[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_DinheiroAtual|registro[3]~14_combout\ = (\DPath|Reg_Dinheiro|registro\(3) & ((\Dinheiro~combout\(3) & (\DPath|Reg_DinheiroAtual|registro[2]~13\ & VCC)) # (!\Dinheiro~combout\(3) & (!\DPath|Reg_DinheiroAtual|registro[2]~13\)))) # 
-- (!\DPath|Reg_Dinheiro|registro\(3) & ((\Dinheiro~combout\(3) & (!\DPath|Reg_DinheiroAtual|registro[2]~13\)) # (!\Dinheiro~combout\(3) & ((\DPath|Reg_DinheiroAtual|registro[2]~13\) # (GND)))))
-- \DPath|Reg_DinheiroAtual|registro[3]~15\ = CARRY((\DPath|Reg_Dinheiro|registro\(3) & (!\Dinheiro~combout\(3) & !\DPath|Reg_DinheiroAtual|registro[2]~13\)) # (!\DPath|Reg_Dinheiro|registro\(3) & ((!\DPath|Reg_DinheiroAtual|registro[2]~13\) # 
-- (!\Dinheiro~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(3),
	datab => \Dinheiro~combout\(3),
	datad => VCC,
	cin => \DPath|Reg_DinheiroAtual|registro[2]~13\,
	combout => \DPath|Reg_DinheiroAtual|registro[3]~14_combout\,
	cout => \DPath|Reg_DinheiroAtual|registro[3]~15\);

-- Location: LCFF_X19_Y12_N21
\DPath|Reg_DinheiroAtual|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_DinheiroAtual|registro[3]~14_combout\,
	aclr => \Ctrl|Dinheiro_total_clr~0_combout\,
	ena => \Ctrl|Dinheiro_total_ld~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_DinheiroAtual|registro\(3));

-- Location: LCFF_X19_Y12_N9
\DPath|Reg_Dinheiro|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \DPath|Reg_DinheiroAtual|registro\(3),
	aclr => \Ctrl|Dinheiro_total_clr~0_combout\,
	sload => VCC,
	ena => \Ctrl|Dinheiro_total_ld~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Dinheiro|registro\(3));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dinheiro[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dinheiro(6),
	combout => \Dinheiro~combout\(6));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dinheiro[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dinheiro(5),
	combout => \Dinheiro~combout\(5));

-- Location: LCCOMB_X19_Y12_N22
\DPath|Reg_DinheiroAtual|registro[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_DinheiroAtual|registro[4]~16_combout\ = ((\Dinheiro~combout\(4) $ (\DPath|Reg_Dinheiro|registro\(4) $ (!\DPath|Reg_DinheiroAtual|registro[3]~15\)))) # (GND)
-- \DPath|Reg_DinheiroAtual|registro[4]~17\ = CARRY((\Dinheiro~combout\(4) & ((\DPath|Reg_Dinheiro|registro\(4)) # (!\DPath|Reg_DinheiroAtual|registro[3]~15\))) # (!\Dinheiro~combout\(4) & (\DPath|Reg_Dinheiro|registro\(4) & 
-- !\DPath|Reg_DinheiroAtual|registro[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dinheiro~combout\(4),
	datab => \DPath|Reg_Dinheiro|registro\(4),
	datad => VCC,
	cin => \DPath|Reg_DinheiroAtual|registro[3]~15\,
	combout => \DPath|Reg_DinheiroAtual|registro[4]~16_combout\,
	cout => \DPath|Reg_DinheiroAtual|registro[4]~17\);

-- Location: LCFF_X19_Y12_N23
\DPath|Reg_DinheiroAtual|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_DinheiroAtual|registro[4]~16_combout\,
	aclr => \Ctrl|Dinheiro_total_clr~0_combout\,
	ena => \Ctrl|Dinheiro_total_ld~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_DinheiroAtual|registro\(4));

-- Location: LCCOMB_X18_Y12_N24
\DPath|Reg_Dinheiro|registro[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_Dinheiro|registro[4]~feeder_combout\ = \DPath|Reg_DinheiroAtual|registro\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DPath|Reg_DinheiroAtual|registro\(4),
	combout => \DPath|Reg_Dinheiro|registro[4]~feeder_combout\);

-- Location: LCFF_X18_Y12_N25
\DPath|Reg_Dinheiro|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_Dinheiro|registro[4]~feeder_combout\,
	aclr => \Ctrl|Dinheiro_total_clr~0_combout\,
	ena => \Ctrl|Dinheiro_total_ld~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Dinheiro|registro\(4));

-- Location: LCCOMB_X19_Y12_N24
\DPath|Reg_DinheiroAtual|registro[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_DinheiroAtual|registro[5]~18_combout\ = (\DPath|Reg_Dinheiro|registro\(5) & ((\Dinheiro~combout\(5) & (\DPath|Reg_DinheiroAtual|registro[4]~17\ & VCC)) # (!\Dinheiro~combout\(5) & (!\DPath|Reg_DinheiroAtual|registro[4]~17\)))) # 
-- (!\DPath|Reg_Dinheiro|registro\(5) & ((\Dinheiro~combout\(5) & (!\DPath|Reg_DinheiroAtual|registro[4]~17\)) # (!\Dinheiro~combout\(5) & ((\DPath|Reg_DinheiroAtual|registro[4]~17\) # (GND)))))
-- \DPath|Reg_DinheiroAtual|registro[5]~19\ = CARRY((\DPath|Reg_Dinheiro|registro\(5) & (!\Dinheiro~combout\(5) & !\DPath|Reg_DinheiroAtual|registro[4]~17\)) # (!\DPath|Reg_Dinheiro|registro\(5) & ((!\DPath|Reg_DinheiroAtual|registro[4]~17\) # 
-- (!\Dinheiro~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(5),
	datab => \Dinheiro~combout\(5),
	datad => VCC,
	cin => \DPath|Reg_DinheiroAtual|registro[4]~17\,
	combout => \DPath|Reg_DinheiroAtual|registro[5]~18_combout\,
	cout => \DPath|Reg_DinheiroAtual|registro[5]~19\);

-- Location: LCCOMB_X19_Y12_N26
\DPath|Reg_DinheiroAtual|registro[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_DinheiroAtual|registro[6]~20_combout\ = ((\DPath|Reg_Dinheiro|registro\(6) $ (\Dinheiro~combout\(6) $ (!\DPath|Reg_DinheiroAtual|registro[5]~19\)))) # (GND)
-- \DPath|Reg_DinheiroAtual|registro[6]~21\ = CARRY((\DPath|Reg_Dinheiro|registro\(6) & ((\Dinheiro~combout\(6)) # (!\DPath|Reg_DinheiroAtual|registro[5]~19\))) # (!\DPath|Reg_Dinheiro|registro\(6) & (\Dinheiro~combout\(6) & 
-- !\DPath|Reg_DinheiroAtual|registro[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(6),
	datab => \Dinheiro~combout\(6),
	datad => VCC,
	cin => \DPath|Reg_DinheiroAtual|registro[5]~19\,
	combout => \DPath|Reg_DinheiroAtual|registro[6]~20_combout\,
	cout => \DPath|Reg_DinheiroAtual|registro[6]~21\);

-- Location: LCFF_X19_Y12_N27
\DPath|Reg_DinheiroAtual|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_DinheiroAtual|registro[6]~20_combout\,
	aclr => \Ctrl|Dinheiro_total_clr~0_combout\,
	ena => \Ctrl|Dinheiro_total_ld~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_DinheiroAtual|registro\(6));

-- Location: LCCOMB_X18_Y12_N18
\DPath|Reg_Dinheiro|registro[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_Dinheiro|registro[6]~feeder_combout\ = \DPath|Reg_DinheiroAtual|registro\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DPath|Reg_DinheiroAtual|registro\(6),
	combout => \DPath|Reg_Dinheiro|registro[6]~feeder_combout\);

-- Location: LCFF_X18_Y12_N19
\DPath|Reg_Dinheiro|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_Dinheiro|registro[6]~feeder_combout\,
	aclr => \Ctrl|Dinheiro_total_clr~0_combout\,
	ena => \Ctrl|Dinheiro_total_ld~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Dinheiro|registro\(6));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dinheiro[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Dinheiro(7),
	combout => \Dinheiro~combout\(7));

-- Location: LCCOMB_X19_Y12_N28
\DPath|Reg_DinheiroAtual|registro[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_DinheiroAtual|registro[7]~22_combout\ = \DPath|Reg_Dinheiro|registro\(7) $ (\DPath|Reg_DinheiroAtual|registro[6]~21\ $ (\Dinheiro~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_Dinheiro|registro\(7),
	datad => \Dinheiro~combout\(7),
	cin => \DPath|Reg_DinheiroAtual|registro[6]~21\,
	combout => \DPath|Reg_DinheiroAtual|registro[7]~22_combout\);

-- Location: LCFF_X19_Y12_N29
\DPath|Reg_DinheiroAtual|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_DinheiroAtual|registro[7]~22_combout\,
	aclr => \Ctrl|Dinheiro_total_clr~0_combout\,
	ena => \Ctrl|Dinheiro_total_ld~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_DinheiroAtual|registro\(7));

-- Location: LCCOMB_X18_Y12_N22
\DPath|Reg_Dinheiro|registro[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_Dinheiro|registro[7]~feeder_combout\ = \DPath|Reg_DinheiroAtual|registro\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DPath|Reg_DinheiroAtual|registro\(7),
	combout => \DPath|Reg_Dinheiro|registro[7]~feeder_combout\);

-- Location: LCFF_X18_Y12_N23
\DPath|Reg_Dinheiro|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_Dinheiro|registro[7]~feeder_combout\,
	aclr => \Ctrl|Dinheiro_total_clr~0_combout\,
	ena => \Ctrl|Dinheiro_total_ld~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Dinheiro|registro\(7));

-- Location: LCCOMB_X18_Y12_N14
\DPath|Comparador_preco|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_preco|Equal0~0_combout\ = (!\DPath|Reg_Dinheiro|registro\(5) & (!\DPath|Reg_Dinheiro|registro\(6) & (!\DPath|Reg_Dinheiro|registro\(4) & !\DPath|Reg_Dinheiro|registro\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(5),
	datab => \DPath|Reg_Dinheiro|registro\(6),
	datac => \DPath|Reg_Dinheiro|registro\(4),
	datad => \DPath|Reg_Dinheiro|registro\(7),
	combout => \DPath|Comparador_preco|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y12_N8
\DPath|Comparador_preco|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_preco|Equal0~1_combout\ = (!\DPath|Reg_Dinheiro|registro\(3) & \DPath|Comparador_preco|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DPath|Reg_Dinheiro|registro\(3),
	datad => \DPath|Comparador_preco|Equal0~0_combout\,
	combout => \DPath|Comparador_preco|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y12_N0
\DPath|Comparador_preco|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_preco|LessThan0~0_combout\ = (\DPath|Reg_Dinheiro|registro\(1) & (((\DPath|Reg_Dinheiro|registro\(0) & !\DPath|Reg_Produto|registro\(0))) # (!\DPath|Reg_Produto|registro\(1)))) # (!\DPath|Reg_Dinheiro|registro\(1) & 
-- (\DPath|Reg_Dinheiro|registro\(0) & (!\DPath|Reg_Produto|registro\(0) & !\DPath|Reg_Produto|registro\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(0),
	datab => \DPath|Reg_Produto|registro\(0),
	datac => \DPath|Reg_Dinheiro|registro\(1),
	datad => \DPath|Reg_Produto|registro\(1),
	combout => \DPath|Comparador_preco|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y12_N4
\DPath|Comparador_preco|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_preco|LessThan0~1_combout\ = ((\DPath|Reg_Produto|registro\(2) & (\DPath|Reg_Dinheiro|registro\(2) & \DPath|Comparador_preco|LessThan0~0_combout\)) # (!\DPath|Reg_Produto|registro\(2) & ((\DPath|Reg_Dinheiro|registro\(2)) # 
-- (\DPath|Comparador_preco|LessThan0~0_combout\)))) # (!\DPath|Comparador_preco|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Produto|registro\(2),
	datab => \DPath|Comparador_preco|Equal0~1_combout\,
	datac => \DPath|Reg_Dinheiro|registro\(2),
	datad => \DPath|Comparador_preco|LessThan0~0_combout\,
	combout => \DPath|Comparador_preco|LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y12_N24
\Ctrl|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector4~1_combout\ = (\DPath|Comparador_preco|LessThan0~1_combout\ & \Ctrl|state.calcula~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DPath|Comparador_preco|LessThan0~1_combout\,
	datad => \Ctrl|state.calcula~regout\,
	combout => \Ctrl|Selector4~1_combout\);

-- Location: LCFF_X21_Y12_N25
\Ctrl|state.troco\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.troco~regout\);

-- Location: LCCOMB_X17_Y12_N30
\DPath|Comparador_preco|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_preco|Equal0~3_combout\ = \DPath|Reg_Produto|registro\(0) $ (\DPath|Reg_Dinheiro|registro\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DPath|Reg_Produto|registro\(0),
	datad => \DPath|Reg_Dinheiro|registro\(0),
	combout => \DPath|Comparador_preco|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y12_N14
\DPath|Comparador_preco|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_preco|Equal0~2_combout\ = (\DPath|Reg_Dinheiro|registro\(1) & (\DPath|Reg_Produto|registro\(1) & (\DPath|Reg_Produto|registro\(2) $ (!\DPath|Reg_Dinheiro|registro\(2))))) # (!\DPath|Reg_Dinheiro|registro\(1) & 
-- (!\DPath|Reg_Produto|registro\(1) & (\DPath|Reg_Produto|registro\(2) $ (!\DPath|Reg_Dinheiro|registro\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(1),
	datab => \DPath|Reg_Produto|registro\(2),
	datac => \DPath|Reg_Dinheiro|registro\(2),
	datad => \DPath|Reg_Produto|registro\(1),
	combout => \DPath|Comparador_preco|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y12_N26
\DPath|Comparador_preco|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_preco|Equal0~4_combout\ = (!\DPath|Reg_Dinheiro|registro\(3) & (\DPath|Comparador_preco|Equal0~0_combout\ & (!\DPath|Comparador_preco|Equal0~3_combout\ & \DPath|Comparador_preco|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(3),
	datab => \DPath|Comparador_preco|Equal0~0_combout\,
	datac => \DPath|Comparador_preco|Equal0~3_combout\,
	datad => \DPath|Comparador_preco|Equal0~2_combout\,
	combout => \DPath|Comparador_preco|Equal0~4_combout\);

-- Location: LCCOMB_X20_Y12_N28
\Ctrl|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector8~0_combout\ = (\Ctrl|state.troco~regout\) # ((\Ctrl|state.calcula~regout\ & (\DPath|Comparador_preco|Equal0~4_combout\ & !\DPath|Comparador_preco|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.calcula~regout\,
	datab => \Ctrl|state.troco~regout\,
	datac => \DPath|Comparador_preco|Equal0~4_combout\,
	datad => \DPath|Comparador_preco|LessThan0~1_combout\,
	combout => \Ctrl|Selector8~0_combout\);

-- Location: LCFF_X20_Y12_N29
\Ctrl|state.entrega\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.entrega~regout\);

-- Location: LCCOMB_X20_Y12_N20
\Ctrl|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|WideOr0~0_combout\ = (!\Ctrl|state.entrega~regout\ & !\Ctrl|state.cancela~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrl|state.entrega~regout\,
	datad => \Ctrl|state.cancela~regout\,
	combout => \Ctrl|WideOr0~0_combout\);

-- Location: LCFF_X20_Y12_N21
\Ctrl|state.inicio\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.inicio~regout\);

-- Location: LCCOMB_X17_Y12_N4
\Ctrl|Produto_selecionado_clr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Produto_selecionado_clr~2_combout\ = (\Ctrl|state.cancela~regout\) # (!\Ctrl|state.inicio~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctrl|state.cancela~regout\,
	datad => \Ctrl|state.inicio~regout\,
	combout => \Ctrl|Produto_selecionado_clr~2_combout\);

-- Location: LCFF_X17_Y12_N27
\DPath|Reg_Produto|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~combout\,
	datain => \DPath|Reg_Produto|registro[2]~feeder_combout\,
	aclr => \Ctrl|Produto_selecionado_clr~2_combout\,
	ena => \Ctrl|Produto_selecionado_ld~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Produto|registro\(2));

-- Location: LCCOMB_X17_Y12_N12
\Ctrl|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector5~0_combout\ = (\Ctrl|Produto_selecionado_ld~1_combout\) # (!\Ctrl|state.inicio~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctrl|Produto_selecionado_ld~1_combout\,
	datad => \Ctrl|state.inicio~regout\,
	combout => \Ctrl|Selector5~0_combout\);

-- Location: LCFF_X17_Y12_N13
\Ctrl|state.validaProduto\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~combout\,
	datain => \Ctrl|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.validaProduto~regout\);

-- Location: LCCOMB_X17_Y12_N18
\Ctrl|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector1~0_combout\ = (\Ctrl|state.validaProduto~regout\ & ((\DPath|Reg_Produto|registro\(1)) # ((\DPath|Reg_Produto|registro\(2)) # (\DPath|Reg_Produto|registro\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Produto|registro\(1),
	datab => \DPath|Reg_Produto|registro\(2),
	datac => \DPath|Reg_Produto|registro\(0),
	datad => \Ctrl|state.validaProduto~regout\,
	combout => \Ctrl|Selector1~0_combout\);

-- Location: LCFF_X21_Y12_N31
\Ctrl|state.confirma\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \Ctrl|Selector1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.confirma~regout\);

-- Location: LCCOMB_X19_Y12_N12
\Ctrl|next_state.espera~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|next_state.espera~0_combout\ = (\Confirmar~combout\ & \Ctrl|state.confirma~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Confirmar~combout\,
	datac => \Ctrl|state.confirma~regout\,
	combout => \Ctrl|next_state.espera~0_combout\);

-- Location: LCFF_X19_Y12_N13
\Ctrl|state.espera\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|next_state.espera~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.espera~regout\);

-- Location: LCCOMB_X18_Y12_N30
\Ctrl|Dinheiro_total_ld~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Dinheiro_total_ld~2_combout\ = (!\DPath|Reg_Dinheiro|registro\(3) & (\DPath|Comparador_preco|Equal0~0_combout\ & ((\DPath|Comparador_preco|Equal0~3_combout\) # (!\DPath|Comparador_preco|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(3),
	datab => \DPath|Comparador_preco|Equal0~0_combout\,
	datac => \DPath|Comparador_preco|Equal0~3_combout\,
	datad => \DPath|Comparador_preco|Equal0~2_combout\,
	combout => \Ctrl|Dinheiro_total_ld~2_combout\);

-- Location: LCCOMB_X18_Y12_N28
\Ctrl|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector7~0_combout\ = (\Ctrl|state.calcula~regout\ & \Ctrl|Dinheiro_total_ld~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctrl|state.calcula~regout\,
	datad => \Ctrl|Dinheiro_total_ld~2_combout\,
	combout => \Ctrl|Selector7~0_combout\);

-- Location: LCCOMB_X18_Y12_N20
\Ctrl|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector7~1_combout\ = (\Ctrl|state.espera~regout\) # ((\Ctrl|Dinheiro_total_ld~1_combout\ & (\Ctrl|Selector7~0_combout\ & !\DPath|Comparador_preco|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|Dinheiro_total_ld~1_combout\,
	datab => \Ctrl|state.espera~regout\,
	datac => \Ctrl|Selector7~0_combout\,
	datad => \DPath|Comparador_preco|LessThan0~1_combout\,
	combout => \Ctrl|Selector7~1_combout\);

-- Location: LCFF_X18_Y12_N21
\Ctrl|state.calcula\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.calcula~regout\);

-- Location: LCCOMB_X19_Y12_N2
\Ctrl|Dinheiro_total_clr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Dinheiro_total_clr~0_combout\ = (!\Ctrl|state.calcula~regout\ & !\Ctrl|state.espera~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctrl|state.calcula~regout\,
	datad => \Ctrl|state.espera~regout\,
	combout => \Ctrl|Dinheiro_total_clr~0_combout\);

-- Location: LCFF_X19_Y12_N15
\DPath|Reg_DinheiroAtual|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_DinheiroAtual|registro[0]~8_combout\,
	aclr => \Ctrl|Dinheiro_total_clr~0_combout\,
	ena => \Ctrl|Dinheiro_total_ld~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_DinheiroAtual|registro\(0));

-- Location: LCFF_X19_Y12_N11
\DPath|Reg_Dinheiro|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \DPath|Reg_DinheiroAtual|registro\(0),
	aclr => \Ctrl|Dinheiro_total_clr~0_combout\,
	sload => VCC,
	ena => \Ctrl|Dinheiro_total_ld~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Dinheiro|registro\(0));

-- Location: LCCOMB_X20_Y12_N4
\DPath|Reg_Troco|registro[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_Troco|registro[0]~8_combout\ = (\DPath|Reg_Produto|registro\(0) & (\DPath|Reg_Dinheiro|registro\(0) $ (VCC))) # (!\DPath|Reg_Produto|registro\(0) & ((\DPath|Reg_Dinheiro|registro\(0)) # (GND)))
-- \DPath|Reg_Troco|registro[0]~9\ = CARRY((\DPath|Reg_Dinheiro|registro\(0)) # (!\DPath|Reg_Produto|registro\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Produto|registro\(0),
	datab => \DPath|Reg_Dinheiro|registro\(0),
	datad => VCC,
	combout => \DPath|Reg_Troco|registro[0]~8_combout\,
	cout => \DPath|Reg_Troco|registro[0]~9\);

-- Location: LCCOMB_X20_Y12_N26
\Ctrl|WideOr5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|WideOr5~combout\ = (\Ctrl|state.cancela~regout\) # ((\Ctrl|state.entrega~regout\) # (!\Ctrl|state.inicio~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrl|state.cancela~regout\,
	datac => \Ctrl|state.inicio~regout\,
	datad => \Ctrl|state.entrega~regout\,
	combout => \Ctrl|WideOr5~combout\);

-- Location: LCCOMB_X20_Y12_N24
\Ctrl|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector4~0_combout\ = (\Ctrl|state.troco~regout\) # ((\Ctrl|state.calcula~regout\ & \DPath|Comparador_preco|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.calcula~regout\,
	datab => \Ctrl|state.troco~regout\,
	datac => \DPath|Comparador_preco|LessThan0~1_combout\,
	combout => \Ctrl|Selector4~0_combout\);

-- Location: LCFF_X20_Y12_N5
\DPath|Reg_Troco|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_Troco|registro[0]~8_combout\,
	aclr => \Ctrl|WideOr5~combout\,
	ena => \Ctrl|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Troco|registro\(0));

-- Location: LCCOMB_X20_Y12_N6
\DPath|Reg_Troco|registro[1]~10\ : cycloneii_lcell_comb
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

-- Location: LCFF_X20_Y12_N7
\DPath|Reg_Troco|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_Troco|registro[1]~10_combout\,
	aclr => \Ctrl|WideOr5~combout\,
	ena => \Ctrl|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Troco|registro\(1));

-- Location: LCCOMB_X20_Y12_N8
\DPath|Reg_Troco|registro[2]~12\ : cycloneii_lcell_comb
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

-- Location: LCFF_X20_Y12_N9
\DPath|Reg_Troco|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_Troco|registro[2]~12_combout\,
	aclr => \Ctrl|WideOr5~combout\,
	ena => \Ctrl|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Troco|registro\(2));

-- Location: LCCOMB_X20_Y12_N10
\DPath|Reg_Troco|registro[3]~14\ : cycloneii_lcell_comb
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

-- Location: LCFF_X20_Y12_N11
\DPath|Reg_Troco|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_Troco|registro[3]~14_combout\,
	aclr => \Ctrl|WideOr5~combout\,
	ena => \Ctrl|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Troco|registro\(3));

-- Location: LCCOMB_X20_Y12_N12
\DPath|Reg_Troco|registro[4]~16\ : cycloneii_lcell_comb
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

-- Location: LCFF_X20_Y12_N13
\DPath|Reg_Troco|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_Troco|registro[4]~16_combout\,
	aclr => \Ctrl|WideOr5~combout\,
	ena => \Ctrl|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Troco|registro\(4));

-- Location: LCFF_X19_Y12_N25
\DPath|Reg_DinheiroAtual|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_DinheiroAtual|registro[5]~18_combout\,
	aclr => \Ctrl|Dinheiro_total_clr~0_combout\,
	ena => \Ctrl|Dinheiro_total_ld~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_DinheiroAtual|registro\(5));

-- Location: LCCOMB_X18_Y12_N12
\DPath|Reg_Dinheiro|registro[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_Dinheiro|registro[5]~feeder_combout\ = \DPath|Reg_DinheiroAtual|registro\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DPath|Reg_DinheiroAtual|registro\(5),
	combout => \DPath|Reg_Dinheiro|registro[5]~feeder_combout\);

-- Location: LCFF_X18_Y12_N13
\DPath|Reg_Dinheiro|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_Dinheiro|registro[5]~feeder_combout\,
	aclr => \Ctrl|Dinheiro_total_clr~0_combout\,
	ena => \Ctrl|Dinheiro_total_ld~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Dinheiro|registro\(5));

-- Location: LCCOMB_X20_Y12_N14
\DPath|Reg_Troco|registro[5]~18\ : cycloneii_lcell_comb
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

-- Location: LCFF_X20_Y12_N15
\DPath|Reg_Troco|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_Troco|registro[5]~18_combout\,
	aclr => \Ctrl|WideOr5~combout\,
	ena => \Ctrl|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Troco|registro\(5));

-- Location: LCCOMB_X20_Y12_N16
\DPath|Reg_Troco|registro[6]~20\ : cycloneii_lcell_comb
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

-- Location: LCFF_X20_Y12_N17
\DPath|Reg_Troco|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_Troco|registro[6]~20_combout\,
	aclr => \Ctrl|WideOr5~combout\,
	ena => \Ctrl|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Troco|registro\(6));

-- Location: LCCOMB_X20_Y12_N18
\DPath|Reg_Troco|registro[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_Troco|registro[7]~22_combout\ = \DPath|Reg_Troco|registro[6]~21\ $ (!\DPath|Reg_Dinheiro|registro\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DPath|Reg_Dinheiro|registro\(7),
	cin => \DPath|Reg_Troco|registro[6]~21\,
	combout => \DPath|Reg_Troco|registro[7]~22_combout\);

-- Location: LCFF_X20_Y12_N19
\DPath|Reg_Troco|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_Troco|registro[7]~22_combout\,
	aclr => \Ctrl|WideOr5~combout\,
	ena => \Ctrl|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Troco|registro\(7));

-- Location: LCCOMB_X18_Y12_N16
\Ctrl|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector11~0_combout\ = (!\Ctrl|state.calcula~regout\ & !\Ctrl|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctrl|state.calcula~regout\,
	datad => \Ctrl|Selector1~0_combout\,
	combout => \Ctrl|Selector11~0_combout\);

-- Location: CLKCTRL_G6
\Ctrl|Selector11~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Ctrl|Selector11~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Ctrl|Selector11~0clkctrl_outclk\);

-- Location: LCCOMB_X20_Y12_N22
\Ctrl|WideOr1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|WideOr1~combout\ = (\Ctrl|state.cancela~regout\) # ((\Ctrl|state.espera~regout\) # (!\Ctrl|state.inicio~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrl|state.cancela~regout\,
	datac => \Ctrl|state.inicio~regout\,
	datad => \Ctrl|state.espera~regout\,
	combout => \Ctrl|WideOr1~combout\);

-- Location: LCCOMB_X21_Y12_N28
\Ctrl|Mensagem_do_sistema[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Mensagem_do_sistema\(1) = (GLOBAL(\Ctrl|Selector11~0clkctrl_outclk\) & ((!\Ctrl|WideOr1~combout\))) # (!GLOBAL(\Ctrl|Selector11~0clkctrl_outclk\) & (\Ctrl|Mensagem_do_sistema\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrl|Mensagem_do_sistema\(1),
	datac => \Ctrl|Selector11~0clkctrl_outclk\,
	datad => \Ctrl|WideOr1~combout\,
	combout => \Ctrl|Mensagem_do_sistema\(1));

-- Location: LCCOMB_X21_Y12_N10
\Ctrl|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector3~0_combout\ = (\Ctrl|Produto_selecionado_ld~1_combout\) # ((!\Ctrl|state.calcula~regout\ & !\Ctrl|state.validaProduto~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrl|state.calcula~regout\,
	datac => \Ctrl|state.validaProduto~regout\,
	datad => \Ctrl|Produto_selecionado_ld~1_combout\,
	combout => \Ctrl|Selector3~0_combout\);

-- Location: LCFF_X21_Y12_N29
\DPath|Reg_Mensagem|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|Mensagem_do_sistema\(1),
	ena => \Ctrl|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Mensagem|registro\(1));

-- Location: LCCOMB_X21_Y12_N0
\Ctrl|WideOr0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|WideOr0~1_combout\ = (\Ctrl|state.espera~regout\) # ((\Ctrl|state.entrega~regout\) # ((\Ctrl|state.troco~regout\) # (\Ctrl|state.cancela~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.espera~regout\,
	datab => \Ctrl|state.entrega~regout\,
	datac => \Ctrl|state.troco~regout\,
	datad => \Ctrl|state.cancela~regout\,
	combout => \Ctrl|WideOr0~1_combout\);

-- Location: LCCOMB_X21_Y12_N4
\Ctrl|Mensagem_do_sistema[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Mensagem_do_sistema\(2) = (GLOBAL(\Ctrl|Selector11~0clkctrl_outclk\) & ((\Ctrl|WideOr0~1_combout\))) # (!GLOBAL(\Ctrl|Selector11~0clkctrl_outclk\) & (\Ctrl|Mensagem_do_sistema\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrl|Mensagem_do_sistema\(2),
	datac => \Ctrl|Selector11~0clkctrl_outclk\,
	datad => \Ctrl|WideOr0~1_combout\,
	combout => \Ctrl|Mensagem_do_sistema\(2));

-- Location: LCFF_X21_Y12_N5
\DPath|Reg_Mensagem|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|Mensagem_do_sistema\(2),
	ena => \Ctrl|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Mensagem|registro\(2));

-- Location: LCCOMB_X21_Y12_N22
\Ctrl|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|WideOr3~0_combout\ = (\Ctrl|state.confirma~regout\) # ((\Ctrl|state.entrega~regout\) # ((\Ctrl|state.espera~regout\) # (!\Ctrl|state.inicio~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.confirma~regout\,
	datab => \Ctrl|state.entrega~regout\,
	datac => \Ctrl|state.inicio~regout\,
	datad => \Ctrl|state.espera~regout\,
	combout => \Ctrl|WideOr3~0_combout\);

-- Location: LCCOMB_X21_Y12_N18
\Ctrl|Mensagem_do_sistema[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Mensagem_do_sistema\(0) = (GLOBAL(\Ctrl|Selector11~0clkctrl_outclk\) & ((\Ctrl|WideOr3~0_combout\))) # (!GLOBAL(\Ctrl|Selector11~0clkctrl_outclk\) & (\Ctrl|Mensagem_do_sistema\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrl|Mensagem_do_sistema\(0),
	datac => \Ctrl|Selector11~0clkctrl_outclk\,
	datad => \Ctrl|WideOr3~0_combout\,
	combout => \Ctrl|Mensagem_do_sistema\(0));

-- Location: LCFF_X21_Y12_N19
\DPath|Reg_Mensagem|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|Mensagem_do_sistema\(0),
	ena => \Ctrl|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Mensagem|registro\(0));

-- Location: LCCOMB_X21_Y12_N30
\DPath|BCD_Display|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|BCD_Display|Mux6~0_combout\ = (!\DPath|Reg_Mensagem|registro\(1) & (\DPath|Reg_Mensagem|registro\(2) $ (\DPath|Reg_Mensagem|registro\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Mensagem|registro\(1),
	datab => \DPath|Reg_Mensagem|registro\(2),
	datad => \DPath|Reg_Mensagem|registro\(0),
	combout => \DPath|BCD_Display|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y12_N16
\DPath|BCD_Display|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|BCD_Display|Mux5~0_combout\ = (\DPath|Reg_Mensagem|registro\(2) & (\DPath|Reg_Mensagem|registro\(0) $ (\DPath|Reg_Mensagem|registro\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Mensagem|registro\(0),
	datab => \DPath|Reg_Mensagem|registro\(2),
	datac => \DPath|Reg_Mensagem|registro\(1),
	combout => \DPath|BCD_Display|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y12_N2
\DPath|BCD_Display|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|BCD_Display|Mux4~0_combout\ = (!\DPath|Reg_Mensagem|registro\(0) & (!\DPath|Reg_Mensagem|registro\(2) & \DPath|Reg_Mensagem|registro\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Mensagem|registro\(0),
	datab => \DPath|Reg_Mensagem|registro\(2),
	datac => \DPath|Reg_Mensagem|registro\(1),
	combout => \DPath|BCD_Display|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y12_N12
\DPath|BCD_Display|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|BCD_Display|Mux3~0_combout\ = (\DPath|Reg_Mensagem|registro\(0) & (\DPath|Reg_Mensagem|registro\(2) $ (!\DPath|Reg_Mensagem|registro\(1)))) # (!\DPath|Reg_Mensagem|registro\(0) & (\DPath|Reg_Mensagem|registro\(2) & 
-- !\DPath|Reg_Mensagem|registro\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Mensagem|registro\(0),
	datab => \DPath|Reg_Mensagem|registro\(2),
	datac => \DPath|Reg_Mensagem|registro\(1),
	combout => \DPath|BCD_Display|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y12_N26
\DPath|BCD_Display|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|BCD_Display|Mux2~0_combout\ = (\DPath|Reg_Mensagem|registro\(0)) # ((\DPath|Reg_Mensagem|registro\(2) & !\DPath|Reg_Mensagem|registro\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Mensagem|registro\(0),
	datab => \DPath|Reg_Mensagem|registro\(2),
	datac => \DPath|Reg_Mensagem|registro\(1),
	combout => \DPath|BCD_Display|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y12_N8
\DPath|BCD_Display|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|BCD_Display|Mux1~0_combout\ = (\DPath|Reg_Mensagem|registro\(0) & ((\DPath|Reg_Mensagem|registro\(1)) # (!\DPath|Reg_Mensagem|registro\(2)))) # (!\DPath|Reg_Mensagem|registro\(0) & (!\DPath|Reg_Mensagem|registro\(2) & 
-- \DPath|Reg_Mensagem|registro\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Mensagem|registro\(0),
	datab => \DPath|Reg_Mensagem|registro\(2),
	datac => \DPath|Reg_Mensagem|registro\(1),
	combout => \DPath|BCD_Display|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y12_N6
\DPath|BCD_Display|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|BCD_Display|Mux0~0_combout\ = (\DPath|Reg_Mensagem|registro\(2) & (\DPath|Reg_Mensagem|registro\(0) & \DPath|Reg_Mensagem|registro\(1))) # (!\DPath|Reg_Mensagem|registro\(2) & ((!\DPath|Reg_Mensagem|registro\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Mensagem|registro\(0),
	datab => \DPath|Reg_Mensagem|registro\(2),
	datac => \DPath|Reg_Mensagem|registro\(1),
	combout => \DPath|BCD_Display|Mux0~0_combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Troco[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DPath|Reg_Troco|registro\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Troco(0));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Troco[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DPath|Reg_Troco|registro\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Troco(1));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Troco[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DPath|Reg_Troco|registro\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Troco(2));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Troco[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DPath|Reg_Troco|registro\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Troco(3));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Troco[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DPath|Reg_Troco|registro\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Troco(4));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Troco[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DPath|Reg_Troco|registro\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Troco(5));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Troco[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DPath|Reg_Troco|registro\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Troco(6));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Troco[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DPath|Reg_Troco|registro\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Troco(7));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DPath|BCD_Display|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(0));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DPath|BCD_Display|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(1));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DPath|BCD_Display|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(2));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DPath|BCD_Display|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(3));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DPath|BCD_Display|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(4));

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DPath|BCD_Display|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(5));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DPath|BCD_Display|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(6));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Produto_liberado~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Ctrl|state.entrega~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Produto_liberado);
END structure;


