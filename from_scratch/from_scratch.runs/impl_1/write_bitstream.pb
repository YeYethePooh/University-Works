
T
Command: %s
53*	vivadotcl2#
!write_bitstream -force system.bitZ4-113h px� 

@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2	
xc7a35tZ17-347h px� 
o
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2	
xc7a35tZ17-349h px� 
f
,Running DRC as a precondition to command %s
1349*	planAhead2
write_bitstreamZ12-1349h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
�
�Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2
 DRC|Pin Planning8ZCFGBVS-1h px� 
�
YReport rule limit reached: REQP-1840 rule limit reached: 20 violations have been found.%s*DRC2'
 !DRC|DRC System|Rule limit reached8ZCHECK-3h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2T
 "P
%vga_display/my_ascii_rom/addr_reg_reg	%vga_display/my_ascii_rom/addr_reg_reg2t
 "p
5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[11]5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[11]2X
 "T
'vga_display/my_ascii_rom/ADDRARDADDR[8]'vga_display/my_ascii_rom/ADDRARDADDR[8]2R
 "N
$vga_display/vga_c/h_count_reg_reg[3]	$vga_display/vga_c/h_count_reg_reg[3]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2T
 "P
%vga_display/my_ascii_rom/addr_reg_reg	%vga_display/my_ascii_rom/addr_reg_reg2t
 "p
5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[11]5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[11]2X
 "T
'vga_display/my_ascii_rom/ADDRARDADDR[8]'vga_display/my_ascii_rom/ADDRARDADDR[8]2R
 "N
$vga_display/vga_c/h_count_reg_reg[4]	$vga_display/vga_c/h_count_reg_reg[4]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2T
 "P
%vga_display/my_ascii_rom/addr_reg_reg	%vga_display/my_ascii_rom/addr_reg_reg2t
 "p
5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[11]5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[11]2X
 "T
'vga_display/my_ascii_rom/ADDRARDADDR[8]'vga_display/my_ascii_rom/ADDRARDADDR[8]2R
 "N
$vga_display/vga_c/h_count_reg_reg[5]	$vga_display/vga_c/h_count_reg_reg[5]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2T
 "P
%vga_display/my_ascii_rom/addr_reg_reg	%vga_display/my_ascii_rom/addr_reg_reg2t
 "p
5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[11]5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[11]2X
 "T
'vga_display/my_ascii_rom/ADDRARDADDR[8]'vga_display/my_ascii_rom/ADDRARDADDR[8]2R
 "N
$vga_display/vga_c/h_count_reg_reg[6]	$vga_display/vga_c/h_count_reg_reg[6]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2T
 "P
%vga_display/my_ascii_rom/addr_reg_reg	%vga_display/my_ascii_rom/addr_reg_reg2t
 "p
5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[11]5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[11]2X
 "T
'vga_display/my_ascii_rom/ADDRARDADDR[8]'vga_display/my_ascii_rom/ADDRARDADDR[8]2R
 "N
$vga_display/vga_c/v_count_reg_reg[4]	$vga_display/vga_c/v_count_reg_reg[4]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2T
 "P
%vga_display/my_ascii_rom/addr_reg_reg	%vga_display/my_ascii_rom/addr_reg_reg2t
 "p
5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[11]5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[11]2X
 "T
'vga_display/my_ascii_rom/ADDRARDADDR[8]'vga_display/my_ascii_rom/ADDRARDADDR[8]2R
 "N
$vga_display/vga_c/v_count_reg_reg[5]	$vga_display/vga_c/v_count_reg_reg[5]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2T
 "P
%vga_display/my_ascii_rom/addr_reg_reg	%vga_display/my_ascii_rom/addr_reg_reg2t
 "p
5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[12]5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[12]2X
 "T
'vga_display/my_ascii_rom/ADDRARDADDR[9]'vga_display/my_ascii_rom/ADDRARDADDR[9]2R
 "N
$vga_display/vga_c/h_count_reg_reg[3]	$vga_display/vga_c/h_count_reg_reg[3]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2T
 "P
%vga_display/my_ascii_rom/addr_reg_reg	%vga_display/my_ascii_rom/addr_reg_reg2t
 "p
5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[12]5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[12]2X
 "T
'vga_display/my_ascii_rom/ADDRARDADDR[9]'vga_display/my_ascii_rom/ADDRARDADDR[9]2R
 "N
$vga_display/vga_c/h_count_reg_reg[4]	$vga_display/vga_c/h_count_reg_reg[4]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2T
 "P
%vga_display/my_ascii_rom/addr_reg_reg	%vga_display/my_ascii_rom/addr_reg_reg2t
 "p
5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[12]5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[12]2X
 "T
'vga_display/my_ascii_rom/ADDRARDADDR[9]'vga_display/my_ascii_rom/ADDRARDADDR[9]2R
 "N
$vga_display/vga_c/h_count_reg_reg[5]	$vga_display/vga_c/h_count_reg_reg[5]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2T
 "P
%vga_display/my_ascii_rom/addr_reg_reg	%vga_display/my_ascii_rom/addr_reg_reg2t
 "p
5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[12]5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[12]2X
 "T
'vga_display/my_ascii_rom/ADDRARDADDR[9]'vga_display/my_ascii_rom/ADDRARDADDR[9]2R
 "N
$vga_display/vga_c/h_count_reg_reg[6]	$vga_display/vga_c/h_count_reg_reg[6]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2T
 "P
