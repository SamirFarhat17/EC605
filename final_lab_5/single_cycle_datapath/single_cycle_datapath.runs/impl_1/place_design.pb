
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
82default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3230.4022default:default2
0.0002default:default2
194332default:default2
337442default:defaultZ17-722h px� 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: ab5949dd
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.07 . Memory (MB): peak = 3230.402 ; gain = 0.000 ; free physical = 19433 ; free virtual = 337442default:defaulth px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3230.4022default:default2
0.0002default:default2
194332default:default2
337442default:defaultZ17-722h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
�
�IO Placement failed due to overutilization. This design contains %s I/O ports
 while the target %s, contains only %s available user I/O. The target device has %s usable I/O pins of which %s are already occupied by user-locked I/Os.
 To rectify this issue:
 1. Ensure you are targeting the correct device and package.  Select a larger device or different package if necessary.
 2. Check the top-level ports of the design to ensure the correct number of ports are specified.
 3. Consider design changes to reduce the number of I/Os necessary.
415*place2
1972default:default22
 device: 7a35t package: cpg2362default:default2
1062default:default2
1062default:default2
02default:defaultZ30-415h px� 
�,
�%s banks %s have insufficient capacity to support the IOSTANDARDs defined for this design.  There are %s IO available in the %s banks but this design has %s IO that require placement in an %s bank. Please review the IOSTANDARD specifications for the IO below that require placement in an %s bank to determine if the IOSTANDARDs need to be modified or the target device needs to change to support the design's requirements:
%s435*place2#
High Range (HR)2default:default2%
14, 16, 34 and 352default:default2
1312default:default2#
High Range (HR)2default:default2
1972default:default2#
High Range (HR)2default:default2#
High Range (HR)2default:default2�&
�&	1. A[0] { LVCMOS33 }
	2. A[10] { LVCMOS33 }
	3. A[11] { LVCMOS33 }
	4. A[12] { LVCMOS33 }
	5. A[13] { LVCMOS33 }
	6. A[14] { LVCMOS33 }
	7. A[15] { LVCMOS33 }
	8. A[16] { LVCMOS33 }
	9. A[17] { LVCMOS33 }
	10. A[18] { LVCMOS33 }
	11. A[19] { LVCMOS33 }
	12. A[1] { LVCMOS33 }
	13. A[20] { LVCMOS33 }
	14. A[21] { LVCMOS33 }
	15. A[22] { LVCMOS33 }
	16. A[23] { LVCMOS33 }
	17. A[24] { LVCMOS33 }
	18. A[25] { LVCMOS33 }
	19. A[26] { LVCMOS33 }
	20. A[27] { LVCMOS33 }
	21. A[28] { LVCMOS33 }
	22. A[29] { LVCMOS33 }
	23. A[2] { LVCMOS33 }
	24. A[30] { LVCMOS33 }
	25. A[31] { LVCMOS33 }
	26. A[32] { LVCMOS33 }
	27. A[33] { LVCMOS33 }
	28. A[34] { LVCMOS33 }
	29. A[35] { LVCMOS33 }
	30. A[36] { LVCMOS33 }
	31. A[37] { LVCMOS33 }
	32. A[38] { LVCMOS33 }
	33. A[39] { LVCMOS33 }
	34. A[3] { LVCMOS33 }
	35. A[40] { LVCMOS33 }
	36. A[41] { LVCMOS33 }
	37. A[42] { LVCMOS33 }
	38. A[43] { LVCMOS33 }
	39. A[44] { LVCMOS33 }
	40. A[45] { LVCMOS33 }
	41. A[46] { LVCMOS33 }
	42. A[47] { LVCMOS33 }
	43. A[48] { LVCMOS33 }
	44. A[49] { LVCMOS33 }
	45. A[4] { LVCMOS33 }
	46. A[50] { LVCMOS33 }
	47. A[51] { LVCMOS33 }
	48. A[52] { LVCMOS33 }
	49. A[53] { LVCMOS33 }
	50. A[54] { LVCMOS33 }
	51. A[55] { LVCMOS33 }
	52. A[56] { LVCMOS33 }
	53. A[57] { LVCMOS33 }
	54. A[58] { LVCMOS33 }
	55. A[59] { LVCMOS33 }
	56. A[5] { LVCMOS33 }
	57. A[60] { LVCMOS33 }
	58. A[61] { LVCMOS33 }
	59. A[62] { LVCMOS33 }
	60. A[63] { LVCMOS33 }
	61. A[6] { LVCMOS33 }
	62. A[7] { LVCMOS33 }
	63. A[8] { LVCMOS33 }
	64. A[9] { LVCMOS33 }
	65. B[0] { LVCMOS33 }
	66. B[10] { LVCMOS33 }
	67. B[11] { LVCMOS33 }
	68. B[12] { LVCMOS33 }
	69. B[13] { LVCMOS33 }
	70. B[14] { LVCMOS33 }
	71. B[15] { LVCMOS33 }
	72. B[16] { LVCMOS33 }
	73. B[17] { LVCMOS33 }
	74. B[18] { LVCMOS33 }
	75. B[19] { LVCMOS33 }
	76. B[1] { LVCMOS33 }
	77. B[20] { LVCMOS33 }
	78. B[21] { LVCMOS33 }
	79. B[22] { LVCMOS33 }
	80. B[23] { LVCMOS33 }
	81. B[24] { LVCMOS33 }
	82. B[25] { LVCMOS33 }
	83. B[26] { LVCMOS33 }
	84. B[27] { LVCMOS33 }
	85. B[28] { LVCMOS33 }
	86. B[29] { LVCMOS33 }
	87. B[2] { LVCMOS33 }
	88. B[30] { LVCMOS33 }
	89. B[31] { LVCMOS33 }
	90. B[32] { LVCMOS33 }
	91. B[33] { LVCMOS33 }
	92. B[34] { LVCMOS33 }
	93. B[35] { LVCMOS33 }
	94. B[36] { LVCMOS33 }
	95. B[37] { LVCMOS33 }
	96. B[38] { LVCMOS33 }
	97. B[39] { LVCMOS33 }
	98. B[3] { LVCMOS33 }
	99. B[40] { LVCMOS33 }
	100. B[41] { LVCMOS33 }
	101. B[42] { LVCMOS33 }
	102. B[43] { LVCMOS33 }
	103. B[44] { LVCMOS33 }
	104. B[45] { LVCMOS33 }
	105. B[46] { LVCMOS33 }
	106. B[47] { LVCMOS33 }
	107. B[48] { LVCMOS33 }
	108. B[49] { LVCMOS33 }
	109. B[4] { LVCMOS33 }
	110. B[50] { LVCMOS33 }
	111. B[51] { LVCMOS33 }
	112. B[52] { LVCMOS33 }
	113. B[53] { LVCMOS33 }
	114. B[54] { LVCMOS33 }
	115. B[55] { LVCMOS33 }
	116. B[56] { LVCMOS33 }
	117. B[57] { LVCMOS33 }
	118. B[58] { LVCMOS33 }
	119. B[59] { LVCMOS33 }
	120. B[5] { LVCMOS33 }
	121. B[60] { LVCMOS33 }
	122. B[61] { LVCMOS33 }
	123. B[62] { LVCMOS33 }
	124. B[63] { LVCMOS33 }
	125. B[6] { LVCMOS33 }
	126. B[7] { LVCMOS33 }
	127. B[8] { LVCMOS33 }
	128. B[9] { LVCMOS33 }
	129. opcode[0] { LVCMOS33 }
	130. opcode[1] { LVCMOS33 }
	131. opcode[2] { LVCMOS33 }
	132. opcode[3] { LVCMOS33 }
	133. out[0] { LVCMOS33 }
	134. out[10] { LVCMOS33 }
	135. out[11] { LVCMOS33 }
	136. out[12] { LVCMOS33 }
	137. out[13] { LVCMOS33 }
	138. out[14] { LVCMOS33 }
	139. out[15] { LVCMOS33 }
	140. out[16] { LVCMOS33 }
	141. out[17] { LVCMOS33 }
	142. out[18] { LVCMOS33 }
	143. out[19] { LVCMOS33 }
	144. out[1] { LVCMOS33 }
	145. out[20] { LVCMOS33 }
	146. out[21] { LVCMOS33 }
	147. out[22] { LVCMOS33 }
	148. out[23] { LVCMOS33 }
	149. out[24] { LVCMOS33 }
	150. out[25] { LVCMOS33 }
	151. out[26] { LVCMOS33 }
	152. out[27] { LVCMOS33 }
	153. out[28] { LVCMOS33 }
	154. out[29] { LVCMOS33 }
	155. out[2] { LVCMOS33 }
	156. out[30] { LVCMOS33 }
	157. out[31] { LVCMOS33 }
	158. out[32] { LVCMOS33 }
	159. out[33] { LVCMOS33 }
	160. out[34] { LVCMOS33 }
	161. out[35] { LVCMOS33 }
	162. out[36] { LVCMOS33 }
	163. out[37] { LVCMOS33 }
	164. out[38] { LVCMOS33 }
	165. out[39] { LVCMOS33 }
	166. out[3] { LVCMOS33 }
	167. out[40] { LVCMOS33 }
	168. out[41] { LVCMOS33 }
	169. out[42] { LVCMOS33 }
	170. out[43] { LVCMOS33 }
	171. out[44] { LVCMOS33 }
	172. out[45] { LVCMOS33 }
	173. out[46] { LVCMOS33 }
	174. out[47] { LVCMOS33 }
	175. out[48] { LVCMOS33 }
	176. out[49] { LVCMOS33 }
	177. out[4] { LVCMOS33 }
	178. out[50] { LVCMOS33 }
	179. out[51] { LVCMOS33 }
	180. out[52] { LVCMOS33 }
	181. out[53] { LVCMOS33 }
	182. out[54] { LVCMOS33 }
	183. out[55] { LVCMOS33 }
	184. out[56] { LVCMOS33 }
	185. out[57] { LVCMOS33 }
	186. out[58] { LVCMOS33 }
	187. out[59] { LVCMOS33 }
	188. out[5] { LVCMOS33 }
	189. out[60] { LVCMOS33 }
	190. out[61] { LVCMOS33 }
	191. out[62] { LVCMOS33 }
	192. out[63] { LVCMOS33 }
	193. out[6] { LVCMOS33 }
	194. out[7] { LVCMOS33 }
	195. out[8] { LVCMOS33 }
	196. out[9] { LVCMOS33 }
	197. zero { LVCMOS33 }
