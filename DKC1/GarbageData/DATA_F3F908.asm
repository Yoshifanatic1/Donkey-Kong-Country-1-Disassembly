
UNK_F3F908:
	incbin "Graphics/DynamicSprites/GFX_Zinger_Fly2.bin":14C-

UNK_F3FA9C:
	db $03,$07,$06,$00,$00,$0D,$10,$06,$6D,$65,$6E,$75,$7D,$68,$7E,$78
	db $86,$78,$79,$84,$88,$62,$8D,$6A,$89,$72,$91,$69
	incbin "Graphics/DynamicSprites/GFX_Zinger_Fly3.bin"	; GFXSize = $260
	;dl $F3FAB8,$F3FD18,GFX_Zinger_Fly3,GFX_Zinger_Fly3End

UNK_F3FD18:
	db $04,$06,$08,$00,$00,$0E,$10,$08,$6D,$65,$6D,$75,$7D,$71,$7D,$61
	db $7D,$59,$79,$85,$84,$59,$8D,$6A,$89,$72,$91,$66
	incbin "Graphics/DynamicSprites/GFX_Zinger_Fly4.bin"	; GFXSize = $2C0
	;dl $F3FD34,$F3FFF4,GFX_Zinger_Fly4,GFX_Zinger_Fly4End
