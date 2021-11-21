
UNK_DCE9E0:
	incbin "Graphics/GFX_Layer1_NintendoLogo.bin":27D1-

UNK_DCEA8F:
	db $0B,$03,$26,$00,$00,$29,$30,$06,$5E,$61,$6E,$62,$7E,$63,$8E,$64
	db $9E,$64,$9E,$74,$8E,$74,$7E,$73,$6E,$72,$5E,$71,$51,$71,$57,$69
	db $51,$69,$59,$61
	incbin "Graphics/DynamicSprites/GFX_TrickTrackTrekPlatform_Pose1.bin"	; GFXSize = $5E0
	;dl $DCEAB3,$DCF093,GFX_TrickTrackTrekPlatform_Pose1,GFX_TrickTrackTrekPlatform_Pose1End

UNK_DCF093:
	db $0B,$03,$26,$00,$00,$29,$30,$06,$5E,$61,$6E,$62,$7E,$63,$8E,$64
	db $9E,$64,$9E,$74,$8E,$74,$7E,$73,$6E,$72,$5E,$71,$51,$71,$57,$69
	db $51,$69,$59,$61
	incbin "Graphics/DynamicSprites/GFX_TrickTrackTrekPlatform_Pose2.bin"	; GFXSize = $5E0
	;dl $DCF0B7,$DCF697,GFX_TrickTrackTrekPlatform_Pose2,GFX_TrickTrackTrekPlatform_Pose2End

UNK_DCF697:
	db $0B,$03,$26,$00,$00,$29,$30,$06,$5E,$61,$6E,$62,$7E,$63,$8E,$64
	db $9E,$64,$9E,$74,$8E,$74,$7E,$73,$6E,$72,$5E,$71,$51,$71,$57,$69
	db $51,$69,$59,$61
	incbin "Graphics/DynamicSprites/GFX_TrickTrackTrekPlatform_Pose3.bin"	; GFXSize = $5E0
	;dl $DCF6BB,$DCFC9B,GFX_TrickTrackTrekPlatform_Pose3,GFX_TrickTrackTrekPlatform_Pose3End

UNK_DCFC9B:
	db $05,$02,$0A,$00,$00,$0C,$10,$0A,$68,$80,$78,$80,$88,$80,$70,$70
	db $80,$70,$8D,$78,$6B,$78
	incbin "Graphics/DynamicSprites/GFX_FactoryPlatform_Pose.bin"	; GFXSize = $2C0
	;dl $DCFCB1,$DCFF71,GFX_FactoryPlatform_Pose,GFX_FactoryPlatform_PoseEnd

UNK_DCFF71:
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$06,$04,$00,$00,$0A
	db $10,$04,$7C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
