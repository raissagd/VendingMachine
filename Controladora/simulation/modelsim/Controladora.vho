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

-- DATE "12/01/2023 14:38:39"

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

ENTITY 	Controladora IS
    PORT (
	RESET : IN std_logic;
	CLOCK : IN std_logic;
	Confirmar : IN std_logic;
	DltP : IN std_logic;
	DeqP : IN std_logic;
	DgtP : IN std_logic;
	Preco_eq_0 : IN std_logic;
	Dinheiro_eq_0 : IN std_logic;
	Troco_ativado : OUT std_logic;
	Produto_liberado : OUT std_logic;
	Produto_selecionado_clr : OUT std_logic;
	Produto_selecionado_ld : OUT std_logic;
	Mensagem_ld : OUT std_logic;
	Mensagem_clr : OUT std_logic;
	Dinheiro_total_ld : OUT std_logic;
	Dinheiro_total_clr : OUT std_logic;
	Mensagem_do_sistema : OUT std_logic_vector(2 DOWNTO 0)
	);
END Controladora;

-- Design Ports Information
-- Troco_ativado	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Produto_liberado	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Produto_selecionado_clr	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Produto_selecionado_ld	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Mensagem_ld	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Mensagem_clr	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Dinheiro_total_ld	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Dinheiro_total_clr	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Mensagem_do_sistema[0]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Mensagem_do_sistema[1]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Mensagem_do_sistema[2]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Preco_eq_0	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Confirmar	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DgtP	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dinheiro_eq_0	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DeqP	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DltP	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Controladora IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_Confirmar : std_logic;
SIGNAL ww_DltP : std_logic;
SIGNAL ww_DeqP : std_logic;
SIGNAL ww_DgtP : std_logic;
SIGNAL ww_Preco_eq_0 : std_logic;
SIGNAL ww_Dinheiro_eq_0 : std_logic;
SIGNAL ww_Troco_ativado : std_logic;
SIGNAL ww_Produto_liberado : std_logic;
SIGNAL ww_Produto_selecionado_clr : std_logic;
SIGNAL ww_Produto_selecionado_ld : std_logic;
SIGNAL ww_Mensagem_ld : std_logic;
SIGNAL ww_Mensagem_clr : std_logic;
SIGNAL ww_Dinheiro_total_ld : std_logic;
SIGNAL ww_Dinheiro_total_clr : std_logic;
SIGNAL ww_Mensagem_do_sistema : std_logic_vector(2 DOWNTO 0);
SIGNAL \RESET~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~combout\ : std_logic;
SIGNAL \CLOCK~clkctrl_outclk\ : std_logic;
SIGNAL \Confirmar~combout\ : std_logic;
SIGNAL \Preco_eq_0~combout\ : std_logic;
SIGNAL \DeqP~combout\ : std_logic;
SIGNAL \DgtP~combout\ : std_logic;
SIGNAL \Dinheiro_eq_0~combout\ : std_logic;
SIGNAL \DltP~combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \next_state.calcula~0_combout\ : std_logic;
SIGNAL \RESET~combout\ : std_logic;
SIGNAL \RESET~clkctrl_outclk\ : std_logic;
SIGNAL \state.calcula~regout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \state.espera~regout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \state.entrega~regout\ : std_logic;
SIGNAL \WideOr6~combout\ : std_logic;
SIGNAL \state.inicio~0_combout\ : std_logic;
SIGNAL \state.inicio~regout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.validaProduto~regout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \state.confirma~regout\ : std_logic;
SIGNAL \next_state.cancela~0_combout\ : std_logic;
SIGNAL \state.cancela~regout\ : std_logic;
SIGNAL \next_state.troco~0_combout\ : std_logic;
SIGNAL \state.troco~regout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \state.invalido~regout\ : std_logic;
SIGNAL \Produto_selecionado_clr~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Dinheiro_total_ld~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~0clkctrl_outclk\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \Mensagem_do_sistema[0]$latch~combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \Mensagem_do_sistema[1]$latch~combout\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \Mensagem_do_sistema[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Produto_selecionado_clr~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~0_combout\ : std_logic;

BEGIN

ww_RESET <= RESET;
ww_CLOCK <= CLOCK;
ww_Confirmar <= Confirmar;
ww_DltP <= DltP;
ww_DeqP <= DeqP;
ww_DgtP <= DgtP;
ww_Preco_eq_0 <= Preco_eq_0;
ww_Dinheiro_eq_0 <= Dinheiro_eq_0;
Troco_ativado <= ww_Troco_ativado;
Produto_liberado <= ww_Produto_liberado;
Produto_selecionado_clr <= ww_Produto_selecionado_clr;
Produto_selecionado_ld <= ww_Produto_selecionado_ld;
Mensagem_ld <= ww_Mensagem_ld;
Mensagem_clr <= ww_Mensagem_clr;
Dinheiro_total_ld <= ww_Dinheiro_total_ld;
Dinheiro_total_clr <= ww_Dinheiro_total_clr;
Mensagem_do_sistema <= ww_Mensagem_do_sistema;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RESET~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RESET~combout\);

