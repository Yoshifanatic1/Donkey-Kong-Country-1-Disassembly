
base $04B8
CODE_04B8:

;%SPCDataBlockStart(04E0)
base $04E0

DATA_04E0:
	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000

CODE_05E0:
	CLRP
	MOV X, #$FF
	MOV SP, X
	MOV A, $F4
	MOV $04D6, A
	MOV $F4, A
	CALL CODE_1071
	MOV $24, #$00
	MOV $ED, #$00
	MOV A, #$00
	MOV $25, A
	MOV $F1, #$00
	MOV $F5, #$FF
CODE_05FE:
	MOV A, $F4
	MOV X, A
	CMP A, $04D6
	BEQ CODE_0641
	MOV A, $F6
	MOV $04D8, A
	MOV A, $F5
	MOV $04D6, X
	MOV $F4, X
	CMP A, #$FF
	BNE CODE_0619
	JMP CODE_0717

CODE_0619:
	CMP A, #$FE
	BEQ CODE_063B
	CMP A, #$FD
	BEQ CODE_062D
	CMP A, #$FC
	BEQ CODE_0634
	MOV X, $04D8
	CALL CODE_1173
	BRA CODE_064B

CODE_062D:
	MOV A, $04D8
	MOV $ED, A
	BRA CODE_064F

CODE_0634:
	MOV A, $04D8
	MOV $25, A
	BRA CODE_064F

CODE_063B:
	MOV $24, #$01
	MOV $F1, #$00
CODE_0641:
	MOV A, $24
	BEQ CODE_05FE
	MOV $FA, $EC
	MOV $F1, #$01
CODE_064B:
	MOV A, $FD
	BEQ CODE_064B
CODE_064F:
	MOV $F1, #$01
	MOV $28, #$00
	CLRC
	ADC $26, $27
	ROR $28
	MOV $2B, #$00
	CLRC
	ADC $29, $2A
	ROR $2B
	MOV A, $28
	BEQ CODE_06DE
	MOV A, #$FF
	MOV $05, A
	MOV A, #$00
	MOV $06, A
	MOVW YA, $0B
	CMPW YA, $05
	BEQ CODE_06DE
	BCC CODE_0682
CODE_0678:
	MOV A, #$00
	MOV $0C, A
	MOV A, #$FF
	MOV $0B, A
	BRA CODE_0690

CODE_0682:
	MOV A, $0D
	BEQ CODE_06DE
	MOV Y, #$00
	ADDW YA, $0B
	MOVW $0B, YA
	CMPW YA, $05
	BCS CODE_0678
CODE_0690:
	MOV $03, A
	MOV A, #$00
	MOV $04, A
	MOV A, #$80
	MOV $05, A
	MOV A, #$FF
	MOV $06, A
	MOV A, $0230
	MOV Y, #$00
	SUBW YA, $03
	BPL CODE_06A9
	MOV A, #$00
CODE_06A9:
	MOV $F2, #$0C
	MOV $F3, A
	MOV A, $0231
	MOV Y, #$00
	SUBW YA, $03
	BPL CODE_06B9
	MOV A, #$00
CODE_06B9:
	MOV $F2, #$1C
	MOV $F3, A
	MOV A, $0232
	MOV Y, #$00
	SUBW YA, $03
	BPL CODE_06C9
	MOV A, #$00
CODE_06C9:
	MOV $F2, #$2C
	MOV $F3, A
	MOV A, $0233
	MOV Y, #$00
	SUBW YA, $03
	BPL CODE_06D9
	MOV A, #$00
CODE_06D9:
	MOV $F2, #$3C
	MOV $F3, A
CODE_06DE:
	MOV X, #$00
CODE_06E0:
	MOV A, $28
	BNE CODE_06E9
	CALL CODE_0917
	BRA CODE_06F0

CODE_06E9:
	CALL CODE_0749
	CMP A, #$00
	BNE CODE_06E9
CODE_06F0:
	MOV A, $01A0+x
	BEQ CODE_070C
	PUSH X
	MOV A, X
	CLRC
	ADC A, #$08
	MOV X, A
	MOV A, $2B
	BNE CODE_0704
	CALL CODE_0917
	BRA CODE_070B

CODE_0704:
	CALL CODE_0749
	CMP A, #$00
	BNE CODE_0704
CODE_070B:
	POP X
CODE_070C:
	INC X
	CMP X, #$08
	BEQ CODE_0714
	JMP CODE_06E0

CODE_0714:
	JMP CODE_05FE

CODE_0717:
	MOV $F2, #$5C
	MOV $F3, #$FF
	MOV $F1, #$00
	MOV $FB, #$C8
	MOV $F1, #$02
CODE_0726:
	MOV A, $FE
	BEQ CODE_0726
	MOV $F2, #$6C
	MOV $F3, #$A0
	MOV X, #$00
	MOV $F2, #$4D
	MOV $F3, X
	MOV $F2, #$2C
	MOV $F3, X
	MOV $F2, #$3C
	MOV $F3, X
	MOV $F5, X
	MOV $04D6, X
	JMP CODE_04B8

CODE_0749:
	MOV A, $0110+x
	BNE CODE_0751
	MOV A, #$00
	RET

