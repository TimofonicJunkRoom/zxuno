
10 DIM LL10
20 FOR I=0 TO 10
30 LLI=-1
40 NEXT
50 P.$21
60 F.I=0 TO 1
70 P=#3A00
80[
90 LDA @0
100 STA #84
110 JSR LL5
120 LDA @#00
130 STA #80
140 STA #82
150 LDA @#82
160 STA #81
170 LDA @#A0
180 STA #83
190 LDY @#00
200:LL0
210 JSR LL4
220 LDA @#05
230 STA #BFFF
240 LDA @#A0
250 STA #A555
260 LDA #84
270 STA #BFFF
280 LDA (#80),Y
290 STA (#82),Y
300 LDX @#08
310:LL1
320 DEX
330 BNE LL1
340 INY
350 BNE LL0
360 INC #81
370 INC #83
380 LDA #83
390 CMP @#B0
400 BNE LL0
410 RTS
420:LL4
430 LDA @#05
440 STA #BFFF
450 LDA @#AA
460 STA #A555
470 LDA @#02
480 STA #BFFF
490 LDA @#55
500 STA #AAAA
510 RTS
520:LL5
530 PHA
540 JSR LL4
550 LDA @#05
560 STA #BFFF
570 LDA @#80
580 STA #A555
590 JSR LL4
600 PLA
610 STA #BFFF
620 LDA @#30
630 STA #A000
640 LDY @#00
650:LL6
660 LDX @#00
670:LL7
680 DEX
690 BNE LL7
700 DEY
710 BNE LL6
720 RTS
730]
740 N.
750 P.$6
760 INPUT "WHICH BANK ",A
770 LINK #3A00
780 END