\Selector1~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Selector1~0_combout\);

\CLOCK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK~combout\);
\ALT_INV_Produto_selecionado_clr~0_combout\ <= NOT \Produto_selecionado_clr~0_combout\;
\ALT_INV_WideOr1~0_combout\ <= NOT \WideOr1~0_combout\;

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

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Preco_eq_0~I\ : cycloneii_io
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
	padio => ww_Preco_eq_0,
	combout => \Preco_eq_0~combout\);

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DeqP~I\ : cycloneii_io
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
	padio => ww_DeqP,
	combout => \DeqP~combout\);

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DgtP~I\ : cycloneii_io
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
	padio => ww_DgtP,
	combout => \DgtP~combout\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dinheiro_eq_0~I\ : cycloneii_io
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
	padio => ww_Dinheiro_eq_0,
	combout => \Dinheiro_eq_0~combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DltP~I\ : cycloneii_io
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
	padio => ww_DltP,
	combout => \DltP~combout\);

-- Location: LCCOMB_X2_Y11_N14
\Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Dinheiro_eq_0~combout\ & (\DltP~combout\ & (!\DeqP~combout\ & \state.espera~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dinheiro_eq_0~combout\,
	datab => \DltP~combout\,
	datac => \DeqP~combout\,
	datad => \state.espera~regout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X1_Y11_N20
\next_state.calcula~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.calcula~0_combout\ = (\state.espera~regout\ & !\Dinheiro_eq_0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.espera~regout\,
	datad => \Dinheiro_eq_0~combout\,
	combout => \next_state.calcula~0_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RESET~I\ : cycloneii_io
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
	padio => ww_RESET,
	combout => \RESET~combout\);

-- Location: CLKCTRL_G1
\RESET~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~clkctrl_outclk\);

-- Location: LCFF_X1_Y11_N21
\state.calcula\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~combout\,
	datain => \next_state.calcula~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.calcula~regout\);

-- Location: LCCOMB_X1_Y11_N14
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.calcula~regout\) # ((\Confirmar~combout\ & \state.confirma~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Confirmar~combout\,
	datac => \state.calcula~regout\,
	datad => \state.confirma~regout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X2_Y11_N0
\Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\Selector6~0_combout\) # ((!\DgtP~combout\ & \Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DgtP~combout\,
	datac => \Selector6~1_combout\,
	datad => \Selector6~0_combout\,
	combout => \Selector6~2_combout\);

-- Location: LCFF_X2_Y11_N1
\state.espera\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Selector6~2_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.espera~regout\);

-- Location: LCCOMB_X2_Y11_N8
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\DgtP~combout\ & (\Dinheiro_eq_0~combout\ & \state.espera~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DgtP~combout\,
	datac => \Dinheiro_eq_0~combout\,
	datad => \state.espera~regout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X2_Y11_N20
\Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\state.troco~regout\) # ((\DeqP~combout\ & \Selector7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.troco~regout\,
	datab => \DeqP~combout\,
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCFF_X2_Y11_N21
\state.entrega\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Selector7~1_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.entrega~regout\);