CODE_0751:
	DEC $3C+x
	MOV A, $3C+x
	CMP A, #$01
	BEQ CODE_076F
	CMP A, #$FF
	BNE CODE_0765
	MOV A, $2C+x
	BEQ CODE_0786
	DEC $2C+x
	BRA CODE_0780

CODE_0765:
	CMP A, #$00
	BNE CODE_0780
	MOV A, $2C+x
	BEQ CODE_0786
	BRA CODE_0780

CODE_076F:
	MOV A, $2C+x
	BNE CODE_0780
	MOV A, $01A0+x
	BNE CODE_0780
	MOV A, DATA_0FFF+x
	MOV $F2, #$5C
	MOV $F3, A
CODE_0780:
	CALL CODE_0917
	MOV A, #$00
	RET

CODE_0786:
	MOV A, $4C+x
	MOV $01, A
	MOV A, $5C+x
	MOV $02, A
	MOV Y, #$00
	MOV A, ($01)+y
	CMP A, #$00
	BMI CODE_079C
	PUSH X
	ASL A
	MOV X, A
	JMP ($100F+x)

CODE_079C:
	CALL CODE_07A5
	CALL CODE_0917
	MOV A, #$00
	RET

CODE_07A5:
	CMP A, #$80
	BNE CODE_07C9
	MOV A, $01A0+x
	BNE CODE_07C6
	MOV A, DATA_0FFF+x
	MOV $F2, #$5C
	MOV $F3, A
	MOV A, X
	AND A, #$07
	XCN A
	OR A, #$02
	MOV $F2, A
	MOV A, #$00
	MOV $F3, A
	INC $F2
	MOV $F3, A
CODE_07C6:
	JMP CODE_08DE

CODE_07C9:
	CLRC
	ADC A, $0140+x
	ASL A
	PUSH X
	MOV Y, $6C+x
	BEQ CODE_080F
	MOV X, A
	MOV $05, Y
	MOV A, Y
	BPL CODE_07DC
	EOR A, #$FF
	INC A
CODE_07DC:
	MOV Y, A
	PUSH Y
	MOV A, DATA_11E1+x
	MUL YA
	MOV $03, Y
	MOV $04, #$00
	POP Y
	MOV A, DATA_11E1+$01+x
	MUL YA
	ADDW YA, $03
	MOV $04, Y
	LSR $04
	ROR A
	LSR $04
	ROR A
	MOV $03, A
	MOV A, DATA_11E1+$01+x
	MOV Y, A
	MOV A, DATA_11E1+x
	MOV X, $05
	BMI CODE_0807
	ADDW YA, $03
	BRA CODE_0809

CODE_0807:
	SUBW YA, $03
CODE_0809:
	MOV $03, A
	MOV $04, Y
	BRA CODE_081A

CODE_080F:
	MOV X, A
	MOV A, DATA_11E1+x
	MOV $03, A
	MOV A, DATA_11E1+$01+x
	MOV $04, A
CODE_081A:
	POP A
	MOV X, A
	AND A, #$07
	XCN A
	MOV $F2, A
	MOV A, $01A0+x
	BEQ CODE_0829
	JMP CODE_08DE

CODE_0829:
	MOV A, $0254+x
	MOV $F3, A
	INC $F2
	MOV A, $0264+x
	MOV $F3, A
	INC $F2
	MOV A, $0150+x
	AND A, #$01
	BEQ CODE_0855
	MOV A, $01B0+x
	MOV $0160+x, A
	MOV A, $01C0+x
	MOV $0100+x, A
	MOV A, $01D0+x
	MOV $9C+x, A
	MOV A, $01E0+x
	MOV $0180+x, A
CODE_0855:
	MOV A, $0150+x
	AND A, #$02
	BEQ CODE_0877
	MOV A, $0234+x
	BPL CODE_0867
	EOR A, #$FF
	INC A
	MOV $0234+x, A
CODE_0867:
	MOV A, $0200+x
	LSR A
	MOV $AC+x, A
	MOV A, $0210+x
	MOV $BC+x, A
	MOV A, $0220+x
	MOV $CC+x, A
CODE_0877:
	MOV A, $0150+x
	AND A, #$04
	BEQ CODE_08A8
	MOV A, $02D4+x
	BPL CODE_0889
	EOR A, #$FF
	INC A
	MOV $02D4+x, A
CODE_0889:
	MOV A, $02F4+x
	LSR A
	MOV $02E4+x, A
	MOV A, $02C4+x
	MOV $02B4+x, A
	MOV A, $0304+x
	MOV $02A4+x, A
	MOV A, $0314+x
	MOV $0254+x, A
	MOV A, $0324+x
	MOV $0264+x, A
CODE_08A8:
	MOV A, $03
	MOV $8C+x, A
	MOV $F3, A
	INC $F2
	MOV A, $04
	MOV $7C+x, A
	MOV $F3, A
	INC $F2
	MOV A, $0244+x
	MOV $F3, A
	INC $F2
	MOV A, $0274+x
	MOV $F3, A
	INC $F2
	MOV A, $0284+x
	MOV $F3, A
	INC $F2
	MOV $F3, #$7F
	MOV $F2, #$5C
	MOV $F3, #$00
	MOV $F2, #$4C
	MOV A, DATA_0FFF+x
	MOV $F3, A
