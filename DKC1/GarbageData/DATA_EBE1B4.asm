
UNK_EBE1B4:
	incbin "Graphics/DynamicSprites/GFX_Kritter_Jump10.bin":13C-

UNK_EBE318:
	db $08,$0B,$20,$00,$00,$2B,$00,$00,$5F,$6B,$6F,$6B,$7F,$7B,$5F,$7B
	db $6F,$7B,$7F,$6B,$89,$6B,$85,$5B,$8F,$7B,$91,$7B,$66,$63,$6E,$63
	db $7E,$63,$76,$63,$67,$5B,$5F,$58,$7D,$5B,$83,$53,$8B,$53
	incbin "Graphics/DynamicSprites/GFX_BoomBox_PlayMusic1.bin"	; GFXSize = $560
	;dl $EBE346,$EBE8A6,GFX_BoomBox_PlayMusic1,GFX_BoomBox_PlayMusic1End

UNK_EBE8A6:
	db $08,$0C,$20,$00,$00,$2C,$00,$00,$5F,$6B,$5F,$7B,$6F,$6B,$6F,$7B
	db $7F,$6B,$7F,$7B,$89,$6B,$82,$5B,$8F,$7B,$91,$7B,$66,$63,$6E,$63
	db $76,$63,$7E,$63,$90,$63,$7D,$5B,$83,$53,$86,$53,$68,$5B,$60,$59
	incbin "Graphics/DynamicSprites/GFX_BoomBox_PlayMusic2.bin"	; GFXSize = $580
	;dl $EBE8D6,$EBEE56,GFX_BoomBox_PlayMusic2,GFX_BoomBox_PlayMusic2End

UNK_EBEE56:
	db $08,$0C,$20,$00,$00,$2C,$00,$00,$5F,$7B,$6F,$7B,$7F,$7B,$5F,$6B
	db $6F,$6B,$7F,$6B,$8A,$6B,$82,$5B,$7A,$63,$8F,$7B,$92,$7B,$91,$63
	db $72,$63,$6A,$63,$66,$63,$67,$5B,$5F,$58,$7D,$5B,$84,$53,$86,$53
	incbin "Graphics/DynamicSprites/GFX_BoomBox_PlayMusic3.bin"	; GFXSize = $580
	;dl $EBEE86,$EBF406,GFX_BoomBox_PlayMusic3,GFX_BoomBox_PlayMusic3End

UNK_EBF406:
	db $06,$00,$00,$00,$00,$0C,$10,$0C,$70,$74,$70,$64,$80,$64,$80,$54
	db $70,$54,$80,$74
	incbin "Graphics/DynamicSprites/GFX_OilDrum_Pose.bin"	; GFXSize = $300
	;dl $EBF41A,$EBF71A,GFX_OilDrum_Pose,GFX_OilDrum_PoseEnd
