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

-- DATE "12/01/2023 14:49:14"

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
	Produto : OUT std_logic_vector(2 DOWNTO 0);
	Troco_ativado : OUT std_logic;
	Produto_liberado : OUT std_logic
	);
END VendingMachine;

-- Design Ports Information
-- Troco[0]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Troco[1]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Troco[2]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Troco[3]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Troco[4]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Troco[5]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Troco[6]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Troco[7]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[0]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[1]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[2]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[3]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[4]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[5]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[6]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Produto[0]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Produto[1]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Produto[2]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Troco_ativado	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Produto_liberado	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Produto_selecionado[2]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Produto_selecionado[1]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Produto_selecionado[0]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dinheiro[0]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dinheiro[1]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dinheiro[2]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dinheiro[3]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dinheiro[4]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dinheiro[5]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dinheiro[6]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dinheiro[7]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Confirmar	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_Produto : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Troco_ativado : std_logic;
SIGNAL ww_Produto_liberado : std_logic;
SIGNAL \Ctrl|Selector11~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Ctrl|Selector6~1_combout\ : std_logic;
SIGNAL \Ctrl|Selector6~2_combout\ : std_logic;
SIGNAL \Ctrl|Selector6~3_combout\ : std_logic;
SIGNAL \CLOCK~combout\ : std_logic;
SIGNAL \CLOCK~clkctrl_outclk\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[0]~8_combout\ : std_logic;
SIGNAL \Confirmar~combout\ : std_logic;
SIGNAL \Ctrl|next_state.cancela~0_combout\ : std_logic;
SIGNAL \Ctrl|state.cancela~regout\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[0]~9\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[1]~10_combout\ : std_logic;
SIGNAL \Ctrl|state.inicio~regout\ : std_logic;
SIGNAL \Ctrl|Selector3~0_combout\ : std_logic;
SIGNAL \Ctrl|Selector5~0_combout\ : std_logic;
SIGNAL \Ctrl|Selector1~0_combout\ : std_logic;
SIGNAL \Ctrl|state.confirma~regout\ : std_logic;
SIGNAL \Ctrl|Selector6~0_combout\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[1]~11\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[2]~12_combout\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[2]~13\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[3]~15\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[4]~16_combout\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[4]~17\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[5]~19\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[6]~21\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[7]~22_combout\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[6]~20_combout\ : std_logic;
SIGNAL \DPath|Comparador_preco|Equal0~1_combout\ : std_logic;
SIGNAL \Ctrl|Selector6~4_combout\ : std_logic;
SIGNAL \Ctrl|Selector7~0_combout\ : std_logic;
SIGNAL \Ctrl|Selector7~1_combout\ : std_logic;
SIGNAL \Ctrl|next_state.troco~0_combout\ : std_logic;
SIGNAL \DPath|Rom_preco_produto|Mux2~0_combout\ : std_logic;
SIGNAL \DPath|Comparador_preco|LessThan0~0_combout\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[3]~14_combout\ : std_logic;
SIGNAL \DPath|Comparador_preco|Equal0~0_combout\ : std_logic;
SIGNAL \DPath|Comparador_preco|LessThan0~1_combout\ : std_logic;
SIGNAL \Ctrl|Selector7~2_combout\ : std_logic;
SIGNAL \Ctrl|Selector6~5_combout\ : std_logic;
SIGNAL \Ctrl|state.espera~regout\ : std_logic;
SIGNAL \Ctrl|next_state.calcula~0_combout\ : std_logic;
SIGNAL \Ctrl|state.calcula~regout\ : std_logic;
SIGNAL \Ctrl|Dinheiro_total_ld~combout\ : std_logic;
SIGNAL \DPath|Comparador_preco|Equal0~2_combout\ : std_logic;
SIGNAL \DPath|Comparador_preco|Equal0~3_combout\ : std_logic;
SIGNAL \Ctrl|Selector7~3_combout\ : std_logic;
SIGNAL \Ctrl|state.entrega~regout\ : std_logic;
SIGNAL \Ctrl|WideOr7~0_combout\ : std_logic;
SIGNAL \DPath|Rom_preco_produto|Mux3~0_combout\ : std_logic;
SIGNAL \DPath|Subtrator_troco|result[0]~0_combout\ : std_logic;
SIGNAL \DPath|Subtrator_troco|result[0]~1\ : std_logic;
SIGNAL \DPath|Subtrator_troco|result[1]~2_combout\ : std_logic;
SIGNAL \DPath|Rom_preco_produto|Mux1~0_combout\ : std_logic;
SIGNAL \DPath|Subtrator_troco|result[1]~3\ : std_logic;
SIGNAL \DPath|Subtrator_troco|result[2]~4_combout\ : std_logic;
SIGNAL \DPath|Rom_preco_produto|Mux0~0_combout\ : std_logic;
SIGNAL \DPath|Subtrator_troco|result[2]~5\ : std_logic;
SIGNAL \DPath|Subtrator_troco|result[3]~6_combout\ : std_logic;
SIGNAL \DPath|Subtrator_troco|result[3]~7\ : std_logic;
SIGNAL \DPath|Subtrator_troco|result[4]~8_combout\ : std_logic;
SIGNAL \DPath|Reg_Dinheiro|registro[5]~18_combout\ : std_logic;
SIGNAL \DPath|Subtrator_troco|result[4]~9\ : std_logic;
SIGNAL \DPath|Subtrator_troco|result[5]~10_combout\ : std_logic;
SIGNAL \DPath|Subtrator_troco|result[5]~11\ : std_logic;
SIGNAL \DPath|Subtrator_troco|result[6]~12_combout\ : std_logic;
SIGNAL \DPath|Subtrator_troco|result[6]~13\ : std_logic;
SIGNAL \DPath|Subtrator_troco|result[7]~14_combout\ : std_logic;
SIGNAL \Ctrl|WideOr4~0_combout\ : std_logic;
SIGNAL \DPath|Comparador_prod_valido|Equal0~0_combout\ : std_logic;
SIGNAL \Ctrl|Selector11~0_combout\ : std_logic;
SIGNAL \Ctrl|Selector11~0clkctrl_outclk\ : std_logic;
SIGNAL \Ctrl|state.validaProduto~regout\ : std_logic;
SIGNAL \Ctrl|Selector4~0_combout\ : std_logic;
SIGNAL \Ctrl|WideOr2~combout\ : std_logic;
SIGNAL \DPath|Comparador_preco|LessThan0~2_combout\ : std_logic;
SIGNAL \Ctrl|next_state.troco~1_combout\ : std_logic;
SIGNAL \Ctrl|state.troco~regout\ : std_logic;
SIGNAL \Ctrl|WideOr1~0_combout\ : std_logic;
SIGNAL \DPath|BCD_Display|Mux6~0_combout\ : std_logic;
SIGNAL \DPath|BCD_Display|Mux5~0_combout\ : std_logic;
SIGNAL \DPath|BCD_Display|Mux4~0_combout\ : std_logic;
SIGNAL \DPath|BCD_Display|Mux3~0_combout\ : std_logic;
SIGNAL \DPath|BCD_Display|Mux2~0_combout\ : std_logic;
SIGNAL \DPath|BCD_Display|Mux1~0_combout\ : std_logic;
SIGNAL \DPath|BCD_Display|Mux0~0_combout\ : std_logic;
SIGNAL \Ctrl|Troco_ativado~combout\ : std_logic;
SIGNAL \Ctrl|Mensagem_do_sistema\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Produto_selecionado~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Dinheiro~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DPath|Reg_Mensagem|registro\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DPath|Reg_Produto|registro\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DPath|Reg_Dinheiro|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Ctrl|ALT_INV_WideOr7~0_combout\ : std_logic;