CODE_08DE:
	MOV A, $0120+x
	BEQ CODE_08F2
	MOV $01, #$01
	MOV A, $0120+x
	MOV $3C+x, A
	MOV A, $0130+x
	MOV $2C+x, A
	BRA CODE_0909

CODE_08F2:
	MOV Y, #$01
	MOV A, ($01)+y
	MOV $3C+x, A
	MOV A, $0190+x
	BEQ CODE_0906
	MOV A, $3C+x
	MOV $2C+x, A
	INC Y
	MOV A, ($01)+y
	MOV $3C+x, A
CODE_0906:
	INC Y
	MOV $01, Y
CODE_0909:
	MOV $02, #$00
	MOV A, $4C+x
	MOV Y, $5C+x
	ADDW YA, $01
	MOV $5C+x, Y
	MOV $4C+x, A
	RET

CODE_0917:
	MOV A, $0150+x
	AND A, #$01
	BNE CODE_0921
	JMP CODE_09A4

CODE_0921:
	MOV A, $0160+x
	BEQ CODE_0935
	CMP A, #$FF
	BEQ CODE_09A4
	DEC A
	MOV $0160+x, A
	BNE CODE_09A4
	MOV A, #$01
	MOV $0100+x, A
CODE_0935:
	MOV A, $0100+x
	DEC A
	MOV $0100+x, A
	BNE CODE_09A4
	MOV A, $01C0+x
	MOV $0100+x, A
	MOV A, $0180+x
	BEQ CODE_096B
	DEC A
	MOV $0180+x, A
	MOV A, $0170+x
	EOR A, #$FF
	INC A
	MOV $01, A
	BPL CODE_095B
	MOV A, #$FF
	BRA CODE_095D

CODE_095B:
	MOV A, #$00
CODE_095D:
	MOV $02, A
	MOV A, $8C+x
	MOV Y, $7C+x
	ADDW YA, $01
	MOV $7C+x, Y
	MOV $8C+x, A
	BRA CODE_0986

CODE_096B:
	MOV A, $0170+x
	MOV $01, A
	CMP A, #$00
	BPL CODE_0978
	MOV A, #$FF
	BRA CODE_097A

CODE_0978:
	MOV A, #$00
CODE_097A:
	MOV $02, A
	MOV A, $8C+x
	MOV Y, $7C+x
	ADDW YA, $01
	MOV $7C+x, Y
	MOV $8C+x, A
CODE_0986:
	MOV A, $01A0+x
	BNE CODE_099B
	MOV A, X
	AND A, #$07
	XCN A
	OR A, #$02
	MOV $F2, A
	MOV A, $8C+x
	MOV $F3, A
	INC $F2
	MOV $F3, Y
CODE_099B:
	DEC $9C+x
	BNE CODE_09A4
	MOV A, #$FF
	MOV $0160+x, A
CODE_09A4:
	MOV A, $0150+x
	AND A, #$02
	BEQ CODE_09FE
	MOV A, $CC+x
	BEQ CODE_09B3
	DEC $CC+x
	BRA CODE_09FE

CODE_09B3:
	DEC $BC+x
	BNE CODE_09FE
	MOV A, $0210+x
	MOV $BC+x, A
	MOV A, $0234+x
	MOV $01, A
	CMP A, #$00
	BPL CODE_09C9
	MOV A, #$FF
	BRA CODE_09CB

CODE_09C9:
	MOV A, #$00
CODE_09CB:
	MOV $02, A
	MOV A, $8C+x
	MOV Y, $7C+x
	ADDW YA, $01
	MOV $7C+x, Y
	MOV $8C+x, A
	MOV A, $01A0+x
	BNE CODE_09EC
	MOV A, X
	AND A, #$07
	XCN A
	OR A, #$02
	MOV $F2, A
	MOV A, $8C+x
	MOV $F3, A
	INC $F2
	MOV $F3, Y
CODE_09EC:
	DEC $AC+x
	BNE CODE_09FE
	MOV A, $0200+x
	MOV $AC+x, A
	MOV A, $0234+x
	EOR A, #$FF
	INC A
	MOV $0234+x, A
CODE_09FE:
	MOV A, $0150+x
	AND A, #$04
	BEQ CODE_0A68
	MOV A, $02A4+x
	BEQ CODE_0A13
	MOV A, $02A4+x
	DEC A
	MOV $02A4+x, A
	BRA CODE_0A68

CODE_0A13:
	MOV A, $02B4+x
	DEC A
	MOV $02B4+x, A
	BNE CODE_0A68
	MOV A, $02C4+x
	MOV $02B4+x, A
	MOV A, $02D4+x
	MOV $01, A
	CLRC
	ADC A, $0254+x
	MOV $0254+x, A
	MOV A, $01
	CLRC
	ADC A, $0264+x
	MOV $0264+x, A
	MOV A, $01A0+x
	BNE CODE_0A50
	MOV A, X
	AND A, #$07
	XCN A
	OR A, #$00
	MOV $F2, A
	MOV A, $0254+x
	MOV $F3, A
	INC $F2
	MOV A, $0264+x
	MOV $F3, A
CODE_0A50:
	MOV A, $02E4+x
	DEC A
	MOV $02E4+x, A
	BNE CODE_0A68
	MOV A, $02F4+x
	MOV $02E4+x, A
	MOV A, $02D4+x
	EOR A, #$FF
	INC A
	MOV $02D4+x, A