%vga_display/my_ascii_rom/addr_reg_reg	%vga_display/my_ascii_rom/addr_reg_reg2t
 "p
5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[12]5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[12]2X
 "T
'vga_display/my_ascii_rom/ADDRARDADDR[9]'vga_display/my_ascii_rom/ADDRARDADDR[9]2R
 "N
$vga_display/vga_c/v_count_reg_reg[3]	$vga_display/vga_c/v_count_reg_reg[3]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2T
 "P
%vga_display/my_ascii_rom/addr_reg_reg	%vga_display/my_ascii_rom/addr_reg_reg2t
 "p
5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[12]5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[12]2X
 "T
'vga_display/my_ascii_rom/ADDRARDADDR[9]'vga_display/my_ascii_rom/ADDRARDADDR[9]2R
 "N
$vga_display/vga_c/v_count_reg_reg[4]	$vga_display/vga_c/v_count_reg_reg[4]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2T
 "P
%vga_display/my_ascii_rom/addr_reg_reg	%vga_display/my_ascii_rom/addr_reg_reg2t
 "p
5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[12]5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[12]2X
 "T
'vga_display/my_ascii_rom/ADDRARDADDR[9]'vga_display/my_ascii_rom/ADDRARDADDR[9]2R
 "N
$vga_display/vga_c/v_count_reg_reg[5]	$vga_display/vga_c/v_count_reg_reg[5]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2T
 "P
%vga_display/my_ascii_rom/addr_reg_reg	%vga_display/my_ascii_rom/addr_reg_reg2t
 "p
5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[13]5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[13]2Z
 "V
(vga_display/my_ascii_rom/ADDRARDADDR[10](vga_display/my_ascii_rom/ADDRARDADDR[10]2R
 "N
$vga_display/vga_c/h_count_reg_reg[3]	$vga_display/vga_c/h_count_reg_reg[3]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2T
 "P
%vga_display/my_ascii_rom/addr_reg_reg	%vga_display/my_ascii_rom/addr_reg_reg2t
 "p
5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[13]5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[13]2Z
 "V
(vga_display/my_ascii_rom/ADDRARDADDR[10](vga_display/my_ascii_rom/ADDRARDADDR[10]2R
 "N
$vga_display/vga_c/h_count_reg_reg[4]	$vga_display/vga_c/h_count_reg_reg[4]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2T
 "P
%vga_display/my_ascii_rom/addr_reg_reg	%vga_display/my_ascii_rom/addr_reg_reg2t
 "p
5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[13]5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[13]2Z
 "V
(vga_display/my_ascii_rom/ADDRARDADDR[10](vga_display/my_ascii_rom/ADDRARDADDR[10]2R
 "N
$vga_display/vga_c/h_count_reg_reg[5]	$vga_display/vga_c/h_count_reg_reg[5]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2T
 "P
%vga_display/my_ascii_rom/addr_reg_reg	%vga_display/my_ascii_rom/addr_reg_reg2t
 "p
5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[13]5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[13]2Z
 "V
(vga_display/my_ascii_rom/ADDRARDADDR[10](vga_display/my_ascii_rom/ADDRARDADDR[10]2R
 "N
$vga_display/vga_c/h_count_reg_reg[6]	$vga_display/vga_c/h_count_reg_reg[6]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2T
 "P
%vga_display/my_ascii_rom/addr_reg_reg	%vga_display/my_ascii_rom/addr_reg_reg2t
 "p
5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[13]5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[13]2Z
 "V
(vga_display/my_ascii_rom/ADDRARDADDR[10](vga_display/my_ascii_rom/ADDRARDADDR[10]2R
 "N
$vga_display/vga_c/v_count_reg_reg[3]	$vga_display/vga_c/v_count_reg_reg[3]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2T
 "P
%vga_display/my_ascii_rom/addr_reg_reg	%vga_display/my_ascii_rom/addr_reg_reg2t
 "p
5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[13]5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[13]2Z
 "V
(vga_display/my_ascii_rom/ADDRARDADDR[10](vga_display/my_ascii_rom/ADDRARDADDR[10]2R
 "N
$vga_display/vga_c/v_count_reg_reg[4]	$vga_display/vga_c/v_count_reg_reg[4]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2T
 "P
%vga_display/my_ascii_rom/addr_reg_reg	%vga_display/my_ascii_rom/addr_reg_reg2t
 "p
5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[13]5vga_display/my_ascii_rom/addr_reg_reg/ADDRARDADDR[13]2Z
 "V
(vga_display/my_ascii_rom/ADDRARDADDR[10](vga_display/my_ascii_rom/ADDRARDADDR[10]2R
 "N
$vga_display/vga_c/v_count_reg_reg[5]	$vga_display/vga_c/v_count_reg_reg[5]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
U
DRC finished with %s
1905*	planAhead2
0 Errors, 22 WarningsZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
W
)Running write_bitstream with %s threads.
1750*designutils2
2Z20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
K
Writing bitstream %s...
11*	bitstream2
./system.bitZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a ULT device. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.698*projectZ1-1876h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1282
442
202
0Z4-41h px� 
O
%s completed successfully
29*	vivadotcl2
write_bitstreamZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_bitstream: 2

00:00:122

00:00:102

2595.8052	
412.121Z17-268h px� 


End Record