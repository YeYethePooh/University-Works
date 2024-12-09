# File saved with Nlview 7.7.1 2023-07-26 3bc4126617 VDI=43 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new system work:system:NOFILE -nosplit
load symbol clockDivDisplay work:clockDivDisplay:NOFILE HIERBOX pin clk input.left pin clkDiv output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol Debouncer work:Debouncer:NOFILE HIERBOX pin async_sinal_in input.left pin clk input.left pin signal_out output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol Debouncer work:abstract:NOFILE HIERBOX pin async_sinal_in input.left pin clk input.left pin signal_out output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol quadSevenSegmentDisplay work:quadSevenSegmentDisplay:NOFILE HIERBOX pin clk input.left pin dp output.right pinBus an output.right [3:0] pinBus num0 input.left [3:0] pinBus num1 input.left [3:0] pinBus num2 input.left [3:0] pinBus num3 input.left [3:0] pinBus seg output.right [6:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol uart work:uart:NOFILE HIERBOX pin RsRx input.left pin RsTx output.right pin btnC input.left pin clk input.left pin en output.right pinBus char output.right [7:0] pinBus data_transmit input.left [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol vga work:vga:NOFILE HIERBOX pin change input.left pin clk_100MHz input.left pin hsync output.right pin reset input.left pin vsync output.right pinBus data input.left [7:0] pinBus rgb output.right [11:0] boxcolor 1 fillcolor 2 minwidth 13%
load port Hsync output -pg 1 -lvl 4 -x 970 -y 290
load port Vsync output -pg 1 -lvl 4 -x 970 -y 410
load port btnC input -pg 1 -lvl 0 -x 0 -y 230
load port btnU input -pg 1 -lvl 0 -x 0 -y 150
load port clk input -pg 1 -lvl 0 -x 0 -y 260
load port dp output -pg 1 -lvl 4 -x 970 -y 190
load portBus JA output [0:0] -attr @name JA[0:0] -pg 1 -lvl 4 -x 970 -y 260
load portBus JB input [0:0] -attr @name JB[0:0] -pg 1 -lvl 0 -x 0 -y 290
load portBus an output [3:0] -attr @name an[3:0] -pg 1 -lvl 4 -x 970 -y 160
load portBus seg output [6:0] -attr @name seg[6:0] -pg 1 -lvl 4 -x 970 -y 220
load portBus sw input [7:0] -attr @name sw[7:0] -pg 1 -lvl 0 -x 0 -y 330
load portBus vgaBlue output [3:0] -attr @name vgaBlue[3:0] -pg 1 -lvl 4 -x 970 -y 320
load portBus vgaGreen output [3:0] -attr @name vgaGreen[3:0] -pg 1 -lvl 4 -x 970 -y 350
load portBus vgaRed output [3:0] -attr @name vgaRed[3:0] -pg 1 -lvl 4 -x 970 -y 380
load inst clock_divider clockDivDisplay work:clockDivDisplay:NOFILE -autohide -attr @cell(#000000) clockDivDisplay -pg 1 -lvl 2 -x 450 -y 50
load inst debounce_btnC Debouncer work:Debouncer:NOFILE -autohide -attr @cell(#000000) Debouncer -pg 1 -lvl 1 -x 130 -y 220
load inst debounce_btnU Debouncer work:abstract:NOFILE -autohide -attr @cell(#000000) Debouncer -pg 1 -lvl 2 -x 450 -y 140
load inst seven_segment_display quadSevenSegmentDisplay work:quadSevenSegmentDisplay:NOFILE -autohide -attr @cell(#000000) quadSevenSegmentDisplay -pinBusAttr an @name an[3:0] -pinBusAttr num0 @name num0[3:0] -pinBusAttr num1 @name num1[3:0] -pinBusAttr num2 @name num2[3:0] -pinBusAttr num3 @name num3[3:0] -pinBusAttr seg @name seg[6:0] -pg 1 -lvl 3 -x 760 -y 140
load inst uart_inst uart work:uart:NOFILE -autohide -attr @cell(#000000) uart -pinBusAttr char @name char[7:0] -pinBusAttr data_transmit @name data_transmit[7:0] -pg 1 -lvl 2 -x 450 -y 280
load inst vga_display vga work:vga:NOFILE -autohide -attr @cell(#000000) vga -pinBusAttr data @name data[7:0] -pinBusAttr rgb @name rgb[11:0] -pg 1 -lvl 3 -x 760 -y 320
load net Hsync -port Hsync -pin vga_display hsync
netloc Hsync 1 3 1 910J 290n
load net JA[0] -attr @rip 0 -port JA[0] -pin uart_inst RsTx
netloc JA[0] 1 2 2 640J 270 910J
load net JB[0] -attr @rip JB[0] -port JB[0] -pin uart_inst RsRx
netloc JB[0] 1 0 2 NJ 290 NJ
load net Vsync -port Vsync -pin vga_display vsync
netloc Vsync 1 3 1 910J 370n
load net an[0] -attr @rip an[0] -port an[0] -pin seven_segment_display an[0]
load net an[1] -attr @rip an[1] -port an[1] -pin seven_segment_display an[1]
load net an[2] -attr @rip an[2] -port an[2] -pin seven_segment_display an[2]
load net an[3] -attr @rip an[3] -port an[3] -pin seven_segment_display an[3]
load net btnC -port btnC -pin debounce_btnC async_sinal_in
netloc btnC 1 0 1 NJ 230
load net btnC_debounced -pin debounce_btnC signal_out -pin uart_inst btnC
netloc btnC_debounced 1 1 1 280 230n
load net btnU -port btnU -pin debounce_btnU async_sinal_in
netloc btnU 1 0 2 NJ 150 NJ
load net btnU_debounced -pin debounce_btnU signal_out -pin vga_display reset
netloc btnU_debounced 1 2 1 600 150n
load net clk -port clk -pin clock_divider clk -pin debounce_btnC clk -pin debounce_btnU clk -pin uart_inst clk -pin vga_display clk_100MHz
netloc clk 1 0 3 20 310 320 230 620
load net clkDiv -pin clock_divider clkDiv -pin seven_segment_display clk
netloc clkDiv 1 2 1 660 60n
load net data_receive[0] -attr @rip char[0] -pin seven_segment_display num2[0] -pin uart_inst char[0] -pin vga_display data[0]
load net data_receive[1] -attr @rip char[1] -pin seven_segment_display num2[1] -pin uart_inst char[1] -pin vga_display data[1]
load net data_receive[2] -attr @rip char[2] -pin seven_segment_display num2[2] -pin uart_inst char[2] -pin vga_display data[2]
load net data_receive[3] -attr @rip char[3] -pin seven_segment_display num2[3] -pin uart_inst char[3] -pin vga_display data[3]
load net data_receive[4] -attr @rip char[4] -pin seven_segment_display num3[0] -pin uart_inst char[4] -pin vga_display data[4]
load net data_receive[5] -attr @rip char[5] -pin seven_segment_display num3[1] -pin uart_inst char[5] -pin vga_display data[5]
load net data_receive[6] -attr @rip char[6] -pin seven_segment_display num3[2] -pin uart_inst char[6] -pin vga_display data[6]
load net data_receive[7] -attr @rip char[7] -pin seven_segment_display num3[3] -pin uart_inst char[7] -pin vga_display data[7]
load net dp -port dp -pin seven_segment_display dp
netloc dp 1 3 1 NJ 190
load net seg[0] -attr @rip seg[0] -port seg[0] -pin seven_segment_display seg[0]
load net seg[1] -attr @rip seg[1] -port seg[1] -pin seven_segment_display seg[1]
load net seg[2] -attr @rip seg[2] -port seg[2] -pin seven_segment_display seg[2]
load net seg[3] -attr @rip seg[3] -port seg[3] -pin seven_segment_display seg[3]
load net seg[4] -attr @rip seg[4] -port seg[4] -pin seven_segment_display seg[4]
load net seg[5] -attr @rip seg[5] -port seg[5] -pin seven_segment_display seg[5]
load net seg[6] -attr @rip seg[6] -port seg[6] -pin seven_segment_display seg[6]
load net sw[0] -attr @rip sw[0] -pin seven_segment_display num0[0] -port sw[0] -pin uart_inst data_transmit[0]
load net sw[1] -attr @rip sw[1] -pin seven_segment_display num0[1] -port sw[1] -pin uart_inst data_transmit[1]
load net sw[2] -attr @rip sw[2] -pin seven_segment_display num0[2] -port sw[2] -pin uart_inst data_transmit[2]
load net sw[3] -attr @rip sw[3] -pin seven_segment_display num0[3] -port sw[3] -pin uart_inst data_transmit[3]
load net sw[4] -attr @rip sw[4] -pin seven_segment_display num1[0] -port sw[4] -pin uart_inst data_transmit[4]
load net sw[5] -attr @rip sw[5] -pin seven_segment_display num1[1] -port sw[5] -pin uart_inst data_transmit[5]
load net sw[6] -attr @rip sw[6] -pin seven_segment_display num1[2] -port sw[6] -pin uart_inst data_transmit[6]
load net sw[7] -attr @rip sw[7] -pin seven_segment_display num1[3] -port sw[7] -pin uart_inst data_transmit[7]
load net valid -pin uart_inst en -pin vga_display change
netloc valid 1 2 1 N 330
load net vgaBlue[0] -attr @rip rgb[0] -port vgaBlue[0] -pin vga_display rgb[0]
load net vgaBlue[1] -attr @rip rgb[1] -port vgaBlue[1] -pin vga_display rgb[1]
load net vgaBlue[2] -attr @rip rgb[2] -port vgaBlue[2] -pin vga_display rgb[2]
load net vgaBlue[3] -attr @rip rgb[3] -port vgaBlue[3] -pin vga_display rgb[3]
load net vgaGreen[0] -attr @rip rgb[4] -port vgaGreen[0] -pin vga_display rgb[4]
load net vgaGreen[1] -attr @rip rgb[5] -port vgaGreen[1] -pin vga_display rgb[5]
load net vgaGreen[2] -attr @rip rgb[6] -port vgaGreen[2] -pin vga_display rgb[6]
load net vgaGreen[3] -attr @rip rgb[7] -port vgaGreen[3] -pin vga_display rgb[7]
load net vgaRed[0] -attr @rip rgb[8] -port vgaRed[0] -pin vga_display rgb[8]
load net vgaRed[1] -attr @rip rgb[9] -port vgaRed[1] -pin vga_display rgb[9]
load net vgaRed[2] -attr @rip rgb[10] -port vgaRed[2] -pin vga_display rgb[10]
load net vgaRed[3] -attr @rip rgb[11] -port vgaRed[3] -pin vga_display rgb[11]
load netBundle @sw 8 sw[7] sw[6] sw[5] sw[4] sw[3] sw[2] sw[1] sw[0] -autobundled
netbloc @sw 1 0 3 NJ 330 300 210 620
load netBundle @an 4 an[3] an[2] an[1] an[0] -autobundled
netbloc @an 1 3 1 910J 160n
load netBundle @seg 7 seg[6] seg[5] seg[4] seg[3] seg[2] seg[1] seg[0] -autobundled
netbloc @seg 1 3 1 910J 210n
load netBundle @vgaBlue 4 vgaBlue[3] vgaBlue[2] vgaBlue[1] vgaBlue[0] -autobundled
netbloc @vgaBlue 1 3 1 930J 320n
load netBundle @vgaGreen 4 vgaGreen[3] vgaGreen[2] vgaGreen[1] vgaGreen[0] -autobundled
netbloc @vgaGreen 1 3 1 950J 350
load netBundle @vgaRed 4 vgaRed[3] vgaRed[2] vgaRed[1] vgaRed[0] -autobundled
netbloc @vgaRed 1 3 1 930J 350n
load netBundle @data_receive 8 data_receive[7] data_receive[6] data_receive[5] data_receive[4] data_receive[3] data_receive[2] data_receive[1] data_receive[0] -autobundled
netbloc @data_receive 1 2 1 660 210n
levelinfo -pg 1 0 130 450 760 970
pagesize -pg 1 -db -bbox -sgen -100 0 1110 430
show
zoom 0.878435
scrollpos -82 -53
#
# initialize ictrl to current module system work:system:NOFILE
ictrl init topinfo |