-- Location: LCCOMB_X2_Y11_N30
WideOr6 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr6~combout\ = (\state.invalido~regout\) # ((\state.cancela~regout\) # (\state.entrega~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.invalido~regout\,
	datab => \state.cancela~regout\,
	datad => \state.entrega~regout\,
	combout => \WideOr6~combout\);

-- Location: LCCOMB_X2_Y11_N22
\state.inicio~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.inicio~0_combout\ = !\WideOr6~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WideOr6~combout\,
	combout => \state.inicio~0_combout\);

-- Location: LCFF_X2_Y11_N23
\state.inicio\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \state.inicio~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.inicio~regout\);

-- Location: LCCOMB_X1_Y11_N24
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ((\Preco_eq_0~combout\ & \state.validaProduto~regout\)) # (!\state.inicio~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Preco_eq_0~combout\,
	datab => \state.inicio~regout\,
	datad => \state.validaProduto~regout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X1_Y11_N19
\state.validaProduto\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~combout\,
	sdata => \Selector3~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.validaProduto~regout\);

-- Location: LCCOMB_X1_Y11_N16
\Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\Preco_eq_0~combout\ & \state.validaProduto~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Preco_eq_0~combout\,
	datad => \state.validaProduto~regout\,
	combout => \Selector1~1_combout\);

-- Location: LCFF_X1_Y11_N17
\state.confirma\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Selector1~1_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.confirma~regout\);

-- Location: LCCOMB_X2_Y11_N4
\next_state.cancela~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.cancela~0_combout\ = (!\Confirmar~combout\ & \state.confirma~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Confirmar~combout\,
	datad => \state.confirma~regout\,
	combout => \next_state.cancela~0_combout\);

-- Location: LCFF_X2_Y11_N5
\state.cancela\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \next_state.cancela~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.cancela~regout\);

-- Location: LCCOMB_X2_Y11_N12
\next_state.troco~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.troco~0_combout\ = (\state.espera~regout\ & (\Dinheiro_eq_0~combout\ & \DgtP~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.espera~regout\,
	datab => \Dinheiro_eq_0~combout\,
	datac => \DgtP~combout\,
	combout => \next_state.troco~0_combout\);

-- Location: LCFF_X2_Y11_N13
\state.troco\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \next_state.troco~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.troco~regout\);

-- Location: LCCOMB_X1_Y11_N18
\WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (!\state.cancela~regout\ & !\state.troco~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.cancela~regout\,
	datab => \state.troco~regout\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X2_Y11_N6
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (!\DltP~combout\ & (!\DeqP~combout\ & \Selector7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DltP~combout\,
	datac => \DeqP~combout\,
	datad => \Selector7~0_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCFF_X2_Y11_N7
\state.invalido\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~combout\,
	datain => \Selector8~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.invalido~regout\);

-- Location: LCCOMB_X1_Y11_N30
\Produto_selecionado_clr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Produto_selecionado_clr~0_combout\ = (!\state.invalido~regout\ & !\state.cancela~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.invalido~regout\,
	datad => \state.cancela~regout\,
	combout => \Produto_selecionado_clr~0_combout\);

-- Location: LCCOMB_X1_Y11_N28
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.validaProduto~regout\ & (((\Preco_eq_0~combout\)))) # (!\state.validaProduto~regout\ & (!\state.calcula~regout\ & (!\state.invalido~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.validaProduto~regout\,
	datab => \state.calcula~regout\,
	datac => \state.invalido~regout\,
	datad => \Preco_eq_0~combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X1_Y11_N22
\Dinheiro_total_ld~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Dinheiro_total_ld~0_combout\ = (\state.calcula~regout\) # (\state.espera~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.calcula~regout\,
	datac => \state.espera~regout\,
	combout => \Dinheiro_total_ld~0_combout\);

-- Location: LCCOMB_X1_Y11_N26
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\state.calcula~regout\ & (!\state.invalido~regout\ & ((\Preco_eq_0~combout\) # (!\state.validaProduto~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Preco_eq_0~combout\,
	datab => \state.validaProduto~regout\,
	datac => \state.calcula~regout\,
	datad => \state.invalido~regout\,
	combout => \Selector1~0_combout\);

-- Location: CLKCTRL_G3
\Selector1~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector1~0clkctrl_outclk\);

