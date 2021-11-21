
UNK_D1FC32:
	incbin "Graphics/DynamicSprites/GFX_KRoolCrown_Thrown9.bin":98-

UNK_D1FC7A:
	db $01,$03,$02,$00,$00,$05,$10,$02,$7A,$76,$7C,$6E,$84,$6E,$84,$76
	incbin "Graphics/DynamicSprites/GFX_KRoolCrown_Thrown10.bin"	; GFXSize = $E0
	;dl $D1FC8A,$D1FD6A,GFX_KRoolCrown_Thrown10,GFX_KRoolCrown_Thrown10End

UNK_D1FD6A:
	db $01,$04,$02,$00,$00,$06,$10,$02,$78,$72,$7E,$82,$81,$6A,$88,$71
	db $86,$79
	incbin "Graphics/DynamicSprites/GFX_KRoolCrown_Thrown11.bin"	; GFXSize = $100
	;dl $D1FD7C,$D1FE7C,GFX_KRoolCrown_Thrown11,GFX_KRoolCrown_Thrown11End

UNK_D1FE7C:
	db $01,$04,$02,$00,$00,$06,$10,$02,$78,$72,$88,$7A,$7C,$82,$83,$6A
	db $88,$72
	incbin "GarbageData/GFX_KRoolCrown_Unknown.bin"	; GFXSize = $100
	;dl $D1FE8E,$D1FF8E,GFX_KRoolCrown_Unknown,GFX_KRoolCrown_UnknownEnd

UNK_D1FF8E:
	incbin "Graphics/DynamicSprites/GFX_Zinger_Fly4.bin":25A-