CODE_0A68:
	RET

CODE_0A69:
	POP X
	MOV A, #$00
	MOV $0110+x, A
	MOV A, $01A0+x
	BNE CODE_0A7C
	MOV $F2, #$5C
	MOV A, DATA_0FFF+x
	MOV $F3, A
CODE_0A7C:
	MOV A, X
	CMP A, #$08
	BCC CODE_0AB2
	PUSH X
	SETC
	SBC A, #$08
	MOV X, A
	MOV A, #$00
	MOV $01A0+x, A
	MOV $F2, #$3D
	MOV A, DATA_0FFF+x
	EOR A, #$FF
	AND A, $F3
	MOV $F3, A
	MOV $F2, #$4D
	MOV A, $0294+x
	BEQ CODE_0AA8
	MOV A, DATA_0FFF+x
	OR A, $F3
	MOV $F3, A
	BRA CODE_0AB1

CODE_0AA8:
	MOV A, DATA_0FFF+x
	EOR A, #$FF
	AND A, $F3
	MOV $F3, A
CODE_0AB1:
	POP X
CODE_0AB2:
	MOV A, #$00
	RET

CODE_0AB5:
	POP X
	MOV A, #$00
	MOV $6C+x, A
	MOV Y, #$01
	MOV $3C+x, Y
	MOV $2C+x, A
	PUSH X
	MOV A, ($01)+y
	MOV X, A
	MOV A, $04E0+x
	POP X
	MOV $0244+x, A
	MOV $01, #$02
CODE_0ACE:
	MOV $02, #$00
	MOV A, $4C+x
	MOV Y, $5C+x
	ADDW YA, $01
	MOV $5C+x, Y
	MOV $4C+x, A
	MOV A, #$01
	RET

CODE_0ADE:
	POP X
	MOV Y, #$01
	MOV $3C+x, Y
	MOV A, #$00
	MOV $2C+x, A
	MOV A, $25
	BEQ CODE_0AFE
	MOV A, ($01)+y
	INC Y
	CLRC
	ADC A, ($01)+y
	ROR A
	MOV $0254+x, A
	MOV $0264+x, A
	MOV $01, #$03
	JMP CODE_0ACE

CODE_0AFE:
	MOV A, ($01)+y
	MOV $0254+x, A
	INC Y
	MOV A, ($01)+y
	MOV $0264+x, A
	MOV $01, #$03
	JMP CODE_0ACE

CODE_0B0F:
	POP X
	MOV Y, #$01
	MOV $3C+x, Y
	MOV A, #$00
	MOV $2C+x, A
	MOV A, ($01)+y
	MOV $4C+x, A
	INC Y
	MOV A, ($01)+y
	MOV $5C+x, A
	MOV A, #$01
	RET

CODE_0B24:
	POP X
	MOV Y, #$01
	MOV $3C+x, Y
	MOV A, #$00
	MOV $2C+x, A
	MOV A, ($01)+y
	MOV $05, A
	INC Y
	MOV A, ($01)+y
	MOV $03, A
	INC Y
	MOV A, ($01)+y
	MOV $04, A
	MOV Y, $DC+x
	MOV A, $05
	MOV $0434+y, A
	MOV A, $5C+x
	MOV $03B4+y, A
	MOV A, $4C+x
	MOV $0334+y, A
	INC $DC+x
	MOV A, $03
	MOV $4C+x, A
	MOV A, $04
	MOV $5C+x, A
	MOV A, #$01
	RET

CODE_0B59:
	POP X
	MOV A, #$01
	MOV $3C+x, A
	MOV A, #$00
	MOV $2C+x, A
	DEC $DC+x
	MOV Y, $DC+x
	MOV A, $03B4+y
	MOV $5C+x, A
	MOV A, $0334+y
	MOV $4C+x, A
	MOV A, $0434+y
	DEC A
	MOV $0434+y, A
	BEQ CODE_0B99
	MOV A, $4C+x
	MOV $01, A
	MOV A, $5C+x
	MOV $02, A
	MOV Y, #$02
	MOV A, ($01)+y
	MOV $03, A
	INC Y
	MOV A, ($01)+y
	MOV $04, A
	INC $DC+x
	MOV A, $03
	MOV $4C+x, A
	MOV A, $04
	MOV $5C+x, A
	MOV A, #$01
	RET

CODE_0B99:
	MOV $01, #$04
	JMP CODE_0ACE

CODE_0B9F:
	POP X
	MOV A, #$00
	MOV $2C+x, A
	MOV Y, #$01
	MOV $3C+x, Y
	MOV A, ($01)+y
	MOV $0120+x, A
	MOV A, $0190+x
	BEQ CODE_0BBE
	MOV A, $0120+x
	MOV $0130+x, A
	INC Y
	MOV A, ($01)+y
	MOV $0120+x, A
CODE_0BBE:
	INC Y
	MOV $01, Y
	JMP CODE_0ACE

CODE_0BC4:
	POP X
	MOV A, #$00
	MOV $0120+x, A
	MOV $0130+x, A
	JMP CODE_0C44

