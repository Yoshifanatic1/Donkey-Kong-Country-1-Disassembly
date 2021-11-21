@asar 1.81

; Modify these as needed
hirom						; The memory map of the ROM. Change this if the ROM uses a different memory map, or else the output may be wrong.
!ROMOffset = $B5E561				; The ROM offset to begin disassembly from.
!DoTwoPassesFlag = 1				; If 1, the script will run twice, with the purpose of generating labels that appear before the branch that points to it. Turning this on may slow down disassembly speed, however.
!MaxBytes = 6657			; The maximum amount of bytes that will be read at a time. Setting this lower/higher will speed up/slow down disassembly.

; Don't touch these
!Input1 = $00
!Input2 = $00
!Output = ""
!ByteCounter = 0
!LoopCounter = 0
!Pass = 0
!CurrentOffset = 0

macro GetOpcode()
	!Input1 #= read2(!ROMOffset+!ByteCounter)
	;!Input1 #= !LoopCounter
	!ByteCounter #= !ByteCounter+2
	!CurrentOffset #= !ROMOffset+!ByteCounter
endmacro

macro readbyte(Input)
	!<Input> #= read1(!ROMOffset+!ByteCounter)
	;!<Input> = $01
	!ByteCounter #= !ByteCounter+1
	!CurrentOffset #= !ROMOffset+!ByteCounter
endmacro

macro readword(Input)
	!<Input> #= read2(!ROMOffset+!ByteCounter)
	;!<Input> = $0123
	!ByteCounter #= !ByteCounter+2
	!CurrentOffset #= !ROMOffset+!ByteCounter
endmacro

macro readlong(Input)
	!<Input> #= read3(!ROMOffset+!ByteCounter)
	;!<Input> = $012345
	!ByteCounter #= !ByteCounter+3
	!CurrentOffset #= !ROMOffset+!ByteCounter
endmacro

macro PrintLabel(Address)
if defined("ROM_<Address>") == 1
	if !ROM_<Address> == 1
		print ""
	endif
	print "DATA_",hex(!ROMOffset+!ByteCounter, 6),":"
endif
endmacro

macro DefineLabelAfterNoPassOpcode(Address)
	!ROM_<Address> = 1
endmacro

macro HandleJump(Address)
if defined("ROM_<Address>") == 0
	!ROM_<Address> = 0
endif
endmacro

macro Op0()
	%readword(Input2)
if !Pass == 1
	print "	%DKC1_SSS_OpXX($",hex(!Input1, 4),", $",hex(!Input2, 4),")"
endif
endmacro

macro Op128()
if !Pass == 1
	print "	%DKC1_SSS_Op80()"
endif
	%DefineLabelAfterNoPassOpcode(!CurrentOffset)
endmacro

macro Op129()
	%readword(Input1)
if !Pass == 1
	print "	%DKC1_SSS_Op81($",hex(!Input1, 4),")"
endif
endmacro

macro Op130()
	%readword(Input1)
	!Input2 #= !Input1+($B5<<16)
	%HandleJump(!Input2)
if !Pass == 1
	print "	%DKC1_SSS_Op82(DATA_B5",hex(!Input1, 4),")"
endif
endmacro

macro Op131()
if !Pass == 1
	print "	%DKC1_SSS_Op83()"
endif
endmacro

macro Op132()
if !Pass == 1
	print "	%DKC1_SSS_Op84()"
endif
endmacro

macro Op133()
if !Pass == 1
	print "	%DKC1_SSS_Op85()"
endif
endmacro

macro Op134()
if !Pass == 1
	print "	%DKC1_SSS_Op86()"
endif
endmacro

macro Op135()
if !Pass == 1
	print "	%DKC1_SSS_Op87()"
endif
endmacro

macro Op136()
	%readword(Input1)
if !Pass == 1
	print "	%DKC1_SSS_Op88(DATA_BC",hex(!Input1, 4),")"
endif
endmacro

macro Op137()
if !Pass == 1
	print "	%DKC1_SSS_Op89()"
endif
endmacro

macro Op138()
if !Pass == 1
	print "	%DKC1_SSS_Op8A()"
endif
endmacro

macro Op139()
if !Pass == 1
	print "	%DKC1_SSS_Op8B()"
endif
endmacro

macro Op140()
if !Pass == 1
	print "	%DKC1_SSS_Op8C()"
endif
endmacro

macro Op141()
	%readword(Input1)
if !Pass == 1
	print "	%DKC1_SSS_Op8D($",hex(!Input1, 4),")"
endif
endmacro

macro Op142()
	%readword(Input1)
if !Pass == 1
	print "	%DKC1_SSS_Op8E($",hex(!Input1, 4),")"
endif
endmacro

macro Op143()
	%readword(Input1)
	%readword(Input2)
if !Pass == 1
	print "	%DKC1_SSS_Op8F($",hex(!Input1, 4),", $",hex(!Input2, 4),")"
endif
endmacro

macro Op144()
	%readword(Input1)
	%readword(Input2)
if !Pass == 1
	print "	%DKC1_SSS_Op90($",hex(!Input1, 4),", $",hex(!Input2, 4),")"
endif
endmacro

macro Op145()
	%readword(Input1)
if !Pass == 1
	print "	%DKC1_SSS_Op91($",hex(!Input1, 4),")"
endif
endmacro

macro Op146()
	%readword(Input1)
	%readword(Input2)
if !Pass == 1
	print "	%DKC1_SSS_Op92($",hex(!Input1, 4),", $",hex(!Input2, 4),")"
endif
endmacro

macro Op147()
if !Pass == 1
	print "	%DKC1_SSS_Op93()"
endif
endmacro

macro Op148()
	%readword(Input1)
	%readword(Input2)
	%readword(Input3)
if !Pass == 1
	print "	%DKC1_SSS_Op94($",hex(!Input1, 4),", $",hex(!Input2, 4),", $",hex(!Input3, 4),")"
endif
endmacro

macro Op149()
	%readword(Input1)
if !Pass == 1
	print "	%DKC1_SSS_Op95(CODE_B5",hex(!Input1, 4),")"
endif
endmacro

macro Op150()
	%readword(Input1)
if !Pass == 1
	print "	%DKC1_SSS_Op96($",hex(!Input1, 4),")"
endif
endmacro

macro Op151()
	%readword(Input1)
if !Pass == 1
	print "	%DKC1_SSS_Op97($",hex(!Input1, 4),")"
endif
endmacro

macro Op256()
if !Pass == 1
	print "	Invalid opcode: $",hex(!Input1, 4)
endif
endmacro

org !ROMOffset
if !DoTwoPassesFlag == 1
	while !ByteCounter < !MaxBytes
		%GetOpcode()
		if !Input1/$0100 < 128
			%Op0()
		elseif !Input1/$0100 > 151
			%Op256()
		else
			!Input2 #= !Input1/$0100
			%Op!Input2()
		endif
		!LoopCounter #= !LoopCounter+1
	endif
	!LoopCounter #= 0
	!ByteCounter #= 0
endif
	!Pass = 1
while !ByteCounter < !MaxBytes
	%PrintLabel(!CurrentOffset)
	%GetOpcode()
	if !Input1/$0100 < 128
		%Op0()
	elseif !Input1/$0100 > 151
		%Op256()
	else
		!Input2 #= !Input1/$0100
		%Op!Input2()
	endif
	!LoopCounter #= !LoopCounter+1
endif

!Input1 #= !ROMOffset+!ByteCounter
print "Disassembly has ended at $",hex(!ROMOffset+!ByteCounter, 6)
