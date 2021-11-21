
UNK_DAFF02:
	incbin "Graphics/DynamicSprites/GFX_MapDonkeyKong_Walk9.bin":BE-

UNK_DAFF24:
	db $00,$03,$00,$00,$00,$03,$00,$00,$7A,$79,$82,$7C,$85,$7C
	incbin "Graphics/DynamicSprites/GFX_NeckyFeather_Pose1.bin"	; GFXSize = $60
	;dl $DAFF32,$DAFF92,GFX_NeckyFeather_Pose1,GFX_NeckyFeather_Pose1End

UNK_DAFF92:
	db $00,$03,$00,$00,$00,$03,$00,$00,$79,$7A,$81,$7A,$86,$7A
	incbin "Graphics/DynamicSprites/GFX_NeckyFeather_Pose2.bin"	; GFXSize = $60
	;dl $DAFFA0,$DB0000,GFX_NeckyFeather_Pose2,GFX_NeckyFeather_Pose2End

