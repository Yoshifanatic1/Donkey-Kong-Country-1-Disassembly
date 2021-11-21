
UNK_F1F9F6:
	incbin "Graphics/GFX_Layer2_PlayerSelectScreen.bin":2A76-

UNK_F1FBA0:
	db $03,$04,$06,$00,$00,$0A,$10,$06,$78,$50,$78,$60,$78,$70,$88,$58
	db $88,$60,$88,$68,$88,$70
	incbin "Graphics/DynamicSprites/GFX_BreakableWall_Unknown1.bin"	; GFXSize = $200
	;dl $F1FBB6,$F1FDB6,GFX_BreakableWall_Unknown1,GFX_BreakableWall_Unknown1End

UNK_F1FDB6:
	db $03,$04,$06,$00,$00,$0A,$10,$06,$78,$50,$78,$60,$78,$70,$88,$58
	db $88,$60,$88,$68,$88,$70
	incbin "GarbageData/GFX_BreakableWall_Unknown.bin"	; GFXSize = $200
	;dl $F1FDCC,$F1FFCC,GFX_BreakableWall_Unknown,GFX_BreakableWall_UnknownEnd