-- Location: LCCOMB_X2_Y11_N10
\WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\state.espera~regout\) # ((\state.confirma~regout\) # ((\state.entrega~regout\) # (!\state.inicio~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.espera~regout\,
	datab => \state.confirma~regout\,
	datac => \state.entrega~regout\,
	datad => \state.inicio~regout\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X2_Y11_N24
\Mensagem_do_sistema[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mensagem_do_sistema[0]$latch~combout\ = (GLOBAL(\Selector1~0clkctrl_outclk\) & ((\WideOr4~0_combout\))) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & (\Mensagem_do_sistema[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mensagem_do_sistema[0]$latch~combout\,
	datac => \Selector1~0clkctrl_outclk\,
	datad => \WideOr4~0_combout\,
	combout => \Mensagem_do_sistema[0]$latch~combout\);

-- Location: LCCOMB_X2_Y11_N18
WideOr2 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = ((\state.cancela~regout\) # (\state.espera~regout\)) # (!\state.inicio~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.inicio~regout\,
	datac => \state.cancela~regout\,
	datad => \state.espera~regout\,
	combout => \WideOr2~combout\);

-- Location: LCCOMB_X2_Y11_N28
\Mensagem_do_sistema[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mensagem_do_sistema[1]$latch~combout\ = (GLOBAL(\Selector1~0clkctrl_outclk\) & ((!\WideOr2~combout\))) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & (\Mensagem_do_sistema[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mensagem_do_sistema[1]$latch~combout\,
	datac => \Selector1~0clkctrl_outclk\,
	datad => \WideOr2~combout\,
	combout => \Mensagem_do_sistema[1]$latch~combout\);

-- Location: LCCOMB_X2_Y11_N2
\WideOr1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~1_combout\ = (\state.entrega~regout\) # ((\state.espera~regout\) # ((\state.cancela~regout\) # (\state.troco~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.entrega~regout\,
	datab => \state.espera~regout\,
	datac => \state.cancela~regout\,
	datad => \state.troco~regout\,
	combout => \WideOr1~1_combout\);

-- Location: LCCOMB_X2_Y11_N26
\Mensagem_do_sistema[2]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mensagem_do_sistema[2]$latch~combout\ = (GLOBAL(\Selector1~0clkctrl_outclk\) & ((\WideOr1~1_combout\))) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & (\Mensagem_do_sistema[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mensagem_do_sistema[2]$latch~combout\,
	datac => \Selector1~0clkctrl_outclk\,
	datad => \WideOr1~1_combout\,
	combout => \Mensagem_do_sistema[2]$latch~combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALT_INV_WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Troco_ativado);

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \state.entrega~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Produto_liberado);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Produto_selecionado_clr~I\ : cycloneii_io
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
	datain => \ALT_INV_Produto_selecionado_clr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Produto_selecionado_clr);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Produto_selecionado_ld~I\ : cycloneii_io
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
	datain => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Produto_selecionado_ld);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Mensagem_ld~I\ : cycloneii_io
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
	datain => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Mensagem_ld);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Mensagem_clr~I\ : cycloneii_io
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
	datain => \state.invalido~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Mensagem_clr);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Dinheiro_total_ld~I\ : cycloneii_io
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
	datain => \Dinheiro_total_ld~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Dinheiro_total_ld);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Dinheiro_total_clr~I\ : cycloneii_io
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
	datain => \WideOr6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Dinheiro_total_clr);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Mensagem_do_sistema[0]~I\ : cycloneii_io
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
	datain => \Mensagem_do_sistema[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Mensagem_do_sistema(0));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Mensagem_do_sistema[1]~I\ : cycloneii_io
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
	datain => \Mensagem_do_sistema[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Mensagem_do_sistema(1));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Mensagem_do_sistema[2]~I\ : cycloneii_io
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
	datain => \Mensagem_do_sistema[2]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Mensagem_do_sistema(2));
END structure;


