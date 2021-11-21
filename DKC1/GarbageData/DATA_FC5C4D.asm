 
UNK_FC5C4D:
	incbin "SPC700/Music/BeatLevel.bin":219-

UNK_FC5C6F:
	incbin "Tilemaps/Layer3_CaveLevels.bin":18C2-

UNK_FC63AD:
	incbin "Graphics/GFX_Layer3_CaveLevels.bin"

UNK_FC666D:
	db $04,$03,$08,$00,$00,$0B,$10,$08,$72,$5C,$72,$6C,$7D,$5C,$7D,$6C
	db $75,$54,$7C,$54,$82,$54
	incbin "Graphics/DynamicSprites/GFX_SteelKeg_Idle.bin"	; GFXSize = $260
	;dl $FC6683,$FC68E3,GFX_SteelKeg_Idle,GFX_SteelKeg_IdleEnd

UNK_FC68E3:
	db $04,$03,$08,$00,$00,$0B,$10,$08,$72,$5E,$72,$6E,$7E,$5E,$7D,$6E
	db $76,$56,$7C,$56,$82,$56
	incbin "Graphics/DynamicSprites/GFX_SteelKeg_Grabbed1.bin"	; GFXSize = $260
	;dl $FC68F9,$FC6B59,GFX_SteelKeg_Grabbed1,GFX_SteelKeg_Grabbed1End

UNK_FC6B59:
	db $03,$02,$06,$00,$00,$08,$10,$06,$72,$5F,$78,$6F,$7E,$5F,$72,$6F
	db $86,$6F
	incbin "Graphics/DynamicSprites/GFX_SteelKeg_Grabbed2.bin"	; GFXSize = $1C0
	;dl $FC6B6B,$FC6D2B,GFX_SteelKeg_Grabbed2,GFX_SteelKeg_Grabbed2End

UNK_FC6D2B:
	db $02,$06,$04,$00,$00,$0A,$10,$04,$72,$5D,$7E,$6D,$72,$6D,$76,$6D
	db $82,$5D,$82,$65,$76,$75,$86,$65
	incbin "Graphics/DynamicSprites/GFX_SteelKeg_Grabbed3.bin"	; GFXSize = $1C0
	;dl $FC6D43,$FC6F03,GFX_SteelKeg_Grabbed3,GFX_SteelKeg_Grabbed3End

UNK_FC6F03:
	db $04,$02,$08,$00,$00,$0A,$10,$08,$72,$59,$7E,$60,$7D,$70,$72,$69
	db $78,$79,$82,$58
	incbin "Graphics/DynamicSprites/GFX_SteelKeg_Thrown1.bin"	; GFXSize = $240
	;dl $FC6F17,$FC7157,GFX_SteelKeg_Thrown1,GFX_SteelKeg_Thrown1End

UNK_FC7157:
	db $03,$05,$06,$00,$00,$0B,$10,$06,$72,$5D,$7E,$5D,$7E,$6D,$76,$6D
	db $78,$55,$76,$75,$72,$6D,$7E,$55
	incbin "Graphics/DynamicSprites/GFX_SteelKeg_Thrown2.bin"	; GFXSize = $220
	;dl $FC716F,$FC738F,GFX_SteelKeg_Thrown2,GFX_SteelKeg_Thrown2End

UNK_FC738F:
	db $02,$06,$04,$00,$00,$0A,$10,$04,$72,$63,$7E,$63,$85,$73,$75,$73
	db $7D,$73,$73,$5B,$7B,$5B,$83,$5B
	incbin "Graphics/DynamicSprites/GFX_SteelKeg_Thrown3.bin"	; GFXSize = $1C0
	;dl $FC73A7,$FC7567,GFX_SteelKeg_Thrown3,GFX_SteelKeg_Thrown3End

UNK_FC7567:
	db $02,$07,$04,$00,$00,$0B,$10,$04,$71,$64,$7F,$64,$86,$74,$79,$54
	db $76,$74,$7E,$74,$72,$5C,$7A,$5C,$82,$5C
	incbin "Graphics/DynamicSprites/GFX_SteelKeg_Thrown4.bin"	; GFXSize = $1E0
	;dl $FC7581,$FC7761,GFX_SteelKeg_Thrown4,GFX_SteelKeg_Thrown4End

UNK_FC7761:
	db $04,$02,$08,$00,$00,$0A,$10,$08,$72,$65,$73,$55,$7E,$61,$7D,$71
	db $83,$59,$76,$75
	incbin "Graphics/DynamicSprites/GFX_SteelKeg_Thrown5.bin"	; GFXSize = $240
	;dl $FC7775,$FC79B5,GFX_SteelKeg_Thrown5,GFX_SteelKeg_Thrown5End

UNK_FC79B5:
	db $04,$01,$08,$00,$00,$09,$10,$08,$72,$5B,$7D,$5D,$7D,$6D,$72,$6B
	db $7E,$55
	incbin "Graphics/DynamicSprites/GFX_SteelKeg_Thrown6.bin"	; GFXSize = $220
	;dl $FC79C7,$FC7BE7,GFX_SteelKeg_Thrown6,GFX_SteelKeg_Thrown6End

UNK_FC7BE7:
	db $02,$06,$04,$00,$00,$0A,$10,$04,$72,$63,$7E,$63,$75,$73,$7D,$73
	db $73,$5B,$83,$5B,$85,$73,$7B,$5B
	incbin "Graphics/DynamicSprites/GFX_SteelKeg_Thrown7.bin"	; GFXSize = $1C0
	;dl $FC7BFF,$FC7DBF,GFX_SteelKeg_Thrown7,GFX_SteelKeg_Thrown7End

UNK_FC7DBF:
	db $03,$04,$06,$00,$00,$0A,$10,$06,$71,$5C,$7E,$5C,$7F,$6C,$77,$6C
	db $79,$54,$77,$74,$72,$6C
	incbin "Graphics/DynamicSprites/GFX_SteelKeg_Thrown8.bin"	; GFXSize = $200
	;dl $FC7DD5,$FC7FD5,GFX_SteelKeg_Thrown8,GFX_SteelKeg_Thrown8End

UNK_FC7FD5:
	db $00,$00,$08,$00,$F0,$00,$E0,$00,$80,$00,$00,$00,$08,$00,$F0,$00
	db $E0,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