CODE_0BD0:
	POP X
	MOV A, $0150+x
	OR A, #$01
	MOV $0150+x, A
	MOV Y, #$01
	MOV $3C+x, Y
	MOV A, #$00
	MOV $2C+x, A
	MOV A, ($01)+y
	MOV $01B0+x, A
	INC Y
	MOV A, ($01)+y
	MOV $01C0+x, A
	INC Y
	MOV A, ($01)+y
	MOV $01D0+x, A
	INC Y
	MOV A, ($01)+y
	MOV $0170+x, A
	INC Y
	MOV A, ($01)+y
	MOV $01E0+x, A
	MOV $01, #$06
	JMP CODE_0ACE

CODE_0C04:
	POP X
	MOV A, $0150+x
	OR A, #$01
	MOV $0150+x, A
	MOV Y, #$01
	MOV $3C+x, Y
	MOV A, #$00
	MOV $2C+x, A
	MOV A, ($01)+y
	MOV $01B0+x, A
	INC Y
	MOV A, ($01)+y
	MOV $01C0+x, A
	INC Y
	MOV A, ($01)+y
	MOV $01D0+x, A
	INC Y
	MOV A, ($01)+y
	EOR A, #$FF
	INC A
	MOV $0170+x, A
	INC Y
	MOV A, ($01)+y
	MOV $01E0+x, A
	MOV $01, #$06
	JMP CODE_0ACE

CODE_0C3B:
	POP X
	MOV A, $0150+x
	AND A, #$FE
	MOV $0150+x, A
CODE_0C44:
	MOV A, #$01
	MOV $01, A
	MOV $3C+x, A
	MOV A, #$00
	MOV $2C+x, A
	JMP CODE_0ACE

CODE_0C51:
	POP X
	MOV Y, #$01
	MOV A, ($01)+y
	MOV $27, A
CODE_0C58:
	MOV A, #$01
	MOV $3C+x, A
	MOV A, #$00
	MOV $2C+x, A
	MOV $01, #$02
	JMP CODE_0ACE

CODE_0C66:
	POP X
	MOV Y, #$01
	MOV A, ($01)+y
	CLRC
	ADC A, $27
	MOV $27, A
	JMP CODE_0C58

CODE_0C73:
	POP X
	MOV A, $0150+x
	OR A, #$02
	MOV $0150+x, A
	MOV Y, #$01
	MOV $3C+x, Y
	MOV A, #$00
	MOV $2C+x, A
	MOV A, ($01)+y
	MOV $0200+x, A
	INC Y
	MOV A, ($01)+y
	MOV $0210+x, A
	INC Y
	MOV A, ($01)+y
	MOV $0234+x, A
	MOV A, #$00
	MOV $0220+x, A
	MOV $01, #$04
	JMP CODE_0ACE

CODE_0CA0:
	POP X
	MOV A, $0150+x
	AND A, #$FD
	MOV $0150+x, A
	JMP CODE_0C44

CODE_0CAC:
	POP X
	MOV A, $0150+x
	OR A, #$02
	MOV $0150+x, A
	MOV Y, #$01
	MOV $3C+x, Y
	MOV A, #$00
	MOV $2C+x, A
	MOV A, ($01)+y
	MOV $0200+x, A
	INC Y
	MOV A, ($01)+y
	MOV $0210+x, A
	INC Y
	MOV A, ($01)+y
	MOV $0234+x, A
	INC Y
	MOV A, ($01)+y
	MOV $0220+x, A
	MOV $01, #$05
	JMP CODE_0ACE

CODE_0CDA:
	POP X
	MOV Y, #$01
	MOV $3C+x, Y
	MOV A, #$00
	MOV $2C+x, A
	MOV A, ($01)+y
	MOV $0274+x, A
	INC Y
	MOV A, ($01)+y
	MOV $0284+x, A
	MOV $01, #$03
	JMP CODE_0ACE

CODE_0CF4:
	POP X
	MOV $F2, #$0C
	MOV Y, #$01
	MOV $3C+x, Y
	MOV A, #$00
	MOV $2C+x, A
	MOV A, $25
	BEQ CODE_0D15
	MOV A, ($01)+y
	MOV $F3, A
	INC Y
	CLRC
	ADC A, ($01)+y
	ROR A
	MOV $0230, A
	MOV $F2, #$1C
	BRA CODE_0D22

CODE_0D15:
	MOV A, ($01)+y
	MOV $F3, A
	MOV $0230, A
	INC Y
	MOV $F2, #$1C
	MOV A, ($01)+y
CODE_0D22:
	MOV $F3, A
	MOV $0231, A
	MOV $01, #$03
	JMP CODE_0ACE

CODE_0D2D:
	POP X
	MOV Y, #$01
	MOV $3C+x, Y
	MOV A, #$00
	MOV $2C+x, A
	MOV A, ($01)+y
	MOV $6C+x, A
	MOV $01, #$02
	JMP CODE_0ACE

CODE_0D40:
	POP X
	MOV Y, #$01
	MOV $3C+x, Y
	MOV A, #$00
	MOV $2C+x, A
	MOV A, ($01)+y
	MOV $0140+x, A
	MOV $01, #$02
	JMP CODE_0ACE

CODE_0D54:
	POP X
	MOV Y, #$01
	MOV $3C+x, Y
	MOV A, #$00
	MOV $2C+x, A
	MOV A, ($01)+y
	CLRC
	ADC A, $0140+x
	MOV $0140+x, A
	MOV $01, #$02
	JMP CODE_0ACE