2default:defaultZ30-435h px� 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: ab5949dd
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.26 ; elapsed = 00:00:00.31 . Memory (MB): peak = 3230.402 ; gain = 0.000 ; free physical = 19464 ; free virtual = 337762default:defaulth px� 
H
3Phase 1 Placer Initialization | Checksum: ab5949dd
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.26 ; elapsed = 00:00:00.31 . Memory (MB): peak = 3230.402 ; gain = 0.000 ; free physical = 19464 ; free virtual = 337762default:defaulth px� 
�
�Placer failed with error: '%s'
Please review all ERROR and WARNING messages during placement to understand the cause for failure.
1*	placeflow2�
�Implementation Feasibility check failed, Please see the previously displayed individual error or warning messages for more details.2default:defaultZ30-99h px� 
=
(Ending Placer Task | Checksum: ab5949dd
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.26 ; elapsed = 00:00:00.31 . Memory (MB): peak = 3230.402 ; gain = 0.000 ; free physical = 19464 ; free virtual = 337762default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
442default:default2
1002default:default2
1012default:default2
42default:defaultZ4-41h px� 
N

%s failed
30*	vivadotcl2 
place_design2default:defaultZ4-43h px� 
m
Command failed: %s
69*common28
$Placer could not place all instances2default:defaultZ17-69h px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Nov  1 19:30:38 20212default:defaultZ17-206h px� 


End Record