transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Hermes/tp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/VendingMachine-main/BCD_7seg/bcd_7seg.vhd}
vcom -93 -work work {D:/Hermes/tp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/VendingMachine-main/Comparador/comparador.vhd}
vcom -93 -work work {D:/Hermes/tp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/VendingMachine-main/Registrador/registrador.vhd}
vcom -93 -work work {D:/Hermes/tp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/VendingMachine-main/ROM_Preco/rom.vhd}
vcom -93 -work work {D:/Hermes/tp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/VendingMachine-main/Somador/somador.vhd}
vcom -93 -work work {D:/Hermes/tp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/VendingMachine-main/Subtrator/subtrator.vhd}
vcom -93 -work work {D:/Hermes/tp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/VendingMachine-main/CaminhoDeDados/datapath.vhd}
vcom -93 -work work {D:/Hermes/tp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/VendingMachine-main/Controladora/Controladora.vhd}
vcom -93 -work work {D:/Hermes/tp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/VendingMachine-main/VendingMachine/VendingMachine.vhd}

vcom -93 -work work {D:/Hermes/tp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/VendingMachine-main/VendingMachine/tb_VendingMachine.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_VendingMachine

add wave *
view structure
view signals
run 120 ns