CODE_0D6C:
	POP X
	MOV $F2, #$0D
	MOV Y, #$01
	MOV A, ($01)+y
	MOV $F3, A
	INC Y
	MOV $F2, #$2C
	MOV A, ($01)+y
	MOV $0232, A
	MOV $F3, A
	MOV $F2, #$3C
	INC Y
	MOV A, ($01)+y
	MOV $0233, A
	MOV $F3, A
	MOV A, #$00
	MOV $0F, A
	MOV $F2, #$6C
	MOV $F3, A
	MOV $01, #$04
	JMP CODE_0ACE

CODE_0D9B:
	POP X
	MOV $F2, #$4D
	MOV A, DATA_0FFF+x
	OR A, $F3
	MOV $F3, A
	MOV A, #$00
	MOV $2C+x, A
	MOV A, #$01
	MOV $3C+x, A
	MOV $0294+x, A
	MOV $01, A
	JMP CODE_0ACE

CODE_0DB6:
	POP X
	MOV $F2, #$4D
	MOV A, DATA_0FFF+x
	EOR A, #$FF
	AND A, $F3
	MOV $F3, A
	MOV A, #$00
	MOV $0294+x, A
	MOV $2C+x, A
	MOV A, #$01
	MOV $3C+x, A
	MOV $01, A
	JMP CODE_0ACE

CODE_0DD3:
	POP X
	MOV Y, #$01
	MOV $3C+x, Y
	MOV A, #$00
	MOV $2C+x, A
	MOV $F2, #$0F
CODE_0DDF:
	MOV A, ($01)+y
	MOV $F3, A
	INC Y
	CLRC
	ADC $F2, #$10
	CMP $F2, #$8F
	BNE CODE_0DDF
	MOV $01, #$09
	JMP CODE_0ACE

CODE_0DF3:
	POP X
	MOV Y, #$01
	MOV $3C+x, Y
	MOV A, #$00
	MOV $2C+x, A
	MOV A, ($01)+y
	MOV $0E, A
	OR A, $0F
	MOV $F2, #$6C
	MOV $F3, A
	MOV $01, #$02
	JMP CODE_0ACE

CODE_0E0D:
	POP X
	MOV $F2, #$3D
	MOV A, DATA_0FFF+x
	OR A, $F3
	MOV $F3, A
CODE_0E18:
	MOV A, #$00
	MOV $2C+x, A
	MOV A, #$01
	MOV $3C+x, A
	MOV $01, A
	JMP CODE_0ACE

CODE_0E25:
	POP X
	MOV $F2, #$3D
	MOV A, DATA_0FFF+x
	EOR A, #$FF
	AND A, $F3
	MOV $F3, A
	JMP CODE_0E18

CODE_0E35:
	MOV X, #$00
	BRA CODE_0E47

CODE_0E39:
	MOV X, #$01
	BRA CODE_0E47

CODE_0E3D:
	MOV X, #$02
	BRA CODE_0E47

CODE_0E41:
	MOV X, #$03
	BRA CODE_0E47

CODE_0E45:
	MOV X, #$04
CODE_0E47:
	MOV Y, #$01
	MOV A, ($01)+y
	MOV $10+x, A
	INC Y
	MOV A, ($01)+y
	MOV $15+x, A
	INC Y
	MOV A, ($01)+y
	MOV $1A+x, A
	INC Y
	MOV A, ($01)+y
	MOV $1F+x, A
	POP X
	MOV A, #$01
	MOV $3C+x, A
	MOV A, #$00
	MOV $2C+x, A
	MOV $01, #$05
	JMP CODE_0ACE

CODE_0E6B:
	MOV X, #$00
	BRA CODE_0E7D

CODE_0E6F:
	MOV X, #$01
	BRA CODE_0E7D

CODE_0E73:
	MOV X, #$02
	BRA CODE_0E7D

CODE_0E77:
	MOV X, #$03
	BRA CODE_0E7D

CODE_0E7B:
	MOV X, #$04
CODE_0E7D:
	POP A
	PUSH A
	XCN A
	MOV $01, A
	MOV $F2, A
	MOV A, $10+x
	MOV $F3, A
	INC $F2
	MOV A, $15+x
	MOV $F3, A
	MOV A, $01
	OR A, #$05
	MOV $F2, A
	MOV A, $1A+x
	MOV $F3, A
	INC $F2
	MOV A, $1F+x
	MOV $F3, A
	POP X
	JMP CODE_0E18

CODE_0EA2:
	POP X
	MOV A, $0150+x
	OR A, #$01
	MOV $0150+x, A
	MOV Y, #$01
	MOV $3C+x, Y
	MOV A, #$00
	MOV $2C+x, A
	MOV A, ($01)+y
	MOV $01B0+x, A
	INC Y
	MOV A, ($01)+y
	MOV $01C0+x, A
	INC Y
	MOV A, ($01)+y
	MOV $01E0+x, A
	ASL A
	MOV $01D0+x, A
	INC Y
	MOV A, ($01)+y
	EOR A, #$FF
	INC A
	MOV $0170+x, A
	MOV $01, #$05
	JMP CODE_0ACE

