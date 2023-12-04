transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Acer/Downloads/Vendingmachine/BCD_7seg/bcd_7seg.vhd}
vcom -93 -work work {C:/Users/Acer/Downloads/Vendingmachine/CaminhoDeDados/datapath.vhd}
vcom -93 -work work {C:/Users/Acer/Downloads/Vendingmachine/Comparador/comparador.vhd}
vcom -93 -work work {C:/Users/Acer/Downloads/Vendingmachine/Controladora/Controladora.vhd}
vcom -93 -work work {C:/Users/Acer/Downloads/Vendingmachine/Registrador/registrador.vhd}
vcom -93 -work work {C:/Users/Acer/Downloads/Vendingmachine/ROM_Preco/rom.vhd}
vcom -93 -work work {C:/Users/Acer/Downloads/Vendingmachine/Somador/somador.vhd}
vcom -93 -work work {C:/Users/Acer/Downloads/Vendingmachine/Subtrator/subtrator.vhd}
vcom -93 -work work {C:/Users/Acer/Downloads/Vendingmachine/VendingMachine/VendingMachine.vhd}

vcom -93 -work work {C:/Users/Acer/Downloads/Vendingmachine/VendingMachine/tb_VendingMachine.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_VendingMachine

add wave *
view structure
view signals
run 220 ns
