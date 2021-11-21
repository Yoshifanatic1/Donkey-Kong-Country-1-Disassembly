
UNK_E1E8A7:
	incbin "Graphics/GFX_Layer3_Fog.bin":1678-

UNK_E1E8AF:
	incbin "Graphics/DynamicSprites/GFX_VeryGnawty_Laugh1.bin":3FB-

UNK_E1E914:
	db $05,$06,$0A,$05,$1A,$1F,$00,$00,$87,$51,$7E,$61,$6E,$61,$6D,$71
	db $7D,$71,$7F,$59,$66,$76,$61,$76,$72,$59,$8E,$61,$8D,$69,$79,$81
	db $8B,$79,$8D,$71,$77,$59,$80,$51
	incbin "Graphics/DynamicSprites/GFX_VeryGnawty_Laugh2.bin"	; GFXSize = $3E0
	;dl $E1E93C,$E1ED1C,GFX_VeryGnawty_Laugh2,GFX_VeryGnawty_Laugh2End

UNK_E1ED1C:
	db $05,$06,$0A,$05,$1A,$1F,$00,$00,$87,$51,$7F,$61,$6F,$61,$6D,$71
	db $7D,$71,$7F,$59,$65,$76,$62,$75,$74,$59,$8E,$61,$8B,$69,$79,$81
	db $8B,$79,$89,$71,$77,$59,$85,$51
	incbin "Graphics/DynamicSprites/GFX_VeryGnawty_Laugh3.bin"	; GFXSize = $3E0
	;dl $E1ED44,$E1F124,GFX_VeryGnawty_Laugh3,GFX_VeryGnawty_Laugh3End

UNK_E1F124:
	db $05,$06,$0A,$05,$1A,$1F,$00,$00,$87,$51,$7F,$61,$6F,$61,$6E,$71
	db $7E,$71,$7F,$59,$66,$76,$62,$75,$74,$59,$8E,$61,$8B,$69,$79,$81
	db $8B,$79,$89,$71,$77,$59,$85,$51
	incbin "Graphics/DynamicSprites/GFX_VeryGnawty_Laugh4.bin"	; GFXSize = $3E0
	;dl $E1F14C,$E1F52C,GFX_VeryGnawty_Laugh4,GFX_VeryGnawty_Laugh4End

UNK_E1F52C:
	incbin "Tilemaps/Layer3_Fog.bin"

UNK_E1FD2C:
	incbin "Graphics/GFX_Layer3_Fog.bin":15EC-

UNK_E1FDC0:
	db $1F,$DF,$3F

UNK_E1FDC3:
	incbin "Graphics/GFX_Layer3_Fog.bin":14C4-