CODE_0ED7:
	POP X
	MOV A, $0150+x
	OR A, #$01
	MOV $0150+x, A
	MOV Y, #$01
	MOV $3C+x, Y
	MOV A, #$00
	MOV $2C+x, A
	MOV A, ($01)+y
	MOV $01B0+x, A
	INC Y
	MOV A, ($01)+y
	MOV $01C0+x, A
	INC Y
	MOV A, ($01)+y
	MOV $01E0+x, A
	ASL A
	MOV $01D0+x, A
	INC Y
	MOV A, ($01)+y
	MOV $0170+x, A
	MOV $01, #$05
	JMP CODE_0ACE

CODE_0F09:
	POP X
	MOV Y, #$01
	MOV $3C+x, Y
	MOV A, #$00
	MOV $6C+x, A
	MOV $2C+x, A
	PUSH X
	MOV A, ($01)+y
	MOV X, A
	MOV A, $04E0+x
	POP X
	MOV $0244+x, A
	INC Y
	MOV A, $25
	BEQ CODE_0F37
	MOV A, ($01)+y
	INC Y
	CLRC
	ADC A, ($01)+y
	ROR A
	MOV $0254+x, A
	MOV $0264+x, A
	MOV $01, #$04
	JMP CODE_0ACE

CODE_0F37:
	MOV A, ($01)+y
	MOV $0254+x, A
	INC Y
	MOV A, ($01)+y
	MOV $0264+x, A
	MOV $01, #$04
	JMP CODE_0ACE

CODE_0F48:
	POP X
	MOV Y, #$01
	MOV $3C+x, Y
	MOV A, #$00
	MOV $2C+x, A
	MOV A, ($01)+y
	MOV $0D, A
	MOV $01, #$02
	JMP CODE_0ACE

CODE_0F5B:
	POP X
	MOV Y, #$00
	MOV $2C+x, Y
	INC Y
	MOV $3C+x, Y
	MOV A, ($01)+y
	MOV $EC, A
	MOV $01, #$02
	JMP CODE_0ACE

CODE_0F6D:
	POP X
	MOV A, #$01
	MOV $0190+x, A
	MOV $01, A
	MOV $3C+x, A
	DEC A
	MOV $2C+x, A
	JMP CODE_0ACE

CODE_0F7D:
	POP X
	MOV A, #$01
	MOV $3C+x, A
	MOV $01, A
	DEC A
	MOV $2C+x, A
	MOV $0190+x, A
	JMP CODE_0ACE

CODE_0F8D:
	POP X
	MOV Y, #$01
	MOV $3C+x, Y
	MOV A, #$00
	MOV $2C+x, A
	MOV A, $ED
	ASL A
	INC A
	MOV Y, A
	MOV A, ($01)+y
	MOV $4C+x, A
	INC Y
	MOV A, ($01)+y
	MOV $5C+x, A
	MOV A, #$01
	RET

CODE_0FA7:
	POP X
	MOV Y, #$00
	MOV $2C+x, Y
	INC Y
	MOV $3C+x, Y
	MOV A, ($01)+y
	MOV $ED, A
	MOV $01, #$02
	JMP CODE_0ACE

CODE_0FB9:
	POP X
	MOV A, $0150+x
	OR A, #$04
	MOV $0150+x, A
	MOV Y, #$01
	MOV $3C+x, Y
	MOV A, #$00
	MOV $2C+x, A
	MOV A, ($01)+y
	MOV $02F4+x, A
	INC Y
	MOV A, ($01)+y
	MOV $02C4+x, A
	INC Y
	MOV A, ($01)+y
	MOV $02D4+x, A
	INC Y
	MOV A, ($01)+y
	MOV $0304+x, A
	MOV A, $0254+x
	MOV $0314+x, A
	MOV A, $0264+x
	MOV $0324+x, A
	MOV $01, #$05
	JMP CODE_0ACE

CODE_0FF3:
	POP X
	MOV A, $0150+x
	AND A, #$FB
	MOV $0150+x, A
	JMP CODE_0C44

DATA_0FFF:
	db $01,$02,$04,$08,$10,$20,$40,$80,$01,$02,$04,$08,$10,$20,$40,$80
	db $69,$0A,$B5,$0A,$DE,$0A,$0F,$0B,$24,$0B,$59,$0B,$9F,$0B,$C4,$0B
	db $D0,$0B,$04,$0C,$3B,$0C,$51,$0C,$66,$0C,$73,$0C,$A0,$0C,$AC,$0C
	db $DA,$0C,$F4,$0C,$2D,$0D,$40,$0D,$54,$0D,$6C,$0D,$9B,$0D,$B6,$0D
	db $D3,$0D,$F3,$0D,$0D,$0E,$25,$0E,$35,$0E,$39,$0E,$3D,$0E,$41,$0E
	db $45,$0E,$6B,$0E,$6F,$0E,$73,$0E,$77,$0E,$7B,$0E,$A2,$0E,$D7,$0E
	db $09,$0F,$48,$0F,$5B,$0F,$6D,$0F,$7D,$0F,$8D,$0F,$A7,$0F,$B9,$0F
	db $F3,$0F

