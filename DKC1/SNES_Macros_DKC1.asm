 
;--------------------------------------------------------------------

macro DKC1_AnS1_OpXX(Param1, Param2)
	db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro DKC1_AnS1_Op80()
	db $80 : db $00
endmacro

;--------------------------------------------------------------------

macro DKC1_AnS1_Op81(Param1)
	db $81 : dl <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_AnS1_Op82(Param1)
	db $82 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_AnS1_Op83(Param1)
	db $83 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_AnS1_Op84(Param1)
	db $84 : dl <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_AnS1_Op85(Param1, Param2, Param3)
	db $85 : db <Param1> : dw <Param2>,<Param3>
endmacro

;--------------------------------------------------------------------

macro DKC1_AnS1_Op86(Param1, Param2, Param3, Param4, Param5)
	db $86 : db <Param1> : dw <Param2>,<Param3>,<Param4>,<Param5>
endmacro

;--------------------------------------------------------------------

macro DKC1_AnS1_Op87(Param1, Param2, Param3, Param4)
	db $87 : db <Param1> : dw <Param2>,<Param3>,<Param4>
endmacro

;--------------------------------------------------------------------

macro DKC1_AnS1_Op88(Param1, Param2)
	db $88 : dw <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro DKC1_AnS1_Op89(Param1, Param2, Param3)
	db $89 : db <Param1> : dw <Param2>,<Param3>
endmacro

;--------------------------------------------------------------------

macro DKC1_AnS1_Op8A(Param1, Param2, Param3, Param4, Param5)
	db $8A : db <Param1> : dw <Param2>,<Param3>,<Param4>,<Param5>
endmacro

;--------------------------------------------------------------------

macro DKC1_AnS1_Op8B(Param1, Param2, Param3, Param4)
	db $8B : db <Param1> : dw <Param2>,<Param3>,<Param4>
endmacro

;--------------------------------------------------------------------

macro DKC1_AnS1_Op8C(Param1, Param2)
	db $8C : dw <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro DKC1_AnS1_Op8D(Param1, Param2)
	db $8D : dw <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro DKC1_AnS1_Op8E(Param1)
	db $8E : db <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_AnS1_Op8F(Param1)
	db $8F : db <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_AnS1_Op90(Param1)
	db $90 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_AnS1_Op91()
	db $91
endmacro
 
;--------------------------------------------------------------------

macro DKC1_AnS2_OpXX(Param1, Param2)
	db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro DKC1_AnS2_Op80(Param1)
	db $80 : dw <Param1>
endmacro
 
;--------------------------------------------------------------------

macro DKC1_CrS_OpXX(Param1, Param2)
	db <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro DKC1_CrS_Op80()
	db $80 : db $00
endmacro

;--------------------------------------------------------------------

macro DKC1_CrS_Op81(Param1)
	db $81 : dl <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_CrS_Op82(Param1)
	db $82 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_CrS_Op83(Param1)
	db $83 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_CrS_Op84(Param1)
	db $84 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_CrS_Op85(Param1)
	db $85 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_CrS_Op86(Param1)
	db $86 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_CrS_Op87(Param1)
	db $87 : db <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_CrS_Op88(Param1)
	db $88 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_CrS_Op89()
	db $89 : db $00
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_OpXX(Param1, Param2)
	dw <Param1> : dw <Param2>
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op80()
	dw $8000
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op81(Param1)
	dw $8100 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op82(Param1)
	dw $8200 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op83()
	dw $8300
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op84()
	dw $8400
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op85()
	dw $8500
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op86()
	dw $8600
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op87()
	dw $8700
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op88(Param1)
	dw $8800 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op89()
	dw $8900
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op8A()
	dw $8A00
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op8B()
	dw $8B00
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op8C()
	dw $8C00
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op8D(Param1)
	dw $8D00 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op8E(Param1)
	dw $8E00 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op8F(Param1, Param2)
	dw $8F00 : dw <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op90(Param1, Param2)
	dw $9000 : dw <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op91(Param1)
	dw $9100 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op92(Param1, Param2)
	dw $9200 : dw <Param1>,<Param2>
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op93()
	dw $9300
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op94(Param1, Param2, Param3)
	dw $9400 : dw <Param1>,<Param2>,<Param3>
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op95(Param1)
	dw $9500 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op96(Param1)
	dw $9600 : dw <Param1>
endmacro

;--------------------------------------------------------------------

macro DKC1_SSS_Op97(Param1)
	dw $9700 : dw <Param1>
endmacro

;--------------------------------------------------------------------