BEGIN

ww_CLOCK <= CLOCK;
ww_Confirmar <= Confirmar;
ww_Dinheiro <= Dinheiro;
ww_Produto_selecionado <= Produto_selecionado;
Troco <= ww_Troco;
Display <= ww_Display;
Produto <= ww_Produto;
Troco_ativado <= ww_Troco_ativado;
Produto_liberado <= ww_Produto_liberado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Ctrl|Selector11~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Ctrl|Selector11~0_combout\);

\CLOCK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK~combout\);
\Ctrl|ALT_INV_WideOr7~0_combout\ <= NOT \Ctrl|WideOr7~0_combout\;

-- Location: LCCOMB_X22_Y8_N24
\Ctrl|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector6~1_combout\ = (\DPath|Reg_Produto|registro\(2) & (!\DPath|Reg_Dinheiro|registro\(3) & ((\DPath|Reg_Produto|registro\(1)) # (!\DPath|Reg_Dinheiro|registro\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Produto|registro\(2),
	datab => \DPath|Reg_Dinheiro|registro\(3),
	datac => \DPath|Reg_Dinheiro|registro\(2),
	datad => \DPath|Reg_Produto|registro\(1),
	combout => \Ctrl|Selector6~1_combout\);

-- Location: LCCOMB_X22_Y8_N10
\Ctrl|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector6~2_combout\ = (\DPath|Reg_Dinheiro|registro\(1) & (!\DPath|Reg_Dinheiro|registro\(0) & (!\DPath|Rom_preco_produto|Mux2~0_combout\ & !\DPath|Rom_preco_produto|Mux3~0_combout\))) # (!\DPath|Reg_Dinheiro|registro\(1) & 
-- (((!\DPath|Reg_Dinheiro|registro\(0) & !\DPath|Rom_preco_produto|Mux3~0_combout\)) # (!\DPath|Rom_preco_produto|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(0),
	datab => \DPath|Reg_Dinheiro|registro\(1),
	datac => \DPath|Rom_preco_produto|Mux2~0_combout\,
	datad => \DPath|Rom_preco_produto|Mux3~0_combout\,
	combout => \Ctrl|Selector6~2_combout\);

-- Location: LCCOMB_X22_Y8_N26
\Ctrl|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector6~3_combout\ = (\Ctrl|Selector6~1_combout\) # ((\DPath|Comparador_preco|Equal0~0_combout\ & \Ctrl|Selector6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Comparador_preco|Equal0~0_combout\,
	datac => \Ctrl|Selector6~1_combout\,
	datad => \Ctrl|Selector6~2_combout\,
	combout => \Ctrl|Selector6~3_combout\);

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

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X20_Y8_N0
\DPath|Reg_Dinheiro|registro[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_Dinheiro|registro[0]~8_combout\ = (\Dinheiro~combout\(0) & (\DPath|Reg_Dinheiro|registro\(0) $ (VCC))) # (!\Dinheiro~combout\(0) & (\DPath|Reg_Dinheiro|registro\(0) & VCC))
-- \DPath|Reg_Dinheiro|registro[0]~9\ = CARRY((\Dinheiro~combout\(0) & \DPath|Reg_Dinheiro|registro\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dinheiro~combout\(0),
	datab => \DPath|Reg_Dinheiro|registro\(0),
	datad => VCC,
	combout => \DPath|Reg_Dinheiro|registro[0]~8_combout\,
	cout => \DPath|Reg_Dinheiro|registro[0]~9\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X21_Y8_N20
\Ctrl|next_state.cancela~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|next_state.cancela~0_combout\ = (\Ctrl|state.confirma~regout\ & !\Confirmar~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.confirma~regout\,
	datad => \Confirmar~combout\,
	combout => \Ctrl|next_state.cancela~0_combout\);

-- Location: LCFF_X21_Y8_N21
\Ctrl|state.cancela\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|next_state.cancela~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.cancela~regout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X20_Y8_N2
\DPath|Reg_Dinheiro|registro[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_Dinheiro|registro[1]~10_combout\ = (\DPath|Reg_Dinheiro|registro\(1) & ((\Dinheiro~combout\(1) & (\DPath|Reg_Dinheiro|registro[0]~9\ & VCC)) # (!\Dinheiro~combout\(1) & (!\DPath|Reg_Dinheiro|registro[0]~9\)))) # 
-- (!\DPath|Reg_Dinheiro|registro\(1) & ((\Dinheiro~combout\(1) & (!\DPath|Reg_Dinheiro|registro[0]~9\)) # (!\Dinheiro~combout\(1) & ((\DPath|Reg_Dinheiro|registro[0]~9\) # (GND)))))
-- \DPath|Reg_Dinheiro|registro[1]~11\ = CARRY((\DPath|Reg_Dinheiro|registro\(1) & (!\Dinheiro~combout\(1) & !\DPath|Reg_Dinheiro|registro[0]~9\)) # (!\DPath|Reg_Dinheiro|registro\(1) & ((!\DPath|Reg_Dinheiro|registro[0]~9\) # (!\Dinheiro~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(1),
	datab => \Dinheiro~combout\(1),
	datad => VCC,
	cin => \DPath|Reg_Dinheiro|registro[0]~9\,
	combout => \DPath|Reg_Dinheiro|registro[1]~10_combout\,
	cout => \DPath|Reg_Dinheiro|registro[1]~11\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X21_Y8_N3
\Ctrl|state.inicio\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \Ctrl|WideOr7~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.inicio~regout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y8_N1
\DPath|Reg_Produto|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~combout\,
	sdata => \Produto_selecionado~combout\(0),
	aclr => \Ctrl|state.cancela~regout\,
	sload => VCC,
	ena => \Ctrl|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Produto|registro\(0));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X22_Y8_N3
\DPath|Reg_Produto|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~combout\,
	sdata => \Produto_selecionado~combout\(1),
	aclr => \Ctrl|state.cancela~regout\,
	sload => VCC,
	ena => \Ctrl|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Produto|registro\(1));

-- Location: LCCOMB_X22_Y8_N28
\Ctrl|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector3~0_combout\ = (\Ctrl|state.validaProduto~regout\ & (!\DPath|Reg_Produto|registro\(0) & (!\DPath|Reg_Produto|registro\(2) & !\DPath|Reg_Produto|registro\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.validaProduto~regout\,
	datab => \DPath|Reg_Produto|registro\(0),
	datac => \DPath|Reg_Produto|registro\(2),
	datad => \DPath|Reg_Produto|registro\(1),
	combout => \Ctrl|Selector3~0_combout\);

-- Location: LCCOMB_X22_Y8_N12
\Ctrl|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector5~0_combout\ = (\Ctrl|Selector3~0_combout\) # (!\Ctrl|state.inicio~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctrl|state.inicio~regout\,
	datad => \Ctrl|Selector3~0_combout\,
	combout => \Ctrl|Selector5~0_combout\);

-- Location: LCFF_X22_Y8_N21
\DPath|Reg_Produto|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~combout\,
	sdata => \Produto_selecionado~combout\(2),
	aclr => \Ctrl|state.cancela~regout\,
	sload => VCC,
	ena => \Ctrl|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Produto|registro\(2));

-- Location: LCCOMB_X22_Y8_N0
\Ctrl|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector1~0_combout\ = (\Ctrl|state.validaProduto~regout\ & ((\DPath|Reg_Produto|registro\(2)) # ((\DPath|Reg_Produto|registro\(0)) # (\DPath|Reg_Produto|registro\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.validaProduto~regout\,
	datab => \DPath|Reg_Produto|registro\(2),
	datac => \DPath|Reg_Produto|registro\(0),
	datad => \DPath|Reg_Produto|registro\(1),
	combout => \Ctrl|Selector1~0_combout\);

-- Location: LCFF_X21_Y8_N7
\Ctrl|state.confirma\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \Ctrl|Selector1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.confirma~regout\);

-- Location: LCCOMB_X21_Y8_N6
\Ctrl|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector6~0_combout\ = (\Ctrl|state.calcula~regout\) # ((\Ctrl|state.confirma~regout\ & \Confirmar~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.calcula~regout\,
	datac => \Ctrl|state.confirma~regout\,
	datad => \Confirmar~combout\,
	combout => \Ctrl|Selector6~0_combout\);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X20_Y8_N4
\DPath|Reg_Dinheiro|registro[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_Dinheiro|registro[2]~12_combout\ = ((\Dinheiro~combout\(2) $ (\DPath|Reg_Dinheiro|registro\(2) $ (!\DPath|Reg_Dinheiro|registro[1]~11\)))) # (GND)
-- \DPath|Reg_Dinheiro|registro[2]~13\ = CARRY((\Dinheiro~combout\(2) & ((\DPath|Reg_Dinheiro|registro\(2)) # (!\DPath|Reg_Dinheiro|registro[1]~11\))) # (!\Dinheiro~combout\(2) & (\DPath|Reg_Dinheiro|registro\(2) & !\DPath|Reg_Dinheiro|registro[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dinheiro~combout\(2),
	datab => \DPath|Reg_Dinheiro|registro\(2),
	datad => VCC,
	cin => \DPath|Reg_Dinheiro|registro[1]~11\,
	combout => \DPath|Reg_Dinheiro|registro[2]~12_combout\,
	cout => \DPath|Reg_Dinheiro|registro[2]~13\);

-- Location: LCFF_X20_Y8_N5
\DPath|Reg_Dinheiro|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_Dinheiro|registro[2]~12_combout\,
	aclr => \Ctrl|ALT_INV_WideOr7~0_combout\,
	ena => \Ctrl|Dinheiro_total_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Dinheiro|registro\(2));

-- Location: LCCOMB_X20_Y8_N6
\DPath|Reg_Dinheiro|registro[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_Dinheiro|registro[3]~14_combout\ = (\DPath|Reg_Dinheiro|registro\(3) & ((\Dinheiro~combout\(3) & (\DPath|Reg_Dinheiro|registro[2]~13\ & VCC)) # (!\Dinheiro~combout\(3) & (!\DPath|Reg_Dinheiro|registro[2]~13\)))) # 
-- (!\DPath|Reg_Dinheiro|registro\(3) & ((\Dinheiro~combout\(3) & (!\DPath|Reg_Dinheiro|registro[2]~13\)) # (!\Dinheiro~combout\(3) & ((\DPath|Reg_Dinheiro|registro[2]~13\) # (GND)))))
-- \DPath|Reg_Dinheiro|registro[3]~15\ = CARRY((\DPath|Reg_Dinheiro|registro\(3) & (!\Dinheiro~combout\(3) & !\DPath|Reg_Dinheiro|registro[2]~13\)) # (!\DPath|Reg_Dinheiro|registro\(3) & ((!\DPath|Reg_Dinheiro|registro[2]~13\) # (!\Dinheiro~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(3),
	datab => \Dinheiro~combout\(3),
	datad => VCC,
	cin => \DPath|Reg_Dinheiro|registro[2]~13\,
	combout => \DPath|Reg_Dinheiro|registro[3]~14_combout\,
	cout => \DPath|Reg_Dinheiro|registro[3]~15\);

-- Location: LCCOMB_X20_Y8_N8
\DPath|Reg_Dinheiro|registro[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_Dinheiro|registro[4]~16_combout\ = ((\Dinheiro~combout\(4) $ (\DPath|Reg_Dinheiro|registro\(4) $ (!\DPath|Reg_Dinheiro|registro[3]~15\)))) # (GND)
-- \DPath|Reg_Dinheiro|registro[4]~17\ = CARRY((\Dinheiro~combout\(4) & ((\DPath|Reg_Dinheiro|registro\(4)) # (!\DPath|Reg_Dinheiro|registro[3]~15\))) # (!\Dinheiro~combout\(4) & (\DPath|Reg_Dinheiro|registro\(4) & !\DPath|Reg_Dinheiro|registro[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dinheiro~combout\(4),
	datab => \DPath|Reg_Dinheiro|registro\(4),
	datad => VCC,
	cin => \DPath|Reg_Dinheiro|registro[3]~15\,
	combout => \DPath|Reg_Dinheiro|registro[4]~16_combout\,
	cout => \DPath|Reg_Dinheiro|registro[4]~17\);

-- Location: LCFF_X20_Y8_N9
\DPath|Reg_Dinheiro|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_Dinheiro|registro[4]~16_combout\,
	aclr => \Ctrl|ALT_INV_WideOr7~0_combout\,
	ena => \Ctrl|Dinheiro_total_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Dinheiro|registro\(4));

-- Location: LCCOMB_X20_Y8_N10
\DPath|Reg_Dinheiro|registro[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_Dinheiro|registro[5]~18_combout\ = (\DPath|Reg_Dinheiro|registro\(5) & ((\Dinheiro~combout\(5) & (\DPath|Reg_Dinheiro|registro[4]~17\ & VCC)) # (!\Dinheiro~combout\(5) & (!\DPath|Reg_Dinheiro|registro[4]~17\)))) # 
-- (!\DPath|Reg_Dinheiro|registro\(5) & ((\Dinheiro~combout\(5) & (!\DPath|Reg_Dinheiro|registro[4]~17\)) # (!\Dinheiro~combout\(5) & ((\DPath|Reg_Dinheiro|registro[4]~17\) # (GND)))))
-- \DPath|Reg_Dinheiro|registro[5]~19\ = CARRY((\DPath|Reg_Dinheiro|registro\(5) & (!\Dinheiro~combout\(5) & !\DPath|Reg_Dinheiro|registro[4]~17\)) # (!\DPath|Reg_Dinheiro|registro\(5) & ((!\DPath|Reg_Dinheiro|registro[4]~17\) # (!\Dinheiro~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(5),
	datab => \Dinheiro~combout\(5),
	datad => VCC,
	cin => \DPath|Reg_Dinheiro|registro[4]~17\,
	combout => \DPath|Reg_Dinheiro|registro[5]~18_combout\,
	cout => \DPath|Reg_Dinheiro|registro[5]~19\);

-- Location: LCCOMB_X20_Y8_N12
\DPath|Reg_Dinheiro|registro[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_Dinheiro|registro[6]~20_combout\ = ((\DPath|Reg_Dinheiro|registro\(6) $ (\Dinheiro~combout\(6) $ (!\DPath|Reg_Dinheiro|registro[5]~19\)))) # (GND)
-- \DPath|Reg_Dinheiro|registro[6]~21\ = CARRY((\DPath|Reg_Dinheiro|registro\(6) & ((\Dinheiro~combout\(6)) # (!\DPath|Reg_Dinheiro|registro[5]~19\))) # (!\DPath|Reg_Dinheiro|registro\(6) & (\Dinheiro~combout\(6) & !\DPath|Reg_Dinheiro|registro[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(6),
	datab => \Dinheiro~combout\(6),
	datad => VCC,
	cin => \DPath|Reg_Dinheiro|registro[5]~19\,
	combout => \DPath|Reg_Dinheiro|registro[6]~20_combout\,
	cout => \DPath|Reg_Dinheiro|registro[6]~21\);

-- Location: LCCOMB_X20_Y8_N14
\DPath|Reg_Dinheiro|registro[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Reg_Dinheiro|registro[7]~22_combout\ = \Dinheiro~combout\(7) $ (\DPath|Reg_Dinheiro|registro[6]~21\ $ (\DPath|Reg_Dinheiro|registro\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Dinheiro~combout\(7),
	datad => \DPath|Reg_Dinheiro|registro\(7),
	cin => \DPath|Reg_Dinheiro|registro[6]~21\,
	combout => \DPath|Reg_Dinheiro|registro[7]~22_combout\);

-- Location: LCFF_X20_Y8_N15
\DPath|Reg_Dinheiro|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_Dinheiro|registro[7]~22_combout\,
	aclr => \Ctrl|ALT_INV_WideOr7~0_combout\,
	ena => \Ctrl|Dinheiro_total_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Dinheiro|registro\(7));

-- Location: LCFF_X20_Y8_N13
\DPath|Reg_Dinheiro|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_Dinheiro|registro[6]~20_combout\,
	aclr => \Ctrl|ALT_INV_WideOr7~0_combout\,
	ena => \Ctrl|Dinheiro_total_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Dinheiro|registro\(6));

-- Location: LCCOMB_X20_Y8_N28
\DPath|Comparador_preco|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_preco|Equal0~1_combout\ = (!\DPath|Reg_Dinheiro|registro\(5) & (!\DPath|Reg_Dinheiro|registro\(7) & (!\DPath|Reg_Dinheiro|registro\(4) & !\DPath|Reg_Dinheiro|registro\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(5),
	datab => \DPath|Reg_Dinheiro|registro\(7),
	datac => \DPath|Reg_Dinheiro|registro\(4),
	datad => \DPath|Reg_Dinheiro|registro\(6),
	combout => \DPath|Comparador_preco|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y8_N14
\Ctrl|Selector6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector6~4_combout\ = (\DPath|Comparador_preco|Equal0~1_combout\ & ((\DPath|Rom_preco_produto|Mux3~0_combout\ $ (!\DPath|Reg_Dinheiro|registro\(0))) # (!\DPath|Comparador_preco|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Rom_preco_produto|Mux3~0_combout\,
	datab => \DPath|Comparador_preco|Equal0~1_combout\,
	datac => \DPath|Reg_Dinheiro|registro\(0),
	datad => \DPath|Comparador_preco|Equal0~2_combout\,
	combout => \Ctrl|Selector6~4_combout\);

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X20_Y8_N22
\Ctrl|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector7~0_combout\ = (!\Dinheiro~combout\(2) & (!\Dinheiro~combout\(3) & (!\Dinheiro~combout\(1) & !\Dinheiro~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dinheiro~combout\(2),
	datab => \Dinheiro~combout\(3),
	datac => \Dinheiro~combout\(1),
	datad => \Dinheiro~combout\(0),
	combout => \Ctrl|Selector7~0_combout\);

-- Location: LCCOMB_X20_Y8_N20
\Ctrl|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector7~1_combout\ = (!\Dinheiro~combout\(4) & (!\Dinheiro~combout\(6) & (!\Dinheiro~combout\(7) & !\Dinheiro~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dinheiro~combout\(4),
	datab => \Dinheiro~combout\(6),
	datac => \Dinheiro~combout\(7),
	datad => \Dinheiro~combout\(5),
	combout => \Ctrl|Selector7~1_combout\);

-- Location: LCCOMB_X20_Y8_N18
\Ctrl|next_state.troco~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|next_state.troco~0_combout\ = (\Ctrl|state.espera~regout\ & (\Ctrl|Selector7~0_combout\ & \Ctrl|Selector7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.espera~regout\,
	datab => \Ctrl|Selector7~0_combout\,
	datac => \Ctrl|Selector7~1_combout\,
	combout => \Ctrl|next_state.troco~0_combout\);

-- Location: LCCOMB_X22_Y8_N14
\DPath|Rom_preco_produto|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Rom_preco_produto|Mux2~0_combout\ = ((!\DPath|Reg_Produto|registro\(0) & \DPath|Reg_Produto|registro\(2))) # (!\DPath|Reg_Produto|registro\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_Produto|registro\(0),
	datac => \DPath|Reg_Produto|registro\(2),
	datad => \DPath|Reg_Produto|registro\(1),
	combout => \DPath|Rom_preco_produto|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y8_N8
\DPath|Comparador_preco|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_preco|LessThan0~0_combout\ = (\DPath|Reg_Dinheiro|registro\(0) & (((\DPath|Reg_Produto|registro\(2) & \DPath|Reg_Produto|registro\(1))) # (!\DPath|Reg_Produto|registro\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Produto|registro\(2),
	datab => \DPath|Reg_Produto|registro\(0),
	datac => \DPath|Reg_Produto|registro\(1),
	datad => \DPath|Reg_Dinheiro|registro\(0),
	combout => \DPath|Comparador_preco|LessThan0~0_combout\);

-- Location: LCFF_X20_Y8_N7
\DPath|Reg_Dinheiro|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_Dinheiro|registro[3]~14_combout\,
	aclr => \Ctrl|ALT_INV_WideOr7~0_combout\,
	ena => \Ctrl|Dinheiro_total_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Dinheiro|registro\(3));

-- Location: LCCOMB_X22_Y8_N18
\DPath|Comparador_preco|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_preco|Equal0~0_combout\ = (\DPath|Reg_Produto|registro\(1) & (!\DPath|Reg_Dinheiro|registro\(2) & (\DPath|Reg_Produto|registro\(2) $ (!\DPath|Reg_Dinheiro|registro\(3))))) # (!\DPath|Reg_Produto|registro\(1) & 
-- (!\DPath|Reg_Dinheiro|registro\(3) & (\DPath|Reg_Produto|registro\(2) $ (!\DPath|Reg_Dinheiro|registro\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Produto|registro\(2),
	datab => \DPath|Reg_Produto|registro\(1),
	datac => \DPath|Reg_Dinheiro|registro\(2),
	datad => \DPath|Reg_Dinheiro|registro\(3),
	combout => \DPath|Comparador_preco|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y8_N30
\DPath|Comparador_preco|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_preco|LessThan0~1_combout\ = (\DPath|Comparador_preco|Equal0~0_combout\ & ((\DPath|Reg_Dinheiro|registro\(1) & ((\DPath|Rom_preco_produto|Mux2~0_combout\) # (\DPath|Comparador_preco|LessThan0~0_combout\))) # 
-- (!\DPath|Reg_Dinheiro|registro\(1) & (\DPath|Rom_preco_produto|Mux2~0_combout\ & \DPath|Comparador_preco|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(1),
	datab => \DPath|Rom_preco_produto|Mux2~0_combout\,
	datac => \DPath|Comparador_preco|LessThan0~0_combout\,
	datad => \DPath|Comparador_preco|Equal0~0_combout\,
	combout => \DPath|Comparador_preco|LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y8_N22
\Ctrl|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector7~2_combout\ = (!\DPath|Comparador_preco|LessThan0~2_combout\ & (\DPath|Comparador_preco|Equal0~1_combout\ & (\Ctrl|next_state.troco~0_combout\ & !\DPath|Comparador_preco|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Comparador_preco|LessThan0~2_combout\,
	datab => \DPath|Comparador_preco|Equal0~1_combout\,
	datac => \Ctrl|next_state.troco~0_combout\,
	datad => \DPath|Comparador_preco|LessThan0~1_combout\,
	combout => \Ctrl|Selector7~2_combout\);

-- Location: LCCOMB_X21_Y8_N16
\Ctrl|Selector6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector6~5_combout\ = (\Ctrl|Selector6~0_combout\) # ((\Ctrl|Selector6~3_combout\ & (\Ctrl|Selector6~4_combout\ & \Ctrl|Selector7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|Selector6~3_combout\,
	datab => \Ctrl|Selector6~0_combout\,
	datac => \Ctrl|Selector6~4_combout\,
	datad => \Ctrl|Selector7~2_combout\,
	combout => \Ctrl|Selector6~5_combout\);

-- Location: LCFF_X21_Y8_N17
\Ctrl|state.espera\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|Selector6~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.espera~regout\);

-- Location: LCCOMB_X20_Y8_N30
\Ctrl|next_state.calcula~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|next_state.calcula~0_combout\ = (\Ctrl|state.espera~regout\ & ((!\Ctrl|Selector7~1_combout\) # (!\Ctrl|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.espera~regout\,
	datab => \Ctrl|Selector7~0_combout\,
	datac => \Ctrl|Selector7~1_combout\,
	combout => \Ctrl|next_state.calcula~0_combout\);

-- Location: LCFF_X21_Y8_N19
\Ctrl|state.calcula\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \Ctrl|next_state.calcula~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.calcula~regout\);

-- Location: LCCOMB_X20_Y8_N16
\Ctrl|Dinheiro_total_ld\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Dinheiro_total_ld~combout\ = (\Ctrl|state.espera~regout\) # (\Ctrl|state.calcula~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctrl|state.espera~regout\,
	datad => \Ctrl|state.calcula~regout\,
	combout => \Ctrl|Dinheiro_total_ld~combout\);

-- Location: LCFF_X20_Y8_N3
\DPath|Reg_Dinheiro|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_Dinheiro|registro[1]~10_combout\,
	aclr => \Ctrl|ALT_INV_WideOr7~0_combout\,
	ena => \Ctrl|Dinheiro_total_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Dinheiro|registro\(1));

-- Location: LCCOMB_X22_Y8_N22
\DPath|Comparador_preco|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_preco|Equal0~2_combout\ = (\DPath|Comparador_preco|Equal0~0_combout\ & (\DPath|Reg_Dinheiro|registro\(1) $ (\DPath|Rom_preco_produto|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_Dinheiro|registro\(1),
	datac => \DPath|Rom_preco_produto|Mux2~0_combout\,
	datad => \DPath|Comparador_preco|Equal0~0_combout\,
	combout => \DPath|Comparador_preco|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y8_N2
\DPath|Comparador_preco|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_preco|Equal0~3_combout\ = (\DPath|Comparador_preco|Equal0~1_combout\ & (\DPath|Rom_preco_produto|Mux3~0_combout\ $ (\DPath|Reg_Dinheiro|registro\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Rom_preco_produto|Mux3~0_combout\,
	datab => \DPath|Reg_Dinheiro|registro\(0),
	datad => \DPath|Comparador_preco|Equal0~1_combout\,
	combout => \DPath|Comparador_preco|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y8_N30
\Ctrl|Selector7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector7~3_combout\ = (\Ctrl|state.troco~regout\) # ((\DPath|Comparador_preco|Equal0~2_combout\ & (\DPath|Comparador_preco|Equal0~3_combout\ & \Ctrl|Selector7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.troco~regout\,
	datab => \DPath|Comparador_preco|Equal0~2_combout\,
	datac => \DPath|Comparador_preco|Equal0~3_combout\,
	datad => \Ctrl|Selector7~2_combout\,
	combout => \Ctrl|Selector7~3_combout\);

-- Location: LCFF_X21_Y8_N31
\Ctrl|state.entrega\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|Selector7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.entrega~regout\);

-- Location: LCCOMB_X21_Y8_N28
\Ctrl|WideOr7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|WideOr7~0_combout\ = (!\Ctrl|state.cancela~regout\ & !\Ctrl|state.entrega~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctrl|state.cancela~regout\,
	datad => \Ctrl|state.entrega~regout\,
	combout => \Ctrl|WideOr7~0_combout\);

-- Location: LCFF_X20_Y8_N1
\DPath|Reg_Dinheiro|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_Dinheiro|registro[0]~8_combout\,
	aclr => \Ctrl|ALT_INV_WideOr7~0_combout\,
	ena => \Ctrl|Dinheiro_total_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Dinheiro|registro\(0));

-- Location: LCCOMB_X22_Y8_N6
\DPath|Rom_preco_produto|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Rom_preco_produto|Mux3~0_combout\ = ((\DPath|Reg_Produto|registro\(2) & \DPath|Reg_Produto|registro\(1))) # (!\DPath|Reg_Produto|registro\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_Produto|registro\(0),
	datac => \DPath|Reg_Produto|registro\(2),
	datad => \DPath|Reg_Produto|registro\(1),
	combout => \DPath|Rom_preco_produto|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y8_N6
\DPath|Subtrator_troco|result[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Subtrator_troco|result[0]~0_combout\ = (\DPath|Reg_Dinheiro|registro\(0) & ((\DPath|Rom_preco_produto|Mux3~0_combout\) # (GND))) # (!\DPath|Reg_Dinheiro|registro\(0) & (\DPath|Rom_preco_produto|Mux3~0_combout\ $ (VCC)))
-- \DPath|Subtrator_troco|result[0]~1\ = CARRY((\DPath|Reg_Dinheiro|registro\(0)) # (\DPath|Rom_preco_produto|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(0),
	datab => \DPath|Rom_preco_produto|Mux3~0_combout\,
	datad => VCC,
	combout => \DPath|Subtrator_troco|result[0]~0_combout\,
	cout => \DPath|Subtrator_troco|result[0]~1\);

-- Location: LCCOMB_X24_Y8_N8
\DPath|Subtrator_troco|result[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Subtrator_troco|result[1]~2_combout\ = (\DPath|Rom_preco_produto|Mux2~0_combout\ & ((\DPath|Reg_Dinheiro|registro\(1) & (\DPath|Subtrator_troco|result[0]~1\ & VCC)) # (!\DPath|Reg_Dinheiro|registro\(1) & (!\DPath|Subtrator_troco|result[0]~1\)))) # 
-- (!\DPath|Rom_preco_produto|Mux2~0_combout\ & ((\DPath|Reg_Dinheiro|registro\(1) & (!\DPath|Subtrator_troco|result[0]~1\)) # (!\DPath|Reg_Dinheiro|registro\(1) & ((\DPath|Subtrator_troco|result[0]~1\) # (GND)))))
-- \DPath|Subtrator_troco|result[1]~3\ = CARRY((\DPath|Rom_preco_produto|Mux2~0_combout\ & (!\DPath|Reg_Dinheiro|registro\(1) & !\DPath|Subtrator_troco|result[0]~1\)) # (!\DPath|Rom_preco_produto|Mux2~0_combout\ & ((!\DPath|Subtrator_troco|result[0]~1\) # 
-- (!\DPath|Reg_Dinheiro|registro\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Rom_preco_produto|Mux2~0_combout\,
	datab => \DPath|Reg_Dinheiro|registro\(1),
	datad => VCC,
	cin => \DPath|Subtrator_troco|result[0]~1\,
	combout => \DPath|Subtrator_troco|result[1]~2_combout\,
	cout => \DPath|Subtrator_troco|result[1]~3\);

-- Location: LCCOMB_X22_Y8_N2
\DPath|Rom_preco_produto|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Rom_preco_produto|Mux1~0_combout\ = (!\DPath|Reg_Produto|registro\(1) & \DPath|Reg_Produto|registro\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DPath|Reg_Produto|registro\(1),
	datad => \DPath|Reg_Produto|registro\(2),
	combout => \DPath|Rom_preco_produto|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y8_N10
\DPath|Subtrator_troco|result[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Subtrator_troco|result[2]~4_combout\ = ((\DPath|Reg_Dinheiro|registro\(2) $ (\DPath|Rom_preco_produto|Mux1~0_combout\ $ (\DPath|Subtrator_troco|result[1]~3\)))) # (GND)
-- \DPath|Subtrator_troco|result[2]~5\ = CARRY((\DPath|Reg_Dinheiro|registro\(2) & ((!\DPath|Subtrator_troco|result[1]~3\) # (!\DPath|Rom_preco_produto|Mux1~0_combout\))) # (!\DPath|Reg_Dinheiro|registro\(2) & (!\DPath|Rom_preco_produto|Mux1~0_combout\ & 
-- !\DPath|Subtrator_troco|result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(2),
	datab => \DPath|Rom_preco_produto|Mux1~0_combout\,
	datad => VCC,
	cin => \DPath|Subtrator_troco|result[1]~3\,
	combout => \DPath|Subtrator_troco|result[2]~4_combout\,
	cout => \DPath|Subtrator_troco|result[2]~5\);

-- Location: LCCOMB_X22_Y8_N20
\DPath|Rom_preco_produto|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Rom_preco_produto|Mux0~0_combout\ = (\DPath|Reg_Produto|registro\(2) & \DPath|Reg_Produto|registro\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DPath|Reg_Produto|registro\(2),
	datad => \DPath|Reg_Produto|registro\(1),
	combout => \DPath|Rom_preco_produto|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y8_N12
\DPath|Subtrator_troco|result[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Subtrator_troco|result[3]~6_combout\ = (\DPath|Reg_Dinheiro|registro\(3) & ((\DPath|Rom_preco_produto|Mux0~0_combout\ & (!\DPath|Subtrator_troco|result[2]~5\)) # (!\DPath|Rom_preco_produto|Mux0~0_combout\ & (\DPath|Subtrator_troco|result[2]~5\ & 
-- VCC)))) # (!\DPath|Reg_Dinheiro|registro\(3) & ((\DPath|Rom_preco_produto|Mux0~0_combout\ & ((\DPath|Subtrator_troco|result[2]~5\) # (GND))) # (!\DPath|Rom_preco_produto|Mux0~0_combout\ & (!\DPath|Subtrator_troco|result[2]~5\))))
-- \DPath|Subtrator_troco|result[3]~7\ = CARRY((\DPath|Reg_Dinheiro|registro\(3) & (\DPath|Rom_preco_produto|Mux0~0_combout\ & !\DPath|Subtrator_troco|result[2]~5\)) # (!\DPath|Reg_Dinheiro|registro\(3) & ((\DPath|Rom_preco_produto|Mux0~0_combout\) # 
-- (!\DPath|Subtrator_troco|result[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(3),
	datab => \DPath|Rom_preco_produto|Mux0~0_combout\,
	datad => VCC,
	cin => \DPath|Subtrator_troco|result[2]~5\,
	combout => \DPath|Subtrator_troco|result[3]~6_combout\,
	cout => \DPath|Subtrator_troco|result[3]~7\);

-- Location: LCCOMB_X24_Y8_N14
\DPath|Subtrator_troco|result[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Subtrator_troco|result[4]~8_combout\ = (\DPath|Reg_Dinheiro|registro\(4) & ((GND) # (!\DPath|Subtrator_troco|result[3]~7\))) # (!\DPath|Reg_Dinheiro|registro\(4) & (\DPath|Subtrator_troco|result[3]~7\ $ (GND)))
-- \DPath|Subtrator_troco|result[4]~9\ = CARRY((\DPath|Reg_Dinheiro|registro\(4)) # (!\DPath|Subtrator_troco|result[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_Dinheiro|registro\(4),
	datad => VCC,
	cin => \DPath|Subtrator_troco|result[3]~7\,
	combout => \DPath|Subtrator_troco|result[4]~8_combout\,
	cout => \DPath|Subtrator_troco|result[4]~9\);

-- Location: LCFF_X20_Y8_N11
\DPath|Reg_Dinheiro|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \DPath|Reg_Dinheiro|registro[5]~18_combout\,
	aclr => \Ctrl|ALT_INV_WideOr7~0_combout\,
	ena => \Ctrl|Dinheiro_total_ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Dinheiro|registro\(5));

-- Location: LCCOMB_X24_Y8_N16
\DPath|Subtrator_troco|result[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Subtrator_troco|result[5]~10_combout\ = (\DPath|Reg_Dinheiro|registro\(5) & (\DPath|Subtrator_troco|result[4]~9\ & VCC)) # (!\DPath|Reg_Dinheiro|registro\(5) & (!\DPath|Subtrator_troco|result[4]~9\))
-- \DPath|Subtrator_troco|result[5]~11\ = CARRY((!\DPath|Reg_Dinheiro|registro\(5) & !\DPath|Subtrator_troco|result[4]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Dinheiro|registro\(5),
	datad => VCC,
	cin => \DPath|Subtrator_troco|result[4]~9\,
	combout => \DPath|Subtrator_troco|result[5]~10_combout\,
	cout => \DPath|Subtrator_troco|result[5]~11\);

-- Location: LCCOMB_X24_Y8_N18
\DPath|Subtrator_troco|result[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Subtrator_troco|result[6]~12_combout\ = (\DPath|Reg_Dinheiro|registro\(6) & ((GND) # (!\DPath|Subtrator_troco|result[5]~11\))) # (!\DPath|Reg_Dinheiro|registro\(6) & (\DPath|Subtrator_troco|result[5]~11\ $ (GND)))
-- \DPath|Subtrator_troco|result[6]~13\ = CARRY((\DPath|Reg_Dinheiro|registro\(6)) # (!\DPath|Subtrator_troco|result[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_Dinheiro|registro\(6),
	datad => VCC,
	cin => \DPath|Subtrator_troco|result[5]~11\,
	combout => \DPath|Subtrator_troco|result[6]~12_combout\,
	cout => \DPath|Subtrator_troco|result[6]~13\);

-- Location: LCCOMB_X24_Y8_N20
\DPath|Subtrator_troco|result[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Subtrator_troco|result[7]~14_combout\ = \DPath|Subtrator_troco|result[6]~13\ $ (!\DPath|Reg_Dinheiro|registro\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DPath|Reg_Dinheiro|registro\(7),
	cin => \DPath|Subtrator_troco|result[6]~13\,
	combout => \DPath|Subtrator_troco|result[7]~14_combout\);

-- Location: LCCOMB_X21_Y8_N24
\Ctrl|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|WideOr4~0_combout\ = (\Ctrl|state.confirma~regout\) # ((\Ctrl|state.entrega~regout\) # ((\Ctrl|state.espera~regout\) # (!\Ctrl|state.inicio~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.confirma~regout\,
	datab => \Ctrl|state.entrega~regout\,
	datac => \Ctrl|state.espera~regout\,
	datad => \Ctrl|state.inicio~regout\,
	combout => \Ctrl|WideOr4~0_combout\);

-- Location: LCCOMB_X22_Y8_N4
\DPath|Comparador_prod_valido|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_prod_valido|Equal0~0_combout\ = (!\DPath|Reg_Produto|registro\(0) & (!\DPath|Reg_Produto|registro\(2) & !\DPath|Reg_Produto|registro\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_Produto|registro\(0),
	datac => \DPath|Reg_Produto|registro\(2),
	datad => \DPath|Reg_Produto|registro\(1),
	combout => \DPath|Comparador_prod_valido|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y8_N16
\Ctrl|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector11~0_combout\ = (!\Ctrl|state.calcula~regout\ & ((\DPath|Comparador_prod_valido|Equal0~0_combout\) # (!\Ctrl|state.validaProduto~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.validaProduto~regout\,
	datac => \DPath|Comparador_prod_valido|Equal0~0_combout\,
	datad => \Ctrl|state.calcula~regout\,
	combout => \Ctrl|Selector11~0_combout\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X21_Y8_N26
\Ctrl|Mensagem_do_sistema[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Mensagem_do_sistema\(0) = (GLOBAL(\Ctrl|Selector11~0clkctrl_outclk\) & ((\Ctrl|WideOr4~0_combout\))) # (!GLOBAL(\Ctrl|Selector11~0clkctrl_outclk\) & (\Ctrl|Mensagem_do_sistema\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrl|Mensagem_do_sistema\(0),
	datac => \Ctrl|WideOr4~0_combout\,
	datad => \Ctrl|Selector11~0clkctrl_outclk\,
	combout => \Ctrl|Mensagem_do_sistema\(0));

-- Location: LCFF_X22_Y8_N13
\Ctrl|state.validaProduto\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~combout\,
	datain => \Ctrl|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.validaProduto~regout\);

-- Location: LCCOMB_X21_Y8_N18
\Ctrl|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Selector4~0_combout\ = (\Ctrl|Selector3~0_combout\) # ((!\Ctrl|state.validaProduto~regout\ & !\Ctrl|state.calcula~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrl|state.validaProduto~regout\,
	datac => \Ctrl|state.calcula~regout\,
	datad => \Ctrl|Selector3~0_combout\,
	combout => \Ctrl|Selector4~0_combout\);

-- Location: LCFF_X21_Y8_N27
\DPath|Reg_Mensagem|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|Mensagem_do_sistema\(0),
	ena => \Ctrl|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Mensagem|registro\(0));

-- Location: LCCOMB_X21_Y8_N0
\Ctrl|WideOr2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|WideOr2~combout\ = ((\Ctrl|state.espera~regout\) # (\Ctrl|state.cancela~regout\)) # (!\Ctrl|state.inicio~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrl|state.inicio~regout\,
	datac => \Ctrl|state.espera~regout\,
	datad => \Ctrl|state.cancela~regout\,
	combout => \Ctrl|WideOr2~combout\);

-- Location: LCCOMB_X21_Y8_N4
\Ctrl|Mensagem_do_sistema[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Mensagem_do_sistema\(1) = (GLOBAL(\Ctrl|Selector11~0clkctrl_outclk\) & ((!\Ctrl|WideOr2~combout\))) # (!GLOBAL(\Ctrl|Selector11~0clkctrl_outclk\) & (\Ctrl|Mensagem_do_sistema\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrl|Mensagem_do_sistema\(1),
	datac => \Ctrl|Selector11~0clkctrl_outclk\,
	datad => \Ctrl|WideOr2~combout\,
	combout => \Ctrl|Mensagem_do_sistema\(1));

-- Location: LCFF_X21_Y8_N5
\DPath|Reg_Mensagem|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|Mensagem_do_sistema\(1),
	ena => \Ctrl|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Mensagem|registro\(1));

-- Location: LCCOMB_X21_Y8_N10
\DPath|Comparador_preco|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|Comparador_preco|LessThan0~2_combout\ = (\DPath|Reg_Dinheiro|registro\(3) & (((\DPath|Reg_Dinheiro|registro\(2)) # (!\DPath|Reg_Produto|registro\(2))) # (!\DPath|Reg_Produto|registro\(1)))) # (!\DPath|Reg_Dinheiro|registro\(3) & 
-- (((\DPath|Reg_Dinheiro|registro\(2) & !\DPath|Reg_Produto|registro\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Reg_Produto|registro\(1),
	datab => \DPath|Reg_Dinheiro|registro\(3),
	datac => \DPath|Reg_Dinheiro|registro\(2),
	datad => \DPath|Reg_Produto|registro\(2),
	combout => \DPath|Comparador_preco|LessThan0~2_combout\);

-- Location: LCCOMB_X20_Y8_N24
\Ctrl|next_state.troco~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|next_state.troco~1_combout\ = (\Ctrl|next_state.troco~0_combout\ & (((\DPath|Comparador_preco|LessThan0~2_combout\) # (\DPath|Comparador_preco|LessThan0~1_combout\)) # (!\DPath|Comparador_preco|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DPath|Comparador_preco|Equal0~1_combout\,
	datab => \Ctrl|next_state.troco~0_combout\,
	datac => \DPath|Comparador_preco|LessThan0~2_combout\,
	datad => \DPath|Comparador_preco|LessThan0~1_combout\,
	combout => \Ctrl|next_state.troco~1_combout\);

-- Location: LCFF_X20_Y8_N25
\Ctrl|state.troco\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|next_state.troco~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ctrl|state.troco~regout\);

-- Location: LCCOMB_X21_Y8_N12
\Ctrl|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|WideOr1~0_combout\ = (\Ctrl|state.espera~regout\) # ((\Ctrl|state.cancela~regout\) # ((\Ctrl|state.entrega~regout\) # (\Ctrl|state.troco~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ctrl|state.espera~regout\,
	datab => \Ctrl|state.cancela~regout\,
	datac => \Ctrl|state.entrega~regout\,
	datad => \Ctrl|state.troco~regout\,
	combout => \Ctrl|WideOr1~0_combout\);

-- Location: LCCOMB_X21_Y8_N8
\Ctrl|Mensagem_do_sistema[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Mensagem_do_sistema\(2) = (GLOBAL(\Ctrl|Selector11~0clkctrl_outclk\) & ((\Ctrl|WideOr1~0_combout\))) # (!GLOBAL(\Ctrl|Selector11~0clkctrl_outclk\) & (\Ctrl|Mensagem_do_sistema\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrl|Mensagem_do_sistema\(2),
	datac => \Ctrl|Selector11~0clkctrl_outclk\,
	datad => \Ctrl|WideOr1~0_combout\,
	combout => \Ctrl|Mensagem_do_sistema\(2));

-- Location: LCFF_X21_Y8_N9
\DPath|Reg_Mensagem|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Ctrl|Mensagem_do_sistema\(2),
	ena => \Ctrl|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DPath|Reg_Mensagem|registro\(2));

-- Location: LCCOMB_X21_Y11_N12
\DPath|BCD_Display|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|BCD_Display|Mux6~0_combout\ = (!\DPath|Reg_Mensagem|registro\(1) & (\DPath|Reg_Mensagem|registro\(0) $ (\DPath|Reg_Mensagem|registro\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_Mensagem|registro\(0),
	datac => \DPath|Reg_Mensagem|registro\(1),
	datad => \DPath|Reg_Mensagem|registro\(2),
	combout => \DPath|BCD_Display|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y11_N18
\DPath|BCD_Display|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|BCD_Display|Mux5~0_combout\ = (\DPath|Reg_Mensagem|registro\(2) & (\DPath|Reg_Mensagem|registro\(0) $ (\DPath|Reg_Mensagem|registro\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_Mensagem|registro\(0),
	datac => \DPath|Reg_Mensagem|registro\(1),
	datad => \DPath|Reg_Mensagem|registro\(2),
	combout => \DPath|BCD_Display|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y11_N8
\DPath|BCD_Display|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|BCD_Display|Mux4~0_combout\ = (!\DPath|Reg_Mensagem|registro\(0) & (\DPath|Reg_Mensagem|registro\(1) & !\DPath|Reg_Mensagem|registro\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_Mensagem|registro\(0),
	datac => \DPath|Reg_Mensagem|registro\(1),
	datad => \DPath|Reg_Mensagem|registro\(2),
	combout => \DPath|BCD_Display|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y11_N10
\DPath|BCD_Display|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|BCD_Display|Mux3~0_combout\ = (\DPath|Reg_Mensagem|registro\(0) & (\DPath|Reg_Mensagem|registro\(1) $ (!\DPath|Reg_Mensagem|registro\(2)))) # (!\DPath|Reg_Mensagem|registro\(0) & (!\DPath|Reg_Mensagem|registro\(1) & 
-- \DPath|Reg_Mensagem|registro\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_Mensagem|registro\(0),
	datac => \DPath|Reg_Mensagem|registro\(1),
	datad => \DPath|Reg_Mensagem|registro\(2),
	combout => \DPath|BCD_Display|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y11_N16
\DPath|BCD_Display|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|BCD_Display|Mux2~0_combout\ = (\DPath|Reg_Mensagem|registro\(0)) # ((!\DPath|Reg_Mensagem|registro\(1) & \DPath|Reg_Mensagem|registro\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_Mensagem|registro\(0),
	datac => \DPath|Reg_Mensagem|registro\(1),
	datad => \DPath|Reg_Mensagem|registro\(2),
	combout => \DPath|BCD_Display|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y11_N22
\DPath|BCD_Display|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|BCD_Display|Mux1~0_combout\ = (\DPath|Reg_Mensagem|registro\(0) & ((\DPath|Reg_Mensagem|registro\(1)) # (!\DPath|Reg_Mensagem|registro\(2)))) # (!\DPath|Reg_Mensagem|registro\(0) & (\DPath|Reg_Mensagem|registro\(1) & 
-- !\DPath|Reg_Mensagem|registro\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_Mensagem|registro\(0),
	datac => \DPath|Reg_Mensagem|registro\(1),
	datad => \DPath|Reg_Mensagem|registro\(2),
	combout => \DPath|BCD_Display|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y11_N4
\DPath|BCD_Display|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DPath|BCD_Display|Mux0~0_combout\ = (\DPath|Reg_Mensagem|registro\(1) & (\DPath|Reg_Mensagem|registro\(0) & \DPath|Reg_Mensagem|registro\(2))) # (!\DPath|Reg_Mensagem|registro\(1) & ((!\DPath|Reg_Mensagem|registro\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DPath|Reg_Mensagem|registro\(0),
	datac => \DPath|Reg_Mensagem|registro\(1),
	datad => \DPath|Reg_Mensagem|registro\(2),
	combout => \DPath|BCD_Display|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y8_N26
\Ctrl|Troco_ativado\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ctrl|Troco_ativado~combout\ = (\Ctrl|state.troco~regout\) # (\Ctrl|state.cancela~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ctrl|state.troco~regout\,
	datad => \Ctrl|state.cancela~regout\,
	combout => \Ctrl|Troco_ativado~combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \DPath|Subtrator_troco|result[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Troco(0));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \DPath|Subtrator_troco|result[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Troco(1));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \DPath|Subtrator_troco|result[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Troco(2));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \DPath|Subtrator_troco|result[3]~6_combout\,
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
	datain => \DPath|Subtrator_troco|result[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Troco(4));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \DPath|Subtrator_troco|result[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Troco(5));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \DPath|Subtrator_troco|result[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Troco(6));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \DPath|Subtrator_troco|result[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Troco(7));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Produto[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Produto(0));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Produto[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Produto(1));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Produto[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Produto(2));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Troco_ativado~I\ : cycloneii_io
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
	datain => \Ctrl|Troco_ativado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Troco_ativado);

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


