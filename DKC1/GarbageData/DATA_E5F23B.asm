
UNK_E5F23B:
	incbin "LevelData/FactoryLevels.bin":3456-37AA

UNK_E5F58F:
	incbin "Graphics/DynamicSprites/GFX_Croctopus_Unknown6.bin":32-

UNK_E5F77D:
	db $03,$07,$06,$00,$00,$0D,$10,$06,$6E,$74,$7E,$7C,$8B,$8C,$76,$84
	db $7A,$74,$8E,$84,$83,$8C,$8B,$9C,$88,$94,$90,$84
	incbin "Graphics/DynamicSprites/GFX_Croctopus_Unknown7.bin"	; GFXSize = $260
	;dl $E5F799,$E5F9F9,GFX_Croctopus_Unknown7,GFX_Croctopus_Unknown7End

UNK_E5F9F9:
	db $03,$0A,$06,$00,$00,$16,$00,$00,$7F,$6C,$7F,$7C,$6F,$76,$7A,$86
	db $7A,$6E,$7D,$66,$7A,$5E,$8F,$77,$8F,$7F,$6D,$6E,$67,$76,$67,$7E
	db $5F,$7F
	incbin "Graphics/DynamicSprites/GFX_Enguarde_Hurt.bin"	; GFXSize = $2C0
	;dl $E5FA1B,$E5FCDB,GFX_Enguarde_Hurt,GFX_Enguarde_HurtEnd

UNK_E5FCDB:
	db $01,$04,$02,$00,$00,$06,$10,$02,$7C,$73,$74,$77,$7A,$6F,$6E,$72
	db $6E,$7A
	incbin "Graphics/DynamicSprites/GFX_Bitesize_Swim1.bin"	; GFXSize = $100
	;dl $E5FCED,$E5FDED,GFX_Bitesize_Swim1,GFX_Bitesize_Swim1End

UNK_E5FDED:
	db $02,$01,$04,$00,$00,$05,$10,$04,$7C,$73,$6F,$72,$7A,$6B
	incbin "Graphics/DynamicSprites/GFX_Bitesize_Swim2.bin"	; GFXSize = $120
	;dl $E5FDFB,$E5FF1B,GFX_Bitesize_Swim2,GFX_Bitesize_Swim2End

UNK_E5FF1B:
	db $02,$00,$00,$00,$00,$04,$10,$04,$7D,$73,$72,$6F
	incbin "Graphics/DynamicSprites/GFX_Bitesize_Swim3.bin":0-D9	; GFXSize = $100
	;dl $E5FF27,$E60000,GFX_Bitesize_Swim3,GFX_Bitesize_Swim3End