CODE_1071:
	MOV A, #$00
	MOV $F2, #$6C
	MOV $F3, #$E0
	MOV A, #$00
	MOV $F2, #$2C
	MOV $0232, A
	MOV $F3, A
	MOV $F2, #$3C
	MOV $0233, A
	MOV $F3, A
	MOV $F2, #$4C
	MOV $F3, A
	MOV $F2, #$5C
	MOV $F3, #$FF
	MOV $F2, #$2D
	MOV $F3, A
	MOV $F2, #$3D
	MOV $F3, A
	MOV $F2, #$4D
	MOV $F3, A
	MOV $F2, #$7D
	MOV $F3, #$04
	MOV $F2, #$6D
	MOV $F3, #$DF
	MOV $F2, #$0D
	MOV $F3, A
	MOV Y, #$00
	MOV $01, Y
	MOV $02, #$DF
CODE_10BD:
	MOV A, #$00
CODE_10BF:
	MOV ($01)+y, A
	INC Y
	BNE CODE_10BF
	MOV A, $02
	INC A
	MOV $02, A
	CMP A, #$FF
	BNE CODE_10BD
	MOV A, #$7F
	MOV $0230, A
	MOV $0231, A
	MOV $F2, #$0C
	MOV $F3, A
	MOV $F2, #$1C
	MOV $F3, A
	MOV $F2, #$5D
	MOV $F3, #$32
	MOV X, #$00
	MOV Y, #$08
	MOV $F2, #$00
CODE_10EC:
	MOV A, #$7F
	MOV $F3, A
	INC $F2
	MOV $F3, A
	CLRC
	ADC $F2, #$04
	MOV A, #$00
	MOV $F3, A
	INC $F2
	MOV $F3, A
	INC $F2
	MOV $F3, #$FF
	CLRC
	ADC $F2, #$09
	DEC Y
	BNE CODE_10EC
	MOV A, #$3C
	MOV $EC, A
	MOV A, #$20
	MOV $0F, A
	MOV $01, #$08
	MOV X, #$00
	MOV Y, #$00
	MOV $0B, Y
	MOV $0D, Y
	MOV $0E, Y
	MOV $02, Y
CODE_1123:
	MOV A, #$01
	MOV $3C+x, A
	MOV $0110+x, A
	MOV A, $12A0+y
	MOV $4C+x, A
	MOV A, $12A1+y
	MOV $5C+x, A
	MOV A, $02
	MOV $DC+x, A
	MOV A, #$00
	MOV $0190+x, A
	MOV $2C+x, A
	MOV $0120+x, A
	MOV $0130+x, A
	MOV $0150+x, A
	MOV $6C+x, A
	MOV $0140+x, A
	MOV $01A0+x, A
	INC X
	INC Y
	INC Y
	CLRC
	ADC $02, #$08
	DEC $01
	BNE CODE_1123
	MOV A, $12A0+y
	MOV $27, A
	INC Y
	MOV A, $12A0+y
	MOV $2A, A
	MOV A, #$00
	MOV $26, A
	MOV $29, A
	MOV $F2, #$6C
	MOV $F3, #$20
	RET

CODE_1173:
	ASL A
	PUSH A
	MOV A, #$01
	MOV $01A0+x, A
	MOV $F2, #$3D
	MOV A, DATA_0FFF+x
	EOR A, #$FF
	AND A, $F3
	MOV $F3, A
	MOV A, X
	CLRC
	ADC A, #$08
	MOV X, A
	ASL A
	ASL A
	ASL A
	MOV $DC+x, A
	MOV A, #$01
	MOV $0110+x, A
	MOV A, #$00
	MOV $0120+x, A
	MOV $0130+x, A
	MOV $2C+x, A
	MOV $0190+x, A
	MOV $01A0+x, A
	MOV $0150+x, A
	MOV $0140+x, A
	MOV $6C+x, A
	MOV $0274+x, A
	MOV $0284+x, A
	MOV $0294+x, A
	MOV A, #$7F
	MOV $0254+x, A
	MOV $0264+x, A
	MOV $0314+x, A
	MOV $0324+x, A
	POP Y
	MOV A, $2380+y
	MOV $4C+x, A
	INC Y
	MOV A, $2380+y
	MOV $5C+x, A
	MOV A, #$02
	MOV $3C+x, A
	MOV $F2, #$4D
	MOV A, DATA_0FFF+x
	EOR A, #$FF
	AND A, $F3
	MOV $F3, A
	RET

DATA_11E1:
	db $00,$00,$00,$02,$1E,$02,$3F,$02,$61,$02,$85,$02,$AB,$02,$D4,$02
	db $FF,$02,$2D,$03,$5D,$03,$90,$03,$C7,$03,$00,$04,$3D,$04,$7D,$04
	db $C2,$04,$0A,$05,$57,$05,$A8,$05,$FE,$05,$5A,$06,$BA,$06,$21,$07
	db $8D,$07,$00,$08,$7A,$08,$FB,$08,$84,$09,$14,$0A,$AE,$0A,$50,$0B
	db $FD,$0B,$B3,$0C,$74,$0D,$41,$0E,$1A,$0F,$00,$10,$F4,$10,$F6,$11
	db $07,$13,$29,$14,$5C,$15,$A1,$16,$F9,$17,$66,$19,$E9,$1A,$82,$1C
	db $34,$1E,$00,$20,$E7,$21,$EB,$23,$0E,$26,$51,$28,$B7,$2A,$41,$2D
	db $F2,$2F,$CC,$32,$D1,$35,$04,$39,$68,$3C,$FF,$3F,$00

base off
;%SPCDataBlockEnd(04E0)
