; Note: This file is used by the ExtractAssets.bat batch script to define where each file is, how large they are, and their filenames.

hirom
;!ROMVer = $0000						; Note: This is set within the batch script
!DKC1_U1 = $0001
!DKC1_U2 = $0002
!DKC1_U3 = $0004
!DKC1_E1 = $0008
!DKC1_E2 = $0010
!DKC1_J1 = $0020
!DKC1_J2 = $0040

check bankcross off
org $C00000
MainPointerTableStart:
	dl MainPointerTableStart,MainPointerTableEnd-MainPointerTableStart
	dl UncompressedGFXPointersStart,(UncompressedGFXPointersEnd-UncompressedGFXPointersStart)/$0C
	dl DynamicSpriteGFXPointersStart,(DynamicSpriteGFXPointersEnd-DynamicSpriteGFXPointersStart)/$0C
	dl CompressedGFXPointersStart,(CompressedGFXPointersEnd-CompressedGFXPointersStart)/$0C
	dl UncompressedTilemapsPointersStart,(UncompressedTilemapsPointersEnd-UncompressedTilemapsPointersStart)/$0C
	dl CompressedTilemapsPointersStart,(CompressedTilemapsPointersEnd-CompressedTilemapsPointersStart)/$0C
	dl Map32PointersStart,(Map32PointersEnd-Map32PointersStart)/$0C
	dl LevelDataPointersStart,(LevelDataPointersEnd-LevelDataPointersStart)/$0C
	dl LevelSpritePointersStart,(LevelSpritePointersEnd-LevelSpritePointersStart)/$0C
	dl BananaDataPointersStart,(BananaDataPointersEnd-BananaDataPointersStart)/$0C
	dl PalettesPointersStart,(PalettesPointersEnd-PalettesPointersStart)/$0C
	dl GarbageDataPointersStart,(GarbageDataPointersEnd-GarbageDataPointersStart)/$0C
	dl MusicPointersStart,(MusicPointersEnd-MusicPointersStart)/$0C
	dl SoundEffectPointersStart,(SoundEffectPointersEnd-SoundEffectPointersStart)/$0C
	dl BRRPointersStart,(BRRPointersEnd-BRRPointersStart)/$0C
MainPointerTableEnd:

;--------------------------------------------------------------------

UncompressedGFXPointersStart:
	dl $C01A41,$C07A21,GFX_Layer1_CandysSavePoint,GFX_Layer1_CandysSavePointEnd
	dl $C116F1,$C16AD1,GFX_Layer1_WorldMap,GFX_Layer1_WorldMapEnd
	dl $C20000,$C21C00,GFX_Sprite_MapIcons,GFX_Sprite_MapIconsEnd
	dl $C40D00,$C415D0,GFX_Layer3_HangingLampLight,GFX_Layer3_HangingLampLightEnd
	dl $C468AA,$C4ACAA,GFX_Layer1_GameOverScreen,GFX_Layer1_GameOverScreenEnd
	dl $C51012,$C56FB2,GFX_Layer1_KongoJungleMap1,GFX_Layer1_KongoJungleMap1End
	dl $C61757,$C675F7,GFX_Layer1_KongoJungleMap2,GFX_Layer1_KongoJungleMap2End
	dl $C67CF7,$C6DA77,GFX_Layer1_MonkeyMinesMap1,GFX_Layer1_MonkeyMinesMap1End
	dl $C828E4,$C88864,GFX_Layer1_VineValleyMap2,GFX_Layer1_VineValleyMap2End
	dl $C96A77,$C99DE7,GFX_Layer3_FileSelectScreen,GFX_Layer3_FileSelectScreenEnd
	dl $CA0701,$CA6C61,GFX_Layer1_VineValleyMap1,GFX_Layer1_VineValleyMap1End
	dl $CC0000,$CC0640,GFX_Layer3_UnknownFont1,GFX_Layer3_UnknownFont1End
	dl $CC3BFE,$CC5D9E,GFX_Layer2_TreehouseLevels,GFX_Layer2_TreehouseLevelsEnd
	dl $CC64DE,$CC83FE,GFX_FGBG_KongsBananaHoardCave,GFX_FGBG_KongsBananaHoardCaveEnd
	dl $CC8BB4,$CCEA54,GFX_Layer1_MonkeyMinesMap2,GFX_Layer1_MonkeyMinesMap2End
	dl $CDF4B7,$CDF727,GFX_Layer3_JungleLevels,GFX_Layer3_JungleLevelsEnd
	dl $CE163E,$CE173E,GFX_Sprite_FishInDKHousePicture,GFX_Sprite_FishInDKHousePictureEnd
	dl $CF0000,$CF7DA0,GFX_FGBG_GangplankGalleon,GFX_FGBG_GangplankGalleonEnd
	dl $CF84A0,$CFE400,GFX_Layer1_DKsHouse,GFX_Layer1_DKsHouseEnd
	dl $D10701,$D166C1,GFX_Layer1_ChimpCavernsMap1,GFX_Layer1_ChimpCavernsMap1End
	dl $D16DC3,$D1CD83,GFX_Layer1_ChimpCavernsMap2,GFX_Layer1_ChimpCavernsMap2End
	dl $D30000,$D30600,GFX_Layer1_AnimatedTempleTorches,GFX_Layer1_AnimatedTempleTorchesEnd
	dl $D30600,$D306E0,GFX_Sprite_AirBubbles,GFX_Sprite_AirBubblesEnd
	dl $D33BF4,$D35914,GFX_Layer2_Fog,GFX_Layer2_FogEnd
	dl $D4EB52,$D4FFF2,GFX_Layer3_TempleLevels,GFX_Layer3_TempleLevelsEnd
	dl $DBCCD2,$DBEF92,GFX_Layer2_Millstone,GFX_Layer2_MillstoneEnd
	dl $DEA57C,$DEA71C,GFX_Sprite_Sparkles,GFX_Sprite_SparklesEnd
	dl $DECE74,$DEEE74,GFX_Layer3_AnimatedHeavySnow,GFX_Layer3_AnimatedHeavySnowEnd
	dl $DEEE74,$DEFE74,GFX_Layer2_AnimatedSnow,GFX_Layer2_AnimatedSnowEnd
	dl $DEFE74,$DF0000,GFX_Layer2_AnimatedLightSnow,GFX_Layer2_AnimatedLightSnowEnd
	dl $DF0680,$DF1650,GFX_Layer3_SnowLevels,GFX_Layer3_SnowLevelsEnd
	dl $E1974B,$E1B98B,GFX_Layer1_WireframeRareLogo,GFX_Layer1_WireframeRareLogoEnd
	dl $E1D227,$E1E8A7,GFX_Layer3_Fog,GFX_Layer3_FogEnd
	dl $E2896D,$E2991D,GFX_Layer3_FactoryLevels,GFX_Layer3_FactoryLevelsEnd
	dl $E38BFB,$E39BAB,GFX_Layer3_ForestLevels,GFX_Layer3_ForestLevelsEnd
	dl $E40690,$E417F0,GFX_Layer1_CopyrightScreen,GFX_Layer1_CopyrightScreenEnd
	dl $E5EC3B,$E5F23B,GFX_Layer1_ErrorMessageScreen,GFX_Layer1_ErrorMessageScreenEnd
	dl $E6C224,$E6EAA4,GFX_Layer1_NintendoLogo,GFX_Layer1_NintendoLogoEnd
	dl $E7095E,$E73BDE,GFX_Layer2_IntroScreen,GFX_Layer2_IntroScreenEnd
	dl $E7FCE9,$E7FFA9,GFX_Layer3_CaveLevels,GFX_Layer3_CaveLevelsEnd
	dl $E80480,$E80EC0,GFX_Layer1_LanguageSelectText,GFX_Layer1_LanguageSelectTextEnd
	dl $E80EE6,$E82466,GFX_UnknownTreetops,GFX_UnknownTreetopsEnd
	dl $E87A4A,$E88A2A,GFX_Layer2_WalkwayLevels,GFX_Layer2_WalkwayLevelsEnd
	dl $E8E5C4,$E8F704,GFX_UnusedWideLettersAndNintendoLogo,GFX_UnusedWideLettersAndNintendoLogoEnd
	dl $E9D6DC,$E9DCDC,GFX_Sprite_AreaNameFont,GFX_Sprite_AreaNameFontEnd
	dl $E9DCDC,$E9E2CC,GFX_Layer3_UnknownFont2,GFX_Layer3_UnknownFont2End
	dl $EBF71A,$EBFE7A,GFX_Layer1_UnknownFont1,GFX_Layer1_UnknownFont1End
	dl $ED0CF8,$ED2398,GFX_Layer3_NintendoLogoShine,GFX_Layer3_NintendoLogoShineEnd
	dl $ED2CC4,$ED3B84,GFX_Layer2_LargeRareLogo,GFX_Layer2_LargeRareLogoEnd
	dl $EDD4B6,$EDE076,GFX_Layer3_GangplankGalleon,GFX_Layer3_GangplankGalleonEnd
	dl $EE964B,$EEB40B,GFX_Mode7_RareLogo,GFX_Mode7_RareLogoEnd
	dl $EF0700,$EF7620,GFX_Layer1_TitleScreen,GFX_Layer1_TitleScreenEnd
	dl $EF8DBE,$EFB29E,GFX_Layer1_PlayerSelectScreen,GFX_Layer1_PlayerSelectScreenEnd
	dl $EFB89E,$EFE4BE,GFX_Layer2_PlayerSelectScreen,GFX_Layer2_PlayerSelectScreenEnd
	dl $F009EC,$F00DEC,GFX_Sprite_ElevatorLift,GFX_Sprite_ElevatorLiftEnd
	dl $F0A88E,$F0F76E,GFX_Layer1_IntroScreen,GFX_Layer1_IntroScreenEnd
	dl $F18502,$F194F2,GFX_Layer3_TreehouseLevels,GFX_Layer3_TreehouseLevelsEnd
	dl $F1C987,$F1EA67,GFX_Layer1_FileSelectScreen,GFX_Layer1_FileSelectScreenEnd
	dl $F20700,$F26540,GFX_Layer1_KremkrocIndustriesIncMap1,GFX_Layer1_KremkrocIndustriesIncMap1End
	dl $F29632,$F29712,GFX_Sprite_SmallSmokePuff,GFX_Sprite_SmallSmokePuffEnd
	dl $F29DD2,$F2FA92,GFX_Layer1_CrankysCabin,GFX_Layer1_CrankysCabinEnd
	dl $F2FA92,$F2FE52,GFX_Layer3_UnknownFont3,GFX_Layer3_UnknownFont3End
	dl $F41558,$F47518,GFX_Layer1_GorillaGlacierMap2,GFX_Layer1_GorillaGlacierMap2End
	dl $F4831D,$F491FD,GFX_Layer3_MineLevels,GFX_Layer3_MineLevelsEnd
	dl $F4A0FE,$F4FE9E,GFX_Layer1_FunkysFlights,GFX_Layer1_FunkysFlightsEnd
	dl $F70000,$F75FA0,GFX_Layer1_GorillaGlacierMap1,GFX_Layer1_GorillaGlacierMap1End
	dl $F80A74,$F80A94,GFX_Sprite_OverworldPathDot,GFX_Sprite_OverworldPathDotEnd
	dl $F887AF,$F88F8F,GFX_Layer1_UnknownFont2,GFX_Layer1_UnknownFont2End
	dl $F88F8F,$F891AF,GFX_Layer1_UnknownFont3,GFX_Layer1_UnknownFont3End
	dl $F9DB45,$F9E145,GFX_Layer1_ShadedDebugFont,GFX_Layer1_ShadedDebugFontEnd
	dl $F9E365,$F9E765,GFX_Sprite_GlobalSprites,GFX_Sprite_GlobalSpritesEnd
	dl $F9E765,$F9EB65,GFX_Sprite_HUDNumbers,GFX_Sprite_HUDNumbersEnd
	dl $F9EB65,$F9EF65,GFX_Sprite_Bananas,GFX_Sprite_BananasEnd
	dl $F9EF65,$F9F365,GFX_Sprite_TinyWinkyTokens,GFX_Sprite_TinyWinkyTokensEnd
	dl $F9F365,$F9F765,GFX_Sprite_TinyExpressoTokens,GFX_Sprite_TinyExpressoTokensEnd
	dl $F9F765,$F9FB65,GFX_Sprite_TinyRambiTokens,GFX_Sprite_TinyRambiTokensEnd
	dl $F9FB65,$F9FF65,GFX_Sprite_TinyEnguardeTokens,GFX_Sprite_TinyEnguardeTokensEnd
	dl $FB6ED8,$FB7EB8,GFX_Layer2_UnderwaterLevels,GFX_Layer2_UnderwaterLevelsEnd
	dl $FBC80E,$FBCC0E,GFX_Sprite_Snowflakes,GFX_Sprite_SnowflakesEnd
	dl $FCFB4B,$FCFF1B,GFX_Layer1_UnknownFont4,GFX_Layer1_UnknownFont4End
	dl $FF0701,$FF6261,GFX_Layer1_KremkrocIndustriesIncMap2,GFX_Layer1_KremkrocIndustriesIncMap2End
UncompressedGFXPointersEnd:

;--------------------------------------------------------------------

DynamicSpriteGFXPointersStart:
	dl $C0001E,$C0029E,GFX_CrankyKong_Fall1,GFX_CrankyKong_Fall1End
	dl $C002C0,$C00580,GFX_CrankyKong_Fall2,GFX_CrankyKong_Fall2End
	dl $C0059C,$C0085C,GFX_CrankyKong_Fall3,GFX_CrankyKong_Fall3End
	dl $C0087C,$C00B1C,GFX_CrankyKong_Fall4,GFX_CrankyKong_Fall4End
	dl $C00B3C,$C00D7C,GFX_CrankyKong_Fall5,GFX_CrankyKong_Fall5End
	dl $C00DA0,$C01020,GFX_CrankyKong_Fall6,GFX_CrankyKong_Fall6End
	dl $C01040,$C01340,GFX_CrankyKong_Fall7,GFX_CrankyKong_Fall7End
	dl $C10010,$C100F0,GFX_Diddy_AngledInMinecart1,GFX_Diddy_AngledInMinecart1End
	dl $C10100,$C101E0,GFX_Diddy_AngledInMinecart2,GFX_Diddy_AngledInMinecart2End
	dl $C101F0,$C102D0,GFX_Diddy_AngledInMinecart3,GFX_Diddy_AngledInMinecart3End
	dl $C102E0,$C103C0,GFX_Diddy_AngledInMinecart4,GFX_Diddy_AngledInMinecart4End
	dl $C103D0,$C104B0,GFX_Diddy_AngledInMinecart5,GFX_Diddy_AngledInMinecart5End
	dl $C104C0,$C105A0,GFX_Diddy_AngledInMinecart6,GFX_Diddy_AngledInMinecart6End
	dl $C105B0,$C10690,GFX_Diddy_AngledInMinecart7,GFX_Diddy_AngledInMinecart7End
	dl $C106A0,$C10780,GFX_Diddy_AngledInMinecart8,GFX_Diddy_AngledInMinecart8End
	dl $C10790,$C10870,GFX_Diddy_AngledInMinecart9,GFX_Diddy_AngledInMinecart9End
	dl $C10880,$C10960,GFX_Diddy_AngledInMinecart10,GFX_Diddy_AngledInMinecart10End
	dl $C10970,$C10A50,GFX_Diddy_AngledInMinecart11,GFX_Diddy_AngledInMinecart11End
	dl $C10A60,$C10B40,GFX_Diddy_AngledInMinecart12,GFX_Diddy_AngledInMinecart12End
	dl $C10B50,$C10C30,GFX_Diddy_AngledInMinecart13,GFX_Diddy_AngledInMinecart13End
	dl $C10C40,$C10D20,GFX_Diddy_AngledInMinecart14,GFX_Diddy_AngledInMinecart14End
	dl $C10D30,$C10E10,GFX_Diddy_AngledInMinecart15,GFX_Diddy_AngledInMinecart15End
	dl $C10E20,$C10F00,GFX_Diddy_AngledInMinecart16,GFX_Diddy_AngledInMinecart16End
	dl $C10F10,$C10FF0,GFX_Diddy_AngledInMinecart17,GFX_Diddy_AngledInMinecart17End
	dl $C21C16,$C21DB6,GFX_HalfTire_Bounce1,GFX_HalfTire_Bounce1End
	dl $C21DCE,$C21F8E,GFX_HalfTire_Bounce2,GFX_HalfTire_Bounce2End
	dl $C21FA6,$C22166,GFX_HalfTire_Bounce3,GFX_HalfTire_Bounce3End
	dl $C2217E,$C2239E,GFX_HalfTire_Bounce4,GFX_HalfTire_Bounce4End
	dl $C223B6,$C22636,GFX_HalfTire_Bounce5,GFX_HalfTire_Bounce5End
	dl $C2264C,$C2290C,GFX_HalfTire_Bounce6,GFX_HalfTire_Bounce6End
	dl $C2291C,$C22B1C,GFX_HalfTire_Idle,GFX_HalfTire_IdleEnd
	dl $C22B34,$C22CF4,GFX_Sign_Arrow,GFX_Sign_ArrowEnd
	dl $C22D0C,$C22ECC,GFX_Sign_Exit,GFX_Sign_ExitEnd
	dl $C23E75,$C247F5,GFX_KRool_WaitToCatchCrown1,GFX_KRool_WaitToCatchCrown1End
	dl $C24837,$C25177,GFX_KRool_WaitToCatchCrown2,GFX_KRool_WaitToCatchCrown2End
	dl $C251B5,$C25AB5,GFX_KRool_WaitToCatchCrown3,GFX_KRool_WaitToCatchCrown3End
	dl $C25AF3,$C26333,GFX_KRool_WaitToCatchCrown4,GFX_KRool_WaitToCatchCrown4End
	dl $C2636B,$C26C0B,GFX_KRool_Hurt1,GFX_KRool_Hurt1End
	dl $C26C4F,$C2754F,GFX_KRool_Hurt2,GFX_KRool_Hurt2End
	dl $C27599,$C27EF9,GFX_KRool_Hurt3,GFX_KRool_Hurt3End
	dl $C27F3F,$C2891F,GFX_KRool_Hurt4,GFX_KRool_Hurt4End
	dl $C28971,$C29471,GFX_KRool_FallOver1,GFX_KRool_FallOver1End
	dl $C294B5,$C29E75,GFX_KRool_FallOver2,GFX_KRool_FallOver2End
	dl $C29EBF,$C2A81F,GFX_KRool_FallOver3,GFX_KRool_FallOver3End
	dl $C2A85B,$C2B19B,GFX_KRool_FallOver4,GFX_KRool_FallOver4End
	dl $C2B1D9,$C2BB39,GFX_KRool_FallOver5,GFX_KRool_FallOver5End
	dl $C2BB75,$C2C515,GFX_KRool_FallOver6,GFX_KRool_FallOver6End
	dl $C2C55B,$C2CE7B,GFX_KRool_FallOver7,GFX_KRool_FallOver7End
	dl $C2CEBB,$C2D71B,GFX_KRool_FallOver8,GFX_KRool_FallOver8End
	dl $C2D755,$C2DF55,GFX_KRool_FallOver9,GFX_KRool_FallOver9End
	dl $C2DF91,$C2E751,GFX_KRool_FallOver10,GFX_KRool_FallOver10End
	dl $C2E78F,$C2EFCF,GFX_KRool_FallOver11,GFX_KRool_FallOver11End
	dl $C2F00D,$C2F7ED,GFX_KRool_FallOver12,GFX_KRool_FallOver12End
	dl $C415FC,$C41A7C,GFX_QueenB_Fly1,GFX_QueenB_Fly1End
	dl $C41AB0,$C42010,GFX_QueenB_Fly2,GFX_QueenB_Fly2End
	dl $C42048,$C425E8,GFX_QueenB_Fly3,GFX_QueenB_Fly3End
	dl $C4261C,$C42BDC,GFX_QueenB_Fly4,GFX_QueenB_Fly4End
	dl $C42C0A,$C4310A,GFX_QueenB_Fly5,GFX_QueenB_Fly5End
	dl $C4313E,$C436FE,GFX_QueenB_Fly6,GFX_QueenB_Fly6End
	dl $C43736,$C43CD6,GFX_QueenB_Fly7,GFX_QueenB_Fly7End
	dl $C43D0C,$C4428C,GFX_QueenB_Fly8,GFX_QueenB_Fly8End
	dl $C442BC,$C4471C,GFX_QueenB_Fly9,GFX_QueenB_Fly9End
	dl $C4473E,$C44A5E,GFX_AnimalBuddyBox_Rambi,GFX_AnimalBuddyBox_RambiEnd
	dl $C44A86,$C44E66,GFX_AnimalBuddyBox_Open1,GFX_AnimalBuddyBox_Open1End
	dl $C44E86,$C451E6,GFX_AnimalBuddyBox_Open2,GFX_AnimalBuddyBox_Open2End
	dl $C45208,$C45528,GFX_AnimalBuddyBox_Expresso,GFX_AnimalBuddyBox_ExpressoEnd
	dl $C4554A,$C4586A,GFX_AnimalBuddyBox_Winky,GFX_AnimalBuddyBox_WinkyEnd
	dl $C4588C,$C45BAC,GFX_AnimalBuddyBox_Squawks,GFX_AnimalBuddyBox_SquawksEnd
	dl $C45BC6,$C45E06,GFX_Zinger_Dead1,GFX_Zinger_Dead1End
	dl $C45E1C,$C4607C,GFX_Zinger_Dead2,GFX_Zinger_Dead2End
	dl $C4609A,$C4637A,GFX_Zinger_Dead3,GFX_Zinger_Dead3End
	dl $C46392,$C46612,GFX_Zinger_Dead4,GFX_Zinger_Dead4End
	dl $C4662A,$C468AA,GFX_Zinger_Dead5,GFX_Zinger_Dead5End
	dl $C4ACC2,$C4AF42,GFX_DonkeyKong_GroundSlap1,GFX_DonkeyKong_GroundSlap1End
	dl $C4AF62,$C4B202,GFX_DonkeyKong_GroundSlap2,GFX_DonkeyKong_GroundSlap2End
	dl $C4B220,$C4B4A0,GFX_DonkeyKong_GroundSlap3,GFX_DonkeyKong_GroundSlap3End
	dl $C4B4C2,$C4B722,GFX_DonkeyKong_GroundSlap4,GFX_DonkeyKong_GroundSlap4End
	dl $C4B73E,$C4B99E,GFX_DonkeyKong_GroundSlap5,GFX_DonkeyKong_GroundSlap5End
	dl $C4B9BA,$C4BC1A,GFX_DonkeyKong_GroundSlap6,GFX_DonkeyKong_GroundSlap6End
	dl $C4BC38,$C4BEB8,GFX_DonkeyKong_GroundSlap7,GFX_DonkeyKong_GroundSlap7End
	dl $C4BEDA,$C4C19A,GFX_DonkeyKong_GroundSlap8,GFX_DonkeyKong_GroundSlap8End
	dl $C4C1B8,$C4C438,GFX_DonkeyKong_GroundSlap9,GFX_DonkeyKong_GroundSlap9End
	dl $C4C44E,$C4C64E,GFX_DonkeyKong_GroundSlap10,GFX_DonkeyKong_GroundSlap10End
	dl $C4C66C,$C4C88C,GFX_DonkeyKong_GroundSlap11,GFX_DonkeyKong_GroundSlap11End
	dl $C4C8A8,$C4CB08,GFX_DonkeyKong_GroundSlap12,GFX_DonkeyKong_GroundSlap12End
	dl $C4CB26,$C4CE06,GFX_DonkeyKong_GroundSlap13,GFX_DonkeyKong_GroundSlap13End
	dl $C4CE28,$C4D0E8,GFX_DonkeyKong_GroundSlap14,GFX_DonkeyKong_GroundSlap14End
	dl $C4D10C,$C4D3EC,GFX_DonkeyKong_GroundSlap15,GFX_DonkeyKong_GroundSlap15End
	dl $C4D412,$C4D6B2,GFX_DonkeyKong_GroundSlap16,GFX_DonkeyKong_GroundSlap16End
	dl $C4D6C8,$C4D988,GFX_DonkeyKong_GroundSlap17,GFX_DonkeyKong_GroundSlap17End
	dl $C4D9A8,$C4DC48,GFX_DonkeyKong_GroundSlap18,GFX_DonkeyKong_GroundSlap18End
	dl $C4DC68,$C4DF08,GFX_DonkeyKong_GroundSlap19,GFX_DonkeyKong_GroundSlap19End
	dl $C4DF22,$C4E1C2,GFX_DonkeyKong_GroundSlap20,GFX_DonkeyKong_GroundSlap20End
	dl $C4E1DE,$C4E49E,GFX_DonkeyKong_GroundSlap21,GFX_DonkeyKong_GroundSlap21End
	dl $C4E4BE,$C4E7BE,GFX_DonkeyKong_GroundSlap22,GFX_DonkeyKong_GroundSlap22End
	dl $C4E7E2,$C4EA62,GFX_DonkeyKong_GroundSlap23,GFX_DonkeyKong_GroundSlap23End
	dl $C4EA8A,$C4ED4A,GFX_DonkeyKong_GroundSlap24,GFX_DonkeyKong_GroundSlap24End
	dl $C4ED64,$C4F004,GFX_DonkeyKong_GroundSlap25,GFX_DonkeyKong_GroundSlap25End
	dl $C4F020,$C4F2E0,GFX_DonkeyKong_GroundSlap26,GFX_DonkeyKong_GroundSlap26End
	dl $C4F302,$C4F5C2,GFX_DonkeyKong_GroundSlap27,GFX_DonkeyKong_GroundSlap27End
	dl $C4F5E0,$C4F8C0,GFX_DonkeyKong_GroundSlap28,GFX_DonkeyKong_GroundSlap28End
	dl $C4F8D6,$C4FB36,GFX_DonkeyKong_GroundSlap29,GFX_DonkeyKong_GroundSlap29End
	dl $C4FB52,$C4FDB2,GFX_DonkeyKong_GroundSlap30,GFX_DonkeyKong_GroundSlap30End
	dl $C56FDA,$C573BA,GFX_DonkeyKong_Dancing1,GFX_DonkeyKong_Dancing1End
	dl $C573E0,$C577A0,GFX_DonkeyKong_Dancing2,GFX_DonkeyKong_Dancing2End
	dl $C577C6,$C57B26,GFX_DonkeyKong_Dancing3,GFX_DonkeyKong_Dancing3End
	dl $C57B4C,$C57EAC,GFX_DonkeyKong_Dancing4,GFX_DonkeyKong_Dancing4End
	dl $C57ECE,$C5824E,GFX_DonkeyKong_Dancing5,GFX_DonkeyKong_Dancing5End
	dl $C58274,$C585D4,GFX_DonkeyKong_Dancing6,GFX_DonkeyKong_Dancing6End
	dl $C585FC,$C5897C,GFX_DonkeyKong_Dancing7,GFX_DonkeyKong_Dancing7End
	dl $C589A6,$C58D46,GFX_DonkeyKong_Dancing8,GFX_DonkeyKong_Dancing8End
	dl $C58D74,$C59154,GFX_DonkeyKong_Dancing9,GFX_DonkeyKong_Dancing9End
	dl $C59180,$C59540,GFX_DonkeyKong_Dancing10,GFX_DonkeyKong_Dancing10End
	dl $C59560,$C598C0,GFX_DonkeyKong_Dancing11,GFX_DonkeyKong_Dancing11End
	dl $C598E0,$C59BE0,GFX_DonkeyKong_Dancing12,GFX_DonkeyKong_Dancing12End
	dl $C59BFE,$C59EDE,GFX_DonkeyKong_Dancing13,GFX_DonkeyKong_Dancing13End
	dl $C59EF8,$C5A198,GFX_DonkeyKong_Dancing14,GFX_DonkeyKong_Dancing14End
	dl $C5A1B2,$C5A452,GFX_DonkeyKong_Dancing15,GFX_DonkeyKong_Dancing15End
	dl $C5A470,$C5A6F0,GFX_DonkeyKong_Dancing16,GFX_DonkeyKong_Dancing16End
	dl $C5A716,$C5AA16,GFX_DonkeyKong_Dancing17,GFX_DonkeyKong_Dancing17End
	dl $C5AA3C,$C5AD3C,GFX_DonkeyKong_Dancing18,GFX_DonkeyKong_Dancing18End
	dl $C5AD62,$C5B062,GFX_DonkeyKong_Dancing19,GFX_DonkeyKong_Dancing19End
	dl $C5B086,$C5B366,GFX_DonkeyKong_Dancing20,GFX_DonkeyKong_Dancing20End
	dl $C5B388,$C5B648,GFX_DonkeyKong_Dancing21,GFX_DonkeyKong_Dancing21End
	dl $C5B668,$C5B908,GFX_DonkeyKong_Dancing22,GFX_DonkeyKong_Dancing22End
	dl $C5B926,$C5BBA6,GFX_DonkeyKong_Dancing23,GFX_DonkeyKong_Dancing23End
	dl $C5BBC4,$C5BE44,GFX_DonkeyKong_Dancing24,GFX_DonkeyKong_Dancing24End
	dl $C5BE6A,$C5C16A,GFX_DonkeyKong_Dancing25,GFX_DonkeyKong_Dancing25End
	dl $C5C18E,$C5C4CE,GFX_DonkeyKong_Dancing26,GFX_DonkeyKong_Dancing26End
	dl $C5C4E8,$C5C848,GFX_DonkeyKong_Hurt13,GFX_DonkeyKong_Hurt13End
	dl $C5C86C,$C5CB4C,GFX_DonkeyKong_Hurt12,GFX_DonkeyKong_Hurt12End
	dl $C5CB68,$C5CE28,GFX_DonkeyKong_Hurt11,GFX_DonkeyKong_Hurt11End
	dl $C5CE44,$C5D044,GFX_DonkeyKong_Hurt10,GFX_DonkeyKong_Hurt10End
	dl $C5D066,$C5D2C6,GFX_DonkeyKong_Hurt9,GFX_DonkeyKong_Hurt9End
	dl $C5D2EE,$C5D60E,GFX_DonkeyKong_Hurt8,GFX_DonkeyKong_Hurt8End
	dl $C5D634,$C5D934,GFX_DonkeyKong_Hurt7,GFX_DonkeyKong_Hurt7End
	dl $C5D954,$C5DC54,GFX_DonkeyKong_Hurt6,GFX_DonkeyKong_Hurt6End
	dl $C5DC70,$C5DF30,GFX_DonkeyKong_Hurt5,GFX_DonkeyKong_Hurt5End
	dl $C5DF48,$C5E228,GFX_DonkeyKong_Hurt4,GFX_DonkeyKong_Hurt4End
	dl $C5E240,$C5E520,GFX_DonkeyKong_Hurt3,GFX_DonkeyKong_Hurt3End
	dl $C5E540,$C5E840,GFX_DonkeyKong_Hurt2,GFX_DonkeyKong_Hurt2End
	dl $C5E866,$C5EBC6,GFX_DonkeyKong_Hurt1,GFX_DonkeyKong_Hurt1End
	dl $C5F6F6,$C5F8D6,GFX_FunkysSurfboard_Idle1,GFX_FunkysSurfboard_Idle1End
	dl $C5F8EA,$C5FACA,GFX_FunkysSurfboard_Idle2,GFX_FunkysSurfboard_Idle2End
	dl $C5FADE,$C5FCBE,GFX_FunkysSurfboard_Idle3,GFX_FunkysSurfboard_Idle3End
	dl $C5FCD2,$C5FEB2,GFX_FunkysSurfboard_Idle4,GFX_FunkysSurfboard_Idle4End
	dl $C6099B,$C60D7B,GFX_Sign_BananaHoard,GFX_Sign_BananaHoardEnd
	dl $C60D97,$C61057,GFX_Cannonball_Pose,GFX_Cannonball_PoseEnd
	dl $C6DA8D,$C6DC8D,GFX_Diddy_Walk1,GFX_Diddy_Walk1End
	dl $C6DCA3,$C6DEA3,GFX_Diddy_Walk2,GFX_Diddy_Walk2End
	dl $C6DEBF,$C6E0BF,GFX_Diddy_Walk3,GFX_Diddy_Walk3End
	dl $C6E0D5,$C6E2D5,GFX_Diddy_Walk4,GFX_Diddy_Walk4End
	dl $C6E2ED,$C6E50D,GFX_Diddy_Walk5,GFX_Diddy_Walk5End
	dl $C6E527,$C6E767,GFX_Diddy_Walk6,GFX_Diddy_Walk6End
	dl $C6E77D,$C6E9DD,GFX_Diddy_Walk7,GFX_Diddy_Walk7End
	dl $C6E9F7,$C6EC37,GFX_Diddy_Walk8,GFX_Diddy_Walk8End
	dl $C6EC53,$C6EEB3,GFX_Diddy_Walk9,GFX_Diddy_Walk9End
	dl $C6EECF,$C6F12F,GFX_Diddy_Walk10,GFX_Diddy_Walk10End
	dl $C6F145,$C6F3A5,GFX_Diddy_Walk11,GFX_Diddy_Walk11End
	dl $C6F3BF,$C6F5FF,GFX_Diddy_Walk12,GFX_Diddy_Walk12End
	dl $C6F61D,$C6F83D,GFX_Diddy_Walk13,GFX_Diddy_Walk13End
	dl $C6F85B,$C6FA7B,GFX_Diddy_Walk14,GFX_Diddy_Walk14End
	dl $C6FA99,$C6FCB9,GFX_Diddy_Walk15,GFX_Diddy_Walk15End
	dl $C6FCD7,$C6FEF7,GFX_Diddy_Walk16,GFX_Diddy_Walk16End
	dl $C94C87,$C95027,GFX_Klump_Walk1,GFX_Klump_Walk1End
	dl $C95047,$C95407,GFX_Klump_Walk2,GFX_Klump_Walk2End
	dl $C9542B,$C9582B,GFX_Klump_Walk3,GFX_Klump_Walk3End
	dl $C9584D,$C95C2D,GFX_Klump_Walk4,GFX_Klump_Walk4End
	dl $C95C49,$C95FC9,GFX_Klump_Walk5,GFX_Klump_Walk5End
	dl $C95FE9,$C96349,GFX_Klump_Walk6,GFX_Klump_Walk6End
	dl $C9636F,$C966CF,GFX_Klump_Walk7,GFX_Klump_Walk7End
	dl $C966F7,$C96A77,GFX_Klump_Walk8,GFX_Klump_Walk8End
	dl $C99E1F,$C9A6BF,GFX_DumbDrum_Idle,GFX_DumbDrum_IdleEnd
	dl $C9A705,$C9B0E5,GFX_DumbDrum_Dead,GFX_DumbDrum_DeadEnd
	dl $C9B127,$C9BAC7,GFX_DumbDrum_Dump,GFX_DumbDrum_DumpEnd
	dl $C9BAE9,$C9BDA9,GFX_DonkeyKong_ThrowPose1,GFX_DonkeyKong_ThrowPose1End
	dl $C9BDCD,$C9C0AD,GFX_DonkeyKong_ThrowPose2,GFX_DonkeyKong_ThrowPose2End
	dl $C9C0CD,$C9C3CD,GFX_DonkeyKong_ThrowPose3,GFX_DonkeyKong_ThrowPose3End
	dl $C9C3EF,$C9C6AF,GFX_DonkeyKong_ThrowPose4,GFX_DonkeyKong_ThrowPose4End
	dl $C9C6D5,$C9C9D5,GFX_DonkeyKong_ThrowPose5,GFX_DonkeyKong_ThrowPose5End
	dl $C9C9FB,$C9CD5B,GFX_DonkeyKong_ThrowPose6,GFX_DonkeyKong_ThrowPose6End
	dl $C9CD89,$C9D0A9,GFX_DonkeyKong_ThrowPose7,GFX_DonkeyKong_ThrowPose7End
	dl $C9D0CD,$C9D46D,GFX_DonkeyKong_ThrowPose8,GFX_DonkeyKong_ThrowPose8End
	dl $C9D491,$C9D7D1,GFX_DonkeyKong_ThrowPose9,GFX_DonkeyKong_ThrowPose9End
	dl $C9D7FB,$C9DB3B,GFX_DonkeyKong_ThrowPose10,GFX_DonkeyKong_ThrowPose10End
	dl $C9DB5B,$C9DEBB,GFX_DonkeyKong_ThrowPose11,GFX_DonkeyKong_ThrowPose11End
	dl $C9DEE7,$C9E1E7,GFX_DonkeyKong_ThrowPose12,GFX_DonkeyKong_ThrowPose12End
	dl $C9E20D,$C9E50D,GFX_DonkeyKong_ThrowPose13,GFX_DonkeyKong_ThrowPose13End
	dl $C9E53B,$C9E85B,GFX_DonkeyKong_ThrowPose14,GFX_DonkeyKong_ThrowPose14End
	dl $C9E883,$C9EC03,GFX_DonkeyKong_ThrowPose15,GFX_DonkeyKong_ThrowPose15End
	dl $C9EC25,$C9EFA5,GFX_DonkeyKong_ThrowPose16,GFX_DonkeyKong_ThrowPose16End
	dl $C9EFC9,$C9F309,GFX_DonkeyKong_ThrowPose17,GFX_DonkeyKong_ThrowPose17End
	dl $C9F327,$C9F607,GFX_DonkeyKong_ThrowPose18,GFX_DonkeyKong_ThrowPose18End
	dl $C9F625,$C9F905,GFX_DonkeyKong_ThrowPose19,GFX_DonkeyKong_ThrowPose19End
	dl $CAB572,$CABE72,GFX_KRool_Run1,GFX_KRool_Run1End
	dl $CABEB6,$CAC7B6,GFX_KRool_Run2,GFX_KRool_Run2End
	dl $CAC7FC,$CAD11C,GFX_KRool_Run3,GFX_KRool_Run3End
	dl $CAD15C,$CADADC,GFX_KRool_Run4,GFX_KRool_Run4End
	dl $CADB28,$CAE508,GFX_KRool_Run5,GFX_KRool_Run5End
	dl $CAE548,$CAEEC8,GFX_KRool_Run6,GFX_KRool_Run6End
	dl $CAEF06,$CAF806,GFX_KRool_Run7,GFX_KRool_Run7End
	dl $CC065C,$CC091C,GFX_DonkeyKong_Unknown1_Pose,GFX_DonkeyKong_Unknown1_PoseEnd
	dl $CC0940,$CC0C20,GFX_DonkeyKong_Swimming1,GFX_DonkeyKong_Swimming1End
	dl $CC0C40,$CC0EE0,GFX_DonkeyKong_Swimming2,GFX_DonkeyKong_Swimming2End
	dl $CC0F04,$CC1184,GFX_DonkeyKong_Swimming3,GFX_DonkeyKong_Swimming3End
	dl $CC11A0,$CC1400,GFX_DonkeyKong_Swimming4,GFX_DonkeyKong_Swimming4End
	dl $CC141A,$CC16BA,GFX_DonkeyKong_Swimming5,GFX_DonkeyKong_Swimming5End
	dl $CC16DA,$CC19DA,GFX_DonkeyKong_Swimming6,GFX_DonkeyKong_Swimming6End
	dl $CC19FA,$CC1C9A,GFX_DonkeyKong_Swimming7,GFX_DonkeyKong_Swimming7End
	dl $CC1CBA,$CC1F5A,GFX_DonkeyKong_Swimming8,GFX_DonkeyKong_Swimming8End
	dl $CC1F7C,$CC223C,GFX_DonkeyKong_Swimming9,GFX_DonkeyKong_Swimming9End
	dl $CC2258,$CC2518,GFX_DonkeyKong_Swimming10,GFX_DonkeyKong_Swimming10End
	dl $CC253A,$CC279A,GFX_DonkeyKong_Swimming11,GFX_DonkeyKong_Swimming11End
	dl $CC27BC,$CC2A7C,GFX_DonkeyKong_Swimming12,GFX_DonkeyKong_Swimming12End
	dl $CC2A98,$CC2DB8,GFX_DonkeyKong_Swimming13,GFX_DonkeyKong_Swimming13End
	dl $CC2DDA,$CC30FA,GFX_DonkeyKong_Swimming14,GFX_DonkeyKong_Swimming14End
	dl $CC311E,$CC33FE,GFX_DonkeyKong_Swimming15,GFX_DonkeyKong_Swimming15End
	dl $CCEA72,$CCECF2,GFX_Kritter_Walk1,GFX_Kritter_Walk1End
	dl $CCED10,$CCEF90,GFX_Kritter_Walk2,GFX_Kritter_Walk2End
	dl $CCEFAE,$CCF28E,GFX_Kritter_Walk3,GFX_Kritter_Walk3End
	dl $CCF2AC,$CCF58C,GFX_Kritter_Walk4,GFX_Kritter_Walk4End
	dl $CCF5A4,$CCF824,GFX_Kritter_Walk5,GFX_Kritter_Walk5End
	dl $CCF842,$CCFAC2,GFX_Kritter_Walk6,GFX_Kritter_Walk6End
	dl $CCFAE0,$CCFD60,GFX_Kritter_Walk7,GFX_Kritter_Walk7End
	dl $CCFD7C,$CCFFDC,GFX_Kritter_Walk8,GFX_Kritter_Walk8End
	dl $CD001A,$CD02BA,GFX_DonkeyKong_Walk1,GFX_DonkeyKong_Walk1End
	dl $CD02D4,$CD0574,GFX_DonkeyKong_Walk2,GFX_DonkeyKong_Walk2End
	dl $CD0590,$CD0850,GFX_DonkeyKong_Walk3,GFX_DonkeyKong_Walk3End
	dl $CD086C,$CD0B2C,GFX_DonkeyKong_Walk4,GFX_DonkeyKong_Walk4End
	dl $CD0B48,$CD0E08,GFX_DonkeyKong_Walk5,GFX_DonkeyKong_Walk5End
	dl $CD0E26,$CD1106,GFX_DonkeyKong_Walk6,GFX_DonkeyKong_Walk6End
	dl $CD1128,$CD13E8,GFX_DonkeyKong_Walk7,GFX_DonkeyKong_Walk7End
	dl $CD1404,$CD16C4,GFX_DonkeyKong_Walk8,GFX_DonkeyKong_Walk8End
	dl $CD16DE,$CD197E,GFX_DonkeyKong_Walk9,GFX_DonkeyKong_Walk9End
	dl $CD1998,$CD1C38,GFX_DonkeyKong_Walk10,GFX_DonkeyKong_Walk10End
	dl $CD1C56,$CD1ED6,GFX_DonkeyKong_Walk11,GFX_DonkeyKong_Walk11End
	dl $CD1EF6,$CD2196,GFX_DonkeyKong_Walk12,GFX_DonkeyKong_Walk12End
	dl $CD21B2,$CD2472,GFX_DonkeyKong_Walk13,GFX_DonkeyKong_Walk13End
	dl $CD248C,$CD272C,GFX_DonkeyKong_Walk14,GFX_DonkeyKong_Walk14End
	dl $CD2746,$CD29E6,GFX_DonkeyKong_Walk15,GFX_DonkeyKong_Walk15End
	dl $CD2A00,$CD2CA0,GFX_DonkeyKong_Walk16,GFX_DonkeyKong_Walk16End
	dl $CD2CBC,$CD2F7C,GFX_DonkeyKong_Walk17,GFX_DonkeyKong_Walk17End
	dl $CD2F9A,$CD327A,GFX_DonkeyKong_Walk18,GFX_DonkeyKong_Walk18End
	dl $CD3294,$CD3534,GFX_DonkeyKong_Walk19,GFX_DonkeyKong_Walk19End
	dl $CD3552,$CD37D2,GFX_DonkeyKong_Walk20,GFX_DonkeyKong_Walk20End
	dl $CD37EE,$CD392E,GFX_LightningBolt_Pose,GFX_LightningBolt_PoseEnd
	dl $CD394E,$CD3C4E,GFX_DonkeyKong_Unknown2Pose1,GFX_DonkeyKong_Unknown2Pose1End
	dl $CD3C6C,$CD3EEC,GFX_DonkeyKong_Unknown2Pose2,GFX_DonkeyKong_Unknown2Pose2End
	dl $CD3F04,$CD4124,GFX_DonkeyKong_Bounce1,GFX_DonkeyKong_Bounce1End
	dl $CD413A,$CD433A,GFX_DonkeyKong_Bounce2,GFX_DonkeyKong_Bounce2End
	dl $CD4350,$CD4550,GFX_DonkeyKong_Bounce3,GFX_DonkeyKong_Bounce3End
	dl $CD456C,$CD476C,GFX_DonkeyKong_Bounce4,GFX_DonkeyKong_Bounce4End
	dl $CD4786,$CD49C6,GFX_DonkeyKong_Bounce5,GFX_DonkeyKong_Bounce5End
	dl $CD49E4,$CD4C04,GFX_DonkeyKong_Bounce6,GFX_DonkeyKong_Bounce6End
	dl $CD4C18,$CD4E58,GFX_DonkeyKong_Bounce7,GFX_DonkeyKong_Bounce7End
	dl $CD4E6C,$CD50AC,GFX_DonkeyKong_Bounce8,GFX_DonkeyKong_Bounce8End
	dl $CD50C0,$CD5300,GFX_DonkeyKong_Bounce9,GFX_DonkeyKong_Bounce9End
	dl $CD5318,$CD5538,GFX_DonkeyKong_Bounce10,GFX_DonkeyKong_Bounce10End
	dl $CD5550,$CD5770,GFX_DonkeyKong_Bounce11,GFX_DonkeyKong_Bounce11End
	dl $CD5786,$CD5986,GFX_DonkeyKong_Bounce12,GFX_DonkeyKong_Bounce12End
	dl $CD599C,$CD5B9C,GFX_DonkeyKong_Bounce13,GFX_DonkeyKong_Bounce13End
	dl $CD5BB6,$CD5DF6,GFX_DonkeyKong_Bounce14,GFX_DonkeyKong_Bounce14End
	dl $CD5E0E,$CD602E,GFX_DonkeyKong_Bounce15,GFX_DonkeyKong_Bounce15End
	dl $CD6046,$CD6266,GFX_DonkeyKong_Bounce16,GFX_DonkeyKong_Bounce16End
	dl $CD6284,$CD64A4,GFX_Diddy_Run1,GFX_Diddy_Run1End
	dl $CD64BE,$CD66FE,GFX_Diddy_Run2,GFX_Diddy_Run2End
	dl $CD671C,$CD693C,GFX_Diddy_Run3,GFX_Diddy_Run3End
	dl $CD695C,$CD6B9C,GFX_Diddy_Run4,GFX_Diddy_Run4End
	dl $CD6BBA,$CD6DDA,GFX_Diddy_Run5,GFX_Diddy_Run5End
	dl $CD6DFA,$CD703A,GFX_Diddy_Run6,GFX_Diddy_Run6End
	dl $CD705A,$CD729A,GFX_Diddy_Run7,GFX_Diddy_Run7End
	dl $CD72BA,$CD74FA,GFX_Diddy_Run8,GFX_Diddy_Run8End
	dl $CD751A,$CD775A,GFX_Diddy_Run9,GFX_Diddy_Run9End
	dl $CD777A,$CD79BA,GFX_Diddy_Run10,GFX_Diddy_Run10End
	dl $CD79D8,$CD7BF8,GFX_Diddy_Run11,GFX_Diddy_Run11End
	dl $CD7C18,$CD7E58,GFX_Diddy_Run12,GFX_Diddy_Run12End
	dl $CD7E78,$CD80B8,GFX_Diddy_Run13,GFX_Diddy_Run13End
	dl $CD80CA,$CD822A,GFX_Krash_InMinecart1,GFX_Krash_InMinecart1End
	dl $CD8240,$CD8380,GFX_Krash_InMinecart2,GFX_Krash_InMinecart2End
	dl $CD8392,$CD84F2,GFX_Krash_InMinecart3,GFX_Krash_InMinecart3End
	dl $CD8504,$CD8664,GFX_Krash_InMinecart4,GFX_Krash_InMinecart4End
	dl $CD867A,$CD881A,GFX_Krash_InMinecart5,GFX_Krash_InMinecart5End
	dl $CD882E,$CD89AE,GFX_Krash_InMinecart6,GFX_Krash_InMinecart6End
	dl $CD89C4,$CD8B64,GFX_Krash_InMinecart7,GFX_Krash_InMinecart7End
	dl $CD8B7A,$CD8D1A,GFX_Krash_InMinecart8,GFX_Krash_InMinecart8End
	dl $CD8D2E,$CD8EAE,GFX_Krash_InMinecart9,GFX_Krash_InMinecart9End
	dl $CD8EC2,$CD9042,GFX_Krash_InMinecart10,GFX_Krash_InMinecart10End
	dl $CD9056,$CD91D6,GFX_Krash_InMinecart11,GFX_Krash_InMinecart11End
	dl $CD91EA,$CD936A,GFX_Krash_InMinecart12,GFX_Krash_InMinecart12End
	dl $CD9380,$CD9520,GFX_Krash_InMinecart13,GFX_Krash_InMinecart13End
	dl $CD9534,$CD96B4,GFX_Krash_InMinecart14,GFX_Krash_InMinecart14End
	dl $CD96C4,$CD9804,GFX_Krash_InMinecart15,GFX_Krash_InMinecart15End
	dl $CD9816,$CD9976,GFX_Krash_InMinecart16,GFX_Krash_InMinecart16End
	dl $CD998A,$CD9B0A,GFX_Krash_InMinecart17,GFX_Krash_InMinecart17End
	dl $CD9B18,$CD9B78,GFX_ClownFish_Swim1,GFX_ClownFish_Swim1End
	dl $CD9B86,$CD9BE6,GFX_ClownFish_Swim2,GFX_ClownFish_Swim2End
	dl $CD9BF4,$CD9C54,GFX_ClownFish_Swim3,GFX_ClownFish_Swim3End
	dl $CD9C62,$CD9CC2,GFX_ClownFish_Swim4,GFX_ClownFish_Swim4End
	dl $CD9CD0,$CD9D30,GFX_ClownFish_Swim5,GFX_ClownFish_Swim5End
	dl $CD9D3E,$CD9D9E,GFX_ClownFish_Swim6,GFX_ClownFish_Swim6End
	dl $CD9DAC,$CD9E0C,GFX_ClownFish_Swim7,GFX_ClownFish_Swim7End
	dl $CD9E1A,$CD9E7A,GFX_ClownFish_Swim8,GFX_ClownFish_Swim8End
	dl $CD9EA4,$CDA2A4,GFX_JunglePlant_Idle,GFX_JunglePlant_IdleEnd
	dl $CDA2D4,$CDA6D4,GFX_JunglePlant_Broken,GFX_JunglePlant_BrokenEnd
	dl $CDA6F2,$CDAAF2,GFX_Mincer_Spin1,GFX_Mincer_Spin1End
	dl $CDAB16,$CDAF16,GFX_Mincer_Spin2,GFX_Mincer_Spin2End
	dl $CDAF40,$CDB340,GFX_Mincer_Spin3,GFX_Mincer_Spin3End
	dl $CDB364,$CDB704,GFX_Mincer_Spin4,GFX_Mincer_Spin4End
	dl $CDB726,$CDBB06,GFX_Mincer_Spin5,GFX_Mincer_Spin5End
	dl $CDBB2A,$CDBF2A,GFX_Mincer_Spin6,GFX_Mincer_Spin6End
	dl $CDBF48,$CDC348,GFX_Mincer_Spin7,GFX_Mincer_Spin7End
	dl $CDC372,$CDC772,GFX_Mincer_Spin8,GFX_Mincer_Spin8End
	dl $CDC77E,$CDC81E,GFX_FlyingRock_Pose1,GFX_FlyingRock_Pose1End
	dl $CDC828,$CDC8A8,GFX_FlyingRock_Pose2,GFX_FlyingRock_Pose2End
	dl $CDC8B4,$CDC954,GFX_FlyingRock_Pose3,GFX_FlyingRock_Pose3End
	dl $CDC960,$CDCA00,GFX_FlyingRock_Pose4,GFX_FlyingRock_Pose4End
	dl $CDCA0C,$CDCAAC,GFX_FlyingRock_Pose5,GFX_FlyingRock_Pose5End
	dl $CDCAB6,$CDCB36,GFX_FlyingRock_Pose6,GFX_FlyingRock_Pose6End
	dl $CDCB42,$CDCBE2,GFX_FlyingRock_Pose7,GFX_FlyingRock_Pose7End
	dl $CDCBEE,$CDCC8E,GFX_FlyingRock_Pose8,GFX_FlyingRock_Pose8End
	dl $CDCC98,$CDCD18,GFX_SmallFlyingRock_Pose1,GFX_SmallFlyingRock_Pose1End
	dl $CDCD22,$CDCDA2,GFX_SmallFlyingRock_Pose2,GFX_SmallFlyingRock_Pose2End
	dl $CDCDAC,$CDCE2C,GFX_SmallFlyingRock_Pose3,GFX_SmallFlyingRock_Pose3End
	dl $CDCE36,$CDCEB6,GFX_SmallFlyingRock_Pose4,GFX_SmallFlyingRock_Pose4End
	dl $CDCEC0,$CDCF40,GFX_SmallFlyingRock_Pose5,GFX_SmallFlyingRock_Pose5End
	dl $CDCF4A,$CDCFCA,GFX_SmallFlyingRock_Pose6,GFX_SmallFlyingRock_Pose6End
	dl $CDCFD4,$CDD054,GFX_SmallFlyingRock_Pose7,GFX_SmallFlyingRock_Pose7End
	dl $CDD05E,$CDD0DE,GFX_SmallFlyingRock_Pose8,GFX_SmallFlyingRock_Pose8End
	dl $CDD0FA,$CDD3BA,GFX_CrankyKong_WindPhonograph1,GFX_CrankyKong_WindPhonograph1End
	dl $CDD3D6,$CDD696,GFX_CrankyKong_WindPhonograph2,GFX_CrankyKong_WindPhonograph2End
	dl $CDD6B2,$CDD972,GFX_CrankyKong_WindPhonograph3,GFX_CrankyKong_WindPhonograph3End
	dl $CDD98E,$CDDC4E,GFX_CrankyKong_WindPhonograph4,GFX_CrankyKong_WindPhonograph4End
	dl $CDDC6A,$CDDF2A,GFX_CrankyKong_WindPhonograph5,GFX_CrankyKong_WindPhonograph5End
	dl $CDDF46,$CDE206,GFX_CrankyKong_WindPhonograph6,GFX_CrankyKong_WindPhonograph6End
	dl $CDE222,$CDE4E2,GFX_CrankyKong_WindPhonograph7,GFX_CrankyKong_WindPhonograph7End
	dl $CDE4FE,$CDE7BE,GFX_CrankyKong_WindPhonograph8,GFX_CrankyKong_WindPhonograph8End
	dl $CDE7DA,$CDEA9A,GFX_CrankyKong_WindPhonograph9,GFX_CrankyKong_WindPhonograph9End
	dl $CDEAB6,$CDED76,GFX_CrankyKong_WindPhonograph10,GFX_CrankyKong_WindPhonograph10End
	dl $CDED92,$CDF052,GFX_CrankyKong_WindPhonograph11,GFX_CrankyKong_WindPhonograph11End
	dl $CDF06E,$CDF32E,GFX_CrankyKong_WindPhonograph12,GFX_CrankyKong_WindPhonograph12End
	dl $CDF743,$CDF9A3,GFX_GroundCover_JungleLevel,GFX_GroundCover_JungleLevelEnd
	dl $CDF9B7,$CDFB97,GFX_BreakableWall_RightJungleWall,GFX_BreakableWall_RightJungleWallEnd
	dl $CDFBAB,$CDFD8B,GFX_BreakableWall_LeftJungleWall,GFX_BreakableWall_LeftJungleWallEnd
	dl $CE0018,$CE0298,GFX_WhiteTire_Bounce1,GFX_WhiteTire_Bounce1End
	dl $CE02B0,$CE0530,GFX_WhiteTire_Bounce2,GFX_WhiteTire_Bounce2End
	dl $CE054E,$CE082E,GFX_WhiteTire_Bounce3,GFX_WhiteTire_Bounce3End
	dl $CE084C,$CE0B8C,GFX_WhiteTire_Bounce4,GFX_WhiteTire_Bounce4End
	dl $CE0BA8,$CE0F28,GFX_WhiteTire_Bounce5,GFX_WhiteTire_Bounce5End
	dl $CE0F42,$CE1362,GFX_WhiteTire_Bounce6,GFX_WhiteTire_Bounce6End
	dl $CE137E,$CE163E,GFX_WhiteTire_Idle,GFX_WhiteTire_IdleEnd
	dl $CE1798,$CE1B78,GFX_Klump_Turn,GFX_Klump_TurnEnd
	dl $CE1B9E,$CE1F5E,GFX_Klump_Recoil,GFX_Klump_RecoilEnd
	dl $CE1F82,$CE2382,GFX_Klump_Dead1,GFX_Klump_Dead1End
	dl $CE23A6,$CE27A6,GFX_Klump_Dead2,GFX_Klump_Dead2End
	dl $CE27D0,$CE2BD0,GFX_Klump_Dead3,GFX_Klump_Dead3End
	dl $CE2BF8,$CE2FD8,GFX_Klump_Dead4,GFX_Klump_Dead4End
	dl $CE2FFC,$CE339C,GFX_Klump_Dead5,GFX_Klump_Dead5End
	dl $CE33C2,$CE3782,GFX_Klump_Dead6,GFX_Klump_Dead6End
	dl $CE37AE,$CE3B0E,GFX_Klump_Dead7,GFX_Klump_Dead7End
	dl $CE3B2A,$CE3D2A,GFX_Diddy_Roll1,GFX_Diddy_Roll1End
	dl $CE3D46,$CE3FA6,GFX_Diddy_Roll2,GFX_Diddy_Roll2End
	dl $CE3FC0,$CE4200,GFX_Diddy_Roll3,GFX_Diddy_Roll3End
	dl $CE421E,$CE443E,GFX_Diddy_Roll4,GFX_Diddy_Roll4End
	dl $CE445C,$CE467C,GFX_Diddy_Roll5,GFX_Diddy_Roll5End
	dl $CE4698,$CE4898,GFX_Diddy_Roll6,GFX_Diddy_Roll6End
	dl $CE48BA,$CE4ABA,GFX_Diddy_Roll7,GFX_Diddy_Roll7End
	dl $CE4AD6,$CE4D36,GFX_Diddy_Roll8,GFX_Diddy_Roll8End
	dl $CE4D58,$CE4FB8,GFX_Diddy_Roll9,GFX_Diddy_Roll9End
	dl $CE4FDA,$CE523A,GFX_Diddy_Roll10,GFX_Diddy_Roll10End
	dl $CE5256,$CE5456,GFX_Diddy_Roll11,GFX_Diddy_Roll11End
	dl $CE5476,$CE56B6,GFX_Diddy_Roll12,GFX_Diddy_Roll12End
	dl $CE56D4,$CE58F4,GFX_Diddy_Roll13,GFX_Diddy_Roll13End
	dl $CE5914,$CE5B54,GFX_Diddy_Roll14,GFX_Diddy_Roll14End
	dl $CE5B72,$CE5DF2,GFX_Diddy_Roll15,GFX_Diddy_Roll15End
	dl $CE5E16,$CE6096,GFX_Diddy_Roll16,GFX_Diddy_Roll16End
	dl $CE60B6,$CE62F6,GFX_Diddy_Roll17,GFX_Diddy_Roll17End
	dl $CE6318,$CE6578,GFX_Diddy_Roll18,GFX_Diddy_Roll18End
	dl $CE659A,$CE67FA,GFX_Diddy_Roll19,GFX_Diddy_Roll19End
	dl $CE6818,$CE6A38,GFX_Diddy_Roll20,GFX_Diddy_Roll20End
	dl $CE6A54,$CE6C54,GFX_Diddy_TooCloseToEdge1,GFX_Diddy_TooCloseToEdge1End
	dl $CE6C72,$CE6E92,GFX_Diddy_TooCloseToEdge2,GFX_Diddy_TooCloseToEdge2End
	dl $CE6EB2,$CE70F2,GFX_Diddy_TooCloseToEdge3,GFX_Diddy_TooCloseToEdge3End
	dl $CE7114,$CE7374,GFX_Diddy_TooCloseToEdge4,GFX_Diddy_TooCloseToEdge4End
	dl $CE7396,$CE75F6,GFX_Diddy_TooCloseToEdge5,GFX_Diddy_TooCloseToEdge5End
	dl $CE7616,$CE7856,GFX_Diddy_TooCloseToEdge6,GFX_Diddy_TooCloseToEdge6End
	dl $CE7876,$CE7A56,GFX_Diddy_TooCloseToEdge7,GFX_Diddy_TooCloseToEdge7End
	dl $CE7A78,$CE7C78,GFX_Diddy_TooCloseToEdge8,GFX_Diddy_TooCloseToEdge8End
	dl $CE7C96,$CE7EB6,GFX_Diddy_TooCloseToEdge9,GFX_Diddy_TooCloseToEdge9End
	dl $CE7EDA,$CE80FA,GFX_Diddy_TooCloseToEdge10,GFX_Diddy_TooCloseToEdge10End
	dl $CE8116,$CE8316,GFX_Diddy_TooCloseToEdge11,GFX_Diddy_TooCloseToEdge11End
	dl $CE8330,$CE8570,GFX_Diddy_TooCloseToEdge12,GFX_Diddy_TooCloseToEdge12End
	dl $CE8592,$CE87F2,GFX_Diddy_TooCloseToEdge13,GFX_Diddy_TooCloseToEdge13End
	dl $CE8814,$CE8A74,GFX_Diddy_TooCloseToEdge14,GFX_Diddy_TooCloseToEdge14End
	dl $CE8A94,$CE8CD4,GFX_Diddy_TooCloseToEdge15,GFX_Diddy_TooCloseToEdge15End
	dl $CE8CF2,$CE8F12,GFX_Diddy_TooCloseToEdge16,GFX_Diddy_TooCloseToEdge16End
	dl $CE8F32,$CE9172,GFX_Diddy_TooCloseToEdge17,GFX_Diddy_TooCloseToEdge17End
	dl $CE9194,$CE93F4,GFX_Diddy_TooCloseToEdge18,GFX_Diddy_TooCloseToEdge18End
	dl $CE940C,$CE95CC,GFX_Diddy_Failure1,GFX_Diddy_Failure1End
	dl $CE95E4,$CE97A4,GFX_Diddy_Failure2,GFX_Diddy_Failure2End
	dl $CE97BC,$CE997C,GFX_Diddy_Failure3,GFX_Diddy_Failure3End
	dl $CE9994,$CE9B54,GFX_Diddy_Failure4,GFX_Diddy_Failure4End
	dl $CE9B6C,$CE9D2C,GFX_Diddy_Failure5,GFX_Diddy_Failure5End
	dl $CE9D42,$CE9F42,GFX_Diddy_Failure6,GFX_Diddy_Failure6End
	dl $CE9F5C,$CEA13C,GFX_Diddy_Failure7,GFX_Diddy_Failure7End
	dl $CEA154,$CEA314,GFX_Diddy_Failure8,GFX_Diddy_Failure8End
	dl $CEA32C,$CEA4EC,GFX_Diddy_Failure9,GFX_Diddy_Failure9End
	dl $CEA500,$CEA6E0,GFX_Diddy_Failure10,GFX_Diddy_Failure10End
	dl $CEA6F8,$CEA918,GFX_Diddy_Failure11,GFX_Diddy_Failure11End
	dl $CEA934,$CEAB94,GFX_Diddy_Failure12,GFX_Diddy_Failure12End
	dl $CEABB4,$CEAE54,GFX_Diddy_Failure13,GFX_Diddy_Failure13End
	dl $CEAE72,$CEB0F2,GFX_Diddy_Failure14,GFX_Diddy_Failure14End
	dl $CEB112,$CEB3B2,GFX_Diddy_Failure15,GFX_Diddy_Failure15End
	dl $CEB3D4,$CEB694,GFX_Diddy_Failure16,GFX_Diddy_Failure16End
	dl $CEB6AE,$CEB94E,GFX_Diddy_Failure17,GFX_Diddy_Failure17End
	dl $CEB968,$CEBBA8,GFX_Diddy_Failure18,GFX_Diddy_Failure18End
	dl $CEBBBE,$CEBDBE,GFX_Diddy_Failure19,GFX_Diddy_Failure19End
	dl $CEBDD0,$CEBF90,GFX_Diddy_Failure20,GFX_Diddy_Failure20End
	dl $CEBFA8,$CEC168,GFX_Diddy_Failure21,GFX_Diddy_Failure21End
	dl $CEC180,$CEC340,GFX_Diddy_Failure22,GFX_Diddy_Failure22End
	dl $CEC358,$CEC518,GFX_Diddy_Failure23,GFX_Diddy_Failure23End
	dl $CEC52E,$CEC72E,GFX_Diddy_Failure24,GFX_Diddy_Failure24End
	dl $CEC73E,$CEC87E,GFX_MiniNecky_SpitNut1,GFX_MiniNecky_SpitNut1End
	dl $CEC892,$CECA12,GFX_MiniNecky_SpitNut2,GFX_MiniNecky_SpitNut2End
	dl $CECA26,$CECBA6,GFX_MiniNecky_SpitNut3,GFX_MiniNecky_SpitNut3End
	dl $CECBBA,$CECD3A,GFX_MiniNecky_SpitNut4,GFX_MiniNecky_SpitNut4End
	dl $CECD4A,$CECE8A,GFX_MiniNecky_SpitNut5,GFX_MiniNecky_SpitNut5End
	dl $CECE9A,$CECFDA,GFX_MiniNecky_SpitNut6,GFX_MiniNecky_SpitNut6End
	dl $CECFE8,$CED108,GFX_MiniNecky_SpitNut7,GFX_MiniNecky_SpitNut7End
	dl $CED118,$CED258,GFX_MiniNecky_SpitNut8,GFX_MiniNecky_SpitNut8End
	dl $CED26C,$CED44C,GFX_MiniNecky_Dead,GFX_MiniNecky_DeadEnd
	dl $CED45E,$CED5BE,GFX_MiniNecky_Fly1,GFX_MiniNecky_Fly1End
	dl $CED5D0,$CED730,GFX_MiniNecky_Fly2,GFX_MiniNecky_Fly2End
	dl $CED742,$CED8A2,GFX_MiniNecky_Fly3,GFX_MiniNecky_Fly3End
	dl $CED8B0,$CED9D0,GFX_MiniNecky_Fly4,GFX_MiniNecky_Fly4End
	dl $CED9E2,$CEDAE2,GFX_MiniNecky_Fly5,GFX_MiniNecky_Fly5End
	dl $CEDAF6,$CEDC16,GFX_MiniNecky_Fly6,GFX_MiniNecky_Fly6End
	dl $CEDC28,$CEDD28,GFX_MiniNecky_Fly7,GFX_MiniNecky_Fly7End
	dl $CEDD38,$CEDE18,GFX_MiniNecky_Fly8,GFX_MiniNecky_Fly8End
	dl $CEDE28,$CEDF68,GFX_MiniNecky_Fly9,GFX_MiniNecky_Fly9End
	dl $CEDF78,$CEE0B8,GFX_MiniNecky_Fly10,GFX_MiniNecky_Fly10End
	dl $CEE0CC,$CEE24C,GFX_MiniNecky_Fly11,GFX_MiniNecky_Fly11End
	dl $CEE25E,$CEE3BE,GFX_MiniNecky_Fly12,GFX_MiniNecky_Fly12End
	dl $CEE3DE,$CEE6DE,GFX_MankyKong_Dead1,GFX_MankyKong_Dead1End
	dl $CEE70A,$CEEA6A,GFX_MankyKong_Dead2,GFX_MankyKong_Dead2End
	dl $CEEA96,$CEEDF6,GFX_MankyKong_Dead3,GFX_MankyKong_Dead3End
	dl $CEEE1E,$CEF19E,GFX_MankyKong_Dead4,GFX_MankyKong_Dead4End
	dl $CEF1C8,$CEF508,GFX_MankyKong_Dead5,GFX_MankyKong_Dead5End
	dl $CEF52E,$CEF88E,GFX_MankyKong_Dead6,GFX_MankyKong_Dead6End
	dl $CEF898,$CEF918,GFX_MovingSingleBanana_Spin1,GFX_MovingSingleBanana_Spin1End
	dl $CEF922,$CEF9A2,GFX_MovingSingleBanana_Spin2,GFX_MovingSingleBanana_Spin2End
	dl $CEF9AC,$CEFA2C,GFX_MovingSingleBanana_Spin3,GFX_MovingSingleBanana_Spin3End
	dl $CEFA36,$CEFAB6,GFX_MovingSingleBanana_Spin4,GFX_MovingSingleBanana_Spin4End
	dl $CEFAC0,$CEFB40,GFX_MovingSingleBanana_Spin5,GFX_MovingSingleBanana_Spin5End
	dl $CEFB4A,$CEFBCA,GFX_MovingSingleBanana_Spin6,GFX_MovingSingleBanana_Spin6End
	dl $CEFBD4,$CEFC54,GFX_MovingSingleBanana_Spin7,GFX_MovingSingleBanana_Spin7End
	dl $CEFC5E,$CEFCDE,GFX_MovingSingleBanana_Spin8,GFX_MovingSingleBanana_Spin8End
	dl $CEFCEC,$CEFD4C,GFX_Butterfly_Fly1,GFX_Butterfly_Fly1End
	dl $CEFD5A,$CEFDBA,GFX_Butterfly_Fly2,GFX_Butterfly_Fly2End
	dl $CEFDC8,$CEFE28,GFX_Butterfly_Fly3,GFX_Butterfly_Fly3End
	dl $CEFE36,$CEFE96,GFX_Butterfly_Fly4,GFX_Butterfly_Fly4End
	dl $CEFEA4,$CEFF04,GFX_Butterfly_Fly5,GFX_Butterfly_Fly5End
	dl $CEFF10,$CEFF50,GFX_Butterfly_Fly6,GFX_Butterfly_Fly6End
	dl $CFE414,$CFE5F4,GFX_DKIslandInFinalBattle_Pose,GFX_DKIslandInFinalBattle_PoseEnd
	dl $CFE60A,$CFE86A,GFX_SteelKeg_Idle,GFX_SteelKeg_IdleEnd
	dl $CFE880,$CFEAE0,GFX_SteelKeg_Grabbed1,GFX_SteelKeg_Grabbed1End
	dl $CFEAF2,$CFECB2,GFX_SteelKeg_Grabbed2,GFX_SteelKeg_Grabbed2End
	dl $CFECCA,$CFEE8A,GFX_SteelKeg_Grabbed3,GFX_SteelKeg_Grabbed3End
	dl $CFEE9E,$CFF0DE,GFX_SteelKeg_Thrown1,GFX_SteelKeg_Thrown1End
	dl $CFF0F6,$CFF316,GFX_SteelKeg_Thrown2,GFX_SteelKeg_Thrown2End
	dl $CFF32E,$CFF4EE,GFX_SteelKeg_Thrown3,GFX_SteelKeg_Thrown3End
	dl $CFF508,$CFF6E8,GFX_SteelKeg_Thrown4,GFX_SteelKeg_Thrown4End
	dl $CFF6FC,$CFF93C,GFX_SteelKeg_Thrown5,GFX_SteelKeg_Thrown5End
	dl $CFF94E,$CFFB6E,GFX_SteelKeg_Thrown6,GFX_SteelKeg_Thrown6End
	dl $CFFB86,$CFFD46,GFX_SteelKeg_Thrown7,GFX_SteelKeg_Thrown7End
	dl $CFFD5C,$CFFF5C,GFX_SteelKeg_Thrown8,GFX_SteelKeg_Thrown8End
	dl $D0476E,$D0482E,GFX_Timer_Zero,GFX_Timer_ZeroEnd
	dl $D0483C,$D048FC,GFX_Timer_One,GFX_Timer_OneEnd
	dl $D0490A,$D049CA,GFX_Timer_Two,GFX_Timer_TwoEnd
	dl $D049D8,$D04A98,GFX_Timer_Three,GFX_Timer_ThreeEnd
	dl $D04AA4,$D04B44,GFX_Timer_Four,GFX_Timer_FourEnd
	dl $D04B52,$D04C12,GFX_Timer_Five,GFX_Timer_FiveEnd
	dl $D04C20,$D04CE0,GFX_Timer_Six,GFX_Timer_SixEnd
	dl $D04CEE,$D04DAE,GFX_Timer_Seven,GFX_Timer_SevenEnd
	dl $D04DBC,$D04E7C,GFX_Timer_Eight,GFX_Timer_EightEnd
	dl $D04E8A,$D04F4A,GFX_Timer_Nine,GFX_Timer_NineEnd
	dl $D04F7C,$D054BC,GFX_MasterNecky_Idle,GFX_MasterNecky_IdleEnd
	dl $D054E6,$D05A06,GFX_MasterNecky_SpitNut1,GFX_MasterNecky_SpitNut1End
	dl $D05A30,$D05EF0,GFX_MasterNecky_SpitNut2,GFX_MasterNecky_SpitNut2End
	dl $D05F18,$D063B8,GFX_MasterNecky_SpitNut3,GFX_MasterNecky_SpitNut3End
	dl $D063DE,$D0685E,GFX_MasterNecky_SpitNut4,GFX_MasterNecky_SpitNut4End
	dl $D06886,$D06D26,GFX_MasterNecky_SpitNut5,GFX_MasterNecky_SpitNut5End
	dl $D06D50,$D07210,GFX_MasterNecky_SpitNut6,GFX_MasterNecky_SpitNut6End
	dl $D07236,$D07716,GFX_MasterNecky_SpitNut7,GFX_MasterNecky_SpitNut7End
	dl $D0773C,$D07C1C,GFX_MasterNecky_SpitNut8,GFX_MasterNecky_SpitNut8End
	dl $D07C48,$D08188,GFX_MasterNecky_SpitNut9,GFX_MasterNecky_SpitNut9End
	dl $D081B6,$D08716,GFX_MasterNecky_Hurt1,GFX_MasterNecky_Hurt1End
	dl $D0874A,$D08CAA,GFX_MasterNecky_Hurt2,GFX_MasterNecky_Hurt2End
	dl $D08CDA,$D092BA,GFX_MasterNecky_Hurt3,GFX_MasterNecky_Hurt3End
	dl $D092E6,$D098E6,GFX_MasterNecky_Hurt4,GFX_MasterNecky_Hurt4End
	dl $D0991C,$D09EFC,GFX_MasterNecky_Hurt5,GFX_MasterNecky_Hurt5End
	dl $D09F24,$D0A484,GFX_MasterNecky_Fall1,GFX_MasterNecky_Fall1End
	dl $D0A4B6,$D0A9F6,GFX_MasterNecky_Fall2,GFX_MasterNecky_Fall2End
	dl $D0AA1C,$D0AEFC,GFX_MasterNecky_Fall3,GFX_MasterNecky_Fall3End
	dl $D0AF24,$D0B3C4,GFX_MasterNecky_Fall4,GFX_MasterNecky_Fall4End
	dl $D0B3E8,$D0B848,GFX_MasterNecky_Fall5,GFX_MasterNecky_Fall5End
	dl $D0B866,$D0BC66,GFX_MasterNecky_Fall6,GFX_MasterNecky_Fall6End
	dl $D0BC84,$D0C084,GFX_MasterNecky_Fall7,GFX_MasterNecky_Fall7End
	dl $D0C0A4,$D0C464,GFX_MasterNecky_Fall8,GFX_MasterNecky_Fall8End
	dl $D0C484,$D0C844,GFX_MasterNecky_Fall9,GFX_MasterNecky_Fall9End
	dl $D0C864,$D0CC24,GFX_MasterNecky_Fall10,GFX_MasterNecky_Fall10End
	dl $D0CC40,$D0CFC0,GFX_MasterNecky_Fall11,GFX_MasterNecky_Fall11End
	dl $D0CFD6,$D0D1D6,GFX_Diddy_TurnWhileSwimming1,GFX_Diddy_TurnWhileSwimming1End
	dl $D0D1EE,$D0D34E,GFX_Diddy_TurnWhileSwimming2,GFX_Diddy_TurnWhileSwimming2End
	dl $D0D36E,$D0D60E,GFX_DonkeyKong_TurnWhileSwimming1,GFX_DonkeyKong_TurnWhileSwimming1End
	dl $D0D62A,$D0D88A,GFX_DonkeyKong_TurnWhileSwimming2,GFX_DonkeyKong_TurnWhileSwimming2End
	dl $D0D89C,$D0D9FC,GFX_Klaptrap_Stomped1,GFX_Klaptrap_Stomped1End
	dl $D0DA0C,$D0DB4C,GFX_Klaptrap_Stomped2,GFX_Klaptrap_Stomped2End
	dl $D0DB5C,$D0DC9C,GFX_Klaptrap_Stomped3,GFX_Klaptrap_Stomped3End
	dl $D0DCAC,$D0DDEC,GFX_Klaptrap_Stomped4,GFX_Klaptrap_Stomped4End
	dl $D0DDFC,$D0DF3C,GFX_Klaptrap_Stomped5,GFX_Klaptrap_Stomped5End
	dl $D0DF4C,$D0E08C,GFX_Klaptrap_Stomped6,GFX_Klaptrap_Stomped6End
	dl $D0E0A4,$D0E264,GFX_ChompsJr_Dead1,GFX_ChompsJr_Dead1End
	dl $D0E27C,$D0E43C,GFX_ChompsJr_Dead2,GFX_ChompsJr_Dead2End
	dl $D0E456,$D0E636,GFX_ChompsJr_Dead3,GFX_ChompsJr_Dead3End
	dl $D0E64E,$D0E80E,GFX_ChompsJr_Dead4,GFX_ChompsJr_Dead4End
	dl $D0E81C,$D0E87C,GFX_Pearl_Pose,GFX_Pearl_PoseEnd
	dl $D1CDC8,$D1D668,GFX_KRool_Idle1,GFX_KRool_Idle1End
	dl $D1D6A8,$D1DF08,GFX_KRool_Idle2,GFX_KRool_Idle2End
	dl $D1DF48,$D1E7A8,GFX_KRool_Idle3,GFX_KRool_Idle3End
	dl $D1E7EC,$D1F08C,GFX_KRool_Idle4,GFX_KRool_Idle4End
	dl $D1F09A,$D1F15A,GFX_KRoolCrown_Thrown1,GFX_KRoolCrown_Thrown1End
	dl $D1F16A,$D1F24A,GFX_KRoolCrown_Thrown2,GFX_KRoolCrown_Thrown2End
	dl $D1F25A,$D1F33A,GFX_KRoolCrown_Thrown3,GFX_KRoolCrown_Thrown3End
	dl $D1F34A,$D1F42A,GFX_KRoolCrown_Thrown4,GFX_KRoolCrown_Thrown4End
	dl $D1F43C,$D1F53C,GFX_KRoolCrown_Thrown5,GFX_KRoolCrown_Thrown5End
	dl $D1F54C,$D1F62C,GFX_KRoolCrown_Thrown6,GFX_KRoolCrown_Thrown6End
	dl $D1F63C,$D1F71C,GFX_KRoolCrown_Thrown7,GFX_KRoolCrown_Thrown7End
	dl $D1F72E,$D1F82E,GFX_KRoolCrown_Thrown8,GFX_KRoolCrown_Thrown8End
	dl $D1F83E,$D1F91E,GFX_KRoolCrown_Thrown9,GFX_KRoolCrown_Thrown9End
	dl $D1F92E,$D1FA0E,GFX_KRoolCrown_Thrown10,GFX_KRoolCrown_Thrown10End
	dl $D1FA20,$D1FB20,GFX_KRoolCrown_Thrown11,GFX_KRoolCrown_Thrown11End
	dl $D1FB32,$D1FC32,GFX_KRoolCrown_Thrown12,GFX_KRoolCrown_Thrown12End
	dl $D200EC,$D204EC,GFX_Krusha_Dead1,GFX_Krusha_Dead1End
	dl $D20514,$D208F4,GFX_Krusha_Dead2,GFX_Krusha_Dead2End
	dl $D2091E,$D20C5E,GFX_Krusha_Dead3,GFX_Krusha_Dead3End
	dl $D20C84,$D20F84,GFX_Krusha_Dead4,GFX_Krusha_Dead4End
	dl $D20FB2,$D21332,GFX_Krusha_Dead5,GFX_Krusha_Dead5End
	dl $D2135C,$D2175C,GFX_Krusha_Dead6,GFX_Krusha_Dead6End
	dl $D21782,$D21AE2,GFX_Krusha_Turn1,GFX_Krusha_Turn1End
	dl $D21B0A,$D21EEA,GFX_Krusha_Turn2,GFX_Krusha_Turn2End
	dl $D21F16,$D222D6,GFX_Rambi_Walk1,GFX_Rambi_Walk1End
	dl $D22302,$D226C2,GFX_Rambi_Walk2,GFX_Rambi_Walk2End
	dl $D226EC,$D22AEC,GFX_Rambi_Walk3,GFX_Rambi_Walk3End
	dl $D22B10,$D22F10,GFX_Rambi_Walk4,GFX_Rambi_Walk4End
	dl $D22F32,$D23312,GFX_Rambi_Walk5,GFX_Rambi_Walk5End
	dl $D2333A,$D2371A,GFX_Rambi_Walk6,GFX_Rambi_Walk6End
	dl $D23742,$D23B22,GFX_Rambi_Walk7,GFX_Rambi_Walk7End
	dl $D23B52,$D23F52,GFX_Rambi_Walk8,GFX_Rambi_Walk8End
	dl $D23F80,$D24360,GFX_Rambi_Walk9,GFX_Rambi_Walk9End
	dl $D2438E,$D2476E,GFX_Rambi_Walk10,GFX_Rambi_Walk10End
	dl $D24798,$D24B38,GFX_Rambi_Walk11,GFX_Rambi_Walk11End
	dl $D24B66,$D24F46,GFX_Rambi_Walk12,GFX_Rambi_Walk12End
	dl $D24F74,$D25354,GFX_Rambi_Walk13,GFX_Rambi_Walk13End
	dl $D25382,$D25762,GFX_Rambi_Walk14,GFX_Rambi_Walk14End
	dl $D25792,$D25B92,GFX_Rambi_Walk15,GFX_Rambi_Walk15End
	dl $D25BB6,$D25F56,GFX_Rambi_Jump1,GFX_Rambi_Jump1End
	dl $D25F7C,$D2633C,GFX_Rambi_Jump2,GFX_Rambi_Jump2End
	dl $D26364,$D26744,GFX_Rambi_Jump3,GFX_Rambi_Jump3End
	dl $D2676C,$D26B4C,GFX_Rambi_Jump4,GFX_Rambi_Jump4End
	dl $D26B74,$D26F54,GFX_Rambi_Jump5,GFX_Rambi_Jump5End
	dl $D26F7A,$D2733A,GFX_Rambi_Jump6,GFX_Rambi_Jump6End
	dl $D2735E,$D276FE,GFX_Rambi_Jump7,GFX_Rambi_Jump7End
	dl $D2771A,$D2797A,GFX_DonkeyKong_HangOntoStabbingEnguarde1,GFX_DonkeyKong_HangOntoStabbingEnguarde1End
	dl $D2799A,$D27C3A,GFX_DonkeyKong_HangOntoStabbingEnguarde2,GFX_DonkeyKong_HangOntoStabbingEnguarde2End
	dl $D27C56,$D27EB6,GFX_DonkeyKong_HangOntoStabbingEnguarde3,GFX_DonkeyKong_HangOntoStabbingEnguarde3End
	dl $D27ECC,$D2812C,GFX_DonkeyKong_HangOntoStabbingEnguarde4,GFX_DonkeyKong_HangOntoStabbingEnguarde4End
	dl $D2814A,$D283CA,GFX_DonkeyKong_HangOntoStabbingEnguarde5,GFX_DonkeyKong_HangOntoStabbingEnguarde5End
	dl $D283E8,$D28668,GFX_DonkeyKong_HangOntoStabbingEnguarde6,GFX_DonkeyKong_HangOntoStabbingEnguarde6End
	dl $D28682,$D28922,GFX_DonkeyKong_HangOntoStabbingEnguarde7,GFX_DonkeyKong_HangOntoStabbingEnguarde7End
	dl $D28944,$D28CC4,GFX_Rambi_Hurt,GFX_Rambi_HurtEnd
	dl $D28CDC,$D28EFC,GFX_Winky_Idle1,GFX_Winky_Idle1End
	dl $D28F14,$D29134,GFX_Winky_Idle2,GFX_Winky_Idle2End
	dl $D2914C,$D2936C,GFX_Winky_Idle3,GFX_Winky_Idle3End
	dl $D29384,$D295A4,GFX_Winky_Idle4,GFX_Winky_Idle4End
	dl $D295BC,$D297DC,GFX_Winky_Idle5,GFX_Winky_Idle5End
	dl $D297F6,$D299D6,GFX_Winky_Idle6,GFX_Winky_Idle6End
	dl $D299F2,$D29BF2,GFX_Winky_Idle7,GFX_Winky_Idle7End
	dl $D29C0E,$D29E0E,GFX_Winky_Idle8,GFX_Winky_Idle8End
	dl $D29E26,$D2A046,GFX_Winky_Idle9,GFX_Winky_Idle9End
	dl $D2A05E,$D2A27E,GFX_Winky_Idle10,GFX_Winky_Idle10End
	dl $D2A296,$D2A4B6,GFX_Winky_Idle11,GFX_Winky_Idle11End
	dl $D2A4CC,$D2A72C,GFX_Winky_Jump1,GFX_Winky_Jump1End
	dl $D2A740,$D2A980,GFX_Winky_Jump2,GFX_Winky_Jump2End
	dl $D2A996,$D2AB96,GFX_Winky_Jump3,GFX_Winky_Jump3End
	dl $D2ABB0,$D2ADF0,GFX_Winky_Jump4,GFX_Winky_Jump4End
	dl $D2AE08,$D2B088,GFX_Winky_Jump5,GFX_Winky_Jump5End
	dl $D2B0AE,$D2B34E,GFX_Winky_Jump6,GFX_Winky_Jump6End
	dl $D2B374,$D2B674,GFX_Winky_Jump7,GFX_Winky_Jump7End
	dl $D2B69A,$D2B99A,GFX_Winky_Jump8,GFX_Winky_Jump8End
	dl $D2B9C2,$D2BCE2,GFX_Winky_Jump9,GFX_Winky_Jump9End
	dl $D2BD0C,$D2C04C,GFX_Winky_Jump10,GFX_Winky_Jump10End
	dl $D2C080,$D2C400,GFX_Winky_Jump11,GFX_Winky_Jump11End
	dl $D2C42E,$D2C7AE,GFX_Winky_Jump12,GFX_Winky_Jump12End
	dl $D2C7DC,$D2CB5C,GFX_Winky_Jump13,GFX_Winky_Jump13End
	dl $D2CB88,$D2CEE8,GFX_Winky_Jump14,GFX_Winky_Jump14End
	dl $D2CF12,$D2D2B2,GFX_Winky_Jump15,GFX_Winky_Jump15End
	dl $D2D2D2,$D2D632,GFX_Winky_Jump16,GFX_Winky_Jump16End
	dl $D2D654,$D2D9D4,GFX_Winky_Jump17,GFX_Winky_Jump17End
	dl $D2D9F6,$D2DD76,GFX_Winky_Land1,GFX_Winky_Land1End
	dl $D2DD98,$D2E118,GFX_Winky_Land2,GFX_Winky_Land2End
	dl $D2E13A,$D2E4BA,GFX_Winky_Land3,GFX_Winky_Land3End
	dl $D2E4E0,$D2E840,GFX_Winky_Land4,GFX_Winky_Land4End
	dl $D2E86C,$D2EBCC,GFX_Winky_Land5,GFX_Winky_Land5End
	dl $D2EBEC,$D2EEEC,GFX_Winky_Land6,GFX_Winky_Land6End
	dl $D2EF12,$D2F272,GFX_Winky_Land7,GFX_Winky_Land7End
	dl $D2F290,$D2F5D0,GFX_Winky_Land8,GFX_Winky_Land8End
	dl $D2F5F0,$D2F8F0,GFX_Winky_Land9,GFX_Winky_Land9End
	dl $D2F90E,$D2FBEE,GFX_Winky_Land10,GFX_Winky_Land10End
	dl $D2FC0C,$D2FE8C,GFX_Winky_Land11,GFX_Winky_Land11End
	dl $D306FC,$D309BC,GFX_Expresso_Idle1,GFX_Expresso_Idle1End
	dl $D309D6,$D30C76,GFX_Expresso_Idle2,GFX_Expresso_Idle2End
	dl $D30C90,$D30F30,GFX_Expresso_Idle3,GFX_Expresso_Idle3End
	dl $D30F4C,$D3120C,GFX_Expresso_Idle4,GFX_Expresso_Idle4End
	dl $D3122C,$D3152C,GFX_Expresso_Idle5,GFX_Expresso_Idle5End
	dl $D31552,$D31852,GFX_Expresso_Idle6,GFX_Expresso_Idle6End
	dl $D31878,$D31B78,GFX_Expresso_Idle7,GFX_Expresso_Idle7End
	dl $D31B9C,$D31E7C,GFX_Expresso_Idle8,GFX_Expresso_Idle8End
	dl $D31EA2,$D321A2,GFX_Expresso_Idle9,GFX_Expresso_Idle9End
	dl $D321C0,$D324A0,GFX_Expresso_Idle10,GFX_Expresso_Idle10End
	dl $D324BE,$D3273E,GFX_Expresso_Idle11,GFX_Expresso_Idle11End
	dl $D3275C,$D329DC,GFX_Expresso_Idle12,GFX_Expresso_Idle12End
	dl $D329FA,$D32C7A,GFX_Expresso_Idle13,GFX_Expresso_Idle13End
	dl $D32C92,$D32F12,GFX_Expresso_Idle14,GFX_Expresso_Idle14End
	dl $D32F2A,$D331AA,GFX_Expresso_Idle15,GFX_Expresso_Idle15End
	dl $D331C2,$D33442,GFX_Expresso_Idle16,GFX_Expresso_Idle16End
	dl $D3345A,$D336DA,GFX_Expresso_Idle17,GFX_Expresso_Idle17End
	dl $D336F8,$D33978,GFX_Expresso_Idle18,GFX_Expresso_Idle18End
	dl $D33994,$D33BF4,GFX_Expresso_Idle19,GFX_Expresso_Idle19End
	dl $D36130,$D36330,GFX_Diddy_HoldWalk1,GFX_Diddy_HoldWalk1End
	dl $D36350,$D36590,GFX_Diddy_HoldWalk2,GFX_Diddy_HoldWalk2End
	dl $D365AC,$D367AC,GFX_Diddy_HoldWalk3,GFX_Diddy_HoldWalk3End
	dl $D367CA,$D369EA,GFX_Diddy_HoldWalk4,GFX_Diddy_HoldWalk4End
	dl $D36A08,$D36C28,GFX_Diddy_HoldWalk5,GFX_Diddy_HoldWalk5End
	dl $D36C46,$D36E66,GFX_Diddy_HoldWalk6,GFX_Diddy_HoldWalk6End
	dl $D36E86,$D370C6,GFX_Diddy_HoldWalk7,GFX_Diddy_HoldWalk7End
	dl $D370E2,$D372E2,GFX_Diddy_HoldWalk8,GFX_Diddy_HoldWalk8End
	dl $D372FE,$D374FE,GFX_Diddy_HoldWalk9,GFX_Diddy_HoldWalk9End
	dl $D37514,$D376B4,GFX_HalfWhiteTire_Bounce1,GFX_HalfWhiteTire_Bounce1End
	dl $D376CC,$D3788C,GFX_HalfWhiteTire_Bounce2,GFX_HalfWhiteTire_Bounce2End
	dl $D378A2,$D37A42,GFX_HalfWhiteTire_Bounce3,GFX_HalfWhiteTire_Bounce3End
	dl $D37A56,$D37C96,GFX_HalfWhiteTire_Bounce4,GFX_HalfWhiteTire_Bounce4End
	dl $D37CAE,$D37F8E,GFX_HalfWhiteTire_Bounce5,GFX_HalfWhiteTire_Bounce5End
	dl $D37FAA,$D3832A,GFX_HalfWhiteTire_Bounce6,GFX_HalfWhiteTire_Bounce6End
	dl $D3833E,$D3851E,GFX_HalfWhiteTire_Idle,GFX_HalfWhiteTire_IdleEnd
	dl $D38540,$D38920,GFX_BarrelCannon_Base1,GFX_BarrelCannon_Base1End
	dl $D38948,$D38D28,GFX_BarrelCannon_Base2,GFX_BarrelCannon_Base2End
	dl $D38D4C,$D3914C,GFX_BarrelCannon_Base3,GFX_BarrelCannon_Base3End
	dl $D3916E,$D3954E,GFX_BarrelCannon_Base4,GFX_BarrelCannon_Base4End
	dl $D3956C,$D3990C,GFX_BarrelCannon_Base5,GFX_BarrelCannon_Base5End
	dl $D39928,$D39CA8,GFX_BarrelCannon_Base6,GFX_BarrelCannon_Base6End
	dl $D39CCC,$D3A0CC,GFX_BarrelCannon_Base7,GFX_BarrelCannon_Base7End
	dl $D3A0F6,$D3A4F6,GFX_BarrelCannon_Base8,GFX_BarrelCannon_Base8End
	dl $D3A518,$D3A8F8,GFX_BarrelCannon_Base9,GFX_BarrelCannon_Base9End
	dl $D3A920,$D3AD00,GFX_BarrelCannon_Base10,GFX_BarrelCannon_Base10End
	dl $D3AD24,$D3B124,GFX_BarrelCannon_Base11,GFX_BarrelCannon_Base11End
	dl $D3B146,$D3B526,GFX_BarrelCannon_Base12,GFX_BarrelCannon_Base12End
	dl $D3B544,$D3B8E4,GFX_BarrelCannon_Base13,GFX_BarrelCannon_Base13End
	dl $D3B900,$D3BC80,GFX_BarrelCannon_Base14,GFX_BarrelCannon_Base14End
	dl $D3BCA4,$D3C0A4,GFX_BarrelCannon_Base15,GFX_BarrelCannon_Base15End
	dl $D3C0CE,$D3C4CE,GFX_BarrelCannon_Base16,GFX_BarrelCannon_Base16End
	dl $D3C4E4,$D3C624,GFX_Slippa_Turn1,GFX_Slippa_Turn1End
	dl $D3C638,$D3C758,GFX_Slippa_Turn2,GFX_Slippa_Turn2End
	dl $D3C76C,$D3C88C,GFX_Slippa_Turn3,GFX_Slippa_Turn3End
	dl $D3C89E,$D3C9FE,GFX_Slippa_Turn4,GFX_Slippa_Turn4End
	dl $D3CA10,$D3CB70,GFX_Slippa_Turn5,GFX_Slippa_Turn5End
	dl $D3CB7E,$D3CCFE,GFX_Slippa_Turn6,GFX_Slippa_Turn6End
	dl $D3CD10,$D3CE70,GFX_Slippa_Turn7,GFX_Slippa_Turn7End
	dl $D3CE86,$D3CFC6,GFX_Slippa_Turn8,GFX_Slippa_Turn8End
	dl $D3CFD6,$D3D056,GFX_BarrelPiece_Pose1,GFX_BarrelPiece_Pose1End
	dl $D3D062,$D3D102,GFX_BarrelPiece_Pose2,GFX_BarrelPiece_Pose2End
	dl $D3D112,$D3D192,GFX_BarrelPiece_Pose3,GFX_BarrelPiece_Pose3End
	dl $D3D1A2,$D3D222,GFX_BarrelPiece_Pose4,GFX_BarrelPiece_Pose4End
	dl $D3D232,$D3D2B2,GFX_BarrelPiece_Pose5,GFX_BarrelPiece_Pose5End
	dl $D3D2C4,$D3D364,GFX_BarrelPiece_Pose6,GFX_BarrelPiece_Pose6End
	dl $D3D374,$D3D3F4,GFX_BarrelPiece_Pose7,GFX_BarrelPiece_Pose7End
	dl $D3D404,$D3D484,GFX_BarrelPiece_Pose8,GFX_BarrelPiece_Pose8End
	dl $D40024,$D40304,GFX_Enguarde_Stab1,GFX_Enguarde_Stab1End
	dl $D40328,$D40608,GFX_Enguarde_Stab2,GFX_Enguarde_Stab2End
	dl $D4062C,$D408AC,GFX_Enguarde_Stab3,GFX_Enguarde_Stab3End
	dl $D408CC,$D40AAC,GFX_Enguarde_Stab4,GFX_Enguarde_Stab4End
	dl $D40AD4,$D40DF4,GFX_Enguarde_Stab5,GFX_Enguarde_Stab5End
	dl $D40E1E,$D410FE,GFX_Enguarde_Stab6,GFX_Enguarde_Stab6End
	dl $D41128,$D41408,GFX_Enguarde_Stab7,GFX_Enguarde_Stab7End
	dl $D41434,$D41734,GFX_Enguarde_Swim1,GFX_Enguarde_Swim1End
	dl $D4175E,$D41A3E,GFX_Enguarde_Swim2,GFX_Enguarde_Swim2End
	dl $D41A68,$D41D48,GFX_Enguarde_Swim3,GFX_Enguarde_Swim3End
	dl $D41D70,$D42030,GFX_Enguarde_Swim4,GFX_Enguarde_Swim4End
	dl $D4205A,$D4233A,GFX_Enguarde_Swim5,GFX_Enguarde_Swim5End
	dl $D42366,$D42666,GFX_Enguarde_Swim6,GFX_Enguarde_Swim6End
	dl $D42692,$D42992,GFX_Enguarde_Swim7,GFX_Enguarde_Swim7End
	dl $D429BE,$D42CBE,GFX_Enguarde_Swim8,GFX_Enguarde_Swim8End
	dl $D42CDA,$D42EDA,GFX_LifeBalloon_Idle1,GFX_LifeBalloon_Idle1End
	dl $D42EF6,$D430F6,GFX_LifeBalloon_Idle2,GFX_LifeBalloon_Idle2End
	dl $D43112,$D43312,GFX_LifeBalloon_Idle3,GFX_LifeBalloon_Idle3End
	dl $D4332E,$D4352E,GFX_LifeBalloon_Idle4,GFX_LifeBalloon_Idle4End
	dl $D4354A,$D4374A,GFX_LifeBalloon_Idle5,GFX_LifeBalloon_Idle5End
	dl $D43766,$D43966,GFX_LifeBalloon_Idle6,GFX_LifeBalloon_Idle6End
	dl $D43982,$D43B82,GFX_LifeBalloon_Idle7,GFX_LifeBalloon_Idle7End
	dl $D43B9C,$D43D7C,GFX_LifeBalloon_Idle8,GFX_LifeBalloon_Idle8End
	dl $D43D92,$D43FF2,GFX_DKBarrel_Barrel1,GFX_DKBarrel_Barrel1End
	dl $D44008,$D44268,GFX_DKBarrel_Barrel2,GFX_DKBarrel_Barrel2End
	dl $D4427E,$D444DE,GFX_DKBarrel_Barrel3,GFX_DKBarrel_Barrel3End
	dl $D444F4,$D44754,GFX_DKBarrel_Barrel4,GFX_DKBarrel_Barrel4End
	dl $D4476A,$D449CA,GFX_DKBarrel_Barrel5,GFX_DKBarrel_Barrel5End
	dl $D449E0,$D44C40,GFX_DKBarrel_Barrel6,GFX_DKBarrel_Barrel6End
	dl $D44C56,$D44EB6,GFX_Barrel_Idle,GFX_Barrel_IdleEnd
	dl $D44ED8,$D45198,GFX_Kritter_Dead1,GFX_Kritter_Dead1End
	dl $D451B6,$D45436,GFX_Kritter_Dead2,GFX_Kritter_Dead2End
	dl $D45458,$D45718,GFX_Kritter_Dead3,GFX_Kritter_Dead3End
	dl $D4573A,$D459FA,GFX_Kritter_Dead4,GFX_Kritter_Dead4End
	dl $D45A18,$D45CF8,GFX_Kritter_Dead5,GFX_Kritter_Dead5End
	dl $D45D1E,$D4601E,GFX_Kritter_Dead6,GFX_Kritter_Dead6End
	dl $D46042,$D46382,GFX_Kritter_Dead7,GFX_Kritter_Dead7End
	dl $D463A2,$D466A2,GFX_Kritter_Dead8,GFX_Kritter_Dead8End
	dl $D466C0,$D46940,GFX_Expresso_Jump1,GFX_Expresso_Jump1End
	dl $D4695E,$D46BDE,GFX_Expresso_Jump2,GFX_Expresso_Jump2End
	dl $D46C00,$D46EC0,GFX_Expresso_Jump3,GFX_Expresso_Jump3End
	dl $D46EE2,$D471A2,GFX_Expresso_Jump4,GFX_Expresso_Jump4End
	dl $D471C6,$D474A6,GFX_Expresso_Jump5,GFX_Expresso_Jump5End
	dl $D474CA,$D477AA,GFX_Expresso_Jump6,GFX_Expresso_Jump6End
	dl $D477CE,$D47AAE,GFX_Expresso_Jump7,GFX_Expresso_Jump7End
	dl $D47ACE,$D47DCE,GFX_Expresso_Jump8,GFX_Expresso_Jump8End
	dl $D47DF2,$D480D2,GFX_Expresso_Land1,GFX_Expresso_Land1End
	dl $D480EC,$D483EC,GFX_Expresso_Land2,GFX_Expresso_Land2End
	dl $D48408,$D48608,GFX_DonkeyKong_Unknown3Pose1,GFX_DonkeyKong_Unknown3Pose1End
	dl $D48626,$D48846,GFX_DonkeyKong_Unknown3Pose2,GFX_DonkeyKong_Unknown3Pose2End
	dl $D48864,$D48A84,GFX_DonkeyKong_Unknown3Pose3,GFX_DonkeyKong_Unknown3Pose3End
	dl $D48A9C,$D48C5C,GFX_Army_Stand,GFX_Army_StandEnd
	dl $D48C78,$D48E78,GFX_Army_CurlUp1,GFX_Army_CurlUp1End
	dl $D48E90,$D49050,GFX_Army_CurlUp2,GFX_Army_CurlUp2End
	dl $D49068,$D49228,GFX_Army_CurlUp3,GFX_Army_CurlUp3End
	dl $D4923E,$D493DE,GFX_Army_CurlUp4,GFX_Army_CurlUp4End
	dl $D493F8,$D495D8,GFX_Army_Unknown,GFX_Army_UnknownEnd
	dl $D495EC,$D4976C,GFX_Army_Roll1,GFX_Army_Roll1End
	dl $D49784,$D498E4,GFX_Army_Roll2,GFX_Army_Roll2End
	dl $D498F8,$D49A78,GFX_Army_Roll3,GFX_Army_Roll3End
	dl $D49A8E,$D49C2E,GFX_Army_Roll4,GFX_Army_Roll4End
	dl $D49C48,$D49DC8,GFX_Army_Roll5,GFX_Army_Roll5End
	dl $D49DE0,$D49F40,GFX_Army_Roll6,GFX_Army_Roll6End
	dl $D49F5C,$D4A0FC,GFX_Army_Roll7,GFX_Army_Roll7End
	dl $D4A114,$D4A2D4,GFX_Army_Idle1,GFX_Army_Idle1End
	dl $D4A2EA,$D4A48A,GFX_Army_Idle2,GFX_Army_Idle2End
	dl $D4A4A0,$D4A640,GFX_Army_Idle3,GFX_Army_Idle3End
	dl $D4A660,$D4A840,GFX_CeilingLight_Pose1,GFX_CeilingLight_Pose1End
	dl $D4A860,$D4AA40,GFX_CeilingLight_Pose2,GFX_CeilingLight_Pose2End
	dl $D4AA60,$D4AC40,GFX_CeilingLight_Pose3,GFX_CeilingLight_Pose3End
	dl $D4AC60,$D4AE40,GFX_CeilingLight_Pose4,GFX_CeilingLight_Pose4End
	dl $D4AE60,$D4B040,GFX_CeilingLight_Pose5,GFX_CeilingLight_Pose5End
	dl $D4B060,$D4B240,GFX_CeilingLight_Pose6,GFX_CeilingLight_Pose6End
	dl $D4B260,$D4B440,GFX_CeilingLight_Pose7,GFX_CeilingLight_Pose7End
	dl $D4B466,$D4B7C6,GFX_Krusha_Walk1,GFX_Krusha_Walk1End
	dl $D4B7E8,$D4BB08,GFX_Krusha_Walk2,GFX_Krusha_Walk2End
	dl $D4BB2A,$D4BE4A,GFX_Krusha_Walk3,GFX_Krusha_Walk3End
	dl $D4BE6C,$D4C18C,GFX_Krusha_Walk4,GFX_Krusha_Walk4End
	dl $D4C1AA,$D4C4EA,GFX_Krusha_Walk5,GFX_Krusha_Walk5End
	dl $D4C50E,$D4C8AE,GFX_Krusha_Walk6,GFX_Krusha_Walk6End
	dl $D4C8D2,$D4CC72,GFX_Krusha_Walk7,GFX_Krusha_Walk7End
	dl $D4CC92,$D4D052,GFX_Krusha_Walk8,GFX_Krusha_Walk8End
	dl $D4D07A,$D4D3FA,GFX_Krusha_Walk9,GFX_Krusha_Walk9End
	dl $D4D41E,$D4D7BE,GFX_Krusha_Walk10,GFX_Krusha_Walk10End
	dl $D4D7EC,$D4DBCC,GFX_Krusha_Walk11,GFX_Krusha_Walk11End
	dl $D4DBF2,$D4DF52,GFX_Krusha_Walk12,GFX_Krusha_Walk12End
	dl $D50034,$D506B4,GFX_LargeAnimalBuddyToken_Rambi,GFX_LargeAnimalBuddyToken_RambiEnd
	dl $D506E0,$D50B60,GFX_LargeAnimalBuddyToken_Expresso,GFX_LargeAnimalBuddyToken_ExpressoEnd
	dl $D50B98,$D51138,GFX_LargeAnimalBuddyToken_Winky,GFX_LargeAnimalBuddyToken_WinkyEnd
	dl $D51176,$D51656,GFX_LargeAnimalBuddyToken_Enguarde,GFX_LargeAnimalBuddyToken_EnguardeEnd
	dl $D51678,$D519F8,GFX_Necky_Fly1,GFX_Necky_Fly1End
	dl $D51A1A,$D51D3A,GFX_Necky_Fly2,GFX_Necky_Fly2End
	dl $D51D54,$D51F94,GFX_Necky_Fly3,GFX_Necky_Fly3End
	dl $D51FA8,$D52188,GFX_Necky_Fly4,GFX_Necky_Fly4End
	dl $D521A4,$D524C4,GFX_Necky_Fly5,GFX_Necky_Fly5End
	dl $D524EA,$D528AA,GFX_Necky_Fly6,GFX_Necky_Fly6End
	dl $D528D0,$D52C30,GFX_Necky_Fly7,GFX_Necky_Fly7End
	dl $D52C48,$D52E68,GFX_Necky_Fly8,GFX_Necky_Fly8End
	dl $D52E82,$D53122,GFX_Necky_Fly9,GFX_Necky_Fly9End
	dl $D53142,$D53442,GFX_Necky_Fly10,GFX_Necky_Fly10End
	dl $D53464,$D53784,GFX_Necky_Fly11,GFX_Necky_Fly11End
	dl $D5379A,$D538DA,GFX_Klaptrap_Walk1,GFX_Klaptrap_Walk1End
	dl $D538F0,$D53A30,GFX_Klaptrap_Walk2,GFX_Klaptrap_Walk2End
	dl $D53A44,$D53B64,GFX_Klaptrap_Walk3,GFX_Klaptrap_Walk3End
	dl $D53B78,$D53CF8,GFX_Klaptrap_Walk4,GFX_Klaptrap_Walk4End
	dl $D53D10,$D53E70,GFX_Klaptrap_Walk5,GFX_Klaptrap_Walk5End
	dl $D53E88,$D53FE8,GFX_Klaptrap_Walk6,GFX_Klaptrap_Walk6End
	dl $D53FFC,$D5417C,GFX_Klaptrap_Walk7,GFX_Klaptrap_Walk7End
	dl $D5418E,$D542EE,GFX_Klaptrap_Walk8,GFX_Klaptrap_Walk8End
	dl $D542FC,$D5441C,GFX_Klaptrap_Turn,GFX_Klaptrap_TurnEnd
	dl $D54430,$D545B0,GFX_Klaptrap_Dead1,GFX_Klaptrap_Dead1End
	dl $D545C0,$D54700,GFX_Klaptrap_Dead2,GFX_Klaptrap_Dead2End
	dl $D54714,$D54954,GFX_RopeBarrel_Grabbed1,GFX_RopeBarrel_Grabbed1End
	dl $D54964,$D54B64,GFX_RopeBarrel_Grabbed2,GFX_RopeBarrel_Grabbed2End
	dl $D54B74,$D54D74,GFX_RopeBarrel_Grabbed3,GFX_RopeBarrel_Grabbed3End
	dl $D54D84,$D54F84,GFX_RopeBarrel_Grabbed4,GFX_RopeBarrel_Grabbed4End
	dl $D54F9A,$D551FA,GFX_Barrel_FallsApart1,GFX_Barrel_FallsApart1End
	dl $D5521A,$D5551A,GFX_Barrel_FallsApart2,GFX_Barrel_FallsApart2End
	dl $D5553E,$D558DE,GFX_Barrel_FallsApart3,GFX_Barrel_FallsApart3End
	dl $D55902,$D55D02,GFX_Barrel_FallsApart4,GFX_Barrel_FallsApart4End
	dl $D55D24,$D56104,GFX_Barrel_FallsApart5,GFX_Barrel_FallsApart5End
	dl $D56128,$D56528,GFX_Barrel_FallsApart6,GFX_Barrel_FallsApart6End
	dl $D56550,$D56990,GFX_Barrel_FallsApart7,GFX_Barrel_FallsApart7End
	dl $D569C0,$D56E20,GFX_Barrel_FallsApart8,GFX_Barrel_FallsApart8End
	dl $D56E34,$D57074,GFX_Barrel_Thrown1,GFX_Barrel_Thrown1End
	dl $D57088,$D572C8,GFX_Barrel_Thrown2,GFX_Barrel_Thrown2End
	dl $D572DC,$D5751C,GFX_Barrel_Thrown3,GFX_Barrel_Thrown3End
	dl $D57536,$D57716,GFX_Barrel_Thrown4,GFX_Barrel_Thrown4End
	dl $D5772E,$D5794E,GFX_Barrel_Thrown5,GFX_Barrel_Thrown5End
	dl $D5796A,$D57B6A,GFX_Barrel_Thrown6,GFX_Barrel_Thrown6End
	dl $D57B7E,$D57DBE,GFX_Barrel_Thrown7,GFX_Barrel_Thrown7End
	dl $D57DD2,$D58012,GFX_Barrel_Thrown8,GFX_Barrel_Thrown8End
	dl $D58026,$D58266,GFX_Barrel_Grabbed1,GFX_Barrel_Grabbed1End
	dl $D58276,$D58476,GFX_Barrel_Grabbed2,GFX_Barrel_Grabbed2End
	dl $D58486,$D58686,GFX_Barrel_Grabbed3,GFX_Barrel_Grabbed3End
	dl $D58696,$D58896,GFX_Barrel_Grabbed4,GFX_Barrel_Grabbed4End
	dl $D588AC,$D58B0C,GFX_RopeBarrel_Idle,GFX_RopeBarrel_IdleEnd
	dl $D58B24,$D58DA4,GFX_SmallOilDrum_WithRim,GFX_SmallOilDrum_WithRimEnd
	dl $D58DC0,$D58FC0,GFX_SmallOilDrum_NoRim,GFX_SmallOilDrum_NoRimEnd
	dl $D5E6DD,$D5E77D,GFX_SmokePuff_Pose1,GFX_SmokePuff_Pose1End
	dl $D5E791,$D5E8B1,GFX_SmokePuff_Pose2,GFX_SmokePuff_Pose2End
	dl $D5E8C5,$D5EA45,GFX_SmokePuff_Pose3,GFX_SmokePuff_Pose3End
	dl $D5EA59,$D5EC99,GFX_SmokePuff_Pose4,GFX_SmokePuff_Pose4End
	dl $D5ECAF,$D5EF6F,GFX_SmokePuff_Pose5,GFX_SmokePuff_Pose5End
	dl $D5EF87,$D5F267,GFX_SmokePuff_Pose6,GFX_SmokePuff_Pose6End
	dl $D5F285,$D5F4A5,GFX_SmokePuff_Pose7,GFX_SmokePuff_Pose7End
	dl $D5F4B7,$D5F5B7,GFX_SmokePuff_Pose8,GFX_SmokePuff_Pose8End
	dl $D5F5C7,$D5F647,GFX_SmallBarrelPiece_Pose1,GFX_SmallBarrelPiece_Pose1End
	dl $D5F655,$D5F6B5,GFX_SmallBarrelPiece_Pose2,GFX_SmallBarrelPiece_Pose2End
	dl $D5F6C3,$D5F723,GFX_SmallBarrelPiece_Pose3,GFX_SmallBarrelPiece_Pose3End
	dl $D5F731,$D5F791,GFX_SmallBarrelPiece_Pose4,GFX_SmallBarrelPiece_Pose4End
	dl $D5F79F,$D5F7FF,GFX_SmallBarrelPiece_Pose5,GFX_SmallBarrelPiece_Pose5End
	dl $D5F80B,$D5F84B,GFX_SmallBarrelPiece_Pose6,GFX_SmallBarrelPiece_Pose6End
	dl $D5F857,$D5F897,GFX_SmallBarrelPiece_Pose7,GFX_SmallBarrelPiece_Pose7End
	dl $D5F8A5,$D5F905,GFX_SmallBarrelPiece_Pose8,GFX_SmallBarrelPiece_Pose8End
	dl $D5F915,$D5F995,GFX_ThrownCane_Pose1,GFX_ThrownCane_Pose1End
	dl $D5F9A5,$D5FA25,GFX_ThrownCane_Pose2,GFX_ThrownCane_Pose2End
	dl $D5FA35,$D5FAB5,GFX_ThrownCane_Pose3,GFX_ThrownCane_Pose3End
	dl $D5FAC5,$D5FB45,GFX_ThrownCane_Pose4,GFX_ThrownCane_Pose4End
	dl $D5FB55,$D5FBD5,GFX_ThrownCane_Pose5,GFX_ThrownCane_Pose5End
	dl $D5FBE5,$D5FC65,GFX_ThrownCane_Pose6,GFX_ThrownCane_Pose6End
	dl $D5FC75,$D5FCF5,GFX_ThrownCane_Pose7,GFX_ThrownCane_Pose7End
	dl $D5FD05,$D5FD85,GFX_ThrownCane_Pose8,GFX_ThrownCane_Pose8End
	dl $D5FD93,$D5FDF3,GFX_ThrownCane_Pose9,GFX_ThrownCane_Pose9End
	dl $D5FE01,$D5FEC1,GFX_Arrow_Pose,GFX_Arrow_PoseEnd
	dl $D5FECF,$D5FF8F,GFX_Exit_Pose,GFX_Exit_PoseEnd
	dl $D6005E,$D6039E,GFX_SwingingRope_Pose1,GFX_SwingingRope_Pose1End
	dl $D603DA,$D6071A,GFX_SwingingRope_Pose2,GFX_SwingingRope_Pose2End
	dl $D60756,$D60A96,GFX_SwingingRope_Pose3,GFX_SwingingRope_Pose3End
	dl $D60AD2,$D60E12,GFX_SwingingRope_Pose4,GFX_SwingingRope_Pose4End
	dl $D60E4E,$D6118E,GFX_SwingingRope_Pose5,GFX_SwingingRope_Pose5End
	dl $D611C8,$D614E8,GFX_SwingingRope_Pose6,GFX_SwingingRope_Pose6End
	dl $D61522,$D61842,GFX_SwingingRope_Pose7,GFX_SwingingRope_Pose7End
	dl $D6187C,$D61B9C,GFX_SwingingRope_Pose8,GFX_SwingingRope_Pose8End
	dl $D61BD4,$D61ED4,GFX_SwingingRope_Pose9,GFX_SwingingRope_Pose9End
	dl $D61F0C,$D6220C,GFX_SwingingRope_Pose10,GFX_SwingingRope_Pose10End
	dl $D62244,$D62544,GFX_SwingingRope_Pose11,GFX_SwingingRope_Pose11End
	dl $D6257C,$D6287C,GFX_SwingingRope_Pose12,GFX_SwingingRope_Pose12End
	dl $D628B2,$D62B92,GFX_SwingingRope_Pose13,GFX_SwingingRope_Pose13End
	dl $D62BC8,$D62EA8,GFX_SwingingRope_Pose14,GFX_SwingingRope_Pose14End
	dl $D62EDE,$D631BE,GFX_SwingingRope_Pose15,GFX_SwingingRope_Pose15End
	dl $D631F4,$D634D4,GFX_SwingingRope_Pose16,GFX_SwingingRope_Pose16End
	dl $D634EE,$D636CE,GFX_Diddy_Victory1,GFX_Diddy_Victory1End
	dl $D636EC,$D6390C,GFX_Diddy_Victory2,GFX_Diddy_Victory2End
	dl $D63924,$D63B44,GFX_Diddy_Victory3,GFX_Diddy_Victory3End
	dl $D63B5C,$D63D7C,GFX_Diddy_Victory4,GFX_Diddy_Victory4End
	dl $D63D92,$D63F92,GFX_Diddy_Victory5,GFX_Diddy_Victory5End
	dl $D63FAA,$D641CA,GFX_Diddy_Victory6,GFX_Diddy_Victory6End
	dl $D641E6,$D64446,GFX_Diddy_Victory7,GFX_Diddy_Victory7End
	dl $D6445C,$D645FC,GFX_Diddy_Victory8,GFX_Diddy_Victory8End
	dl $D64616,$D647F6,GFX_Diddy_Victory9,GFX_Diddy_Victory9End
	dl $D6480C,$D64A0C,GFX_Diddy_Victory10,GFX_Diddy_Victory10End
	dl $D64A22,$D64C22,GFX_Diddy_Victory11,GFX_Diddy_Victory11End
	dl $D64C38,$D64DD8,GFX_Diddy_Victory12,GFX_Diddy_Victory12End
	dl $D64DEE,$D64F8E,GFX_Diddy_Victory13,GFX_Diddy_Victory13End
	dl $D64F9C,$D64FFC,GFX_DiddyStars_Pose1,GFX_DiddyStars_Pose1End
	dl $D6500A,$D6506A,GFX_DiddyStars_Pose2,GFX_DiddyStars_Pose2End
	dl $D65078,$D650D8,GFX_DiddyStars_Pose3,GFX_DiddyStars_Pose3End
	dl $D650F2,$D652D2,GFX_Diddy_Duck1,GFX_Diddy_Duck1End
	dl $D652EA,$D6550A,GFX_Diddy_Duck2,GFX_Diddy_Duck2End
	dl $D65528,$D65748,GFX_Diddy_Duck3,GFX_Diddy_Duck3End
	dl $D65766,$D65986,GFX_Diddy_Duck4,GFX_Diddy_Duck4End
	dl $D6599E,$D65B5E,GFX_Diddy_Duck5,GFX_Diddy_Duck5End
	dl $D65B76,$D65D36,GFX_Diddy_Duck6,GFX_Diddy_Duck6End
	dl $D65D4E,$D65F0E,GFX_Diddy_Duck7,GFX_Diddy_Duck7End
	dl $D65F22,$D66102,GFX_Diddy_Duck8,GFX_Diddy_Duck8End
	dl $D66114,$D662D4,GFX_Diddy_Duck9,GFX_Diddy_Duck9End
	dl $D662E8,$D664C8,GFX_Diddy_Duck10,GFX_Diddy_Duck10End
	dl $D664DE,$D666DE,GFX_Diddy_Duck11,GFX_Diddy_Duck11End
	dl $D666F2,$D668D2,GFX_Diddy_Duck12,GFX_Diddy_Duck12End
	dl $D668E8,$D66AE8,GFX_Diddy_Duck13,GFX_Diddy_Duck13End
	dl $D66B04,$D66D64,GFX_DonkeyKong_HangOntoWinky1,GFX_DonkeyKong_HangOntoWinky1End
	dl $D66D80,$D66FE0,GFX_DonkeyKong_HangOntoWinky2,GFX_DonkeyKong_HangOntoWinky2End
	dl $D66FFC,$D6725C,GFX_DonkeyKong_HangOntoWinky3,GFX_DonkeyKong_HangOntoWinky3End
	dl $D67278,$D67478,GFX_Diddy_Crawling1,GFX_Diddy_Crawling1End
	dl $D67494,$D67694,GFX_Diddy_Crawling2,GFX_Diddy_Crawling2End
	dl $D676B0,$D678B0,GFX_Diddy_Crawling3,GFX_Diddy_Crawling3End
	dl $D678CC,$D67ACC,GFX_Diddy_Crawling4,GFX_Diddy_Crawling4End
	dl $D67AE8,$D67CE8,GFX_Diddy_Crawling5,GFX_Diddy_Crawling5End
	dl $D67D04,$D67F04,GFX_Diddy_Crawling6,GFX_Diddy_Crawling6End
	dl $D67F20,$D68120,GFX_Diddy_Crawling7,GFX_Diddy_Crawling7End
	dl $D6813C,$D6833C,GFX_Diddy_Crawling8,GFX_Diddy_Crawling8End
	dl $D68358,$D68558,GFX_Diddy_Crawling9,GFX_Diddy_Crawling9End
	dl $D68576,$D68796,GFX_Diddy_Crawling10,GFX_Diddy_Crawling10End
	dl $D687B2,$D689B2,GFX_Diddy_Crawling11,GFX_Diddy_Crawling11End
	dl $D689CE,$D68BCE,GFX_Diddy_Crawling12,GFX_Diddy_Crawling12End
	dl $D68BE2,$D68DC2,GFX_Diddy_Jump1,GFX_Diddy_Jump1End
	dl $D68DDC,$D68FBC,GFX_Diddy_Jump2,GFX_Diddy_Jump2End
	dl $D68FD0,$D691B0,GFX_Diddy_Jump3,GFX_Diddy_Jump3End
	dl $D691CE,$D693EE,GFX_Diddy_Jump4,GFX_Diddy_Jump4End
	dl $D6940C,$D6962C,GFX_Diddy_Jump5,GFX_Diddy_Jump5End
	dl $D69646,$D69886,GFX_Diddy_Jump6,GFX_Diddy_Jump6End
	dl $D698A4,$D69B24,GFX_Diddy_Jump7,GFX_Diddy_Jump7End
	dl $D69B46,$D69DA6,GFX_Diddy_Jump8,GFX_Diddy_Jump8End
	dl $D69DC8,$D6A028,GFX_Diddy_Jump9,GFX_Diddy_Jump9End
	dl $D6A048,$D6A288,GFX_Diddy_Jump10,GFX_Diddy_Jump10End
	dl $D6A2A2,$D6A4E2,GFX_Diddy_Jump11,GFX_Diddy_Jump11End
	dl $D6A4FE,$D6A75E,GFX_Diddy_Jump12,GFX_Diddy_Jump12End
	dl $D6A77E,$D6A9BE,GFX_Diddy_Jump13,GFX_Diddy_Jump13End
	dl $D6A9E0,$D6AC40,GFX_Diddy_Fall1,GFX_Diddy_Fall1End
	dl $D6AC60,$D6AEA0,GFX_Diddy_Fall2,GFX_Diddy_Fall2End
	dl $D6AEC0,$D6B100,GFX_Diddy_Fall3,GFX_Diddy_Fall3End
	dl $D6B120,$D6B360,GFX_Diddy_Fall4,GFX_Diddy_Fall4End
	dl $D6B380,$D6B5C0,GFX_Diddy_Fall5,GFX_Diddy_Fall5End
	dl $D6B5DA,$D6B7BA,GFX_Diddy_Land1,GFX_Diddy_Land1End
	dl $D6B7D2,$D6B9F2,GFX_Diddy_Land2,GFX_Diddy_Land2End
	dl $D6BA0E,$D6BC0E,GFX_Diddy_Swimming1,GFX_Diddy_Swimming1End
	dl $D6BC2A,$D6BE2A,GFX_Diddy_Swimming2,GFX_Diddy_Swimming2End
	dl $D6BE44,$D6C084,GFX_Diddy_Swimming3,GFX_Diddy_Swimming3End
	dl $D6C0A0,$D6C2A0,GFX_Diddy_Swimming4,GFX_Diddy_Swimming4End
	dl $D6C2BE,$D6C4DE,GFX_Diddy_Swimming5,GFX_Diddy_Swimming5End
	dl $D6C4FC,$D6C71C,GFX_Diddy_Swimming6,GFX_Diddy_Swimming6End
	dl $D6C73A,$D6C95A,GFX_Diddy_Swimming7,GFX_Diddy_Swimming7End
	dl $D6C978,$D6CB98,GFX_Diddy_Swimming8,GFX_Diddy_Swimming8End
	dl $D6CBB8,$D6CDF8,GFX_Diddy_Swimming9,GFX_Diddy_Swimming9End
	dl $D6CE16,$D6D036,GFX_Diddy_Swimming10,GFX_Diddy_Swimming10End
	dl $D6D054,$D6D274,GFX_Diddy_Swimming11,GFX_Diddy_Swimming11End
	dl $D6D292,$D6D4B2,GFX_Diddy_Swimming12,GFX_Diddy_Swimming12End
	dl $D6D4D0,$D6D6F0,GFX_Diddy_Swimming13,GFX_Diddy_Swimming13End
	dl $D6D70E,$D6D92E,GFX_Diddy_Swimming14,GFX_Diddy_Swimming14End
	dl $D6D946,$D6DB66,GFX_Diddy_Swimming15,GFX_Diddy_Swimming15End
	dl $D6DB7E,$D6DD3E,GFX_Diddy_Hurt1,GFX_Diddy_Hurt1End
	dl $D6DD54,$D6DEF4,GFX_Diddy_Hurt2,GFX_Diddy_Hurt2End
	dl $D6DF0A,$D6E0AA,GFX_Diddy_Hurt3,GFX_Diddy_Hurt3End
	dl $D6E0CA,$D6E2AA,GFX_Diddy_Hurt4,GFX_Diddy_Hurt4End
	dl $D6E2CC,$D6E52C,GFX_Diddy_Hurt5,GFX_Diddy_Hurt5End
	dl $D6E54E,$D6E7AE,GFX_Diddy_Hurt6,GFX_Diddy_Hurt6End
	dl $D6E7D0,$D6EA30,GFX_Diddy_Hurt7,GFX_Diddy_Hurt7End
	dl $D6EA46,$D6EC46,GFX_Diddy_Hurt8,GFX_Diddy_Hurt8End
	dl $D6EC5A,$D6EE3A,GFX_Diddy_Hurt9,GFX_Diddy_Hurt9End
	dl $D6EE50,$D6EFF0,GFX_Diddy_Hurt10,GFX_Diddy_Hurt10End
	dl $D6F006,$D6F1A6,GFX_Diddy_Hurt11,GFX_Diddy_Hurt11End
	dl $D6F1C0,$D6F340,GFX_Diddy_Hurt12,GFX_Diddy_Hurt12End
	dl $D6F35A,$D6F4DA,GFX_Diddy_Hurt13,GFX_Diddy_Hurt13End
	dl $D6F4F2,$D6F6B2,GFX_Diddy_Hurt14,GFX_Diddy_Hurt14End
	dl $D6F6CA,$D6F88A,GFX_Diddy_Hurt15,GFX_Diddy_Hurt15End
	dl $D6F8A2,$D6FA62,GFX_Diddy_Hurt16,GFX_Diddy_Hurt16End
	dl $D6FA7A,$D6FC3A,GFX_Diddy_Hurt18,GFX_Diddy_Hurt18End
	dl $D6FC52,$D6FE12,GFX_Diddy_Hurt19,GFX_Diddy_Hurt19End
	dl $D6FE2A,$D6FFEA,GFX_Diddy_Hurt20,GFX_Diddy_Hurt20End
	dl $D70014,$D70254,GFX_DonkeyKong_Pickup1,GFX_DonkeyKong_Pickup1End
	dl $D7026E,$D704AE,GFX_DonkeyKong_Pickup2,GFX_DonkeyKong_Pickup2End
	dl $D704C8,$D70708,GFX_DonkeyKong_Pickup3,GFX_DonkeyKong_Pickup3End
	dl $D7072A,$D709EA,GFX_DonkeyKong_Pickup4,GFX_DonkeyKong_Pickup4End
	dl $D70A0A,$D70CAA,GFX_DonkeyKong_Pickup5,GFX_DonkeyKong_Pickup5End
	dl $D70CCA,$D70F6A,GFX_DonkeyKong_Pickup6,GFX_DonkeyKong_Pickup6End
	dl $D70F8C,$D7124C,GFX_DonkeyKong_Pickup7,GFX_DonkeyKong_Pickup7End
	dl $D71266,$D714A6,GFX_DonkeyKong_SitDown1,GFX_DonkeyKong_SitDown1End
	dl $D714C2,$D71782,GFX_DonkeyKong_SitDown2,GFX_DonkeyKong_SitDown2End
	dl $D717A0,$D71A80,GFX_DonkeyKong_SitDown3,GFX_DonkeyKong_SitDown3End
	dl $D71A9C,$D71D5C,GFX_DonkeyKong_SitDown4,GFX_DonkeyKong_SitDown4End
	dl $D71D7C,$D7207C,GFX_DonkeyKong_SitDown5,GFX_DonkeyKong_SitDown5End
	dl $D7209A,$D723DA,GFX_DonkeyKong_SitDown6,GFX_DonkeyKong_SitDown6End
	dl $D723F6,$D72716,GFX_DonkeyKong_SitDown7,GFX_DonkeyKong_SitDown7End
	dl $D72732,$D72A52,GFX_DonkeyKong_Hurt14,GFX_DonkeyKong_Hurt14End
	dl $D72A6E,$D72D8E,GFX_DonkeyKong_Hurt15,GFX_DonkeyKong_Hurt15End
	dl $D72DAA,$D730CA,GFX_DonkeyKong_Hurt16,GFX_DonkeyKong_Hurt16End
	dl $D730E6,$D73406,GFX_DonkeyKong_Hurt17,GFX_DonkeyKong_Hurt17End
	dl $D73420,$D736C0,GFX_DonkeyKong_UnusedVictory1,GFX_DonkeyKong_UnusedVictory1End
	dl $D736DA,$D7397A,GFX_DonkeyKong_UnusedVictory2,GFX_DonkeyKong_UnusedVictory2End
	dl $D73998,$D73C18,GFX_DonkeyKong_UnusedVictory3,GFX_DonkeyKong_UnusedVictory3End
	dl $D73C34,$D73F54,GFX_DonkeyKong_UnusedVictory4,GFX_DonkeyKong_UnusedVictory4End
	dl $D73F7E,$D7431E,GFX_DonkeyKong_UnusedVictory5,GFX_DonkeyKong_UnusedVictory5End
	dl $D74342,$D746E2,GFX_DonkeyKong_UnusedVictory6,GFX_DonkeyKong_UnusedVictory6End
	dl $D7470C,$D74A4C,GFX_DonkeyKong_UnusedVictory7,GFX_DonkeyKong_UnusedVictory7End
	dl $D74A70,$D74DB0,GFX_DonkeyKong_UnusedVictory8,GFX_DonkeyKong_UnusedVictory8End
	dl $D74DD6,$D75076,GFX_DonkeyKong_UnusedVictory9,GFX_DonkeyKong_UnusedVictory9End
	dl $D75096,$D75336,GFX_DonkeyKong_UnusedVictory10,GFX_DonkeyKong_UnusedVictory10End
	dl $D75352,$D75612,GFX_DonkeyKong_UnusedVictory11,GFX_DonkeyKong_UnusedVictory11End
	dl $D7562A,$D7590A,GFX_DonkeyKong_UnusedVictory12,GFX_DonkeyKong_UnusedVictory12End
	dl $D7622A,$D7646A,GFX_DonkeyKong_Run1,GFX_DonkeyKong_Run1End
	dl $D76486,$D766E6,GFX_DonkeyKong_Run2,GFX_DonkeyKong_Run2End
	dl $D76704,$D76984,GFX_DonkeyKong_Run3,GFX_DonkeyKong_Run3End
	dl $D769A2,$D76C82,GFX_DonkeyKong_Run4,GFX_DonkeyKong_Run4End
	dl $D76CA6,$D76FE6,GFX_DonkeyKong_Run5,GFX_DonkeyKong_Run5End
	dl $D77010,$D772F0,GFX_DonkeyKong_Run6,GFX_DonkeyKong_Run6End
	dl $D77312,$D77632,GFX_DonkeyKong_Run7,GFX_DonkeyKong_Run7End
	dl $D77652,$D77952,GFX_DonkeyKong_Run8,GFX_DonkeyKong_Run8End
	dl $D77976,$D77CB6,GFX_DonkeyKong_Run9,GFX_DonkeyKong_Run9End
	dl $D77CD6,$D77FD6,GFX_DonkeyKong_Run10,GFX_DonkeyKong_Run10End
	dl $D77FFC,$D782FC,GFX_DonkeyKong_Run11,GFX_DonkeyKong_Run11End
	dl $D78320,$D78600,GFX_DonkeyKong_Run12,GFX_DonkeyKong_Run12End
	dl $D78628,$D78948,GFX_DonkeyKong_Run13,GFX_DonkeyKong_Run13End
	dl $D7896A,$D78C2A,GFX_DonkeyKong_Run14,GFX_DonkeyKong_Run14End
	dl $D78C4A,$D78EEA,GFX_DonkeyKong_Run15,GFX_DonkeyKong_Run15End
	dl $D78F08,$D79188,GFX_DonkeyKong_Run16,GFX_DonkeyKong_Run16End
	dl $D791A6,$D79426,GFX_DonkeyKong_Run17,GFX_DonkeyKong_Run17End
	dl $D79440,$D796E0,GFX_DonkeyKong_Run18,GFX_DonkeyKong_Run18End
	dl $D796FC,$D7995C,GFX_DonkeyKong_Run19,GFX_DonkeyKong_Run19End
	dl $D79974,$D79B94,GFX_DonkeyKong_Run20,GFX_DonkeyKong_Run20End
	dl $D79BB2,$D79DD2,GFX_Diddy_Throw1,GFX_Diddy_Throw1End
	dl $D79DEE,$D79FEE,GFX_Diddy_Throw2,GFX_Diddy_Throw2End
	dl $D7A008,$D7A1E8,GFX_Diddy_Throw3,GFX_Diddy_Throw3End
	dl $D7A1FE,$D7A3FE,GFX_Diddy_Throw4,GFX_Diddy_Throw4End
	dl $D7A416,$D7A636,GFX_Diddy_Throw5,GFX_Diddy_Throw5End
	dl $D7A64C,$D7A84C,GFX_Diddy_Throw6,GFX_Diddy_Throw6End
	dl $D7A866,$D7AA46,GFX_Diddy_Throw7,GFX_Diddy_Throw7End
	dl $D7AA60,$D7ABE0,GFX_Diddy_Throw8,GFX_Diddy_Throw8End
	dl $D7ABF8,$D7ADB8,GFX_Diddy_Throw9,GFX_Diddy_Throw9End
	dl $D7ADD2,$D7AFB2,GFX_Diddy_Throw10,GFX_Diddy_Throw10End
	dl $D7AFCC,$D7B20C,GFX_Diddy_Throw11,GFX_Diddy_Throw11End
	dl $D7B224,$D7B444,GFX_Diddy_Throw12,GFX_Diddy_Throw12End
	dl $D7B460,$D7B6C0,GFX_Diddy_Throw13,GFX_Diddy_Throw13End
	dl $D7B6DC,$D7B93C,GFX_Diddy_Throw14,GFX_Diddy_Throw14End
	dl $D7B95A,$D7BBDA,GFX_Diddy_Throw15,GFX_Diddy_Throw15End
	dl $D7BBF6,$D7BE56,GFX_Diddy_Throw16,GFX_Diddy_Throw16End
	dl $D7BE7A,$D7C0FA,GFX_Diddy_Throw17,GFX_Diddy_Throw17End
	dl $D7C11A,$D7C35A,GFX_Diddy_Throw18,GFX_Diddy_Throw18End
	dl $D7C374,$D7C5B4,GFX_Diddy_Throw19,GFX_Diddy_Throw19End
	dl $D7C5CE,$D7C7AE,GFX_Diddy_Throw20,GFX_Diddy_Throw20End
	dl $D7C7BC,$D7C8DC,GFX_GroundCover_CaveLevel,GFX_GroundCover_CaveLevelEnd
	dl $D7C8EE,$D7C9EE,GFX_PhonographHorn_Spin1,GFX_PhonographHorn_Spin1End
	dl $D7CA02,$D7CB22,GFX_PhonographHorn_Spin2,GFX_PhonographHorn_Spin2End
	dl $D7CB34,$D7CC34,GFX_PhonographHorn_Spin3,GFX_PhonographHorn_Spin3End
	dl $D7CC48,$D7CD68,GFX_PhonographHorn_Spin4,GFX_PhonographHorn_Spin4End
	dl $D7CD7E,$D7CEBE,GFX_PhonographHorn_Spin5,GFX_PhonographHorn_Spin5End
	dl $D7CED2,$D7CFF2,GFX_PhonographHorn_Spin6,GFX_PhonographHorn_Spin6End
	dl $D7D002,$D7D0E2,GFX_PhonographHorn_Spin7,GFX_PhonographHorn_Spin7End
	dl $D7D0F4,$D7D1F4,GFX_PhonographHorn_Spin8,GFX_PhonographHorn_Spin8End
	dl $D7D214,$D7D514,GFX_FunkyKong_LookTowardsCamera1,GFX_FunkyKong_LookTowardsCamera1End
	dl $D7D532,$D7D812,GFX_FunkyKong_LookTowardsCamera2,GFX_FunkyKong_LookTowardsCamera2End
	dl $D7D830,$D7DB10,GFX_FunkyKong_LookTowardsCamera3,GFX_FunkyKong_LookTowardsCamera3End
	dl $D7DB2C,$D7DDEC,GFX_FunkyKong_LookTowardsCamera4,GFX_FunkyKong_LookTowardsCamera4End
	dl $D7DE02,$D7E0C2,GFX_FunkyKong_LookTowardsCamera5,GFX_FunkyKong_LookTowardsCamera5End
	dl $D7E0DE,$D7E39E,GFX_FunkyKong_LookTowardsCamera6,GFX_FunkyKong_LookTowardsCamera6End
	dl $D7E3BA,$D7E67A,GFX_FunkyKong_LookTowardsCamera7,GFX_FunkyKong_LookTowardsCamera7End
	dl $D7E696,$D7E956,GFX_FunkyKong_LookTowardsCamera8,GFX_FunkyKong_LookTowardsCamera8End
	dl $D7E976,$D7EC16,GFX_FunkyKong_LookTowardsCamera9,GFX_FunkyKong_LookTowardsCamera9End
	dl $D7EC36,$D7EED6,GFX_FunkyKong_LookTowardsCamera10,GFX_FunkyKong_LookTowardsCamera10End
	dl $D7EEF6,$D7F196,GFX_FunkyKong_LookTowardsCamera11,GFX_FunkyKong_LookTowardsCamera11End
	dl $D7F1B8,$D7F478,GFX_FunkyKong_LookTowardsCamera12,GFX_FunkyKong_LookTowardsCamera12End
	dl $D7F49A,$D7F75A,GFX_FunkyKong_LookTowardsCamera13,GFX_FunkyKong_LookTowardsCamera13End
	dl $D7F77C,$D7FA3C,GFX_FunkyKong_LookTowardsCamera14,GFX_FunkyKong_LookTowardsCamera14End
	dl $D86DE2,$D87122,GFX_MankyKong_GrabBarrel1,GFX_MankyKong_GrabBarrel1End
	dl $D87146,$D87486,GFX_MankyKong_GrabBarrel2,GFX_MankyKong_GrabBarrel2End
	dl $D874A2,$D87762,GFX_MankyKong_GrabBarrel3,GFX_MankyKong_GrabBarrel3End
	dl $D87780,$D87A00,GFX_MankyKong_GrabBarrel4,GFX_MankyKong_GrabBarrel4End
	dl $D87A1A,$D87CBA,GFX_MankyKong_GrabBarrel5,GFX_MankyKong_GrabBarrel5End
	dl $D87CD4,$D87F74,GFX_MankyKong_GrabBarrel6,GFX_MankyKong_GrabBarrel6End
	dl $D87F8E,$D8822E,GFX_MankyKong_GrabBarrel7,GFX_MankyKong_GrabBarrel7End
	dl $D88248,$D884E8,GFX_MankyKong_GrabBarrel8,GFX_MankyKong_GrabBarrel8End
	dl $D88506,$D887E6,GFX_MankyKong_ThrowBarrel1,GFX_MankyKong_ThrowBarrel1End
	dl $D8880C,$D88B6C,GFX_MankyKong_ThrowBarrel2,GFX_MankyKong_ThrowBarrel2End
	dl $D88B90,$D88ED0,GFX_MankyKong_ThrowBarrel3,GFX_MankyKong_ThrowBarrel3End
	dl $D88EFA,$D8923A,GFX_MankyKong_ThrowBarrel4,GFX_MankyKong_ThrowBarrel4End
	dl $D89260,$D895C0,GFX_MankyKong_ThrowBarrel5,GFX_MankyKong_ThrowBarrel5End
	dl $D895DE,$D898BE,GFX_MankyKong_ThrowBarrel6,GFX_MankyKong_ThrowBarrel6End
	dl $D898E0,$D89BA0,GFX_MankyKong_ThrowBarrel7,GFX_MankyKong_ThrowBarrel7End
	dl $D89BC6,$D89EC6,GFX_MankyKong_ThrowBarrel8,GFX_MankyKong_ThrowBarrel8End
	dl $D89EEA,$D8A1CA,GFX_MankyKong_ThrowBarrel9,GFX_MankyKong_ThrowBarrel9End
	dl $D8A1EE,$D8A46E,GFX_MankyKong_ThrowBarrel10,GFX_MankyKong_ThrowBarrel10End
	dl $D8A492,$D8A712,GFX_MankyKong_ThrowBarrel11,GFX_MankyKong_ThrowBarrel11End
	dl $D8A738,$D8A9D8,GFX_MankyKong_ThrowBarrel12,GFX_MankyKong_ThrowBarrel12End
	dl $D8A9F2,$D8AC92,GFX_MankyKong_ThrowBarrel13,GFX_MankyKong_ThrowBarrel13End
	dl $D8ACB0,$D8AF30,GFX_MankyKong_ThrowBarrel14,GFX_MankyKong_ThrowBarrel14End
	dl $D8AF50,$D8B1F0,GFX_MankyKong_ThrowBarrel15,GFX_MankyKong_ThrowBarrel15End
	dl $D8B20C,$D8B46C,GFX_DonkeyKong_Idle1,GFX_DonkeyKong_Idle1End
	dl $D8B488,$D8B6E8,GFX_DonkeyKong_Idle2,GFX_DonkeyKong_Idle2End
	dl $D8B704,$D8B964,GFX_DonkeyKong_Idle3,GFX_DonkeyKong_Idle3End
	dl $D8B980,$D8BBE0,GFX_DonkeyKong_Idle4,GFX_DonkeyKong_Idle4End
	dl $D8BBFA,$D8BE9A,GFX_DonkeyKong_Idle5,GFX_DonkeyKong_Idle5End
	dl $D8BEB4,$D8C154,GFX_DonkeyKong_Idle6,GFX_DonkeyKong_Idle6End
	dl $D8C16E,$D8C40E,GFX_DonkeyKong_Idle7,GFX_DonkeyKong_Idle7End
	dl $D8C424,$D8C684,GFX_DonkeyKong_Idle8,GFX_DonkeyKong_Idle8End
	dl $D8C6A2,$D8C922,GFX_DonkeyKong_Idle9,GFX_DonkeyKong_Idle9End
	dl $D8C944,$D8CBA4,GFX_DonkeyKong_Idle10,GFX_DonkeyKong_Idle10End
	dl $D8CBC2,$D8CE42,GFX_DonkeyKong_Idle11,GFX_DonkeyKong_Idle11End
	dl $D8CE60,$D8D0E0,GFX_DonkeyKong_Idle12,GFX_DonkeyKong_Idle12End
	dl $D8D0FE,$D8D37E,GFX_DonkeyKong_Idle13,GFX_DonkeyKong_Idle13End
	dl $D8D39C,$D8D61C,GFX_DonkeyKong_Idle14,GFX_DonkeyKong_Idle14End
	dl $D8D63A,$D8D8BA,GFX_DonkeyKong_Idle15,GFX_DonkeyKong_Idle15End
	dl $D8D8D8,$D8DB58,GFX_DonkeyKong_Idle16,GFX_DonkeyKong_Idle16End
	dl $D8DB76,$D8DDF6,GFX_DonkeyKong_Idle17,GFX_DonkeyKong_Idle17End
	dl $D8DE14,$D8E094,GFX_DonkeyKong_Idle18,GFX_DonkeyKong_Idle18End
	dl $D8E0B2,$D8E332,GFX_DonkeyKong_Idle19,GFX_DonkeyKong_Idle19End
	dl $D8E350,$D8E5D0,GFX_DonkeyKong_Idle20,GFX_DonkeyKong_Idle20End
	dl $D8E5F0,$D8E890,GFX_DonkeyKong_Idle21,GFX_DonkeyKong_Idle21End
	dl $D8E8B2,$D8EBD2,GFX_Rockkroc_Turn1,GFX_Rockkroc_Turn1End
	dl $D8EBF0,$D8EED0,GFX_Rockkroc_Turn2,GFX_Rockkroc_Turn2End
	dl $D9EEE4,$D9EF64,GFX_SmallFish_Swim1,GFX_SmallFish_Swim1End
	dl $D9EF74,$D9EFF4,GFX_SmallFish_Swim2,GFX_SmallFish_Swim2End
	dl $D9F004,$D9F084,GFX_SmallFish_Swim3,GFX_SmallFish_Swim3End
	dl $D9F094,$D9F114,GFX_SmallFish_Swim4,GFX_SmallFish_Swim4End
	dl $D9F124,$D9F1A4,GFX_SmallFish_Swim5,GFX_SmallFish_Swim5End
	dl $D9F1B4,$D9F234,GFX_SmallFish_Swim6,GFX_SmallFish_Swim6End
	dl $D9F244,$D9F2C4,GFX_SmallFish_Swim7,GFX_SmallFish_Swim7End
	dl $D9F2D4,$D9F354,GFX_SmallFish_Swim8,GFX_SmallFish_Swim8End
	dl $D9F360,$D9F400,GFX_InactiveMapDonkeyKong_Jump1,GFX_InactiveMapDonkeyKong_Jump1End
	dl $D9F40C,$D9F4AC,GFX_InactiveMapDonkeyKong_Jump2,GFX_InactiveMapDonkeyKong_Jump2End
	dl $D9F4BC,$D9F53C,GFX_InactiveMapDonkeyKong_Jump3,GFX_InactiveMapDonkeyKong_Jump3End
	dl $D9F54E,$D9F5EE,GFX_InactiveMapDonkeyKong_Jump4,GFX_InactiveMapDonkeyKong_Jump4End
	dl $D9F5FC,$D9F6BC,GFX_InactiveMapDonkeyKong_Jump5,GFX_InactiveMapDonkeyKong_Jump5End
	dl $D9F6CA,$D9F78A,GFX_InactiveMapDonkeyKong_Jump6,GFX_InactiveMapDonkeyKong_Jump6End
	dl $D9F796,$D9F836,GFX_InactiveMapDonkeyKong_Jump7,GFX_InactiveMapDonkeyKong_Jump7End
	dl $D9F842,$D9F8E2,GFX_InactiveMapDonkeyKong_Jump8,GFX_InactiveMapDonkeyKong_Jump8End
	dl $D9F8EE,$D9F98E,GFX_InactiveMapDonkeyKong_Jump9,GFX_InactiveMapDonkeyKong_Jump9End
	dl $D9F99A,$D9FA3A,GFX_InactiveMapDonkeyKong_Jump10,GFX_InactiveMapDonkeyKong_Jump10End
	dl $D9FA44,$D9FAC4,GFX_InactiveMapDonkeyKong_Walk1,GFX_InactiveMapDonkeyKong_Walk1End
	dl $D9FAD0,$D9FB70,GFX_InactiveMapDonkeyKong_Walk2,GFX_InactiveMapDonkeyKong_Walk2End
	dl $D9FB7A,$D9FBFA,GFX_InactiveMapDonkeyKong_Walk3,GFX_InactiveMapDonkeyKong_Walk3End
	dl $D9FC04,$D9FC84,GFX_InactiveMapDonkeyKong_Walk4,GFX_InactiveMapDonkeyKong_Walk4End
	dl $D9FC8E,$D9FD0E,GFX_InactiveMapDonkeyKong_Walk5,GFX_InactiveMapDonkeyKong_Walk5End
	dl $D9FD18,$D9FD98,GFX_InactiveMapDonkeyKong_Walk6,GFX_InactiveMapDonkeyKong_Walk6End
	dl $D9FDA2,$D9FE22,GFX_InactiveMapDonkeyKong_Walk7,GFX_InactiveMapDonkeyKong_Walk7End
	dl $D9FE2C,$D9FEAC,GFX_InactiveMapDonkeyKong_Walk8,GFX_InactiveMapDonkeyKong_Walk8End
	dl $D9FEB6,$D9FF36,GFX_InactiveMapDonkeyKong_Walk9,GFX_InactiveMapDonkeyKong_Walk9End
	dl $DAF590,$DAF670,GFX_MapDonkeyKong_Walk1,GFX_MapDonkeyKong_Walk1End
	dl $DAF680,$DAF760,GFX_MapDonkeyKong_Walk2,GFX_MapDonkeyKong_Walk2End
	dl $DAF770,$DAF850,GFX_MapDonkeyKong_Walk3,GFX_MapDonkeyKong_Walk3End
	dl $DAF860,$DAF940,GFX_MapDonkeyKong_Walk4,GFX_MapDonkeyKong_Walk4End
	dl $DAF950,$DAFA30,GFX_MapDonkeyKong_Walk5,GFX_MapDonkeyKong_Walk5End
	dl $DAFA42,$DAFB42,GFX_MapDonkeyKong_Walk6,GFX_MapDonkeyKong_Walk6End
	dl $DAFB52,$DAFC32,GFX_MapDonkeyKong_Walk7,GFX_MapDonkeyKong_Walk7End
	dl $DAFC40,$DAFD00,GFX_MapDonkeyKong_Walk8,GFX_MapDonkeyKong_Walk8End
	dl $DAFD10,$DAFDF0,GFX_MapDonkeyKong_Walk9,GFX_MapDonkeyKong_Walk9End
	dl $DAFE02,$DAFF02,GFX_MapDonkeyKong_Walk10,GFX_MapDonkeyKong_Walk10End
	dl $DB002C,$DB05CC,GFX_AirplaneBarrel_Pose,GFX_AirplaneBarrel_PoseEnd
	dl $DBEFA0,$DBF0C0,GFX_Diddy_IdleInMinecart1,GFX_Diddy_IdleInMinecart1End
	dl $DBF0D4,$DBF1F4,GFX_Diddy_IdleInMinecart2,GFX_Diddy_IdleInMinecart2End
	dl $DBF204,$DBF344,GFX_Diddy_IdleInMinecart3,GFX_Diddy_IdleInMinecart3End
	dl $DBF352,$DBF3B2,GFX_NeckyFeather_Pose1,GFX_NeckyFeather_Pose1End
	dl $DBF3C0,$DBF420,GFX_NeckyFeather_Pose2,GFX_NeckyFeather_Pose2End
	dl $DBF42E,$DBF48E,GFX_NeckyFeather_Pose3,GFX_NeckyFeather_Pose3End
	dl $DBF49C,$DBF4FC,GFX_NeckyFeather_Pose4,GFX_NeckyFeather_Pose4End
	dl $DBF50A,$DBF56A,GFX_NeckyFeather_Pose5,GFX_NeckyFeather_Pose5End
	dl $DBF578,$DBF5D8,GFX_NeckyFeather_Pose6,GFX_NeckyFeather_Pose6End
	dl $DC5F4C,$DC614C,GFX_Diddy_ClimbUpSingleVerticalRope1,GFX_Diddy_ClimbUpSingleVerticalRope1End
	dl $DC6160,$DC6340,GFX_Diddy_ClimbUpSingleVerticalRope2,GFX_Diddy_ClimbUpSingleVerticalRope2End
	dl $DC6354,$DC6534,GFX_Diddy_ClimbUpSingleVerticalRope3,GFX_Diddy_ClimbUpSingleVerticalRope3End
	dl $DC654A,$DC674A,GFX_Diddy_ClimbUpSingleVerticalRope4,GFX_Diddy_ClimbUpSingleVerticalRope4End
	dl $DC6762,$DC6982,GFX_Diddy_ClimbUpSingleVerticalRope5,GFX_Diddy_ClimbUpSingleVerticalRope5End
	dl $DC6998,$DC6B98,GFX_Diddy_ClimbUpSingleVerticalRope6,GFX_Diddy_ClimbUpSingleVerticalRope6End
	dl $DC6BAE,$DC6DAE,GFX_Diddy_ClimbUpSingleVerticalRope7,GFX_Diddy_ClimbUpSingleVerticalRope7End
	dl $DC6DC4,$DC6FC4,GFX_Diddy_ClimbUpSingleVerticalRope8,GFX_Diddy_ClimbUpSingleVerticalRope8End
	dl $DC6FDA,$DC71DA,GFX_Diddy_ClimbUpSingleVerticalRope9,GFX_Diddy_ClimbUpSingleVerticalRope9End
	dl $DC71F0,$DC73F0,GFX_Diddy_ClimbUpSingleVerticalRope10,GFX_Diddy_ClimbUpSingleVerticalRope10End
	dl $DC7404,$DC75E4,GFX_Diddy_ClimbUpSingleVerticalRope11,GFX_Diddy_ClimbUpSingleVerticalRope11End
	dl $DC75F8,$DC77D8,GFX_Diddy_ClimbUpSingleVerticalRope12,GFX_Diddy_ClimbUpSingleVerticalRope12End
	dl $DC77E8,$DC7868,GFX_VerticalRope_Pose,GFX_VerticalRope_PoseEnd
	dl $DC787E,$DC7A7E,GFX_DonkeyKong_ClimbUpSingleVerticalRope1,GFX_DonkeyKong_ClimbUpSingleVerticalRope1End
	dl $DC7A94,$DC7C94,GFX_DonkeyKong_ClimbUpSingleVerticalRope2,GFX_DonkeyKong_ClimbUpSingleVerticalRope2End
	dl $DC7CAC,$DC7ECC,GFX_DonkeyKong_ClimbUpSingleVerticalRope3,GFX_DonkeyKong_ClimbUpSingleVerticalRope3End
	dl $DC7EE2,$DC8142,GFX_DonkeyKong_ClimbUpSingleVerticalRope4,GFX_DonkeyKong_ClimbUpSingleVerticalRope4End
	dl $DC815C,$DC83FC,GFX_DonkeyKong_ClimbUpSingleVerticalRope5,GFX_DonkeyKong_ClimbUpSingleVerticalRope5End
	dl $DC841A,$DC869A,GFX_DonkeyKong_ClimbUpSingleVerticalRope6,GFX_DonkeyKong_ClimbUpSingleVerticalRope6End
	dl $DC86AE,$DC888E,GFX_DonkeyKong_HangOnVerticalRope1,GFX_DonkeyKong_HangOnVerticalRope1End
	dl $DC88A2,$DC8A82,GFX_DonkeyKong_HangOnVerticalRope2,GFX_DonkeyKong_HangOnVerticalRope2End
	dl $DC8A96,$DC8C76,GFX_DonkeyKong_HangOnVerticalRope3,GFX_DonkeyKong_HangOnVerticalRope3End
	dl $DC8C8A,$DC8E6A,GFX_DonkeyKong_HangOnVerticalRope4,GFX_DonkeyKong_HangOnVerticalRope4End
	dl $DC8E80,$DC9080,GFX_DonkeyKong_TurnOnVerticalRope1,GFX_DonkeyKong_TurnOnVerticalRope1End
	dl $DC9092,$DC9252,GFX_DonkeyKong_TurnOnVerticalRope2,GFX_DonkeyKong_TurnOnVerticalRope2End
	dl $DC9272,$DC95D2,GFX_DonkeyKong_SwingOnRope1,GFX_DonkeyKong_SwingOnRope1End
	dl $DC95F2,$DC9952,GFX_DonkeyKong_SwingOnRope2,GFX_DonkeyKong_SwingOnRope2End
	dl $DC9972,$DC9CD2,GFX_DonkeyKong_SwingOnRope3,GFX_DonkeyKong_SwingOnRope3End
	dl $DC9CF0,$DCA030,GFX_DonkeyKong_SwingOnRope4,GFX_DonkeyKong_SwingOnRope4End
	dl $DCA050,$DCA3B0,GFX_DonkeyKong_SwingOnRope5,GFX_DonkeyKong_SwingOnRope5End
	dl $DCA3CC,$DCA6EC,GFX_DonkeyKong_SwingOnRope6,GFX_DonkeyKong_SwingOnRope6End
	dl $DCA708,$DCAA28,GFX_DonkeyKong_SwingOnRope7,GFX_DonkeyKong_SwingOnRope7End
	dl $DCAA44,$DCAD64,GFX_DonkeyKong_SwingOnRope8,GFX_DonkeyKong_SwingOnRope8End
	dl $DCAD84,$DCB084,GFX_DonkeyKong_SwingOnRope9,GFX_DonkeyKong_SwingOnRope9End
	dl $DCB0A4,$DCB3A4,GFX_DonkeyKong_SwingOnRope10,GFX_DonkeyKong_SwingOnRope10End
	dl $DCB3C2,$DCB6A2,GFX_DonkeyKong_SwingOnRope11,GFX_DonkeyKong_SwingOnRope11End
	dl $DCB6BE,$DCB97E,GFX_DonkeyKong_SwingOnRope12,GFX_DonkeyKong_SwingOnRope12End
	dl $DCB99C,$DCBC7C,GFX_DonkeyKong_SwingOnRope13,GFX_DonkeyKong_SwingOnRope13End
	dl $DCBC96,$DCBF36,GFX_DonkeyKong_SwingOnRope14,GFX_DonkeyKong_SwingOnRope14End
	dl $DCBF4E,$DCC1CE,GFX_DonkeyKong_SwingOnRope15,GFX_DonkeyKong_SwingOnRope15End
	dl $DCC1E8,$DCC488,GFX_DonkeyKong_SwingOnRope16,GFX_DonkeyKong_SwingOnRope16End
	dl $DCC4A2,$DCC742,GFX_DonkeyKong_SwingOnRope17,GFX_DonkeyKong_SwingOnRope17End
	dl $DCC760,$DCC9E0,GFX_DonkeyKong_SwingOnRope18,GFX_DonkeyKong_SwingOnRope18End
	dl $DCC9F8,$DCCC78,GFX_DonkeyKong_SwingOnRope19,GFX_DonkeyKong_SwingOnRope19End
	dl $DCCC90,$DCCF10,GFX_DonkeyKong_SwingOnRope20,GFX_DonkeyKong_SwingOnRope20End
	dl $DCCF28,$DCD1A8,GFX_DonkeyKong_SwingOnRope21,GFX_DonkeyKong_SwingOnRope21End
	dl $DCD1C0,$DCD440,GFX_DonkeyKong_SwingOnRope22,GFX_DonkeyKong_SwingOnRope22End
	dl $DCD456,$DCD6B6,GFX_DonkeyKong_SwingOnRope23,GFX_DonkeyKong_SwingOnRope23End
	dl $DCD6CC,$DCD92C,GFX_DonkeyKong_SwingOnRope24,GFX_DonkeyKong_SwingOnRope24End
	dl $DCD942,$DCDBA2,GFX_DonkeyKong_SwingOnRope25,GFX_DonkeyKong_SwingOnRope25End
	dl $DCDBB8,$DCDE18,GFX_DonkeyKong_SwingOnRope26,GFX_DonkeyKong_SwingOnRope26End
	dl $DCDE30,$DCE050,GFX_DonkeyKong_SwingOnRope27,GFX_DonkeyKong_SwingOnRope27End
	dl $DCE068,$DCE288,GFX_DonkeyKong_SwingOnRope28,GFX_DonkeyKong_SwingOnRope28End
	dl $DCE2A8,$DCE4E8,GFX_DonkeyKong_SwingOnRope29,GFX_DonkeyKong_SwingOnRope29End
	dl $DCE504,$DCE764,GFX_DonkeyKong_SwingOnRope30,GFX_DonkeyKong_SwingOnRope30End
	dl $DCE780,$DCE9E0,GFX_DonkeyKong_SwingOnRope31,GFX_DonkeyKong_SwingOnRope31End
	dl $DD001C,$DD027C,GFX_Diddy_SwingOnRope1,GFX_Diddy_SwingOnRope1End
	dl $DD0298,$DD04F8,GFX_Diddy_SwingOnRope2,GFX_Diddy_SwingOnRope2End
	dl $DD0518,$DD0758,GFX_Diddy_SwingOnRope3,GFX_Diddy_SwingOnRope3End
	dl $DD0778,$DD09B8,GFX_Diddy_SwingOnRope4,GFX_Diddy_SwingOnRope4End
	dl $DD09D8,$DD0C18,GFX_Diddy_SwingOnRope5,GFX_Diddy_SwingOnRope5End
	dl $DD0C38,$DD0E78,GFX_Diddy_SwingOnRope6,GFX_Diddy_SwingOnRope6End
	dl $DD0E94,$DD10F4,GFX_Diddy_SwingOnRope7,GFX_Diddy_SwingOnRope7End
	dl $DD1110,$DD1370,GFX_Diddy_SwingOnRope8,GFX_Diddy_SwingOnRope8End
	dl $DD138C,$DD15EC,GFX_Diddy_SwingOnRope9,GFX_Diddy_SwingOnRope9End
	dl $DD160A,$DD182A,GFX_Diddy_SwingOnRope10,GFX_Diddy_SwingOnRope10End
	dl $DD1844,$DD1A84,GFX_Diddy_SwingOnRope11,GFX_Diddy_SwingOnRope11End
	dl $DD1AA0,$DD1CA0,GFX_Diddy_SwingOnRope12,GFX_Diddy_SwingOnRope12End
	dl $DD1CBE,$DD1EDE,GFX_Diddy_SwingOnRope13,GFX_Diddy_SwingOnRope13End
	dl $DD1EFC,$DD211C,GFX_Diddy_SwingOnRope14,GFX_Diddy_SwingOnRope14End
	dl $DD2138,$DD2338,GFX_Diddy_SwingOnRope15,GFX_Diddy_SwingOnRope15End
	dl $DD2354,$DD2554,GFX_Diddy_SwingOnRope16,GFX_Diddy_SwingOnRope16End
	dl $DD2570,$DD2770,GFX_Diddy_SwingOnRope17,GFX_Diddy_SwingOnRope17End
	dl $DD278E,$DD29AE,GFX_Diddy_SwingOnRope18,GFX_Diddy_SwingOnRope18End
	dl $DD29CC,$DD2BEC,GFX_Diddy_SwingOnRope19,GFX_Diddy_SwingOnRope19End
	dl $DD2C04,$DD2E24,GFX_Diddy_SwingOnRope20,GFX_Diddy_SwingOnRope20End
	dl $DD2E3C,$DD305C,GFX_Diddy_SwingOnRope21,GFX_Diddy_SwingOnRope21End
	dl $DD3074,$DD3294,GFX_Diddy_SwingOnRope22,GFX_Diddy_SwingOnRope22End
	dl $DD32B2,$DD34D2,GFX_Diddy_SwingOnRope23,GFX_Diddy_SwingOnRope23End
	dl $DD34F0,$DD3710,GFX_Diddy_SwingOnRope24,GFX_Diddy_SwingOnRope24End
	dl $DD372E,$DD394E,GFX_Diddy_SwingOnRope25,GFX_Diddy_SwingOnRope25End
	dl $DD396C,$DD3B8C,GFX_Diddy_SwingOnRope26,GFX_Diddy_SwingOnRope26End
	dl $DD3BAA,$DD3DCA,GFX_Diddy_SwingOnRope27,GFX_Diddy_SwingOnRope27End
	dl $DD3DEA,$DD402A,GFX_Diddy_SwingOnRope28,GFX_Diddy_SwingOnRope28End
	dl $DD404A,$DD428A,GFX_Diddy_SwingOnRope29,GFX_Diddy_SwingOnRope29End
	dl $DD42AA,$DD44EA,GFX_Diddy_SwingOnRope30,GFX_Diddy_SwingOnRope30End
	dl $DD450A,$DD474A,GFX_Diddy_SwingOnRope31,GFX_Diddy_SwingOnRope31End
	dl $DD4768,$DD4A48,GFX_Chomps_Swim1,GFX_Chomps_Swim1End
	dl $DD4A66,$DD4D46,GFX_Chomps_Swim2,GFX_Chomps_Swim2End
	dl $DD4D60,$DD5000,GFX_Chomps_Swim3,GFX_Chomps_Swim3End
	dl $DD5016,$DD5276,GFX_Chomps_Swim4,GFX_Chomps_Swim4End
	dl $DD528C,$DD54EC,GFX_Chomps_Swim5,GFX_Chomps_Swim5End
	dl $DD5504,$DD5724,GFX_Chomps_Swim6,GFX_Chomps_Swim6End
	dl $DD573C,$DD595C,GFX_Chomps_Swim7,GFX_Chomps_Swim7End
	dl $DD5976,$DD5BB6,GFX_Chomps_Swim8,GFX_Chomps_Swim8End
	dl $DD5BCA,$DD5E0A,GFX_Chomps_Swim9,GFX_Chomps_Swim9End
	dl $DD5E20,$DD6080,GFX_Chomps_Swim10,GFX_Chomps_Swim10End
	dl $DD6094,$DD62D4,GFX_Chomps_Swim11,GFX_Chomps_Swim11End
	dl $DD62EC,$DD656C,GFX_Chomps_Swim12,GFX_Chomps_Swim12End
	dl $DD6588,$DD6848,GFX_Chomps_Swim13,GFX_Chomps_Swim13End
	dl $DD6864,$DD6B24,GFX_Chomps_Swim14,GFX_Chomps_Swim14End
	dl $DD6B44,$DD6DE4,GFX_Chomps_Swim15,GFX_Chomps_Swim15End
	dl $DD6E06,$DD70C6,GFX_Chomps_Swim16,GFX_Chomps_Swim16End
	dl $DD70E0,$DD72C0,GFX_Diddy_IdleSway1,GFX_Diddy_IdleSway1End
	dl $DD72DA,$DD74BA,GFX_Diddy_IdleSway2,GFX_Diddy_IdleSway2End
	dl $DD74D4,$DD76B4,GFX_Diddy_IdleSway3,GFX_Diddy_IdleSway3End
	dl $DD76CA,$DD786A,GFX_Diddy_IdleSway4,GFX_Diddy_IdleSway4End
	dl $DD7880,$DD7A20,GFX_Diddy_IdleSway5,GFX_Diddy_IdleSway5End
	dl $DD7A36,$DD7BD6,GFX_Diddy_IdleSway6,GFX_Diddy_IdleSway6End
	dl $DD7BEE,$DD7DAE,GFX_Diddy_IdleSway7,GFX_Diddy_IdleSway7End
	dl $DD7DC6,$DD7F86,GFX_Diddy_IdleSway8,GFX_Diddy_IdleSway8End
	dl $DD7FA0,$DD8180,GFX_Diddy_IdleSway9,GFX_Diddy_IdleSway9End
	dl $DD819C,$DD839C,GFX_Diddy_IdleSway10,GFX_Diddy_IdleSway10End
	dl $DD83B2,$DD85B2,GFX_Diddy_IdleSway11,GFX_Diddy_IdleSway11End
	dl $DD85CE,$DD87CE,GFX_Diddy_IdleSway12,GFX_Diddy_IdleSway12End
	dl $DD87EA,$DD89EA,GFX_Diddy_IdleSway13,GFX_Diddy_IdleSway13End
	dl $DD8A06,$DD8C06,GFX_Diddy_IdleSway14,GFX_Diddy_IdleSway14End
	dl $DD8C22,$DD8E22,GFX_Diddy_IdleSway15,GFX_Diddy_IdleSway15End
	dl $DD8E40,$DD9060,GFX_Diddy_IdleSway16,GFX_Diddy_IdleSway16End
	dl $DD9076,$DD9276,GFX_Diddy_IdleSway17,GFX_Diddy_IdleSway17End
	dl $DD928C,$DD948C,GFX_Diddy_IdleSway18,GFX_Diddy_IdleSway18End
	dl $DD94A2,$DD96A2,GFX_Diddy_IdleSway19,GFX_Diddy_IdleSway19End
	dl $DD96BA,$DD98DA,GFX_Diddy_IdleSway20,GFX_Diddy_IdleSway20End
	dl $DD98F4,$DD9AD4,GFX_Diddy_IdleSway21,GFX_Diddy_IdleSway21End
	dl $DD9AEE,$DD9CCE,GFX_Diddy_IdleSway22,GFX_Diddy_IdleSway22End
	dl $DE0014,$DE0254,GFX_OilFire_GrowOrShrink1,GFX_OilFire_GrowOrShrink1End
	dl $DE0266,$DE0486,GFX_OilFire_GrowOrShrink2,GFX_OilFire_GrowOrShrink2End
	dl $DE0496,$DE0696,GFX_OilFire_GrowOrShrink3,GFX_OilFire_GrowOrShrink3End
	dl $DE06A6,$DE08A6,GFX_OilFire_GrowOrShrink4,GFX_OilFire_GrowOrShrink4End
	dl $DE08B8,$DE0A78,GFX_OilFire_GrowOrShrink5,GFX_OilFire_GrowOrShrink5End
	dl $DE0A88,$DE0C28,GFX_OilFire_GrowOrShrink6,GFX_OilFire_GrowOrShrink6End
	dl $DE0C3C,$DE0DBC,GFX_OilFire_GrowOrShrink7,GFX_OilFire_GrowOrShrink7End
	dl $DE0DCE,$DE0F2E,GFX_OilFire_GrowOrShrink8,GFX_OilFire_GrowOrShrink8End
	dl $DE0F42,$DE1062,GFX_OilFire_GrowOrShrink9,GFX_OilFire_GrowOrShrink9End
	dl $DE1074,$DE1174,GFX_OilFire_GrowOrShrink10,GFX_OilFire_GrowOrShrink10End
	dl $DE1182,$DE1242,GFX_OilFire_GrowOrShrink11,GFX_OilFire_GrowOrShrink11End
	dl $DE1250,$DE1310,GFX_OilFire_GrowOrShrink12,GFX_OilFire_GrowOrShrink12End
	dl $DE131E,$DE137E,GFX_OilFire_GrowOrShrink13,GFX_OilFire_GrowOrShrink13End
	dl $DE138A,$DE13CA,GFX_OilFire_GrowOrShrink14,GFX_OilFire_GrowOrShrink14End
	dl $DE13D6,$DE1416,GFX_OilFire_GrowOrShrink15,GFX_OilFire_GrowOrShrink15End
	dl $DE1420,$DE1440,GFX_OilFire_GrowOrShrink16,GFX_OilFire_GrowOrShrink16End
	dl $DE145E,$DE167E,GFX_Diddy_HangOntoStabbingEnguarde1,GFX_Diddy_HangOntoStabbingEnguarde1End
	dl $DE169E,$DE18DE,GFX_Diddy_HangOntoStabbingEnguarde2,GFX_Diddy_HangOntoStabbingEnguarde2End
	dl $DE18F8,$DE1B38,GFX_Diddy_HangOntoStabbingEnguarde3,GFX_Diddy_HangOntoStabbingEnguarde3End
	dl $DE1B54,$DE1D54,GFX_Diddy_HangOntoStabbingEnguarde4,GFX_Diddy_HangOntoStabbingEnguarde4End
	dl $DE1D72,$DE1F92,GFX_Diddy_HangOntoStabbingEnguarde5,GFX_Diddy_HangOntoStabbingEnguarde5End
	dl $DE1FAA,$DE222A,GFX_DonkeyKong_Duck1,GFX_DonkeyKong_Duck1End
	dl $DE2246,$DE2506,GFX_DonkeyKong_Duck2,GFX_DonkeyKong_Duck2End
	dl $DE2520,$DE27C0,GFX_DonkeyKong_Duck3,GFX_DonkeyKong_Duck3End
	dl $DE27D4,$DE2A74,GFX_DonkeyKong_Duck4,GFX_DonkeyKong_Duck4End
	dl $DE2A8C,$DE2D0C,GFX_DonkeyKong_Duck5,GFX_DonkeyKong_Duck5End
	dl $DE2D2C,$DE2FCC,GFX_DonkeyKong_Duck6,GFX_DonkeyKong_Duck6End
	dl $DE2FEE,$DE324E,GFX_DonkeyKong_Duck7,GFX_DonkeyKong_Duck7End
	dl $DE326A,$DE34CA,GFX_DonkeyKong_Duck8,GFX_DonkeyKong_Duck8End
	dl $DE34E6,$DE3746,GFX_DonkeyKong_Duck9,GFX_DonkeyKong_Duck9End
	dl $DE3764,$DE39E4,GFX_DonkeyKong_Duck10,GFX_DonkeyKong_Duck10End
	dl $DE3A04,$DE3CA4,GFX_DonkeyKong_Duck11,GFX_DonkeyKong_Duck11End
	dl $DE3CC4,$DE3F64,GFX_DonkeyKong_Duck12,GFX_DonkeyKong_Duck12End
	dl $DE3F84,$DE4224,GFX_DonkeyKong_Duck13,GFX_DonkeyKong_Duck13End
	dl $DE4244,$DE44E4,GFX_DonkeyKong_Duck14,GFX_DonkeyKong_Duck14End
	dl $DE4504,$DE47A4,GFX_DonkeyKong_Duck15,GFX_DonkeyKong_Duck15End
	dl $DE47C0,$DE4A80,GFX_DonkeyKong_Duck16,GFX_DonkeyKong_Duck16End
	dl $DE4A9C,$DE4D5C,GFX_DonkeyKong_Duck17,GFX_DonkeyKong_Duck17End
	dl $DE4D78,$DE5038,GFX_DonkeyKong_Duck18,GFX_DonkeyKong_Duck18End
	dl $DE5054,$DE5314,GFX_DonkeyKong_Duck19,GFX_DonkeyKong_Duck19End
	dl $DE5330,$DE55F0,GFX_DonkeyKong_Duck20,GFX_DonkeyKong_Duck20End
	dl $DE560C,$DE58CC,GFX_DonkeyKong_Duck21,GFX_DonkeyKong_Duck21End
	dl $DE58E8,$DE5BA8,GFX_DonkeyKong_Duck22,GFX_DonkeyKong_Duck22End
	dl $DE5BBA,$DE5D1A,GFX_SmallFire_Pose1,GFX_SmallFire_Pose1End
	dl $DE5D2C,$DE5E8C,GFX_SmallFire_Pose2,GFX_SmallFire_Pose2End
	dl $DE5E9C,$DE5FDC,GFX_SmallFire_Pose3,GFX_SmallFire_Pose3End
	dl $DE5FEE,$DE614E,GFX_SmallFire_Pose4,GFX_SmallFire_Pose4End
	dl $DE6160,$DE62C0,GFX_SmallFire_Pose5,GFX_SmallFire_Pose5End
	dl $DE62D0,$DE6410,GFX_SmallFire_Pose6,GFX_SmallFire_Pose6End
	dl $DE6420,$DE6560,GFX_SmallFire_Pose7,GFX_SmallFire_Pose7End
	dl $DE6570,$DE66B0,GFX_SmallFire_Pose8,GFX_SmallFire_Pose8End
	dl $DE66C2,$DE6822,GFX_DonkeyKong_AngledInMinecart1,GFX_DonkeyKong_AngledInMinecart1End
	dl $DE6834,$DE6994,GFX_DonkeyKong_AngledInMinecart2,GFX_DonkeyKong_AngledInMinecart2End
	dl $DE69A8,$DE6B28,GFX_DonkeyKong_AngledInMinecart3,GFX_DonkeyKong_AngledInMinecart3End
	dl $DE6B38,$DE6C78,GFX_DonkeyKong_AngledInMinecart4,GFX_DonkeyKong_AngledInMinecart4End
	dl $DE6C88,$DE6DC8,GFX_DonkeyKong_AngledInMinecart5,GFX_DonkeyKong_AngledInMinecart5End
	dl $DE6DD8,$DE6F18,GFX_DonkeyKong_AngledInMinecart6,GFX_DonkeyKong_AngledInMinecart6End
	dl $DE6F28,$DE7068,GFX_DonkeyKong_AngledInMinecart7,GFX_DonkeyKong_AngledInMinecart7End
	dl $DE7078,$DE71B8,GFX_DonkeyKong_AngledInMinecart8,GFX_DonkeyKong_AngledInMinecart8End
	dl $DE71C8,$DE7308,GFX_DonkeyKong_AngledInMinecart9,GFX_DonkeyKong_AngledInMinecart9End
	dl $DE7318,$DE7458,GFX_DonkeyKong_AngledInMinecart10,GFX_DonkeyKong_AngledInMinecart10End
	dl $DE746C,$DE75EC,GFX_DonkeyKong_AngledInMinecart11,GFX_DonkeyKong_AngledInMinecart11End
	dl $DE75FE,$DE775E,GFX_DonkeyKong_AngledInMinecart12,GFX_DonkeyKong_AngledInMinecart12End
	dl $DE7770,$DE78D0,GFX_DonkeyKong_AngledInMinecart13,GFX_DonkeyKong_AngledInMinecart13End
	dl $DE78E2,$DE7A42,GFX_DonkeyKong_AngledInMinecart14,GFX_DonkeyKong_AngledInMinecart14End
	dl $DE7A54,$DE7BB4,GFX_DonkeyKong_AngledInMinecart15,GFX_DonkeyKong_AngledInMinecart15End
	dl $DE7BC4,$DE7D04,GFX_DonkeyKong_AngledInMinecart16,GFX_DonkeyKong_AngledInMinecart16End
	dl $DE7D14,$DE7E54,GFX_DonkeyKong_AngledInMinecart17,GFX_DonkeyKong_AngledInMinecart17End
	dl $DE7E64,$DE7FA4,GFX_DonkeyKong_AngledInMinecart18,GFX_DonkeyKong_AngledInMinecart18End
	dl $DE7FB4,$DE80F4,GFX_DonkeyKong_AngledInMinecart19,GFX_DonkeyKong_AngledInMinecart19End
	dl $DE8104,$DE8244,GFX_DonkeyKong_AngledInMinecart20,GFX_DonkeyKong_AngledInMinecart20End
	dl $DE825C,$DE841C,GFX_Army_Stomp1,GFX_Army_Stomp1End
	dl $DE8436,$DE8616,GFX_Army_Stomp2,GFX_Army_Stomp2End
	dl $DE862E,$DE87EE,GFX_Army_Stomp3,GFX_Army_Stomp3End
	dl $DE8808,$DE89E8,GFX_Army_Stomp4,GFX_Army_Stomp4End
	dl $DE89F4,$DE8A34,GFX_BurstEffect_Pose1,GFX_BurstEffect_Pose1End
	dl $DE8A3E,$DE8ABE,GFX_BurstEffect_Pose2,GFX_BurstEffect_Pose2End
	dl $DE8ACC,$DE8B8C,GFX_BurstEffect_Pose3,GFX_BurstEffect_Pose3End
	dl $DE8B9E,$DE8C9E,GFX_BurstEffect_Pose4,GFX_BurstEffect_Pose4End
	dl $DE8CB2,$DE8E32,GFX_BurstEffect_Pose5,GFX_BurstEffect_Pose5End
	dl $DE8E48,$DE9048,GFX_BurstEffect_Pose6,GFX_BurstEffect_Pose6End
	dl $DE9060,$DE9280,GFX_BurstEffect_Pose7,GFX_BurstEffect_Pose7End
	dl $DE9296,$DE94F6,GFX_BurstEffect_Pose8,GFX_BurstEffect_Pose8End
	dl $DE950C,$DE976C,GFX_BurstEffect_Pose9,GFX_BurstEffect_Pose9End
	dl $DE9796,$DE99B6,GFX_BurstEffect_Pose10,GFX_BurstEffect_Pose10End
	dl $DE99DE,$DE9BDE,GFX_BurstEffect_Pose11,GFX_BurstEffect_Pose11End
	dl $DE9C00,$DE9DA0,GFX_BurstEffect_Pose12,GFX_BurstEffect_Pose12End
	dl $DE9DB8,$DE9F78,GFX_Diddy_EnterCrawlSpace1,GFX_Diddy_EnterCrawlSpace1End
	dl $DE9F90,$DEA150,GFX_Diddy_EnterCrawlSpace2,GFX_Diddy_EnterCrawlSpace2End
	dl $DEA164,$DEA344,GFX_Diddy_EnterCrawlSpace3,GFX_Diddy_EnterCrawlSpace3End
	dl $DEA35C,$DEA57C,GFX_Diddy_EnterCrawlSpace4,GFX_Diddy_EnterCrawlSpace4End
	dl $DEA73E,$DEAABE,GFX_Rambi_Stab1,GFX_Rambi_Stab1End
	dl $DEAADC,$DEAE7C,GFX_Rambi_Stab2,GFX_Rambi_Stab2End
	dl $DEAE9A,$DEB23A,GFX_Rambi_Stab3,GFX_Rambi_Stab3End
	dl $DEB25A,$DEB61A,GFX_Rambi_Stab4,GFX_Rambi_Stab4End
	dl $DEB638,$DEB9D8,GFX_Rambi_Stab5,GFX_Rambi_Stab5End
	dl $DEB9FC,$DEBDFC,GFX_Rambi_Stab6,GFX_Rambi_Stab6End
	dl $DEBE24,$DEC204,GFX_Rambi_Stab7,GFX_Rambi_Stab7End
	dl $DEC22E,$DEC62E,GFX_Rambi_Stab8,GFX_Rambi_Stab8End
	dl $DEC638,$DEC658,GFX_Sparkle_Pose1,GFX_Sparkle_Pose1End
	dl $DEC662,$DEC682,GFX_Sparkle_Pose2,GFX_Sparkle_Pose2End
	dl $DEC68E,$DEC6CE,GFX_Sparkle_Pose3,GFX_Sparkle_Pose3End
	dl $DEC6DC,$DEC73C,GFX_Sparkle_Pose4,GFX_Sparkle_Pose4End
	dl $DEC748,$DEC788,GFX_Sparkle_Pose5,GFX_Sparkle_Pose5End
	dl $DEC794,$DEC7D4,GFX_Sparkle_Pose6,GFX_Sparkle_Pose6End
	dl $DEC7DE,$DEC7FE,GFX_Sparkle_Pose7,GFX_Sparkle_Pose7End
	dl $DEC808,$DEC828,GFX_Sparkle_Pose8,GFX_Sparkle_Pose8End
	dl $DEC834,$DEC8D4,GFX_BananaBunch_Pose1,GFX_BananaBunch_Pose1End
	dl $DEC8E0,$DEC980,GFX_BananaBunch_Pose2,GFX_BananaBunch_Pose2End
	dl $DEC98C,$DECA2C,GFX_BananaBunch_Pose3,GFX_BananaBunch_Pose3End
	dl $DECA38,$DECAD8,GFX_BananaBunch_Pose4,GFX_BananaBunch_Pose4End
	dl $DECAE6,$DECBA6,GFX_BananaBunch_Pose5,GFX_BananaBunch_Pose5End
	dl $DECBB4,$DECC74,GFX_BananaBunch_Pose6,GFX_BananaBunch_Pose6End
	dl $DF225A,$DF23FA,GFX_Gnawty_Walk1,GFX_Gnawty_Walk1End
	dl $DF2410,$DF25B0,GFX_Gnawty_Walk2,GFX_Gnawty_Walk2End
	dl $DF25C8,$DF2788,GFX_Gnawty_Walk3,GFX_Gnawty_Walk3End
	dl $DF27A0,$DF2960,GFX_Gnawty_Walk4,GFX_Gnawty_Walk4End
	dl $DF2976,$DF2B16,GFX_Gnawty_Walk5,GFX_Gnawty_Walk5End
	dl $DF2B30,$DF2D10,GFX_Gnawty_Walk6,GFX_Gnawty_Walk6End
	dl $DF2D26,$DF2EC6,GFX_Gnawty_Walk7,GFX_Gnawty_Walk7End
	dl $DF2EDC,$DF307C,GFX_Gnawty_Walk8,GFX_Gnawty_Walk8End
	dl $DF309E,$DF347E,GFX_BarrelCannon_AutoFire1,GFX_BarrelCannon_AutoFire1End
	dl $DF34A6,$DF3886,GFX_BarrelCannon_AutoFire2,GFX_BarrelCannon_AutoFire2End
	dl $DF38AA,$DF3CAA,GFX_BarrelCannon_AutoFire3,GFX_BarrelCannon_AutoFire3End
	dl $DF3CCC,$DF40AC,GFX_BarrelCannon_AutoFire4,GFX_BarrelCannon_AutoFire4End
	dl $DF40CA,$DF446A,GFX_BarrelCannon_AutoFire5,GFX_BarrelCannon_AutoFire5End
	dl $DF4486,$DF4806,GFX_BarrelCannon_AutoFire6,GFX_BarrelCannon_AutoFire6End
	dl $DF482A,$DF4C2A,GFX_BarrelCannon_AutoFire7,GFX_BarrelCannon_AutoFire7End
	dl $DF4C54,$DF5054,GFX_BarrelCannon_AutoFire8,GFX_BarrelCannon_AutoFire8End
	dl $DF5076,$DF5456,GFX_BarrelCannon_AutoFire9,GFX_BarrelCannon_AutoFire9End
	dl $DF547E,$DF585E,GFX_BarrelCannon_AutoFire10,GFX_BarrelCannon_AutoFire10End
	dl $DF5882,$DF5C82,GFX_BarrelCannon_AutoFire11,GFX_BarrelCannon_AutoFire11End
	dl $DF5CA4,$DF6084,GFX_BarrelCannon_AutoFire12,GFX_BarrelCannon_AutoFire12End
	dl $DF60A2,$DF6442,GFX_BarrelCannon_AutoFire13,GFX_BarrelCannon_AutoFire13End
	dl $DF645E,$DF67DE,GFX_BarrelCannon_AutoFire14,GFX_BarrelCannon_AutoFire14End
	dl $DF6802,$DF6C02,GFX_BarrelCannon_AutoFire15,GFX_BarrelCannon_AutoFire15End
	dl $DF6C2C,$DF702C,GFX_BarrelCannon_AutoFire16,GFX_BarrelCannon_AutoFire16End
	dl $DF7042,$DF72A2,GFX_CheckpointBarrel_Pose1,GFX_CheckpointBarrel_Pose1End
	dl $DF72B8,$DF7518,GFX_CheckpointBarrel_Pose2,GFX_CheckpointBarrel_Pose2End
	dl $DF752E,$DF778E,GFX_CheckpointBarrel_Pose3,GFX_CheckpointBarrel_Pose3End
	dl $DF77A4,$DF7A04,GFX_CheckpointBarrel_Pose4,GFX_CheckpointBarrel_Pose4End
	dl $DF7A1A,$DF7C7A,GFX_CheckpointBarrel_Pose5,GFX_CheckpointBarrel_Pose5End
	dl $DF7C90,$DF7EF0,GFX_CheckpointBarrel_Pose6,GFX_CheckpointBarrel_Pose6End
	dl $DF7F06,$DF8166,GFX_CheckpointBarrel_Pose7,GFX_CheckpointBarrel_Pose7End
	dl $DF817C,$DF83DC,GFX_CheckpointBarrel_Pose8,GFX_CheckpointBarrel_Pose8End
	dl $DF83F6,$DF8696,GFX_EnemySpawnBarrel_UpsideDown,GFX_EnemySpawnBarrel_UpsideDownEnd
	dl $DF86AE,$DF892E,GFX_EnemySpawnBarrel_Sideways,GFX_EnemySpawnBarrel_SidewaysEnd
	dl $DF8944,$DF8BA4,GFX_GFX_CheckpointBarrel_Broken,GFX_GFX_CheckpointBarrel_BrokenEnd
	dl $DF8BB6,$DF8CB6,GFX_MiniNecky_ThrowNut1,GFX_MiniNecky_ThrowNut1End
	dl $DF8CC8,$DF8DC8,GFX_MiniNecky_ThrowNut2,GFX_MiniNecky_ThrowNut2End
	dl $DF8DDC,$DF8EFC,GFX_MiniNecky_ThrowNut3,GFX_MiniNecky_ThrowNut3End
	dl $DF8F0C,$DF904C,GFX_MiniNecky_ThrowNut4,GFX_MiniNecky_ThrowNut4End
	dl $DF905A,$DF917A,GFX_MiniNecky_ThrowNut5,GFX_MiniNecky_ThrowNut5End
	dl $DF918E,$DF930E,GFX_MiniNecky_ThrowNut6,GFX_MiniNecky_ThrowNut6End
	dl $DF9322,$DF94A2,GFX_MiniNecky_ThrowNut7,GFX_MiniNecky_ThrowNut7End
	dl $DF94B8,$DF95F8,GFX_MiniNecky_ThrowNut8,GFX_MiniNecky_ThrowNut8End
	dl $DF960E,$DF974E,GFX_MiniNecky_ThrowNut9,GFX_MiniNecky_ThrowNut9End
	dl $DF9760,$DF98C0,GFX_MiniNecky_ThrowNut10,GFX_MiniNecky_ThrowNut10End
	dl $DF98D2,$DF9A32,GFX_MiniNecky_ThrowNut11,GFX_MiniNecky_ThrowNut11End
	dl $DF9A44,$DF9BA4,GFX_MiniNecky_ThrowNut12,GFX_MiniNecky_ThrowNut12End
	dl $DF9BB2,$DF9CD2,GFX_MiniNecky_ThrowNut13,GFX_MiniNecky_ThrowNut13End
	dl $DF9CE6,$DF9E06,GFX_MiniNecky_ThrowNut14,GFX_MiniNecky_ThrowNut14End
	dl $DF9E1C,$DF9FBC,GFX_Gnawty_Dead1,GFX_Gnawty_Dead1End
	dl $DF9FD0,$DFA150,GFX_Gnawty_Dead2,GFX_Gnawty_Dead2End
	dl $DFA164,$DFA2E4,GFX_Gnawty_Dead3,GFX_Gnawty_Dead3End
	dl $DFA2FA,$DFA49A,GFX_Gnawty_Dead4,GFX_Gnawty_Dead4End
	dl $DFA4B4,$DFA694,GFX_Gnawty_Dead5,GFX_Gnawty_Dead5End
	dl $DFA6A8,$DFA828,GFX_Gnawty_Turn1,GFX_Gnawty_Turn1End
	dl $DFA842,$DFA9C2,GFX_Gnawty_Turn2,GFX_Gnawty_Turn2End
	dl $DFA9E4,$DFAD04,GFX_Expresso_BeginFlutter1,GFX_Expresso_BeginFlutter1End
	dl $DFAD22,$DFB002,GFX_Expresso_BeginFlutter2,GFX_Expresso_BeginFlutter2End
	dl $DFB024,$DFB344,GFX_Expresso_BeginFlutter3,GFX_Expresso_BeginFlutter3End
	dl $DFB368,$DFB708,GFX_Expresso_BeginFlutter4,GFX_Expresso_BeginFlutter4End
	dl $DFB732,$DFBAD2,GFX_Expresso_BeginFlutter5,GFX_Expresso_BeginFlutter5End
	dl $DFBAFA,$DFBE7A,GFX_Expresso_BeginFlutter6,GFX_Expresso_BeginFlutter6End
	dl $DFBE9E,$DFC1DE,GFX_Expresso_BeginFlutter7,GFX_Expresso_BeginFlutter7End
	dl $DFC1FE,$DFC4FE,GFX_Expresso_BeginFlutter8,GFX_Expresso_BeginFlutter8End
	dl $DFC51E,$DFC81E,GFX_Expresso_BeginFlutter9,GFX_Expresso_BeginFlutter9End
	dl $DFC83E,$DFCB3E,GFX_Expresso_BeginFlutter10,GFX_Expresso_BeginFlutter10End
	dl $DFCB6C,$DFD00C,GFX_VeryGnawty_Hurt1,GFX_VeryGnawty_Hurt1End
	dl $DFD03A,$DFD4DA,GFX_VeryGnawty_Hurt2,GFX_VeryGnawty_Hurt2End
	dl $DFD50C,$DFD98C,GFX_VeryGnawty_Hurt3,GFX_VeryGnawty_Hurt3End
	dl $DFD996,$DFDA16,GFX_KremlinHeadIcon_Pose1,GFX_KremlinHeadIcon_Pose1End
	dl $DFDA20,$DFDAA0,GFX_KremlinHeadIcon_Pose2,GFX_KremlinHeadIcon_Pose2End
	dl $DFDAAA,$DFDB2A,GFX_KremlinHeadIcon_Pose3,GFX_KremlinHeadIcon_Pose3End
	dl $DFDB34,$DFDBB4,GFX_KremlinHeadIcon_Pose4,GFX_KremlinHeadIcon_Pose4End
	dl $E0000A,$E0008A,GFX_NeckyNut_Pose1,GFX_NeckyNut_Pose1End
	dl $E00094,$E00114,GFX_NeckyNut_Pose2,GFX_NeckyNut_Pose2End
	dl $E0011E,$E0019E,GFX_NeckyNut_Pose3,GFX_NeckyNut_Pose3End
	dl $E001A8,$E00228,GFX_MiniNeckyNut_Pose1,GFX_MiniNeckyNut_Pose1End
	dl $E00232,$E002B2,GFX_MiniNeckyNut_Pose2,GFX_MiniNeckyNut_Pose2End
	dl $E002BC,$E0033C,GFX_MiniNeckyNut_Pose3,GFX_MiniNeckyNut_Pose3End
	dl $E00356,$E006B6,GFX_CandyKong_Stand1,GFX_CandyKong_Stand1End
	dl $E006D0,$E00A30,GFX_CandyKong_Stand2,GFX_CandyKong_Stand2End
	dl $E00A4A,$E00DAA,GFX_CandyKong_Stand3,GFX_CandyKong_Stand3End
	dl $E00DCC,$E010EC,GFX_CandyKong_BlowKiss1,GFX_CandyKong_BlowKiss1End
	dl $E0110C,$E0140C,GFX_CandyKong_BlowKiss2,GFX_CandyKong_BlowKiss2End
	dl $E0142A,$E0170A,GFX_CandyKong_BlowKiss3,GFX_CandyKong_BlowKiss3End
	dl $E01728,$E01A08,GFX_CandyKong_BlowKiss4,GFX_CandyKong_BlowKiss4End
	dl $E01A24,$E01CE4,GFX_CandyKong_BlowKiss5,GFX_CandyKong_BlowKiss5End
	dl $E01D02,$E01FE2,GFX_CandyKong_BlowKiss6,GFX_CandyKong_BlowKiss6End
	dl $E02002,$E02302,GFX_CandyKong_BlowKiss7,GFX_CandyKong_BlowKiss7End
	dl $E02320,$E02600,GFX_CandyKong_BlowKiss8,GFX_CandyKong_BlowKiss8End
	dl $E02622,$E028E2,GFX_CandyKong_BlowKiss9,GFX_CandyKong_BlowKiss9End
	dl $E028FC,$E02B9C,GFX_CandyKong_BlowKiss10,GFX_CandyKong_BlowKiss10End
	dl $E02BBA,$E02E3A,GFX_CandyKong_BlowKiss11,GFX_CandyKong_BlowKiss11End
	dl $E02E58,$E030D8,GFX_CandyKong_BlowKiss12,GFX_CandyKong_BlowKiss12End
	dl $E030F6,$E03376,GFX_CandyKong_BlowKiss13,GFX_CandyKong_BlowKiss13End
	dl $E03396,$E03636,GFX_CandyKong_BlowKiss14,GFX_CandyKong_BlowKiss14End
	dl $E0DC28,$E0DF28,GFX_Expresso_Flutter1,GFX_Expresso_Flutter1End
	dl $E0DF48,$E0E248,GFX_Expresso_Flutter2,GFX_Expresso_Flutter2End
	dl $E0E268,$E0E568,GFX_Expresso_Flutter3,GFX_Expresso_Flutter3End
	dl $E0E590,$E0E910,GFX_Expresso_Flutter4,GFX_Expresso_Flutter4End
	dl $E0E93A,$E0ECDA,GFX_Krusha_Laugh1,GFX_Krusha_Laugh1End
	dl $E0ED04,$E0F0A4,GFX_Krusha_Laugh2,GFX_Krusha_Laugh2End
	dl $E0F0CE,$E0F46E,GFX_Krusha_Laugh3,GFX_Krusha_Laugh3End
	dl $E0F498,$E0F838,GFX_Krusha_Laugh4,GFX_Krusha_Laugh4End
	dl $E0F862,$E0FC02,GFX_Krusha_Laugh5,GFX_Krusha_Laugh5End
	dl $E0FC2C,$E0FFCC,GFX_Krusha_Laugh6,GFX_Krusha_Laugh6End
	dl $E16D21,$E17041,GFX_DonkeyKong_RideSteelKeg1,GFX_DonkeyKong_RideSteelKeg1End
	dl $E17061,$E17361,GFX_DonkeyKong_RideSteelKeg2,GFX_DonkeyKong_RideSteelKeg2End
	dl $E1737D,$E1769D,GFX_DonkeyKong_RideSteelKeg3,GFX_DonkeyKong_RideSteelKeg3End
	dl $E176B9,$E179D9,GFX_DonkeyKong_RideSteelKeg4,GFX_DonkeyKong_RideSteelKeg4End
	dl $E179F5,$E17D15,GFX_DonkeyKong_RideSteelKeg5,GFX_DonkeyKong_RideSteelKeg5End
	dl $E17D31,$E18051,GFX_DonkeyKong_RideSteelKeg6,GFX_DonkeyKong_RideSteelKeg6End
	dl $E18075,$E183B5,GFX_DonkeyKong_RideSteelKeg7,GFX_DonkeyKong_RideSteelKeg7End
	dl $E183D3,$E18713,GFX_DonkeyKong_RideSteelKeg8,GFX_DonkeyKong_RideSteelKeg8End
	dl $E18735,$E18A55,GFX_DonkeyKong_RideSteelKeg9,GFX_DonkeyKong_RideSteelKeg9End
	dl $E18A6F,$E18D6F,GFX_DonkeyKong_RideSteelKeg10,GFX_DonkeyKong_RideSteelKeg10End
	dl $E18D8B,$E190AB,GFX_DonkeyKong_RideSteelKeg11,GFX_DonkeyKong_RideSteelKeg11End
	dl $E190CB,$E193CB,GFX_DonkeyKong_RideSteelKeg12,GFX_DonkeyKong_RideSteelKeg12End
	dl $E1B9AF,$E1BE0F,GFX_VeryGnawty_Laugh1,GFX_VeryGnawty_Laugh1End
	dl $E1BE37,$E1C217,GFX_VeryGnawty_Laugh2,GFX_VeryGnawty_Laugh2End
	dl $E1C23F,$E1C61F,GFX_VeryGnawty_Laugh3,GFX_VeryGnawty_Laugh3End
	dl $E1C647,$E1CA27,GFX_VeryGnawty_Laugh4,GFX_VeryGnawty_Laugh4End
	dl $E27D18,$E27F78,GFX_GoBarrel_Pose,GFX_GoBarrel_PoseEnd
	dl $E27F8F,$E2806F,GFX_UnknownSprite1_Pose1,GFX_UnknownSprite1_Pose1End
	dl $E2807F,$E280FF,GFX_UnknownSprite1_Pose2,GFX_UnknownSprite1_Pose2End
	dl $E2810D,$E2816D,GFX_UnknownSprite1_Pose3,GFX_UnknownSprite1_Pose3End
	dl $E29931,$E29B11,GFX_ChompsJr_Swim1,GFX_ChompsJr_Swim1End
	dl $E29B25,$E29D05,GFX_ChompsJr_Swim2,GFX_ChompsJr_Swim2End
	dl $E29D19,$E29EF9,GFX_ChompsJr_Swim3,GFX_ChompsJr_Swim3End
	dl $E29F0F,$E2A0AF,GFX_ChompsJr_Swim4,GFX_ChompsJr_Swim4End
	dl $E2A0C5,$E2A265,GFX_ChompsJr_Swim5,GFX_ChompsJr_Swim5End
	dl $E2A27B,$E2A41B,GFX_ChompsJr_Swim6,GFX_ChompsJr_Swim6End
	dl $E2A431,$E2A5D1,GFX_ChompsJr_Swim7,GFX_ChompsJr_Swim7End
	dl $E2A5E7,$E2A787,GFX_ChompsJr_Swim8,GFX_ChompsJr_Swim8End
	dl $E2A79D,$E2A93D,GFX_ChompsJr_Swim9,GFX_ChompsJr_Swim9End
	dl $E2A953,$E2AAF3,GFX_ChompsJr_Swim10,GFX_ChompsJr_Swim10End
	dl $E2AB09,$E2ACA9,GFX_ChompsJr_Swim11,GFX_ChompsJr_Swim11End
	dl $E2ACC1,$E2AE81,GFX_ChompsJr_Swim12,GFX_ChompsJr_Swim12End
	dl $E2AE99,$E2B059,GFX_ChompsJr_Swim13,GFX_ChompsJr_Swim13End
	dl $E2B071,$E2B231,GFX_ChompsJr_Swim14,GFX_ChompsJr_Swim14End
	dl $E2B249,$E2B409,GFX_ChompsJr_Swim15,GFX_ChompsJr_Swim15End
	dl $E2B421,$E2B5E1,GFX_ChompsJr_Swim16,GFX_ChompsJr_Swim16End
	dl $E2B661,$E2B941,GFX_Croctopus_Unknown1,GFX_Croctopus_Unknown1End
	dl $E2B959,$E2BB79,GFX_Croctopus_Unknown2,GFX_Croctopus_Unknown2End
	dl $E2BB8F,$E2BD8F,GFX_Croctopus_Unknown3,GFX_Croctopus_Unknown3End
	dl $E2BD9F,$E2BF9F,GFX_Croctopus_Unknown4,GFX_Croctopus_Unknown4End
	dl $E2BFB5,$E2C1B5,GFX_Croctopus_Unknown5,GFX_Croctopus_Unknown5End
	dl $E2C1CD,$E2C3ED,GFX_Croctopus_Unknown6,GFX_Croctopus_Unknown6End
	dl $E2C409,$E2C669,GFX_Croctopus_Unknown7,GFX_Croctopus_Unknown7End
	dl $E2C68B,$E2C94B,GFX_Enguarde_Hurt,GFX_Enguarde_HurtEnd
	dl $E2C95D,$E2CA5D,GFX_Bitesize_Swim1,GFX_Bitesize_Swim1End
	dl $E2CA6B,$E2CB8B,GFX_Bitesize_Swim2,GFX_Bitesize_Swim2End
	dl $E2CB97,$E2CC97,GFX_Bitesize_Swim3,GFX_Bitesize_Swim3End
	dl $E2CCA7,$E2CD87,GFX_Bitesize_Swim4,GFX_Bitesize_Swim4End
	dl $E2CD97,$E2CE77,GFX_Bitesize_Swim5,GFX_Bitesize_Swim5End
	dl $E2CE87,$E2CF67,GFX_Bitesize_Swim6,GFX_Bitesize_Swim6End
	dl $E2CF73,$E2D073,GFX_Bitesize_Swim7,GFX_Bitesize_Swim7End
	dl $E2D07F,$E2D17F,GFX_Bitesize_Swim8,GFX_Bitesize_Swim8End
	dl $E2D18D,$E2D2AD,GFX_Bitesize_Swim9,GFX_Bitesize_Swim9End
	dl $E2D2BB,$E2D3DB,GFX_Bitesize_Swim10,GFX_Bitesize_Swim10End
	dl $E2D3E9,$E2D509,GFX_Bitesize_Swim11,GFX_Bitesize_Swim11End
	dl $E2D517,$E2D637,GFX_Bitesize_Swim12,GFX_Bitesize_Swim12End
	dl $E2D645,$E2D765,GFX_Bitesize_Swim13,GFX_Bitesize_Swim13End
	dl $E2D77D,$E2D93D,GFX_ChompsJr_Turn1,GFX_ChompsJr_Turn1End
	dl $E2D957,$E2DB37,GFX_ChompsJr_Turn2,GFX_ChompsJr_Turn2End
	dl $E2DB4F,$E2DD0F,GFX_ChompsJr_Turn3,GFX_ChompsJr_Turn3End
	dl $E2DD23,$E2DEA3,GFX_ChompsJr_Turn4,GFX_ChompsJr_Turn4End
	dl $E2DEB7,$E2E037,GFX_ChompsJr_Turn5,GFX_ChompsJr_Turn5End
	dl $E2E04D,$E2E18D,GFX_ChompsJr_Turn6,GFX_ChompsJr_Turn6End
	dl $E2E1A3,$E2E2E3,GFX_ChompsJr_Turn7,GFX_ChompsJr_Turn7End
	dl $E2E2F7,$E2E417,GFX_ChompsJr_Turn8,GFX_ChompsJr_Turn8End
	dl $E2E42F,$E2E58F,GFX_ChompsJr_Turn9,GFX_ChompsJr_Turn9End
	dl $E2E59F,$E2E7BF,GFX_Puftup_Swim1,GFX_Puftup_Swim1End
	dl $E2E7D9,$E2E9B9,GFX_Puftup_Swim2,GFX_Puftup_Swim2End
	dl $E2E9D1,$E2EB91,GFX_Puftup_Swim3,GFX_Puftup_Swim3End
	dl $E2EBAB,$E2ED8B,GFX_Puftup_Swim4,GFX_Puftup_Swim4End
	dl $E2EDA3,$E2EF63,GFX_Puftup_Swim5,GFX_Puftup_Swim5End
	dl $E2EF7B,$E2F13B,GFX_Puftup_Swim6,GFX_Puftup_Swim6End
	dl $E2F151,$E2F2F1,GFX_Puftup_Swim7,GFX_Puftup_Swim7End
	dl $E2F307,$E2F4A7,GFX_Puftup_Swim8,GFX_Puftup_Swim8End
	dl $E2F4C1,$E2F6A1,GFX_Puftup_Swim9,GFX_Puftup_Swim9End
	dl $E2F6B7,$E2F8B7,GFX_Puftup_Swim10,GFX_Puftup_Swim10End
	dl $E2F8CF,$E2FAEF,GFX_Puftup_Swim11,GFX_Puftup_Swim11End
	dl $E2FB07,$E2FD27,GFX_Puftup_Swim12,GFX_Puftup_Swim12End
	dl $E2FD3F,$E2FF5F,GFX_Puftup_Swim13,GFX_Puftup_Swim13End
	dl $E39BC1,$E39DC1,GFX_Chomps_Dead1,GFX_Chomps_Dead1End
	dl $E39DD9,$E39FF9,GFX_Chomps_Dead2,GFX_Chomps_Dead2End
	dl $E3A017,$E3A237,GFX_Chomps_Dead3,GFX_Chomps_Dead3End
	dl $E3A253,$E3A4B3,GFX_Chomps_Dead4,GFX_Chomps_Dead4End
	dl $E3A4CD,$E3A70D,GFX_Chomps_Dead5,GFX_Chomps_Dead5End
	dl $E3A729,$E3A989,GFX_Chomps_Dead6,GFX_Chomps_Dead6End
	dl $E3A9A3,$E3ABE3,GFX_Chomps_Turn1,GFX_Chomps_Turn1End
	dl $E3AC01,$E3AE21,GFX_Chomps_Turn2,GFX_Chomps_Turn2End
	dl $E3AE3D,$E3B03D,GFX_Chomps_Turn3,GFX_Chomps_Turn3End
	dl $E3B057,$E3B237,GFX_Chomps_Turn4,GFX_Chomps_Turn4End
	dl $E3B251,$E3B431,GFX_Chomps_Turn5,GFX_Chomps_Turn5End
	dl $E3B44D,$E3B5ED,GFX_Chomps_Turn6,GFX_Chomps_Turn6End
	dl $E3B607,$E3B787,GFX_Chomps_Turn7,GFX_Chomps_Turn7End
	dl $E3B79D,$E3B93D,GFX_Chomps_Turn8,GFX_Chomps_Turn8End
	dl $E3B959,$E3BB59,GFX_Chomps_Turn9,GFX_Chomps_Turn9End
	dl $E3BB69,$E3BC49,GFX_Bitesize_Turn1,GFX_Bitesize_Turn1End
	dl $E3BC59,$E3BD39,GFX_Bitesize_Turn2,GFX_Bitesize_Turn2End
	dl $E3BD45,$E3BDE5,GFX_Bitesize_Turn3,GFX_Bitesize_Turn3End
	dl $E3BDF1,$E3BE91,GFX_Bitesize_Turn4,GFX_Bitesize_Turn4End
	dl $E3BE9F,$E3BFBF,GFX_Bitesize_Dead1,GFX_Bitesize_Dead1End
	dl $E3BFD1,$E3C0D1,GFX_Bitesize_Dead2,GFX_Bitesize_Dead2End
	dl $E3C0E5,$E3C205,GFX_Bitesize_Dead3,GFX_Bitesize_Dead3End
	dl $E3C215,$E3C2F5,GFX_Bitesize_Dead4,GFX_Bitesize_Dead4End
	dl $E3C309,$E3C429,GFX_Squidge_Swim1,GFX_Squidge_Swim1End
	dl $E3C43B,$E3C53B,GFX_Squidge_Swim2,GFX_Squidge_Swim2End
	dl $E3C54F,$E3C66F,GFX_Squidge_Swim3,GFX_Squidge_Swim3End
	dl $E3C67F,$E3C75F,GFX_Squidge_Swim4,GFX_Squidge_Swim4End
	dl $E3C771,$E3C871,GFX_Squidge_Swim5,GFX_Squidge_Swim5End
	dl $E3C885,$E3C9A5,GFX_Squidge_Swim6,GFX_Squidge_Swim6End
	dl $E3C9BD,$E3CB1D,GFX_Squidge_Swim7,GFX_Squidge_Swim7End
	dl $E3CB33,$E3CC73,GFX_Squidge_Swim8,GFX_Squidge_Swim8End
	dl $E3CC87,$E3CDA7,GFX_Squidge_Swim9,GFX_Squidge_Swim9End
	dl $E3D7E9,$E3E0E9,GFX_KRool_Throw1,GFX_KRool_Throw1End
	dl $E3E123,$E3EA43,GFX_KRool_Throw2,GFX_KRool_Throw2End
	dl $E3EA93,$E3F3F3,GFX_KRool_Throw3,GFX_KRool_Throw3End
	dl $E3F43D,$E3FDFD,GFX_KRool_Throw4,GFX_KRool_Throw4End
	dl $E4000A,$E4008A,GFX_InactiveMapDiddy_Walk1,GFX_InactiveMapDiddy_Walk1End
	dl $E40094,$E40114,GFX_InactiveMapDiddy_Walk2,GFX_InactiveMapDiddy_Walk2End
	dl $E4011E,$E4019E,GFX_InactiveMapDiddy_Walk3,GFX_InactiveMapDiddy_Walk3End
	dl $E401A8,$E40228,GFX_InactiveMapDiddy_Walk4,GFX_InactiveMapDiddy_Walk4End
	dl $E40232,$E402B2,GFX_InactiveMapDiddy_Walk5,GFX_InactiveMapDiddy_Walk5End
	dl $E402BC,$E4033C,GFX_InactiveMapDiddy_Walk6,GFX_InactiveMapDiddy_Walk6End
	dl $E40346,$E403C6,GFX_InactiveMapDiddy_Walk7,GFX_InactiveMapDiddy_Walk7End
	dl $E403D0,$E40450,GFX_InactiveMapDiddy_Walk8,GFX_InactiveMapDiddy_Walk8End
	dl $E46079,$E46439,GFX_Croctopus_Spin1,GFX_Croctopus_Spin1End
	dl $E46463,$E46803,GFX_Croctopus_Spin2,GFX_Croctopus_Spin2End
	dl $E46837,$E46BB7,GFX_Croctopus_Spin3,GFX_Croctopus_Spin3End
	dl $E46BE9,$E46F49,GFX_Croctopus_Spin4,GFX_Croctopus_Spin4End
	dl $E46F7D,$E472FD,GFX_Croctopus_Spin5,GFX_Croctopus_Spin5End
	dl $E4732D,$E4766D,GFX_Croctopus_Spin6,GFX_Croctopus_Spin6End
	dl $E4769D,$E47A3D,GFX_Croctopus_Spin7,GFX_Croctopus_Spin7End
	dl $E47A6F,$E47DCF,GFX_Croctopus_Spin8,GFX_Croctopus_Spin8End
	dl $E47DFF,$E4813F,GFX_Croctopus_Spin9,GFX_Croctopus_Spin9End
	dl $E48173,$E48493,GFX_Croctopus_Spin10,GFX_Croctopus_Spin10End
	dl $E484CB,$E4882B,GFX_Croctopus_Spin11,GFX_Croctopus_Spin11End
	dl $E48865,$E48BE5,GFX_Croctopus_Spin12,GFX_Croctopus_Spin12End
	dl $E48C1D,$E48F7D,GFX_Croctopus_Spin13,GFX_Croctopus_Spin13End
	dl $E48FB3,$E492F3,GFX_Croctopus_Spin14,GFX_Croctopus_Spin14End
	dl $E4930B,$E4958B,GFX_Croctopus_TransitionToSpin1,GFX_Croctopus_TransitionToSpin1End
	dl $E495AD,$E498CD,GFX_Croctopus_TransitionToSpin2,GFX_Croctopus_TransitionToSpin2End
	dl $E498F5,$E49C15,GFX_Croctopus_TransitionToSpin3,GFX_Croctopus_TransitionToSpin3End
	dl $E49C41,$E49FA1,GFX_Croctopus_TransitionToSpin4,GFX_Croctopus_TransitionToSpin4End
	dl $E49FC9,$E4A349,GFX_Croctopus_TransitionToSpin5,GFX_Croctopus_TransitionToSpin5End
	dl $E4A455,$E4A7F5,GFX_Minecart_Pose1,GFX_Minecart_Pose1End
	dl $E4A813,$E4ABB3,GFX_Minecart_Pose2,GFX_Minecart_Pose2End
	dl $E4ABD1,$E4AF71,GFX_Minecart_Pose3,GFX_Minecart_Pose3End
	dl $E4AF95,$E4B395,GFX_Minecart_Pose4,GFX_Minecart_Pose4End
	dl $E4B3BB,$E4B77B,GFX_Minecart_Pose5,GFX_Minecart_Pose5End
	dl $E4B7A1,$E4BB61,GFX_Minecart_Pose6,GFX_Minecart_Pose6End
	dl $E4BB87,$E4BF47,GFX_Minecart_Pose7,GFX_Minecart_Pose7End
	dl $E4BF71,$E4C371,GFX_Minecart_Pose8,GFX_Minecart_Pose8End
	dl $E4C395,$E4C735,GFX_Minecart_Pose9,GFX_Minecart_Pose9End
	dl $E4C759,$E4CAF9,GFX_Minecart_Pose10,GFX_Minecart_Pose10End
	dl $E4CB1D,$E4CEBD,GFX_Minecart_Pose11,GFX_Minecart_Pose11End
	dl $E4CEE1,$E4D2E1,GFX_Minecart_Pose12,GFX_Minecart_Pose12End
	dl $E4D303,$E4D683,GFX_Minecart_Pose13,GFX_Minecart_Pose13End
	dl $E4D6A5,$E4DA25,GFX_Minecart_Pose14,GFX_Minecart_Pose14End
	dl $E4DA47,$E4DDC7,GFX_Minecart_Pose15,GFX_Minecart_Pose15End
	dl $E4DDE9,$E4E169,GFX_Minecart_Pose16,GFX_Minecart_Pose16End
	dl $E4E18B,$E4E50B,GFX_Minecart_Pose17,GFX_Minecart_Pose17End
	dl $E4E52D,$E4E8AD,GFX_Minecart_Pose18,GFX_Minecart_Pose18End
	dl $E4E8CF,$E4EC4F,GFX_Minecart_Pose19,GFX_Minecart_Pose19End
	dl $E54E93,$E55073,GFX_Diddy_DiddyTakesLead1,GFX_Diddy_DiddyTakesLead1End
	dl $E5508F,$E5528F,GFX_Diddy_DiddyTakesLead2,GFX_Diddy_DiddyTakesLead2End
	dl $E552A9,$E55489,GFX_Diddy_DiddyTakesLead3,GFX_Diddy_DiddyTakesLead3End
	dl $E554A1,$E55661,GFX_Diddy_DiddyTakesLead4,GFX_Diddy_DiddyTakesLead4End
	dl $E5567B,$E5585B,GFX_Diddy_DiddyTakesLead5,GFX_Diddy_DiddyTakesLead5End
	dl $E55877,$E55A77,GFX_Diddy_DiddyTakesLead6,GFX_Diddy_DiddyTakesLead6End
	dl $E55A93,$E55C93,GFX_Diddy_DiddyTakesLead7,GFX_Diddy_DiddyTakesLead7End
	dl $E55CB1,$E55ED1,GFX_Diddy_DiddyTakesLead8,GFX_Diddy_DiddyTakesLead8End
	dl $E55EEF,$E5610F,GFX_Diddy_DiddyTakesLead9,GFX_Diddy_DiddyTakesLead9End
	dl $E5612B,$E5632B,GFX_Diddy_DiddyTakesLead10,GFX_Diddy_DiddyTakesLead10End
	dl $E56349,$E56569,GFX_Diddy_DiddyTakesLead11,GFX_Diddy_DiddyTakesLead11End
	dl $E56589,$E567C9,GFX_Diddy_DiddyTakesLead12,GFX_Diddy_DiddyTakesLead12End
	dl $E567E7,$E56A07,GFX_Diddy_DiddyTakesLead13,GFX_Diddy_DiddyTakesLead13End
	dl $E56A21,$E56C61,GFX_DonkeyKong_DiddyTakesLead1,GFX_DonkeyKong_DiddyTakesLead1End
	dl $E56C7F,$E56EFF,GFX_DonkeyKong_DiddyTakesLead2,GFX_DonkeyKong_DiddyTakesLead2End
	dl $E56F1F,$E571BF,GFX_DonkeyKong_DiddyTakesLead3,GFX_DonkeyKong_DiddyTakesLead3End
	dl $E571DF,$E5747F,GFX_DonkeyKong_DiddyTakesLead4,GFX_DonkeyKong_DiddyTakesLead4End
	dl $E5749B,$E5775B,GFX_DonkeyKong_DiddyTakesLead5,GFX_DonkeyKong_DiddyTakesLead5End
	dl $E57777,$E57A37,GFX_DonkeyKong_DonkeyTakesLead1,GFX_DonkeyKong_DonkeyTakesLead1End
	dl $E57A57,$E57CF7,GFX_DonkeyKong_DonkeyTakesLead2,GFX_DonkeyKong_DonkeyTakesLead2End
	dl $E57D11,$E57FB1,GFX_DonkeyKong_DonkeyTakesLead3,GFX_DonkeyKong_DonkeyTakesLead3End
	dl $E57FD3,$E58233,GFX_DonkeyKong_DonkeyTakesLead4,GFX_DonkeyKong_DonkeyTakesLead4End
	dl $E58251,$E584D1,GFX_DonkeyKong_DonkeyTakesLead5,GFX_DonkeyKong_DonkeyTakesLead5End
	dl $E584EF,$E587CF,GFX_DonkeyKong_DonkeyTakesLead6,GFX_DonkeyKong_DonkeyTakesLead6End
	dl $E587E9,$E58AE9,GFX_DonkeyKong_DonkeyTakesLead7,GFX_DonkeyKong_DonkeyTakesLead7End
	dl $E58B03,$E58DA3,GFX_DonkeyKong_DonkeyTakesLead8,GFX_DonkeyKong_DonkeyTakesLead8End
	dl $E58DBD,$E58FFD,GFX_DonkeyKong_DonkeyTakesLead9,GFX_DonkeyKong_DonkeyTakesLead9End
	dl $E59021,$E592A1,GFX_DonkeyKong_DonkeyTakesLead10,GFX_DonkeyKong_DonkeyTakesLead10End
	dl $E592B9,$E59479,GFX_Diddy_DonkeyTakesLead1,GFX_Diddy_DonkeyTakesLead1End
	dl $E59491,$E59651,GFX_Diddy_DonkeyTakesLead2,GFX_Diddy_DonkeyTakesLead2End
	dl $E59669,$E59829,GFX_Diddy_DonkeyTakesLead3,GFX_Diddy_DonkeyTakesLead3End
	dl $E59843,$E59A23,GFX_Diddy_DonkeyTakesLead4,GFX_Diddy_DonkeyTakesLead4End
	dl $E59A3F,$E59C3F,GFX_Diddy_DonkeyTakesLead5,GFX_Diddy_DonkeyTakesLead5End
	dl $E59C5B,$E59E5B,GFX_Diddy_DonkeyTakesLead6,GFX_Diddy_DonkeyTakesLead6End
	dl $E59E77,$E5A077,GFX_Diddy_DonkeyTakesLead7,GFX_Diddy_DonkeyTakesLead7End
	dl $E5A095,$E5A2B5,GFX_Diddy_DonkeyTakesLead8,GFX_Diddy_DonkeyTakesLead8End
	dl $E5A2D3,$E5A4F3,GFX_Diddy_DonkeyTakesLead9,GFX_Diddy_DonkeyTakesLead9End
	dl $E5A4FD,$E5A51D,GFX_MinecartSparks_Pose1,GFX_MinecartSparks_Pose1End
	dl $E5A527,$E5A547,GFX_MinecartSparks_Pose2,GFX_MinecartSparks_Pose2End
	dl $E5A555,$E5A5B5,GFX_MinecartSparks_Pose3,GFX_MinecartSparks_Pose3End
	dl $E5A5C1,$E5A661,GFX_MinecartSparks_Pose4,GFX_MinecartSparks_Pose4End
	dl $E5A66F,$E5A72F,GFX_MinecartSparks_Pose5,GFX_MinecartSparks_Pose5End
	dl $E5A73F,$E5A81F,GFX_MinecartSparks_Pose6,GFX_MinecartSparks_Pose6End
	dl $E5A831,$E5A931,GFX_MinecartSparks_Pose7,GFX_MinecartSparks_Pose7End
	dl $E5A945,$E5AAC5,GFX_MinecartSparks_Pose8,GFX_MinecartSparks_Pose8End
	dl $E5AADB,$E5AC7B,GFX_MinecartSparks_Pose9,GFX_MinecartSparks_Pose9End
	dl $E5AC8D,$E5ADED,GFX_MinecartSparks_Pose10,GFX_MinecartSparks_Pose10End
	dl $E5AE01,$E5AF81,GFX_MinecartSparks_Pose11,GFX_MinecartSparks_Pose11End
	dl $E5AF95,$E5B0B5,GFX_MinecartSparks_Pose12,GFX_MinecartSparks_Pose12End
	dl $E5B0CB,$E5B1AB,GFX_MinecartSparks_Pose13,GFX_MinecartSparks_Pose13End
	dl $E5B1B9,$E5B219,GFX_MinecartSparks_Pose14,GFX_MinecartSparks_Pose14End
	dl $E5B231,$E5B451,GFX_Croctopus_Idle1,GFX_Croctopus_Idle1End
	dl $E5B469,$E5B689,GFX_Croctopus_Idle2,GFX_Croctopus_Idle2End
	dl $E5B69F,$E5B8FF,GFX_Croctopus_Idle3,GFX_Croctopus_Idle3End
	dl $E5B915,$E5BB75,GFX_Croctopus_Idle4,GFX_Croctopus_Idle4End
	dl $E5BB8D,$E5BE0D,GFX_Croctopus_Idle5,GFX_Croctopus_Idle5End
	dl $E5BE23,$E5C023,GFX_Croctopus_Idle6,GFX_Croctopus_Idle6End
	dl $E5C03D,$E5C27D,GFX_Croctopus_Idle7,GFX_Croctopus_Idle7End
	dl $E5C293,$E5C493,GFX_Croctopus_Idle8,GFX_Croctopus_Idle8End
	dl $E5C4AB,$E5C6CB,GFX_Croctopus_Idle9,GFX_Croctopus_Idle9End
	dl $E5C6E9,$E5C969,GFX_Croctopus_Idle10,GFX_Croctopus_Idle10End
	dl $E5C985,$E5CBE5,GFX_Croctopus_Idle11,GFX_Croctopus_Idle11End
	dl $E5CC01,$E5CE61,GFX_Croctopus_Idle12,GFX_Croctopus_Idle12End
	dl $E5CE7B,$E5D0BB,GFX_Croctopus_Idle13,GFX_Croctopus_Idle13End
	dl $E5D0D3,$E5D2F3,GFX_Croctopus_Idle14,GFX_Croctopus_Idle14End
	dl $E5D30B,$E5D52B,GFX_Croctopus_Idle15,GFX_Croctopus_Idle15End
	dl $E5D545,$E5D785,GFX_Croctopus_Idle16,GFX_Croctopus_Idle16End
	dl $E5D797,$E5D8F7,GFX_BreakableWall_LeftForestWall,GFX_BreakableWall_LeftForestWallEnd
	dl $E5D90D,$E5DAAD,GFX_GroundCover_ForestLevel,GFX_GroundCover_ForestLevelEnd
	dl $E5DAC1,$E5DD61,GFX_BreakableWall_LeftCrystalCaveWall,GFX_BreakableWall_LeftCrystalCaveWallEnd
	dl $E5DD7B,$E5DFBB,GFX_GroundCover_CrystalCaveLevel,GFX_GroundCover_CrystalCaveLevelEnd
	dl $E60018,$E601D8,GFX_Tire_Bounce1,GFX_Tire_Bounce1End
	dl $E601F2,$E603D2,GFX_Tire_Bounce2,GFX_Tire_Bounce2End
	dl $E603E4,$E605A4,GFX_Tire_Bounce3,GFX_Tire_Bounce3End
	dl $E605BA,$E6081A,GFX_Tire_Bounce4,GFX_Tire_Bounce4End
	dl $E60832,$E60AB2,GFX_Tire_Bounce5,GFX_Tire_Bounce5End
	dl $E60AC8,$E60D88,GFX_Tire_Bounce6,GFX_Tire_Bounce6End
	dl $E6EAC8,$E6F0A8,GFX_TrickTrackTrekPlatform_Pose1,GFX_TrickTrackTrekPlatform_Pose1End
	dl $E6F0CC,$E6F6AC,GFX_TrickTrackTrekPlatform_Pose2,GFX_TrickTrackTrekPlatform_Pose2End
	dl $E6F6D0,$E6FCB0,GFX_TrickTrackTrekPlatform_Pose3,GFX_TrickTrackTrekPlatform_Pose3End
	dl $E6FCC6,$E6FF86,GFX_FactoryPlatform_Pose,GFX_FactoryPlatform_PoseEnd
	dl $E7000A,$E7008A,GFX_InactiveMapDiddy_Jump1,GFX_InactiveMapDiddy_Jump1End
	dl $E70094,$E70114,GFX_InactiveMapDiddy_Jump2,GFX_InactiveMapDiddy_Jump2End
	dl $E7011E,$E7019E,GFX_InactiveMapDiddy_Jump3,GFX_InactiveMapDiddy_Jump3End
	dl $E701AA,$E7024A,GFX_InactiveMapDiddy_Jump4,GFX_InactiveMapDiddy_Jump4End
	dl $E70256,$E702F6,GFX_InactiveMapDiddy_Jump5,GFX_InactiveMapDiddy_Jump5End
	dl $E70306,$E70386,GFX_InactiveMapDiddy_Jump6,GFX_InactiveMapDiddy_Jump6End
	dl $E70394,$E70454,GFX_InactiveMapDiddy_Jump7,GFX_InactiveMapDiddy_Jump7End
	dl $E70460,$E70500,GFX_InactiveMapDiddy_Jump8,GFX_InactiveMapDiddy_Jump8End
	dl $E7050A,$E7058A,GFX_InactiveMapDiddy_Jump9,GFX_InactiveMapDiddy_Jump9End
	dl $E70594,$E70614,GFX_InactiveMapDiddy_Jump10,GFX_InactiveMapDiddy_Jump10End
	dl $E7061E,$E7069E,GFX_InactiveMapDiddy_Jump11,GFX_InactiveMapDiddy_Jump11End
	dl $E7804F,$E7830F,GFX_DonkeyKong_Victory1,GFX_DonkeyKong_Victory1End
	dl $E7832D,$E785AD,GFX_DonkeyKong_Victory2,GFX_DonkeyKong_Victory2End
	dl $E785C7,$E78867,GFX_DonkeyKong_Victory3,GFX_DonkeyKong_Victory3End
	dl $E78883,$E78AE3,GFX_DonkeyKong_Victory4,GFX_DonkeyKong_Victory4End
	dl $E78B01,$E78D81,GFX_DonkeyKong_Victory5,GFX_DonkeyKong_Victory5End
	dl $E78D9D,$E7905D,GFX_DonkeyKong_Victory6,GFX_DonkeyKong_Victory6End
	dl $E79079,$E79339,GFX_DonkeyKong_Victory7,GFX_DonkeyKong_Victory7End
	dl $E79355,$E795B5,GFX_DonkeyKong_Victory8,GFX_DonkeyKong_Victory8End
	dl $E795CF,$E7986F,GFX_DonkeyKong_Victory9,GFX_DonkeyKong_Victory9End
	dl $E79889,$E79B29,GFX_DonkeyKong_Victory10,GFX_DonkeyKong_Victory10End
	dl $E79B43,$E79DE3,GFX_DonkeyKong_Victory11,GFX_DonkeyKong_Victory11End
	dl $E79DFD,$E7A09D,GFX_DonkeyKong_Victory12,GFX_DonkeyKong_Victory12End
	dl $E7A0B7,$E7A357,GFX_DonkeyKong_Victory13,GFX_DonkeyKong_Victory13End
	dl $E7A373,$E7A633,GFX_DonkeyKong_Victory14,GFX_DonkeyKong_Victory14End
	dl $E7A651,$E7A931,GFX_DonkeyKong_Victory15,GFX_DonkeyKong_Victory15End
	dl $E7A953,$E7AC73,GFX_DonkeyKong_Victory16,GFX_DonkeyKong_Victory16End
	dl $E7AC97,$E7AF77,GFX_DonkeyKong_Victory17,GFX_DonkeyKong_Victory17End
	dl $E7AF9B,$E7B27B,GFX_DonkeyKong_Victory18,GFX_DonkeyKong_Victory18End
	dl $E7B29F,$E7B57F,GFX_DonkeyKong_Victory19,GFX_DonkeyKong_Victory19End
	dl $E7B59F,$E7B83F,GFX_DonkeyKong_Victory20,GFX_DonkeyKong_Victory20End
	dl $E7B85B,$E7BB1B,GFX_DonkeyKong_Victory21,GFX_DonkeyKong_Victory21End
	dl $E7BB37,$E7BDF7,GFX_DonkeyKong_Victory22,GFX_DonkeyKong_Victory22End
	dl $E7BE15,$E7C095,GFX_DonkeyKong_Victory23,GFX_DonkeyKong_Victory23End
	dl $E7C0B3,$E7C333,GFX_DonkeyKong_Victory24,GFX_DonkeyKong_Victory24End
	dl $E7C351,$E7C631,GFX_DonkeyKong_Victory25,GFX_DonkeyKong_Victory25End
	dl $E7C651,$E7C951,GFX_DonkeyKong_Victory26,GFX_DonkeyKong_Victory26End
	dl $E7C971,$E7CC71,GFX_DonkeyKong_Victory27,GFX_DonkeyKong_Victory27End
	dl $E7CC91,$E7CF91,GFX_DonkeyKong_Victory28,GFX_DonkeyKong_Victory28End
	dl $E7CFB1,$E7D2B1,GFX_DonkeyKong_Victory29,GFX_DonkeyKong_Victory29End
	dl $E7D2D5,$E7D615,GFX_DonkeyKong_Victory30,GFX_DonkeyKong_Victory30End
	dl $E7D63F,$E7D97F,GFX_DonkeyKong_Victory31,GFX_DonkeyKong_Victory31End
	dl $E7D9A9,$E7DCE9,GFX_DonkeyKong_Victory32,GFX_DonkeyKong_Victory32End
	dl $E8267C,$E828DC,GFX_DonkeyKong_Kick1,GFX_DonkeyKong_Kick1End
	dl $E828FC,$E82B9C,GFX_DonkeyKong_Kick2,GFX_DonkeyKong_Kick2End
	dl $E82BB8,$E82E18,GFX_DonkeyKong_Kick3,GFX_DonkeyKong_Kick3End
	dl $E82E36,$E830B6,GFX_DonkeyKong_Kick4,GFX_DonkeyKong_Kick4End
	dl $E830D0,$E833D0,GFX_DonkeyKong_Kick5,GFX_DonkeyKong_Kick5End
	dl $E833EE,$E836CE,GFX_DonkeyKong_Kick6,GFX_DonkeyKong_Kick6End
	dl $E836EE,$E839EE,GFX_DonkeyKong_Kick7,GFX_DonkeyKong_Kick7End
	dl $E83A08,$E83D08,GFX_DonkeyKong_Kick8,GFX_DonkeyKong_Kick8End
	dl $E83D20,$E83FA0,GFX_DonkeyKong_Kick9,GFX_DonkeyKong_Kick9End
	dl $E83FC0,$E84260,GFX_DonkeyKong_Kick10,GFX_DonkeyKong_Kick10End
	dl $E8427A,$E8451A,GFX_DonkeyKong_Kick11,GFX_DonkeyKong_Kick11End
	dl $E84534,$E847D4,GFX_DonkeyKong_Kick12,GFX_DonkeyKong_Kick12End
	dl $E847F0,$E84AB0,GFX_DonkeyKong_Kick13,GFX_DonkeyKong_Kick13End
	dl $E84AC6,$E84D86,GFX_DonkeyKong_Kick14,GFX_DonkeyKong_Kick14End
	dl $E84DA6,$E85046,GFX_DonkeyKong_Kick15,GFX_DonkeyKong_Kick15End
	dl $E8505E,$E852DE,GFX_DonkeyKong_Kick16,GFX_DonkeyKong_Kick16End
	dl $E852FA,$E8555A,GFX_DonkeyKong_Kick17,GFX_DonkeyKong_Kick17End
	dl $E8557C,$E8583C,GFX_DonkeyKong_Kick18,GFX_DonkeyKong_Kick18End
	dl $E8585C,$E85AFC,GFX_DonkeyKong_Kick19,GFX_DonkeyKong_Kick19End
	dl $E85B1A,$E85DFA,GFX_DonkeyKong_Kick20,GFX_DonkeyKong_Kick20End
	dl $E85E1E,$E860FE,GFX_DonkeyKong_Kick21,GFX_DonkeyKong_Kick21End
	dl $E8611E,$E8641E,GFX_DonkeyKong_Kick22,GFX_DonkeyKong_Kick22End
	dl $E8643E,$E8673E,GFX_DonkeyKong_Kick23,GFX_DonkeyKong_Kick23End
	dl $E86760,$E86A20,GFX_DonkeyKong_Kick24,GFX_DonkeyKong_Kick24End
	dl $E86A42,$E86D02,GFX_DonkeyKong_Kick25,GFX_DonkeyKong_Kick25End
	dl $E86D1E,$E86FDE,GFX_DonkeyKong_Kick26,GFX_DonkeyKong_Kick26End
	dl $E86FFC,$E8727C,GFX_DonkeyKong_Kick27,GFX_DonkeyKong_Kick27End
	dl $E87294,$E87514,GFX_DonkeyKong_Kick28,GFX_DonkeyKong_Kick28End
	dl $E87530,$E87790,GFX_DonkeyKong_Kick29,GFX_DonkeyKong_Kick29End
	dl $E877AA,$E87A4A,GFX_DonkeyKong_Kick30,GFX_DonkeyKong_Kick30End
	dl $E89A48,$E89D28,GFX_DonkeyKong_TooCloseToEdge1,GFX_DonkeyKong_TooCloseToEdge1End
	dl $E89D48,$E8A048,GFX_DonkeyKong_TooCloseToEdge2,GFX_DonkeyKong_TooCloseToEdge2End
	dl $E8A066,$E8A346,GFX_DonkeyKong_TooCloseToEdge3,GFX_DonkeyKong_TooCloseToEdge3End
	dl $E8A362,$E8A5C2,GFX_DonkeyKong_TooCloseToEdge4,GFX_DonkeyKong_TooCloseToEdge4End
	dl $E8A5DC,$E8A81C,GFX_DonkeyKong_TooCloseToEdge5,GFX_DonkeyKong_TooCloseToEdge5End
	dl $E8A834,$E8AA54,GFX_DonkeyKong_TooCloseToEdge6,GFX_DonkeyKong_TooCloseToEdge6End
	dl $E8AA70,$E8ACD0,GFX_DonkeyKong_TooCloseToEdge7,GFX_DonkeyKong_TooCloseToEdge7End
	dl $E8ACF2,$E8AFB2,GFX_DonkeyKong_TooCloseToEdge8,GFX_DonkeyKong_TooCloseToEdge8End
	dl $E8AFD2,$E8B272,GFX_DonkeyKong_TooCloseToEdge9,GFX_DonkeyKong_TooCloseToEdge9End
	dl $E8B28C,$E8B5EC,GFX_DonkeyKong_TooCloseToEdge10,GFX_DonkeyKong_TooCloseToEdge10End
	dl $E8B602,$E8B922,GFX_DonkeyKong_TooCloseToEdge11,GFX_DonkeyKong_TooCloseToEdge11End
	dl $E8B93E,$E8BC5E,GFX_DonkeyKong_TooCloseToEdge12,GFX_DonkeyKong_TooCloseToEdge12End
	dl $E8BC82,$E8BFC2,GFX_DonkeyKong_TooCloseToEdge13,GFX_DonkeyKong_TooCloseToEdge13End
	dl $E8BFE6,$E8C326,GFX_DonkeyKong_TooCloseToEdge14,GFX_DonkeyKong_TooCloseToEdge14End
	dl $E8C342,$E8C662,GFX_DonkeyKong_TooCloseToEdge15,GFX_DonkeyKong_TooCloseToEdge15End
	dl $E8C680,$E8C960,GFX_DonkeyKong_TooCloseToEdge16,GFX_DonkeyKong_TooCloseToEdge16End
	dl $E8C988,$E8CCA8,GFX_DonkeyKong_TooCloseToEdge17,GFX_DonkeyKong_TooCloseToEdge17End
	dl $E8CCC6,$E8D006,GFX_DonkeyKong_TooCloseToEdge18,GFX_DonkeyKong_TooCloseToEdge18End
	dl $E8D02E,$E8D34E,GFX_DonkeyKong_TooCloseToEdge19,GFX_DonkeyKong_TooCloseToEdge19End
	dl $E8D36A,$E8D68A,GFX_DonkeyKong_TooCloseToEdge20,GFX_DonkeyKong_TooCloseToEdge20End
	dl $E8D6A6,$E8D9C6,GFX_DonkeyKong_TooCloseToEdge21,GFX_DonkeyKong_TooCloseToEdge21End
	dl $E8D9E4,$E8DCC4,GFX_DonkeyKong_TooCloseToEdge22,GFX_DonkeyKong_TooCloseToEdge22End
	dl $E8DCD8,$E8DDF8,GFX_DKBarrel_Letters1,GFX_DKBarrel_Letters1End
	dl $E8DE0C,$E8DF2C,GFX_DKBarrel_Letters2,GFX_DKBarrel_Letters2End
	dl $E8DF40,$E8E060,GFX_DKBarrel_Letters3,GFX_DKBarrel_Letters3End
	dl $E8E070,$E8E1B0,GFX_DKBarrel_Letters4,GFX_DKBarrel_Letters4End
	dl $E8E1C6,$E8E306,GFX_DKBarrel_Letters5,GFX_DKBarrel_Letters5End
	dl $E8E31A,$E8E43A,GFX_DKBarrel_Letters6,GFX_DKBarrel_Letters6End
	dl $E8E44E,$E8E56E,GFX_DKBarrel_Letters7,GFX_DKBarrel_Letters7End
	dl $EA0235,$EA05D5,GFX_DonkeyKong_Hurt18,GFX_DonkeyKong_Hurt18End
	dl $EA05FB,$EA08FB,GFX_DonkeyKong_Pushing1,GFX_DonkeyKong_Pushing1End
	dl $EA0919,$EA0BF9,GFX_DonkeyKong_Pushing2,GFX_DonkeyKong_Pushing2End
	dl $EA0C1B,$EA0EDB,GFX_DonkeyKong_Pushing3,GFX_DonkeyKong_Pushing3End
	dl $EA0EF1,$EA10F1,GFX_Diddy_TapDKsBack1,GFX_Diddy_TapDKsBack1End
	dl $EA1105,$EA12E5,GFX_Diddy_TapDKsBack2,GFX_Diddy_TapDKsBack2End
	dl $EA12FD,$EA151D,GFX_Diddy_TapDKsBack3,GFX_Diddy_TapDKsBack3End
	dl $EA1537,$EA1777,GFX_Diddy_TapDKsBack4,GFX_Diddy_TapDKsBack4End
	dl $EA1791,$EA19D1,GFX_Diddy_TapDKsBack5,GFX_Diddy_TapDKsBack5End
	dl $EA19EB,$EA1C2B,GFX_Diddy_TapDKsBack6,GFX_Diddy_TapDKsBack6End
	dl $EA1C45,$EA1E85,GFX_Diddy_TapDKsBack7,GFX_Diddy_TapDKsBack7End
	dl $EA1E9D,$EA20BD,GFX_Diddy_LookUp1,GFX_Diddy_LookUp1End
	dl $EA20D5,$EA22F5,GFX_Diddy_LookUp2,GFX_Diddy_LookUp2End
	dl $EA230D,$EA252D,GFX_Diddy_LookUp3,GFX_Diddy_LookUp3End
	dl $EA2545,$EA2765,GFX_Diddy_LookUp4,GFX_Diddy_LookUp4End
	dl $EA277D,$EA299D,GFX_Diddy_LookUp5,GFX_Diddy_LookUp5End
	dl $EA29B5,$EA2BD5,GFX_Diddy_LookUp6,GFX_Diddy_LookUp6End
	dl $EA2BF1,$EA2DF1,GFX_Diddy_StompDKsFoot1,GFX_Diddy_StompDKsFoot1End
	dl $EA2E0B,$EA2FEB,GFX_Diddy_StompDKsFoot2,GFX_Diddy_StompDKsFoot2End
	dl $EA3005,$EA31E5,GFX_Diddy_StompDKsFoot3,GFX_Diddy_StompDKsFoot3End
	dl $EA3201,$EA3401,GFX_Diddy_StompDKsFoot4,GFX_Diddy_StompDKsFoot4End
	dl $EA341D,$EA361D,GFX_Diddy_Laugh1,GFX_Diddy_Laugh1End
	dl $EA3639,$EA3839,GFX_Diddy_Laugh2,GFX_Diddy_Laugh2End
	dl $EA3853,$EA3A33,GFX_Diddy_Laugh3,GFX_Diddy_Laugh3End
	dl $EA3A49,$EA3BE9,GFX_Diddy_Laugh4,GFX_Diddy_Laugh4End
	dl $EA3BFF,$EA3D9F,GFX_Diddy_Laugh5,GFX_Diddy_Laugh5End
	dl $EA3DB5,$EA3F55,GFX_Diddy_Laugh6,GFX_Diddy_Laugh6End
	dl $EA3F69,$EA4149,GFX_Diddy_ClockedByDK1,GFX_Diddy_ClockedByDK1End
	dl $EA415B,$EA431B,GFX_Diddy_ClockedByDK2,GFX_Diddy_ClockedByDK2End
	dl $EA432B,$EA44CB,GFX_Diddy_ClockedByDK3,GFX_Diddy_ClockedByDK3End
	dl $EA44DB,$EA467B,GFX_Diddy_ClockedByDK4,GFX_Diddy_ClockedByDK4End
	dl $EA468B,$EA482B,GFX_Diddy_ClockedByDK5,GFX_Diddy_ClockedByDK5End
	dl $EA4841,$EA49E1,GFX_Diddy_ClockedByDK6,GFX_Diddy_ClockedByDK6End
	dl $EA49F1,$EA4B91,GFX_Diddy_ClockedByDK7,GFX_Diddy_ClockedByDK7End
	dl $EA4BA1,$EA4D41,GFX_Diddy_ClockedByDK8,GFX_Diddy_ClockedByDK8End
	dl $EA4D51,$EA4EF1,GFX_Diddy_ClockedByDK9,GFX_Diddy_ClockedByDK9End
	dl $EA4F01,$EA50A1,GFX_Diddy_ClockedByDK10,GFX_Diddy_ClockedByDK10End
	dl $EA50B5,$EA5235,GFX_Diddy_ClockedByDK11,GFX_Diddy_ClockedByDK11End
	dl $EA5249,$EA53C9,GFX_Diddy_ClockedByDK12,GFX_Diddy_ClockedByDK12End
	dl $EA53DD,$EA555D,GFX_Diddy_ClockedByDK13,GFX_Diddy_ClockedByDK13End
	dl $EA5573,$EA5713,GFX_Diddy_ClockedByDK14,GFX_Diddy_ClockedByDK14End
	dl $EA5729,$EA58C9,GFX_Diddy_ClockedByDK15,GFX_Diddy_ClockedByDK15End
	dl $EA58DF,$EA5A7F,GFX_Diddy_ClockedByDK16,GFX_Diddy_ClockedByDK16End
	dl $EA5A95,$EA5C35,GFX_Diddy_ClockedByDK17,GFX_Diddy_ClockedByDK17End
	dl $EA5C4B,$EA5DEB,GFX_Diddy_ClockedByDK18,GFX_Diddy_ClockedByDK18End
	dl $EA5E05,$EA5FE5,GFX_Diddy_ClockedByDK19,GFX_Diddy_ClockedByDK19End
	dl $EA5FFD,$EA621D,GFX_Diddy_ClockedByDK20,GFX_Diddy_ClockedByDK20End
	dl $EA6237,$EA6417,GFX_Diddy_ClockedByDK21,GFX_Diddy_ClockedByDK21End
	dl $EA6431,$EA6611,GFX_Diddy_ClockedByDK22,GFX_Diddy_ClockedByDK22End
	dl $EA6629,$EA68A9,GFX_DonkeyKong_LookUp1,GFX_DonkeyKong_LookUp1End
	dl $EA68C1,$EA6B41,GFX_DonkeyKong_LookUp2,GFX_DonkeyKong_LookUp2End
	dl $EA6B59,$EA6DD9,GFX_DonkeyKong_LookUp3,GFX_DonkeyKong_LookUp3End
	dl $EA6DF5,$EA70B5,GFX_DonkeyKong_LookUp4,GFX_DonkeyKong_LookUp4End
	dl $EA70D1,$EA7391,GFX_DonkeyKong_LookUp5,GFX_DonkeyKong_LookUp5End
	dl $EA73AF,$EA768F,GFX_DonkeyKong_LookUp6,GFX_DonkeyKong_LookUp6End
	dl $EA76AD,$EA798D,GFX_DonkeyKong_LookUp7,GFX_DonkeyKong_LookUp7End
	dl $EA79AB,$EA7C8B,GFX_DonkeyKong_LookUp8,GFX_DonkeyKong_LookUp8End
	dl $EA7CA9,$EA7F89,GFX_DonkeyKong_LookUp9,GFX_DonkeyKong_LookUp9End
	dl $EA7FA5,$EA8265,GFX_DonkeyKong_FootStomped1,GFX_DonkeyKong_FootStomped1End
	dl $EA8285,$EA8525,GFX_DonkeyKong_FootStomped2,GFX_DonkeyKong_FootStomped2End
	dl $EA853D,$EA87BD,GFX_DonkeyKong_FootStomped3,GFX_DonkeyKong_FootStomped3End
	dl $EA87D7,$EA8A77,GFX_DonkeyKong_FootStomped4,GFX_DonkeyKong_FootStomped4End
	dl $EA8A91,$EA8D31,GFX_DonkeyKong_FootStomped5,GFX_DonkeyKong_FootStomped5End
	dl $EA8D4D,$EA900D,GFX_DonkeyKong_FootStomped6,GFX_DonkeyKong_FootStomped6End
	dl $EA9029,$EA92E9,GFX_DonkeyKong_FootStomped7,GFX_DonkeyKong_FootStomped7End
	dl $EA9305,$EA95C5,GFX_DonkeyKong_FootStomped8,GFX_DonkeyKong_FootStomped8End
	dl $EA95E1,$EA98A1,GFX_DonkeyKong_FootStomped9,GFX_DonkeyKong_FootStomped9End
	dl $EA98B9,$EA9B39,GFX_DonkeyKong_FootStomped10,GFX_DonkeyKong_FootStomped10End
	dl $EA9B55,$EA9E15,GFX_DonkeyKong_ClockDiddyOnHead1,GFX_DonkeyKong_ClockDiddyOnHead1End
	dl $EA9E39,$EAA179,GFX_DonkeyKong_ClockDiddyOnHead2,GFX_DonkeyKong_ClockDiddyOnHead2End
	dl $EAA193,$EAA4F3,GFX_DonkeyKong_ClockDiddyOnHead3,GFX_DonkeyKong_ClockDiddyOnHead3End
	dl $EAA511,$EAA791,GFX_DonkeyKong_ClockDiddyOnHead4,GFX_DonkeyKong_ClockDiddyOnHead4End
	dl $EAA7AF,$EAAA2F,GFX_DonkeyKong_ClockDiddyOnHead5,GFX_DonkeyKong_ClockDiddyOnHead5End
	dl $EAAA4D,$EAACCD,GFX_DonkeyKong_ClockDiddyOnHead6,GFX_DonkeyKong_ClockDiddyOnHead6End
	dl $EAACE5,$EAAF65,GFX_DonkeyKong_ClockDiddyOnHead7,GFX_DonkeyKong_ClockDiddyOnHead7End
	dl $EAAF83,$EAB203,GFX_DonkeyKong_ClockDiddyOnHead8,GFX_DonkeyKong_ClockDiddyOnHead8End
	dl $EAB223,$EAB4C3,GFX_DonkeyKong_ClockDiddyOnHead9,GFX_DonkeyKong_ClockDiddyOnHead9End
	dl $EAB4E5,$EAB7A5,GFX_DonkeyKong_ClockDiddyOnHead10,GFX_DonkeyKong_ClockDiddyOnHead10End
	dl $EAB7C1,$EABA81,GFX_DonkeyKong_ClockDiddyOnHead11,GFX_DonkeyKong_ClockDiddyOnHead11End
	dl $EABA9D,$EABD5D,GFX_DonkeyKong_ClockDiddyOnHead12,GFX_DonkeyKong_ClockDiddyOnHead12End
	dl $EABD7B,$EAC05B,GFX_DonkeyKong_ClockDiddyOnHead13,GFX_DonkeyKong_ClockDiddyOnHead13End
	dl $EAC079,$EAC359,GFX_DonkeyKong_ClockDiddyOnHead14,GFX_DonkeyKong_ClockDiddyOnHead14End
	dl $EAC375,$EAC635,GFX_DonkeyKong_ClockDiddyOnHead15,GFX_DonkeyKong_ClockDiddyOnHead15End
	dl $EAC651,$EAC911,GFX_DonkeyKong_ClockDiddyOnHead16,GFX_DonkeyKong_ClockDiddyOnHead16End
	dl $EAC92F,$EACBAF,GFX_DonkeyKong_ClockDiddyOnHead17,GFX_DonkeyKong_ClockDiddyOnHead17End
	dl $EACBC9,$EACE69,GFX_DonkeyKong_ClockDiddyOnHead18,GFX_DonkeyKong_ClockDiddyOnHead18End
	dl $EACE85,$EAD145,GFX_DonkeyKong_ClockDiddyOnHead19,GFX_DonkeyKong_ClockDiddyOnHead19End
	dl $EAD161,$EAD421,GFX_CrankyKong_Walk1,GFX_CrankyKong_Walk1End
	dl $EAD43B,$EAD6DB,GFX_CrankyKong_Walk2,GFX_CrankyKong_Walk2End
	dl $EAD6F5,$EAD995,GFX_CrankyKong_Walk3,GFX_CrankyKong_Walk3End
	dl $EAD9AD,$EADC2D,GFX_CrankyKong_Walk4,GFX_CrankyKong_Walk4End
	dl $EADC45,$EADEC5,GFX_CrankyKong_Walk5,GFX_CrankyKong_Walk5End
	dl $EADEDD,$EAE15D,GFX_CrankyKong_Walk6,GFX_CrankyKong_Walk6End
	dl $EAE177,$EAE417,GFX_CrankyKong_Walk7,GFX_CrankyKong_Walk7End
	dl $EAE433,$EAE6F3,GFX_CrankyKong_Walk8,GFX_CrankyKong_Walk8End
	dl $EAE711,$EAE9F1,GFX_CrankyKong_Walk9,GFX_CrankyKong_Walk9End
	dl $EAEA0F,$EAECEF,GFX_CrankyKong_Walk10,GFX_CrankyKong_Walk10End
	dl $EAED0D,$EAEFED,GFX_CrankyKong_Walk11,GFX_CrankyKong_Walk11End
	dl $EAF00B,$EAF2EB,GFX_CrankyKong_Walk12,GFX_CrankyKong_Walk12End
	dl $EAF309,$EAF5E9,GFX_CrankyKong_Walk13,GFX_CrankyKong_Walk13End
	dl $EAF605,$EAF8C5,GFX_CrankyKong_Walk14,GFX_CrankyKong_Walk14End
	dl $EAF8E3,$EAFBC3,GFX_CrankyKong_Walk15,GFX_CrankyKong_Walk15End
	dl $EAFBDF,$EAFE9F,GFX_CrankyKong_Walk16,GFX_CrankyKong_Walk16End
	dl $EB5AA0,$EB5AC0,GFX_CheckpointStars_Pose1,GFX_CheckpointStars_Pose1End
	dl $EB5ACA,$EB5AEA,GFX_CheckpointStars_Pose2,GFX_CheckpointStars_Pose2End
	dl $EB5AF8,$EB5B58,GFX_CheckpointStars_Pose3,GFX_CheckpointStars_Pose3End
	dl $EB5B66,$EB5BC6,GFX_CheckpointStars_Pose4,GFX_CheckpointStars_Pose4End
	dl $EB5BD8,$EB5CD8,GFX_CheckpointStars_Pose5,GFX_CheckpointStars_Pose5End
	dl $EB5CEA,$EB5DEA,GFX_CheckpointStars_Pose6,GFX_CheckpointStars_Pose6End
	dl $EB5DFE,$EB5F1E,GFX_CheckpointStars_Pose7,GFX_CheckpointStars_Pose7End
	dl $EB5F30,$EB6030,GFX_CheckpointStars_Pose8,GFX_CheckpointStars_Pose8End
	dl $EB6042,$EB61A2,GFX_CheckpointStars_Pose9,GFX_CheckpointStars_Pose9End
	dl $EB61B6,$EB62D6,GFX_CheckpointStars_Pose10,GFX_CheckpointStars_Pose10End
	dl $EB62EC,$EB642C,GFX_CheckpointStars_Pose11,GFX_CheckpointStars_Pose11End
	dl $EB643E,$EB653E,GFX_CheckpointStars_Pose12,GFX_CheckpointStars_Pose12End
	dl $EB6554,$EB6694,GFX_CheckpointStars_Pose13,GFX_CheckpointStars_Pose13End
	dl $EB66A8,$EB6768,GFX_CheckpointStars_Pose14,GFX_CheckpointStars_Pose14End
	dl $EB6776,$EB67D6,GFX_CheckpointStars_Pose15,GFX_CheckpointStars_Pose15End
	dl $EB67E4,$EB68A4,GFX_HUDBalloon_Idle1,GFX_HUDBalloon_Idle1End
	dl $EB68B2,$EB6972,GFX_HUDBalloon_Idle2,GFX_HUDBalloon_Idle2End
	dl $EB6980,$EB6A40,GFX_HUDBalloon_Idle3,GFX_HUDBalloon_Idle3End
	dl $EB6A4E,$EB6B0E,GFX_HUDBalloon_Idle4,GFX_HUDBalloon_Idle4End
	dl $EB6B1C,$EB6BDC,GFX_HUDBalloon_Idle5,GFX_HUDBalloon_Idle5End
	dl $EB6BEA,$EB6CAA,GFX_HUDBalloon_Idle6,GFX_HUDBalloon_Idle6End
	dl $EB6CB8,$EB6D78,GFX_HUDBalloon_Idle7,GFX_HUDBalloon_Idle7End
	dl $EB6D86,$EB6E46,GFX_HUDBalloon_Idle8,GFX_HUDBalloon_Idle8End
	dl $EB6E62,$EB7062,GFX_EarlyLifeBalloon_Pose1,GFX_EarlyLifeBalloon_Pose1End
	dl $EB707E,$EB727E,GFX_EarlyLifeBalloon_Pose2,GFX_EarlyLifeBalloon_Pose2End
	dl $EB729A,$EB749A,GFX_EarlyLifeBalloon_Pose3,GFX_EarlyLifeBalloon_Pose3End
	dl $EB74B6,$EB76B6,GFX_EarlyLifeBalloon_Pose4,GFX_EarlyLifeBalloon_Pose4End
	dl $EB76D2,$EB78D2,GFX_EarlyLifeBalloon_Pose5,GFX_EarlyLifeBalloon_Pose5End
	dl $EB78EE,$EB7AEE,GFX_EarlyLifeBalloon_Pose6,GFX_EarlyLifeBalloon_Pose6End
	dl $EB7B0A,$EB7D0A,GFX_EarlyLifeBalloon_Pose7,GFX_EarlyLifeBalloon_Pose7End
	dl $EB7D26,$EB7F26,GFX_EarlyLifeBalloon_Pose8,GFX_EarlyLifeBalloon_Pose8End
	dl $EB7F3C,$EB80DC,GFX_Krash_Idle1,GFX_Krash_Idle1End
	dl $EB80F2,$EB8292,GFX_Krash_Idle2,GFX_Krash_Idle2End
	dl $EB82A8,$EB8448,GFX_Krash_Idle3,GFX_Krash_Idle3End
	dl $EB8466,$EB8686,GFX_Diddy_ScratchHead1,GFX_Diddy_ScratchHead1End
	dl $EB86A4,$EB88C4,GFX_Diddy_ScratchHead2,GFX_Diddy_ScratchHead2End
	dl $EB88E2,$EB8B02,GFX_Diddy_ScratchHead3,GFX_Diddy_ScratchHead3End
	dl $EB8B22,$EB8D62,GFX_Diddy_ScratchHead4,GFX_Diddy_ScratchHead4End
	dl $EB8D7E,$EB8F7E,GFX_Diddy_ScratchHead5,GFX_Diddy_ScratchHead5End
	dl $EB8F9A,$EB919A,GFX_Diddy_ScratchHead6,GFX_Diddy_ScratchHead6End
	dl $EB91B0,$EB93B0,GFX_Diddy_ScratchHead7,GFX_Diddy_ScratchHead7End
	dl $EB93C2,$EB9582,GFX_Diddy_ScratchHead8,GFX_Diddy_ScratchHead8End
	dl $EB959C,$EB977C,GFX_Diddy_ScratchHead9,GFX_Diddy_ScratchHead9End
	dl $EB9792,$EB9992,GFX_Diddy_ScratchHead10,GFX_Diddy_ScratchHead10End
	dl $EB99A8,$EB9BA8,GFX_Diddy_ScratchHead11,GFX_Diddy_ScratchHead11End
	dl $EB9BC2,$EB9E02,GFX_Diddy_ScratchHead12,GFX_Diddy_ScratchHead12End
	dl $EB9E18,$EBA078,GFX_Diddy_ScratchHead13,GFX_Diddy_ScratchHead13End
	dl $EBA08E,$EBA2EE,GFX_Diddy_ScratchHead14,GFX_Diddy_ScratchHead14End
	dl $EBA304,$EBA564,GFX_Diddy_ScratchHead15,GFX_Diddy_ScratchHead15End
	dl $EBA57A,$EBA7DA,GFX_Diddy_ScratchHead16,GFX_Diddy_ScratchHead16End
	dl $EBA7F0,$EBAA50,GFX_Diddy_ScratchHead17,GFX_Diddy_ScratchHead17End
	dl $EBAA66,$EBACC6,GFX_Diddy_ScratchHead18,GFX_Diddy_ScratchHead18End
	dl $EBACE4,$EBAF64,GFX_Kritter_Turn1,GFX_Kritter_Turn1End
	dl $EBAF82,$EBB202,GFX_Kritter_Turn2,GFX_Kritter_Turn2End
	dl $EBB21E,$EBB47E,GFX_Kritter_Jump1,GFX_Kritter_Jump1End
	dl $EBB49E,$EBB6DE,GFX_Kritter_Jump2,GFX_Kritter_Jump2End
	dl $EBB6F8,$EBB938,GFX_Kritter_Jump3,GFX_Kritter_Jump3End
	dl $EBB95A,$EBBC1A,GFX_Kritter_Jump4,GFX_Kritter_Jump4End
	dl $EBBC38,$EBBEB8,GFX_Kritter_Jump5,GFX_Kritter_Jump5End
	dl $EBBED2,$EBC172,GFX_Kritter_Jump6,GFX_Kritter_Jump6End
	dl $EBC18E,$EBC3EE,GFX_Kritter_Jump7,GFX_Kritter_Jump7End
	dl $EBC410,$EBC6D0,GFX_Kritter_Jump8,GFX_Kritter_Jump8End
	dl $EBC6EE,$EBC96E,GFX_Kritter_Jump9,GFX_Kritter_Jump9End
	dl $EBC98E,$EBCC2E,GFX_Kritter_Jump10,GFX_Kritter_Jump10End
	dl $EBCC5C,$EBD1BC,GFX_BoomBox_PlayMusic1,GFX_BoomBox_PlayMusic1End
	dl $EBD1EC,$EBD76C,GFX_BoomBox_PlayMusic2,GFX_BoomBox_PlayMusic2End
	dl $EBD79C,$EBDD1C,GFX_BoomBox_PlayMusic3,GFX_BoomBox_PlayMusic3End
	dl $EBDD30,$EBE030,GFX_OilDrum_Pose,GFX_OilDrum_PoseEnd
	dl $EBE03A,$EBE05A,GFX_BlownKiss_Pose1,GFX_BlownKiss_Pose1End
	dl $EBE064,$EBE084,GFX_BlownKiss_Pose2,GFX_BlownKiss_Pose2End
	dl $EBE08E,$EBE0AE,GFX_BlownKiss_Pose3,GFX_BlownKiss_Pose3End
	dl $EBE0B8,$EBE0D8,GFX_BlownKiss_Pose4,GFX_BlownKiss_Pose4End
	dl $EBE0E6,$EBE146,GFX_BlownKiss_Pose5,GFX_BlownKiss_Pose5End
	dl $EBE154,$EBE1B4,GFX_BlownKiss_Pose6,GFX_BlownKiss_Pose6End
	dl $EC0010,$EC00F0,GFX_MapDiddy_Victory1,GFX_MapDiddy_Victory1End
	dl $EC00FE,$EC01BE,GFX_MapDiddy_Victory2,GFX_MapDiddy_Victory2End
	dl $EC01CE,$EC02AE,GFX_MapDiddy_Victory3,GFX_MapDiddy_Victory3End
	dl $EC02BE,$EC039E,GFX_MapDiddy_Victory4,GFX_MapDiddy_Victory4End
	dl $EC03AC,$EC046C,GFX_MapDiddy_Victory5,GFX_MapDiddy_Victory5End
	dl $EC047C,$EC055C,GFX_MapDiddy_Victory6,GFX_MapDiddy_Victory6End
	dl $EC056C,$EC064C,GFX_MapDiddy_Victory7,GFX_MapDiddy_Victory7End
	dl $EC065C,$EC073C,GFX_MapDiddy_Victory8,GFX_MapDiddy_Victory8End
	dl $EC074C,$EC082C,GFX_MapDiddy_Victory9,GFX_MapDiddy_Victory9End
	dl $EC083A,$EC08FA,GFX_MapDiddy_Victory10,GFX_MapDiddy_Victory10End
	dl $EC0906,$EC09A6,GFX_MapDiddy_Victory11,GFX_MapDiddy_Victory11End
	dl $EC09BA,$EC0ADA,GFX_MapDonkeyKong_Victory1,GFX_MapDonkeyKong_Victory1End
	dl $EC0AEE,$EC0C0E,GFX_MapDonkeyKong_Victory2,GFX_MapDonkeyKong_Victory2End
	dl $EC0C22,$EC0D42,GFX_MapDonkeyKong_Victory3,GFX_MapDonkeyKong_Victory3End
	dl $EC0D54,$EC0E54,GFX_MapDonkeyKong_Victory4,GFX_MapDonkeyKong_Victory4End
	dl $EC0E68,$EC0F88,GFX_MapDonkeyKong_Victory5,GFX_MapDonkeyKong_Victory5End
	dl $EC0F9C,$EC10BC,GFX_MapDonkeyKong_Victory6,GFX_MapDonkeyKong_Victory6End
	dl $EC10D0,$EC11F0,GFX_MapDonkeyKong_Victory7,GFX_MapDonkeyKong_Victory7End
	dl $EC1204,$EC1324,GFX_MapDonkeyKong_Victory8,GFX_MapDonkeyKong_Victory8End
	dl $EC1336,$EC1436,GFX_MapDonkeyKong_Victory9,GFX_MapDonkeyKong_Victory9End
	dl $EC1446,$EC1526,GFX_MapDonkeyKong_Victory10,GFX_MapDonkeyKong_Victory10End
	dl $EC1534,$EC15F4,GFX_MapDonkeyKong_Victory11,GFX_MapDonkeyKong_Victory11End
	dl $ECA294,$ECA334,GFX_MapDiddy_Walk1,GFX_MapDiddy_Walk1End
	dl $ECA342,$ECA402,GFX_MapDiddy_Walk2,GFX_MapDiddy_Walk2End
	dl $ECA410,$ECA4D0,GFX_MapDiddy_Walk3,GFX_MapDiddy_Walk3End
	dl $ECA4DE,$ECA59E,GFX_MapDiddy_Walk4,GFX_MapDiddy_Walk4End
	dl $ECA5AE,$ECA68E,GFX_MapDiddy_Walk5,GFX_MapDiddy_Walk5End
	dl $ECA69C,$ECA75C,GFX_MapDiddy_Walk6,GFX_MapDiddy_Walk6End
	dl $ECA76A,$ECA82A,GFX_MapDiddy_Walk7,GFX_MapDiddy_Walk7End
	dl $ECA838,$ECA8F8,GFX_MapDiddy_Walk8,GFX_MapDiddy_Walk8End
	dl $ECA906,$ECA9C6,GFX_MapDiddy_Jump1,GFX_MapDiddy_Jump1End
	dl $ECA9D2,$ECAA72,GFX_MapDiddy_Jump2,GFX_MapDiddy_Jump2End
	dl $ECAA82,$ECAB62,GFX_MapDiddy_Jump3,GFX_MapDiddy_Jump3End
	dl $ECAB72,$ECAC52,GFX_MapDiddy_Jump4,GFX_MapDiddy_Jump4End
	dl $ECAC62,$ECAD42,GFX_MapDiddy_Jump5,GFX_MapDiddy_Jump5End
	dl $ECAD50,$ECAE10,GFX_MapDiddy_Jump6,GFX_MapDiddy_Jump6End
	dl $ECAE1E,$ECAEDE,GFX_MapDiddy_Jump7,GFX_MapDiddy_Jump7End
	dl $ECAEF0,$ECAFF0,GFX_MapDiddy_Jump8,GFX_MapDiddy_Jump8End
	dl $ECB000,$ECB0E0,GFX_MapDiddy_Jump9,GFX_MapDiddy_Jump9End
	dl $ECB0F0,$ECB1D0,GFX_MapDiddy_Jump10,GFX_MapDiddy_Jump10End
	dl $ECB1DE,$ECB29E,GFX_MapDiddy_Jump11,GFX_MapDiddy_Jump11End
	dl $ECB2AC,$ECB36C,GFX_MapDiddy_Jump12,GFX_MapDiddy_Jump12End
	dl $ECB390,$ECB670,GFX_CrankyKong_Startled1,GFX_CrankyKong_Startled1End
	dl $ECB696,$ECB996,GFX_CrankyKong_Startled2,GFX_CrankyKong_Startled2End
	dl $ECB9C0,$ECBCA0,GFX_CrankyKong_Startled3,GFX_CrankyKong_Startled3End
	dl $ECBCC8,$ECBFE8,GFX_CrankyKong_Startled4,GFX_CrankyKong_Startled4End
	dl $ECC016,$ECC336,GFX_CrankyKong_Startled5,GFX_CrankyKong_Startled5End
	dl $ECC360,$ECC6A0,GFX_CrankyKong_Startled6,GFX_CrankyKong_Startled6End
	dl $ECC6CC,$ECCA2C,GFX_CrankyKong_Startled7,GFX_CrankyKong_Startled7End
	dl $ECCA50,$ECCD90,GFX_CrankyKong_Startled8,GFX_CrankyKong_Startled8End
	dl $ECCDB8,$ECD138,GFX_CrankyKong_Startled9,GFX_CrankyKong_Startled9End
	dl $ECD160,$ECD4E0,GFX_CrankyKong_Startled10,GFX_CrankyKong_Startled10End
	dl $ECD508,$ECD888,GFX_CrankyKong_Startled11,GFX_CrankyKong_Startled11End
	dl $ECD8AE,$ECDC0E,GFX_CrankyKong_Startled12,GFX_CrankyKong_Startled12End
	dl $ECDC32,$ECDF72,GFX_CrankyKong_Startled13,GFX_CrankyKong_Startled13End
	dl $ECDF96,$ECE2D6,GFX_CrankyKong_Startled14,GFX_CrankyKong_Startled14End
	dl $ECE2FC,$ECE5FC,GFX_CrankyKong_Startled15,GFX_CrankyKong_Startled15End
	dl $ECE620,$ECE900,GFX_CrankyKong_Startled16,GFX_CrankyKong_Startled16End
	dl $ECE922,$ECEBE2,GFX_CrankyKong_Startled17,GFX_CrankyKong_Startled17End
	dl $ECEC04,$ECEEC4,GFX_CrankyKong_Startled18,GFX_CrankyKong_Startled18End
	dl $ECEEE6,$ECF1A6,GFX_CrankyKong_Startled19,GFX_CrankyKong_Startled19End
	dl $ECF1C6,$ECF466,GFX_CrankyKong_Startled20,GFX_CrankyKong_Startled20End
	dl $ECF486,$ECF726,GFX_CrankyKong_Startled21,GFX_CrankyKong_Startled21End
	dl $ECF746,$ECF9E6,GFX_CrankyKong_Startled22,GFX_CrankyKong_Startled22End
	dl $ECFA06,$ECFCA6,GFX_CrankyKong_Startled23,GFX_CrankyKong_Startled23End
	dl $ECFCC6,$ECFF66,GFX_CrankyKong_Startled24,GFX_CrankyKong_Startled24End
	dl $ED0018,$ED0298,GFX_FuelCan_FiveUnits,GFX_FuelCan_FiveUnitsEnd
	dl $ED02B0,$ED0530,GFX_FuelCan_FourUnits,GFX_FuelCan_FourUnitsEnd
	dl $ED0548,$ED07C8,GFX_FuelCan_ThreeUnits,GFX_FuelCan_ThreeUnitsEnd
	dl $ED07E0,$ED0A60,GFX_FuelCan_TwoUnits,GFX_FuelCan_TwoUnitsEnd
	dl $ED0A78,$ED0CF8,GFX_FuelCan_OneUnit,GFX_FuelCan_OneUnitEnd
	dl $ED3BA6,$ED3EC6,GFX_AnimalBuddyBox_Enguarde,GFX_AnimalBuddyBox_EnguardeEnd
	dl $ED3EDC,$ED407C,GFX_AnimalBuddyToken_Rambi,GFX_AnimalBuddyToken_RambiEnd
	dl $ED4094,$ED4254,GFX_AnimalBuddyToken_Expresso,GFX_AnimalBuddyToken_ExpressoEnd
	dl $ED4266,$ED43C6,GFX_AnimalBuddyToken_Winky,GFX_AnimalBuddyToken_WinkyEnd
	dl $ED43E0,$ED4560,GFX_AnimalBuddyToken_Enguarde,GFX_AnimalBuddyToken_EnguardeEnd
	dl $ED4574,$ED4754,GFX_CaveWallHole_RightWall,GFX_CaveWallHole_RightWallEnd
	dl $ED4760,$ED4860,GFX_FloorHole_Pose,GFX_FloorHole_PoseEnd
	dl $ED487E,$ED4A9E,GFX_Diddy_RideSteelKeg1,GFX_Diddy_RideSteelKeg1End
	dl $ED4ABC,$ED4CDC,GFX_Diddy_RideSteelKeg2,GFX_Diddy_RideSteelKeg2End
	dl $ED4CFA,$ED4F1A,GFX_Diddy_RideSteelKeg3,GFX_Diddy_RideSteelKeg3End
	dl $ED4F38,$ED5158,GFX_Diddy_RideSteelKeg4,GFX_Diddy_RideSteelKeg4End
	dl $ED5176,$ED5396,GFX_Diddy_RideSteelKeg5,GFX_Diddy_RideSteelKeg5End
	dl $ED53B6,$ED55F6,GFX_Diddy_RideSteelKeg6,GFX_Diddy_RideSteelKeg6End
	dl $ED5616,$ED5856,GFX_Diddy_RideSteelKeg7,GFX_Diddy_RideSteelKeg7End
	dl $ED5876,$ED5AB6,GFX_Diddy_RideSteelKeg8,GFX_Diddy_RideSteelKeg8End
	dl $ED5AD6,$ED5D16,GFX_Diddy_RideSteelKeg9,GFX_Diddy_RideSteelKeg9End
	dl $ED5D34,$ED5F54,GFX_Diddy_RideSteelKeg10,GFX_Diddy_RideSteelKeg10End
	dl $ED5F72,$ED6192,GFX_Diddy_RideSteelKeg11,GFX_Diddy_RideSteelKeg11End
	dl $ED61B0,$ED63D0,GFX_Diddy_RideSteelKeg12,GFX_Diddy_RideSteelKeg12End
	dl $ED63EC,$ED66AC,GFX_Phonograph_PlayMusic1,GFX_Phonograph_PlayMusic1End
	dl $ED66C2,$ED6982,GFX_Phonograph_PlayMusic2,GFX_Phonograph_PlayMusic2End
	dl $ED6998,$ED6C58,GFX_Phonograph_PlayMusic3,GFX_Phonograph_PlayMusic3End
	dl $ED6C6E,$ED6F2E,GFX_Phonograph_PlayMusic4,GFX_Phonograph_PlayMusic4End
	dl $ED6F44,$ED7204,GFX_Phonograph_PlayMusic5,GFX_Phonograph_PlayMusic5End
	dl $ED721A,$ED74DA,GFX_Phonograph_PlayMusic6,GFX_Phonograph_PlayMusic6End
	dl $ED74F0,$ED77B0,GFX_Phonograph_PlayMusic7,GFX_Phonograph_PlayMusic7End
	dl $ED77CA,$ED7A6A,GFX_Phonograph_PlayMusic8,GFX_Phonograph_PlayMusic8End
	dl $ED7A80,$ED7D40,GFX_Phonograph_PlayMusic9,GFX_Phonograph_PlayMusic9End
	dl $ED7D56,$ED8016,GFX_Phonograph_PlayMusic10,GFX_Phonograph_PlayMusic10End
	dl $ED802A,$ED82CA,GFX_Phonograph_PlayMusic11,GFX_Phonograph_PlayMusic11End
	dl $ED82DE,$ED857E,GFX_Phonograph_PlayMusic12,GFX_Phonograph_PlayMusic12End
	dl $ED8596,$ED86F6,GFX_Slippa_UnusedDeath1,GFX_Slippa_UnusedDeath1End
	dl $ED870E,$ED886E,GFX_Slippa_UnusedDeath2,GFX_Slippa_UnusedDeath2End
	dl $ED8884,$ED89C4,GFX_Slippa_UnusedDeath3,GFX_Slippa_UnusedDeath3End
	dl $ED89D8,$ED8AF8,GFX_Slippa_UnusedDeath4,GFX_Slippa_UnusedDeath4End
	dl $ED8B0C,$ED8C8C,GFX_Slippa_UnusedDeath5,GFX_Slippa_UnusedDeath5End
	dl $ED8CB0,$ED9050,GFX_Minecart_OnSide,GFX_Minecart_OnSideEnd
	dl $ED9072,$ED9332,GFX_Enguarde_Turn1,GFX_Enguarde_Turn1End
	dl $ED934C,$ED952C,GFX_Enguarde_Turn2,GFX_Enguarde_Turn2End
	dl $ED9544,$ED9704,GFX_Enguarde_Turn3,GFX_Enguarde_Turn3End
	dl $ED9722,$ED98E2,GFX_Enguarde_Turn4,GFX_Enguarde_Turn4End
	dl $ED9906,$ED9C46,GFX_Rockkroc_CurlUp1,GFX_Rockkroc_CurlUp1End
	dl $ED9C60,$ED9F60,GFX_Rockkroc_CurlUp2,GFX_Rockkroc_CurlUp2End
	dl $ED9F7A,$EDA21A,GFX_Rockkroc_CurlUp3,GFX_Rockkroc_CurlUp3End
	dl $EDA236,$EDA4F6,GFX_Rockkroc_CurlUp4,GFX_Rockkroc_CurlUp4End
	dl $EDA50A,$EDA74A,GFX_Rockkroc_CurlUp5,GFX_Rockkroc_CurlUp5End
	dl $EDA760,$EDA960,GFX_Rockkroc_CurlUp6,GFX_Rockkroc_CurlUp6End
	dl $EDA974,$EDAB54,GFX_Rockkroc_CurlUp7,GFX_Rockkroc_CurlUp7End
	dl $EDAB68,$EDACE8,GFX_Rockkroc_CurlUp8,GFX_Rockkroc_CurlUp8End
	dl $EDACFC,$EDAE7C,GFX_Rockkroc_CurlUp9,GFX_Rockkroc_CurlUp9End
	dl $EDAE90,$EDB010,GFX_Rockkroc_CurlUp10,GFX_Rockkroc_CurlUp10End
	dl $EDB026,$EDB1C6,GFX_Rockkroc_CurlUp11,GFX_Rockkroc_CurlUp11End
	dl $EDB1DC,$EDB37C,GFX_Rockkroc_CurlUp12,GFX_Rockkroc_CurlUp12End
	dl $EDB392,$EDB532,GFX_Rockkroc_CurlUp13,GFX_Rockkroc_CurlUp13End
	dl $EDB556,$EDB896,GFX_Rockkroc_Blink,GFX_Rockkroc_BlinkEnd
	dl $EDB8A4,$EDB964,GFX_DiddysHat_ThrownOnGround1,GFX_DiddysHat_ThrownOnGround1End
	dl $EDB970,$EDBA10,GFX_DiddysHat_ThrownOnGround2,GFX_DiddysHat_ThrownOnGround2End
	dl $EDBA1A,$EDBA9A,GFX_DiddysHat_ThrownOnGround3,GFX_DiddysHat_ThrownOnGround3End
	dl $EDBAA8,$EDBB08,GFX_DiddysHat_ThrownOnGround4,GFX_DiddysHat_ThrownOnGround4End
	dl $EDBB16,$EDBBD6,GFX_DiddysHat_ThrownOnGround5,GFX_DiddysHat_ThrownOnGround5End
	dl $EDBBE4,$EDBCA4,GFX_DiddysHat_ThrownInAir1,GFX_DiddysHat_ThrownInAir1End
	dl $EDBCB2,$EDBD72,GFX_DiddysHat_ThrownInAir2,GFX_DiddysHat_ThrownInAir2End
	dl $EDBD7E,$EDBE1E,GFX_DiddysHat_ThrownInAir3,GFX_DiddysHat_ThrownInAir3End
	dl $EDBE2A,$EDBECA,GFX_DiddysHat_ThrownInAir4,GFX_DiddysHat_ThrownInAir4End
	dl $EDBED6,$EDBF76,GFX_DiddysHat_ThrownInAir5,GFX_DiddysHat_ThrownInAir5End
	dl $EDBF84,$EDC044,GFX_DiddysHat_ThrownInAir6,GFX_DiddysHat_ThrownInAir6End
	dl $EDC05C,$EDC2DC,GFX_TNTBarrel_Idle,GFX_TNTBarrel_IdleEnd
	dl $EDC2F0,$EDC530,GFX_TNTBarrel_Grabbed1,GFX_TNTBarrel_Grabbed1End
	dl $EDC540,$EDC740,GFX_TNTBarrel_Grabbed2,GFX_TNTBarrel_Grabbed2End
	dl $EDC750,$EDC950,GFX_TNTBarrel_Grabbed3,GFX_TNTBarrel_Grabbed3End
	dl $EDC960,$EDCB60,GFX_TNTBarrel_Grabbed4,GFX_TNTBarrel_Grabbed4End
	dl $EDCB76,$EDCCB6,GFX_MapAirplaneBarrel_Pose,GFX_MapAirplaneBarrel_PoseEnd
	dl $EE0014,$EE01F4,GFX_FunkysSurfboard_LookTowardsCamera1,GFX_FunkysSurfboard_LookTowardsCamera1End
	dl $EE0208,$EE03E8,GFX_FunkysSurfboard_LookTowardsCamera2,GFX_FunkysSurfboard_LookTowardsCamera2End
	dl $EE03FE,$EE05FE,GFX_FunkysSurfboard_LookTowardsCamera3,GFX_FunkysSurfboard_LookTowardsCamera3End
	dl $EE0614,$EE0814,GFX_FunkysSurfboard_LookTowardsCamera4,GFX_FunkysSurfboard_LookTowardsCamera4End
	dl $EE082A,$EE0A2A,GFX_FunkysSurfboard_LookTowardsCamera5,GFX_FunkysSurfboard_LookTowardsCamera5End
	dl $EE0A40,$EE0C40,GFX_FunkysSurfboard_LookTowardsCamera6,GFX_FunkysSurfboard_LookTowardsCamera6End
	dl $EE0C56,$EE0E56,GFX_FunkysSurfboard_LookTowardsCamera7,GFX_FunkysSurfboard_LookTowardsCamera7End
	dl $EE0E6C,$EE106C,GFX_FunkysSurfboard_LookTowardsCamera8,GFX_FunkysSurfboard_LookTowardsCamera8End
	dl $EE1082,$EE1282,GFX_FunkysSurfboard_LookTowardsCamera9,GFX_FunkysSurfboard_LookTowardsCamera9End
	dl $EE1296,$EE1476,GFX_FunkysSurfboard_LookTowardsCamera10,GFX_FunkysSurfboard_LookTowardsCamera10End
	dl $EE17E7,$EE1867,GFX_Explosion_Pose1,GFX_Explosion_Pose1End
	dl $EE1875,$EE1935,GFX_Explosion_Pose2,GFX_Explosion_Pose2End
	dl $EE194B,$EE1A8B,GFX_Explosion_Pose3,GFX_Explosion_Pose3End
	dl $EE1A9F,$EE1C7F,GFX_Explosion_Pose4,GFX_Explosion_Pose4End
	dl $EE1C97,$EE1F17,GFX_Explosion_Pose5,GFX_Explosion_Pose5End
	dl $EE1F33,$EE21F3,GFX_Explosion_Pose6,GFX_Explosion_Pose6End
	dl $EE2211,$EE24F1,GFX_Explosion_Pose7,GFX_Explosion_Pose7End
	dl $EE2509,$EE2789,GFX_Explosion_Pose8,GFX_Explosion_Pose8End
	dl $EE279F,$EE299F,GFX_Explosion_Pose9,GFX_Explosion_Pose9End
	dl $EE29AF,$EE2AEF,GFX_Explosion_Pose10,GFX_Explosion_Pose10End
	dl $EE2AFB,$EE2B9B,GFX_Explosion_Pose11,GFX_Explosion_Pose11End
	dl $EE2BA7,$EE2BE7,GFX_Explosion_Pose12,GFX_Explosion_Pose12End
	dl $EE2C15,$EE30B5,GFX_VeryGnawty_Hop1,GFX_VeryGnawty_Hop1End
	dl $EE30DF,$EE353F,GFX_VeryGnawty_Hop2,GFX_VeryGnawty_Hop2End
	dl $EE3567,$EE39A7,GFX_VeryGnawty_Hop3,GFX_VeryGnawty_Hop3End
	dl $EE39CF,$EE3E0F,GFX_VeryGnawty_Hop4,GFX_VeryGnawty_Hop4End
	dl $EE3E39,$EE4299,GFX_VeryGnawty_Hop5,GFX_VeryGnawty_Hop5End
	dl $EE42C7,$EE4767,GFX_VeryGnawty_Hop6,GFX_VeryGnawty_Hop6End
	dl $EE4797,$EE4BF7,GFX_VeryGnawty_Hop7,GFX_VeryGnawty_Hop7End
	dl $EE4C21,$EE5141,GFX_VeryGnawty_Dead1,GFX_VeryGnawty_Dead1End
	dl $EE5171,$EE56F1,GFX_VeryGnawty_Dead2,GFX_VeryGnawty_Dead2End
	dl $EE571F,$EE5C7F,GFX_VeryGnawty_Dead3,GFX_VeryGnawty_Dead3End
	dl $EE5CB3,$EE6273,GFX_VeryGnawty_Dead4,GFX_VeryGnawty_Dead4End
	dl $EE629F,$EE67DF,GFX_VeryGnawty_Dead5,GFX_VeryGnawty_Dead5End
	dl $EE6809,$EE6CC9,GFX_VeryGnawty_Dead6,GFX_VeryGnawty_Dead6End
	dl $EE6CED,$EE70ED,GFX_VeryGnawty_Dead7,GFX_VeryGnawty_Dead7End
	dl $EE710D,$EE74CD,GFX_VeryGnawty_Dead8,GFX_VeryGnawty_Dead8End
	dl $EE74F1,$EE78F1,GFX_VeryGnawty_Dead9,GFX_VeryGnawty_Dead9End
	dl $EE7915,$EE7D15,GFX_VeryGnawty_Dead10,GFX_VeryGnawty_Dead10End
	dl $EE7D2B,$EE7ECB,GFX_Squawks_Fly1,GFX_Squawks_Fly1End
	dl $EE7EE1,$EE8021,GFX_Squawks_Fly2,GFX_Squawks_Fly2End
	dl $EE8037,$EE8177,GFX_Squawks_Fly3,GFX_Squawks_Fly3End
	dl $EE818D,$EE82CD,GFX_Squawks_Fly4,GFX_Squawks_Fly4End
	dl $EE82E3,$EE8423,GFX_Squawks_Fly5,GFX_Squawks_Fly5End
	dl $EE8439,$EE8579,GFX_Squawks_Fly6,GFX_Squawks_Fly6End
	dl $EE858F,$EE86CF,GFX_Squawks_Fly7,GFX_Squawks_Fly7End
	dl $EE86E7,$EE8847,GFX_Squawks_Fly8,GFX_Squawks_Fly8End
	dl $EE885F,$EE89BF,GFX_Squawks_Fly9,GFX_Squawks_Fly9End
	dl $EE89D9,$EE8B59,GFX_Squawks_Fly10,GFX_Squawks_Fly10End
	dl $EE8B75,$EE8D15,GFX_Squawks_Fly11,GFX_Squawks_Fly11End
	dl $EE8D31,$EE8ED1,GFX_Squawks_Fly12,GFX_Squawks_Fly12End
	dl $EE8EED,$EE908D,GFX_Squawks_Fly13,GFX_Squawks_Fly13End
	dl $EE90A5,$EE9205,GFX_Squawks_Fly14,GFX_Squawks_Fly14End
	dl $EE921F,$EE939F,GFX_Squawks_Turn1,GFX_Squawks_Turn1End
	dl $EE93B5,$EE94F5,GFX_Squawks_Turn2,GFX_Squawks_Turn2End
	dl $EE950B,$EE964B,GFX_Squawks_Turn3,GFX_Squawks_Turn3End
	dl $EEB421,$EEB561,GFX_DonkeyKong_SwingIntoIntro1,GFX_DonkeyKong_SwingIntoIntro1End
	dl $EEB577,$EEB6B7,GFX_DonkeyKong_SwingIntoIntro2,GFX_DonkeyKong_SwingIntoIntro2End
	dl $EEB6CD,$EEB80D,GFX_DonkeyKong_SwingIntoIntro3,GFX_DonkeyKong_SwingIntoIntro3End
	dl $EEB823,$EEB9C3,GFX_DonkeyKong_SwingIntoIntro4,GFX_DonkeyKong_SwingIntoIntro4End
	dl $EEB9DB,$EEBBFB,GFX_DonkeyKong_SwingIntoIntro5,GFX_DonkeyKong_SwingIntoIntro5End
	dl $EEBC13,$EEBE33,GFX_DonkeyKong_SwingIntoIntro6,GFX_DonkeyKong_SwingIntoIntro6End
	dl $EEBE4B,$EEC06B,GFX_DonkeyKong_SwingIntoIntro7,GFX_DonkeyKong_SwingIntoIntro7End
	dl $EEC08B,$EEC32B,GFX_DonkeyKong_SwingIntoIntro8,GFX_DonkeyKong_SwingIntoIntro8End
	dl $EEC345,$EEC5E5,GFX_DonkeyKong_SwingIntoIntro9,GFX_DonkeyKong_SwingIntoIntro9End
	dl $EEC607,$EEC927,GFX_DonkeyKong_SwingIntoIntro10,GFX_DonkeyKong_SwingIntoIntro10End
	dl $EEC94F,$EECCCF,GFX_DonkeyKong_SwingIntoIntro11,GFX_DonkeyKong_SwingIntoIntro11End
	dl $EECCF9,$EED099,GFX_DonkeyKong_SwingIntoIntro12,GFX_DonkeyKong_SwingIntoIntro12End
	dl $EED0C5,$EED485,GFX_DonkeyKong_SwingIntoIntro13,GFX_DonkeyKong_SwingIntoIntro13End
	dl $EED4B1,$EED871,GFX_DonkeyKong_SwingIntoIntro14,GFX_DonkeyKong_SwingIntoIntro14End
	dl $EED89B,$EEDC9B,GFX_DonkeyKong_SwingIntoIntro15,GFX_DonkeyKong_SwingIntoIntro15End
	dl $EEDCBD,$EEE09D,GFX_DonkeyKong_SwingIntoIntro16,GFX_DonkeyKong_SwingIntoIntro16End
	dl $EEE0BF,$EEE43F,GFX_DonkeyKong_SwingIntoIntro17,GFX_DonkeyKong_SwingIntoIntro17End
	dl $EEE45D,$EEE79D,GFX_DonkeyKong_SwingIntoIntro18,GFX_DonkeyKong_SwingIntoIntro18End
	dl $EEE7BD,$EEEABD,GFX_DonkeyKong_SwingIntoIntro19,GFX_DonkeyKong_SwingIntoIntro19End
	dl $EEEAD9,$EEED99,GFX_DonkeyKong_SwingIntoIntro20,GFX_DonkeyKong_SwingIntoIntro20End
	dl $EEEDAF,$EEF00F,GFX_DonkeyKong_SwingIntoIntro21,GFX_DonkeyKong_SwingIntoIntro21End
	dl $EEF025,$EEF285,GFX_DonkeyKong_SwingIntoIntro22,GFX_DonkeyKong_SwingIntoIntro22End
	dl $EEF29B,$EEF4FB,GFX_DonkeyKong_SwingIntoIntro23,GFX_DonkeyKong_SwingIntoIntro23End
	dl $EEF511,$EEF771,GFX_DonkeyKong_SwingIntoIntro24,GFX_DonkeyKong_SwingIntoIntro24End
	dl $EEF787,$EEF9E7,GFX_DonkeyKong_SwingIntoIntro25,GFX_DonkeyKong_SwingIntoIntro25End
	dl $EEF9FD,$EEFC5D,GFX_DonkeyKong_SwingIntoIntro26,GFX_DonkeyKong_SwingIntoIntro26End
	dl $EF763A,$EF781A,GFX_Diddy_HangOntoWinky1,GFX_Diddy_HangOntoWinky1End
	dl $EF7832,$EF79F2,GFX_Diddy_HangOntoWinky2,GFX_Diddy_HangOntoWinky2End
	dl $EF7A0A,$EF7BCA,GFX_Diddy_HangOntoWinky3,GFX_Diddy_HangOntoWinky3End
	dl $EF7BE4,$EF7DC4,GFX_Diddy_HangOntoWinky4,GFX_Diddy_HangOntoWinky4End
	dl $EF7DDE,$EF7FBE,GFX_Diddy_HangOntoWinky5,GFX_Diddy_HangOntoWinky5End
	dl $EFE4D4,$EFE6D4,GFX_BreakableWall_Unknown1,GFX_BreakableWall_Unknown1End
	dl $EFE6EA,$EFE8EA,GFX_BreakableWall_Unknown2,GFX_BreakableWall_Unknown2End
	dl $EFE90E,$EFEDCE,GFX_QueenB_Attack1,GFX_QueenB_Attack1End
	dl $EFEE06,$EFF2E6,GFX_QueenB_Attack2,GFX_QueenB_Attack2End
	dl $EFF318,$EFF7F8,GFX_QueenB_Attack3,GFX_QueenB_Attack3End
	dl $EFF828,$EFFD48,GFX_QueenB_Attack4,GFX_QueenB_Attack4End
	dl $F00110,$F003F0,GFX_ArrowPlatform_Down,GFX_ArrowPlatform_DownEnd
	dl $F0040E,$F006EE,GFX_ArrowPlatform_Side,GFX_ArrowPlatform_SideEnd
	dl $F0070C,$F009EC,GFX_ArrowPlatform_Up,GFX_ArrowPlatform_UpEnd
	dl $F00E1E,$F0129E,GFX_QueenB_Hurt1,GFX_QueenB_Hurt1End
	dl $F012CE,$F0178E,GFX_QueenB_Hurt2,GFX_QueenB_Hurt2End
	dl $F017C2,$F01C62,GFX_QueenB_Hurt3,GFX_QueenB_Hurt3End
	dl $F01C78,$F01ED8,GFX_DonkeyKong_HeyWatchThis1,GFX_DonkeyKong_HeyWatchThis1End
	dl $F01EEE,$F0214E,GFX_DonkeyKong_HeyWatchThis2,GFX_DonkeyKong_HeyWatchThis2End
	dl $F02164,$F023C4,GFX_DonkeyKong_HeyWatchThis3,GFX_DonkeyKong_HeyWatchThis3End
	dl $F023DA,$F0263A,GFX_DonkeyKong_PrankDiddy1,GFX_DonkeyKong_PrankDiddy1End
	dl $F02656,$F02916,GFX_DonkeyKong_PrankDiddy2,GFX_DonkeyKong_PrankDiddy2End
	dl $F02936,$F02C36,GFX_DonkeyKong_PrankDiddy3,GFX_DonkeyKong_PrankDiddy3End
	dl $F02C54,$F02F94,GFX_DonkeyKong_PrankDiddy4,GFX_DonkeyKong_PrankDiddy4End
	dl $F02FB4,$F032B4,GFX_DonkeyKong_PrankDiddy5,GFX_DonkeyKong_PrankDiddy5End
	dl $F032D6,$F03596,GFX_DonkeyKong_PrankDiddy6,GFX_DonkeyKong_PrankDiddy6End
	dl $F035B8,$F03878,GFX_DonkeyKong_PrankDiddy7,GFX_DonkeyKong_PrankDiddy7End
	dl $F03892,$F03B32,GFX_DonkeyKong_PrankDiddy8,GFX_DonkeyKong_PrankDiddy8End
	dl $F03B4C,$F03DEC,GFX_DonkeyKong_PrankDiddy9,GFX_DonkeyKong_PrankDiddy9End
	dl $F03E04,$F04084,GFX_DonkeyKong_PrankDiddy10,GFX_DonkeyKong_PrankDiddy10End
	dl $F0409C,$F0431C,GFX_DonkeyKong_PrankDiddy11,GFX_DonkeyKong_PrankDiddy11End
	dl $F04334,$F045B4,GFX_DonkeyKong_PrankDiddy12,GFX_DonkeyKong_PrankDiddy12End
	dl $F045D6,$F048F6,GFX_DonkeyKong_PrankDiddy13,GFX_DonkeyKong_PrankDiddy13End
	dl $F04912,$F04C32,GFX_DonkeyKong_PrankDiddy14,GFX_DonkeyKong_PrankDiddy14End
	dl $F04C4C,$F04EEC,GFX_DonkeyKong_PrankDiddy15,GFX_DonkeyKong_PrankDiddy15End
	dl $F04F10,$F05250,GFX_DonkeyKong_PrankDiddy16,GFX_DonkeyKong_PrankDiddy16End
	dl $F05276,$F05576,GFX_DonkeyKong_PrankDiddy17,GFX_DonkeyKong_PrankDiddy17End
	dl $F05594,$F05814,GFX_DonkeyKong_PrankDiddy18,GFX_DonkeyKong_PrankDiddy18End
	dl $F05830,$F05AF0,GFX_DonkeyKong_PrankDiddy19,GFX_DonkeyKong_PrankDiddy19End
	dl $F05B0C,$F05E2C,GFX_DonkeyKong_PrankDiddy20,GFX_DonkeyKong_PrankDiddy20End
	dl $F05E44,$F06124,GFX_DonkeyKong_PrankDiddy21,GFX_DonkeyKong_PrankDiddy21End
	dl $F0613E,$F0643E,GFX_DonkeyKong_PrankDiddy22,GFX_DonkeyKong_PrankDiddy22End
	dl $F06458,$F06758,GFX_DonkeyKong_PrankDiddy23,GFX_DonkeyKong_PrankDiddy23End
	dl $F06774,$F06A94,GFX_DonkeyKong_PrankDiddy24,GFX_DonkeyKong_PrankDiddy24End
	dl $F06AB2,$F06D32,GFX_DonkeyKong_PrankDiddy25,GFX_DonkeyKong_PrankDiddy25End
	dl $F06D50,$F06FD0,GFX_DonkeyKong_PrankDiddy26,GFX_DonkeyKong_PrankDiddy26End
	dl $F06FEC,$F072AC,GFX_DonkeyKong_FingerBitten1,GFX_DonkeyKong_FingerBitten1End
	dl $F072CE,$F0758E,GFX_DonkeyKong_FingerBitten2,GFX_DonkeyKong_FingerBitten2End
	dl $F075B6,$F078D6,GFX_DonkeyKong_FingerBitten3,GFX_DonkeyKong_FingerBitten3End
	dl $F078F8,$F07C18,GFX_DonkeyKong_FingerBitten4,GFX_DonkeyKong_FingerBitten4End
	dl $F07C36,$F07F16,GFX_DonkeyKong_FingerBitten5,GFX_DonkeyKong_FingerBitten5End
	dl $F07F3C,$F0823C,GFX_DonkeyKong_FingerBitten6,GFX_DonkeyKong_FingerBitten6End
	dl $F0825E,$F0851E,GFX_DonkeyKong_FingerBitten7,GFX_DonkeyKong_FingerBitten7End
	dl $F08538,$F087D8,GFX_DonkeyKong_FingerBitten8,GFX_DonkeyKong_FingerBitten8End
	dl $F087F4,$F08AB4,GFX_DonkeyKong_FingerBitten9,GFX_DonkeyKong_FingerBitten9End
	dl $F08AD0,$F08D90,GFX_DonkeyKong_FingerBitten10,GFX_DonkeyKong_FingerBitten10End
	dl $F08DAC,$F0906C,GFX_DonkeyKong_FingerBitten11,GFX_DonkeyKong_FingerBitten11End
	dl $F09084,$F09304,GFX_DonkeyKong_FingerBitten12,GFX_DonkeyKong_FingerBitten12End
	dl $F0931E,$F095BE,GFX_DonkeyKong_FingerBitten13,GFX_DonkeyKong_FingerBitten13End
	dl $F0F77C,$F0F83C,GFX_HUDBalloon_Pop1,GFX_HUDBalloon_Pop1End
	dl $F0F84A,$F0F90A,GFX_HUDBalloon_Pop2,GFX_HUDBalloon_Pop2End
	dl $F0F918,$F0F9D8,GFX_HUDBalloon_Pop3,GFX_HUDBalloon_Pop3End
	dl $F0F9E6,$F0FAA6,GFX_HUDBalloon_Pop4,GFX_HUDBalloon_Pop4End
	dl $F0FAB8,$F0FB58,GFX_HUDBalloon_Pop5,GFX_HUDBalloon_Pop5End
	dl $F0FB6C,$F0FC2C,GFX_HUDBalloon_Pop6,GFX_HUDBalloon_Pop6End
	dl $F0FC40,$F0FD00,GFX_HUDBalloon_Pop7,GFX_HUDBalloon_Pop7End
	dl $F13D2C,$F13FEC,GFX_DonkeyKong_HoldIdle1,GFX_DonkeyKong_HoldIdle1End
	dl $F14008,$F142C8,GFX_DonkeyKong_HoldIdle2,GFX_DonkeyKong_HoldIdle2End
	dl $F142E4,$F145A4,GFX_DonkeyKong_HoldIdle3,GFX_DonkeyKong_HoldIdle3End
	dl $F145C6,$F148E6,GFX_Expresso_Run1,GFX_Expresso_Run1End
	dl $F14908,$F14C28,GFX_Expresso_Run2,GFX_Expresso_Run2End
	dl $F14C4C,$F14F2C,GFX_Expresso_Run3,GFX_Expresso_Run3End
	dl $F14F4C,$F1524C,GFX_Expresso_Run4,GFX_Expresso_Run4End
	dl $F1526E,$F1558E,GFX_Expresso_Run5,GFX_Expresso_Run5End
	dl $F155AC,$F1588C,GFX_Expresso_Run6,GFX_Expresso_Run6End
	dl $F158B0,$F15B90,GFX_Expresso_Run7,GFX_Expresso_Run7End
	dl $F15BB4,$F15E94,GFX_Expresso_Run8,GFX_Expresso_Run8End
	dl $F15EB2,$F16192,GFX_Expresso_Run9,GFX_Expresso_Run9End
	dl $F161B2,$F164B2,GFX_Expresso_Run10,GFX_Expresso_Run10End
	dl $F164D4,$F167F4,GFX_Expresso_Run11,GFX_Expresso_Run11End
	dl $F16814,$F16B14,GFX_Expresso_Run12,GFX_Expresso_Run12End
	dl $F16B34,$F16E34,GFX_Expresso_Run13,GFX_Expresso_Run13End
	dl $F16E4C,$F1712C,GFX_Expresso_Run14,GFX_Expresso_Run14End
	dl $F17146,$F173E6,GFX_Expresso_Run15,GFX_Expresso_Run15End
	dl $F17404,$F176E4,GFX_Expresso_Run16,GFX_Expresso_Run16End
	dl $F17702,$F179E2,GFX_Expresso_Run17,GFX_Expresso_Run17End
	dl $F17A02,$F17D02,GFX_Expresso_Run18,GFX_Expresso_Run18End
	dl $F19518,$F19998,GFX_QueenB_Dead1,GFX_QueenB_Dead1End
	dl $F199C6,$F19E06,GFX_QueenB_Dead2,GFX_QueenB_Dead2End
	dl $F19E2C,$F1A24C,GFX_QueenB_Dead3,GFX_QueenB_Dead3End
	dl $F1A272,$F1A692,GFX_QueenB_Dead4,GFX_QueenB_Dead4End
	dl $F1A6BE,$F1AB3E,GFX_QueenB_Dead5,GFX_QueenB_Dead5End
	dl $F1AB64,$F1AF84,GFX_QueenB_Dead6,GFX_QueenB_Dead6End
	dl $F1AFAC,$F1B38C,GFX_QueenB_Dead7,GFX_QueenB_Dead7End
	dl $F1B3B0,$F1B750,GFX_QueenB_Dead8,GFX_QueenB_Dead8End
	dl $F1B778,$F1BB58,GFX_QueenB_Dead9,GFX_QueenB_Dead9End
	dl $F1EBD6,$F1EEF6,GFX_Krocbot_Dead1,GFX_Krocbot_Dead1End
	dl $F1EF1C,$F1F27C,GFX_Krocbot_Dead2,GFX_Krocbot_Dead2End
	dl $F1F286,$F1F2A6,GFX_UnknownEffect_Pose1,GFX_UnknownEffect_Pose1End
	dl $F1F2B0,$F1F330,GFX_UnknownEffect_Pose2,GFX_UnknownEffect_Pose2End
	dl $F1F342,$F1F442,GFX_UnknownEffect_Pose3,GFX_UnknownEffect_Pose3End
	dl $F1F454,$F1F554,GFX_UnknownEffect_Pose4,GFX_UnknownEffect_Pose4End
	dl $F1F564,$F1F6A4,GFX_UnknownEffect_Pose5,GFX_UnknownEffect_Pose5End
	dl $F1F6B6,$F1F7B6,GFX_UnknownEffect_Pose6,GFX_UnknownEffect_Pose6End
	dl $F1F7C8,$F1F868,GFX_UnknownEffect_Pose7,GFX_UnknownEffect_Pose7End
	dl $F1F876,$F1F9F6,GFX_UnknownEffect_Pose8,GFX_UnknownEffect_Pose8End
	dl $F26558,$F266B8,GFX_Slippa_Slither1,GFX_Slippa_Slither1End
	dl $F266D0,$F26830,GFX_Slippa_Slither2,GFX_Slippa_Slither2End
	dl $F26848,$F269A8,GFX_Slippa_Slither3,GFX_Slippa_Slither3End
	dl $F269C0,$F26B20,GFX_Slippa_Slither4,GFX_Slippa_Slither4End
	dl $F26B38,$F26C98,GFX_Slippa_Slither5,GFX_Slippa_Slither5End
	dl $F26CB0,$F26E10,GFX_Slippa_Slither6,GFX_Slippa_Slither6End
	dl $F26E28,$F26F88,GFX_Slippa_Slither7,GFX_Slippa_Slither7End
	dl $F26FA0,$F27100,GFX_Slippa_Slither8,GFX_Slippa_Slither8End
	dl $F27116,$F27256,GFX_Slippa_Slither9,GFX_Slippa_Slither9End
	dl $F27268,$F273C8,GFX_Slippa_Slither10,GFX_Slippa_Slither10End
	dl $F273DE,$F2751E,GFX_Slippa_Slither11,GFX_Slippa_Slither11End
	dl $F27536,$F27696,GFX_Slippa_Slither12,GFX_Slippa_Slither12End
	dl $F276B2,$F27972,GFX_DonkeyKong_Turn1,GFX_DonkeyKong_Turn1End
	dl $F2798A,$F27C0A,GFX_DonkeyKong_Turn2,GFX_DonkeyKong_Turn2End
	dl $F27C24,$F27F84,GFX_TemplePlatform_Pose,GFX_TemplePlatform_PoseEnd
	dl $F27FB2,$F28572,GFX_BoomBox_DropDown1,GFX_BoomBox_DropDown1End
	dl $F2859E,$F28B3E,GFX_BoomBox_DropDown2,GFX_BoomBox_DropDown2End
	dl $F28B66,$F290C6,GFX_BoomBox_DropDown3,GFX_BoomBox_DropDown3End
	dl $F290F2,$F29632,GFX_BoomBox_DropDown4,GFX_BoomBox_DropDown4End
	dl $F30020,$F302C0,GFX_Necky_ThrowNut1,GFX_Necky_ThrowNut1End
	dl $F302DE,$F305BE,GFX_Necky_ThrowNut2,GFX_Necky_ThrowNut2End
	dl $F305DA,$F3089A,GFX_Necky_ThrowNut3,GFX_Necky_ThrowNut3End
	dl $F308B6,$F30B76,GFX_Necky_ThrowNut4,GFX_Necky_ThrowNut4End
	dl $F30B90,$F30E30,GFX_Necky_ThrowNut5,GFX_Necky_ThrowNut5End
	dl $F30E4A,$F3108A,GFX_Necky_ThrowNut6,GFX_Necky_ThrowNut6End
	dl $F310A4,$F31284,GFX_Necky_ThrowNut7,GFX_Necky_ThrowNut7End
	dl $F312A2,$F31462,GFX_Necky_ThrowNut8,GFX_Necky_ThrowNut8End
	dl $F31484,$F31744,GFX_Necky_ThrowNut9,GFX_Necky_ThrowNut9End
	dl $F31768,$F31AA8,GFX_Necky_ThrowNut10,GFX_Necky_ThrowNut10End
	dl $F31AC6,$F31DA6,GFX_Necky_Dead,GFX_Necky_DeadEnd
	dl $F31DB8,$F31F78,GFX_DonkeyKong_TurnOnAnimalBuddy1,GFX_DonkeyKong_TurnOnAnimalBuddy1End
	dl $F31F92,$F32172,GFX_DonkeyKong_TurnOnAnimalBuddy2,GFX_DonkeyKong_TurnOnAnimalBuddy2End
	dl $F3218E,$F3250E,GFX_Rambi_Turn1,GFX_Rambi_Turn1End
	dl $F32528,$F327C8,GFX_Rambi_Turn2,GFX_Rambi_Turn2End
	dl $F327EE,$F32BAE,GFX_Rambi_Idle1,GFX_Rambi_Idle1End
	dl $F32BD4,$F32F94,GFX_Rambi_Idle2,GFX_Rambi_Idle2End
	dl $F32FBA,$F3337A,GFX_Rambi_Idle3,GFX_Rambi_Idle3End
	dl $F3339E,$F3373E,GFX_Rambi_Idle4,GFX_Rambi_Idle4End
	dl $F33762,$F33B02,GFX_Rambi_Idle5,GFX_Rambi_Idle5End
	dl $F33B26,$F33EC6,GFX_Rambi_Idle6,GFX_Rambi_Idle6End
	dl $F33EEA,$F3428A,GFX_Rambi_Panting1,GFX_Rambi_Panting1End
	dl $F342AE,$F3464E,GFX_Rambi_Panting2,GFX_Rambi_Panting2End
	dl $F3466A,$F349EA,GFX_Rambi_Panting3,GFX_Rambi_Panting3End
	dl $F34A0E,$F34D4E,GFX_Rambi_Panting4,GFX_Rambi_Panting4End
	dl $F34D6E,$F350CE,GFX_Rambi_Panting5,GFX_Rambi_Panting5End
	dl $F350F0,$F35410,GFX_Rambi_Panting6,GFX_Rambi_Panting6End
	dl $F35432,$F35752,GFX_Rambi_Panting7,GFX_Rambi_Panting7End
	dl $F35774,$F35A94,GFX_Rambi_Panting8,GFX_Rambi_Panting8End
	dl $F35AB4,$F35E14,GFX_Rambi_Panting9,GFX_Rambi_Panting9End
	dl $F35E34,$F36194,GFX_Rambi_Panting10,GFX_Rambi_Panting10End
	dl $F361B2,$F364F2,GFX_Rambi_Panting11,GFX_Rambi_Panting11End
	dl $F36510,$F36850,GFX_Rambi_Panting12,GFX_Rambi_Panting12End
	dl $F36874,$F36BB4,GFX_Rambi_Panting13,GFX_Rambi_Panting13End
	dl $F36BD4,$F36F34,GFX_Rambi_Panting14,GFX_Rambi_Panting14End
	dl $F36F54,$F37314,GFX_Rambi_Panting15,GFX_Rambi_Panting15End
	dl $F3733A,$F376FA,GFX_Rambi_Panting16,GFX_Rambi_Panting16End
	dl $F37712,$F37992,GFX_DonkeyKong_Roll1,GFX_DonkeyKong_Roll1End
	dl $F379A6,$F37BE6,GFX_DonkeyKong_Roll2,GFX_DonkeyKong_Roll2End
	dl $F37BFA,$F37E3A,GFX_DonkeyKong_Roll3,GFX_DonkeyKong_Roll3End
	dl $F37E56,$F380B6,GFX_DonkeyKong_Roll4,GFX_DonkeyKong_Roll4End
	dl $F380CA,$F3830A,GFX_DonkeyKong_Roll5,GFX_DonkeyKong_Roll5End
	dl $F38322,$F38542,GFX_DonkeyKong_Roll6,GFX_DonkeyKong_Roll6End
	dl $F38564,$F38764,GFX_DonkeyKong_Roll7,GFX_DonkeyKong_Roll7End
	dl $F38778,$F38958,GFX_DonkeyKong_Roll8,GFX_DonkeyKong_Roll8End
	dl $F38970,$F38B90,GFX_DonkeyKong_Roll9,GFX_DonkeyKong_Roll9End
	dl $F38BAA,$F38DEA,GFX_DonkeyKong_Roll10,GFX_DonkeyKong_Roll10End
	dl $F38E04,$F39044,GFX_DonkeyKong_Roll11,GFX_DonkeyKong_Roll11End
	dl $F39060,$F392C0,GFX_DonkeyKong_Roll12,GFX_DonkeyKong_Roll12End
	dl $F392D8,$F39558,GFX_DonkeyKong_Roll13,GFX_DonkeyKong_Roll13End
	dl $F39574,$F397D4,GFX_DonkeyKong_Roll14,GFX_DonkeyKong_Roll14End
	dl $F397F6,$F39B16,GFX_Expresso_Hurt,GFX_Expresso_HurtEnd
	dl $F39B36,$F39E36,GFX_Winky_Hurt,GFX_Winky_HurtEnd
	dl $F39E4E,$F3A00E,GFX_Diddy_Pickup1,GFX_Diddy_Pickup1End
	dl $F3A02A,$F3A22A,GFX_Diddy_Pickup2,GFX_Diddy_Pickup2End
	dl $F3A248,$F3A468,GFX_Diddy_Pickup3,GFX_Diddy_Pickup3End
	dl $F3A486,$F3A6A6,GFX_Diddy_Pickup4,GFX_Diddy_Pickup4End
	dl $F3A6C4,$F3A8E4,GFX_Diddy_Pickup5,GFX_Diddy_Pickup5End
	dl $F3A902,$F3AB82,GFX_DonkeyKong_RideAnimalBuddy1,GFX_DonkeyKong_RideAnimalBuddy1End
	dl $F3ABA0,$F3AE20,GFX_DonkeyKong_RideAnimalBuddy2,GFX_DonkeyKong_RideAnimalBuddy2End
	dl $F3AE3A,$F3B0DA,GFX_DonkeyKong_RideAnimalBuddy3,GFX_DonkeyKong_RideAnimalBuddy3End
	dl $F3B0F4,$F3B394,GFX_DonkeyKong_RideAnimalBuddy4,GFX_DonkeyKong_RideAnimalBuddy4End
	dl $F3B3AE,$F3B64E,GFX_DonkeyKong_RideAnimalBuddy5,GFX_DonkeyKong_RideAnimalBuddy5End
	dl $F3B66C,$F3B8EC,GFX_DonkeyKong_RideAnimalBuddy6,GFX_DonkeyKong_RideAnimalBuddy6End
	dl $F3B90A,$F3BB8A,GFX_DonkeyKong_RideAnimalBuddy7,GFX_DonkeyKong_RideAnimalBuddy7End
	dl $F3BBA8,$F3BE28,GFX_DonkeyKong_RideAnimalBuddy8,GFX_DonkeyKong_RideAnimalBuddy8End
	dl $F3BE46,$F3C0C6,GFX_DonkeyKong_RideAnimalBuddy9,GFX_DonkeyKong_RideAnimalBuddy9End
	dl $F3C0F0,$F3C4F0,GFX_GiantBanana_Pose,GFX_GiantBanana_PoseEnd
	dl $F3C500,$F3C6A0,GFX_UnknownSmokeEffect_Pose1,GFX_UnknownSmokeEffect_Pose1End
	dl $F3C6B0,$F3C850,GFX_UnknownSmokeEffect_Pose2,GFX_UnknownSmokeEffect_Pose2End
	dl $F3C862,$F3CA22,GFX_UnknownSmokeEffect_Pose3,GFX_UnknownSmokeEffect_Pose3End
	dl $F3CA36,$F3CC16,GFX_UnknownSmokeEffect_Pose4,GFX_UnknownSmokeEffect_Pose4End
	dl $F3CC32,$F3CE92,GFX_UnknownSmokeEffect_Pose5,GFX_UnknownSmokeEffect_Pose5End
	dl $F3CEAE,$F3D10E,GFX_UnknownSmokeEffect_Pose6,GFX_UnknownSmokeEffect_Pose6End
	dl $F3D128,$F3D3C8,GFX_UnknownSmokeEffect_Pose7,GFX_UnknownSmokeEffect_Pose7End
	dl $F3D3E2,$F3D622,GFX_UnknownSmokeEffect_Pose8,GFX_UnknownSmokeEffect_Pose8End
	dl $F3D63A,$F3D85A,GFX_UnknownSmokeEffect_Pose9,GFX_UnknownSmokeEffect_Pose9End
	dl $F3D86C,$F3D9CC,GFX_UnknownSmokeEffect_Pose10,GFX_UnknownSmokeEffect_Pose10End
	dl $F3D9E0,$F3DB00,GFX_UnknownSmokeEffect_Pose11,GFX_UnknownSmokeEffect_Pose11End
	dl $F3DB0E,$F3DBCE,GFX_UnknownSmokeEffect_Pose12,GFX_UnknownSmokeEffect_Pose12End
	dl $F3DBE2,$F3DDC2,GFX_Diddy_HangOnVerticalRope1,GFX_Diddy_HangOnVerticalRope1End
	dl $F3DDD6,$F3DFB6,GFX_Diddy_HangOnVerticalRope2,GFX_Diddy_HangOnVerticalRope2End
	dl $F3DFCA,$F3E1AA,GFX_Diddy_HangOnVerticalRope3,GFX_Diddy_HangOnVerticalRope3End
	dl $F3E1BE,$F3E39E,GFX_Diddy_HangOnVerticalRope4,GFX_Diddy_HangOnVerticalRope4End
	dl $F3E3B0,$F3E570,GFX_Diddy_TurnOnVerticalRope1,GFX_Diddy_TurnOnVerticalRope1End
	dl $F3E580,$F3E720,GFX_Diddy_TurnOnVerticalRope2,GFX_Diddy_TurnOnVerticalRope2End
	dl $F3E736,$F3E876,GFX_Slippa_Dead1,GFX_Slippa_Dead1End
	dl $F3E888,$F3E988,GFX_Slippa_Dead2,GFX_Slippa_Dead2End
	dl $F3E99C,$F3EABC,GFX_Slippa_Dead3,GFX_Slippa_Dead3End
	dl $F3EAD2,$F3EC12,GFX_Slippa_Dead4,GFX_Slippa_Dead4End
	dl $F3EC26,$F3ED46,GFX_Slippa_Dead5,GFX_Slippa_Dead5End
	dl $F3ED5A,$F3EE7A,GFX_Slippa_Dead6,GFX_Slippa_Dead6End
	dl $F3EE92,$F3F0B2,GFX_Zinger_Fly1,GFX_Zinger_Fly1End
	dl $F3F0D0,$F3F3B0,GFX_Zinger_Fly2,GFX_Zinger_Fly2End
	dl $F3F3CC,$F3F62C,GFX_Zinger_Fly3,GFX_Zinger_Fly3End
	dl $F3F648,$F3F908,GFX_Zinger_Fly4,GFX_Zinger_Fly4End
	dl $F401F7,$F404F7,GFX_FunkyKong_Idle1,GFX_FunkyKong_Idle1End
	dl $F40517,$F40817,GFX_FunkyKong_Idle2,GFX_FunkyKong_Idle2End
	dl $F40837,$F40B37,GFX_FunkyKong_Idle3,GFX_FunkyKong_Idle3End
	dl $F40B57,$F40E57,GFX_FunkyKong_Idle4,GFX_FunkyKong_Idle4End
	dl $F47523,$F475A3,GFX_GoldenLetters_A,GFX_GoldenLetters_AEnd
	dl $F475AD,$F4762D,GFX_GoldenLetters_B,GFX_GoldenLetters_BEnd
	dl $F47637,$F476B7,GFX_GoldenLetters_C,GFX_GoldenLetters_CEnd
	dl $F476C1,$F47741,GFX_GoldenLetters_D,GFX_GoldenLetters_DEnd
	dl $F4774B,$F477CB,GFX_GoldenLetters_E,GFX_GoldenLetters_EEnd
	dl $F477D5,$F47855,GFX_GoldenLetters_F,GFX_GoldenLetters_FEnd
	dl $F4785F,$F478DF,GFX_GoldenLetters_G,GFX_GoldenLetters_GEnd
	dl $F478E9,$F47969,GFX_GoldenLetters_H,GFX_GoldenLetters_HEnd
	dl $F47973,$F479F3,GFX_GoldenLetters_I,GFX_GoldenLetters_IEnd
	dl $F479FD,$F47A7D,GFX_GoldenLetters_J,GFX_GoldenLetters_JEnd
	dl $F47A87,$F47B07,GFX_GoldenLetters_K,GFX_GoldenLetters_KEnd
	dl $F47B11,$F47B91,GFX_GoldenLetters_L,GFX_GoldenLetters_LEnd
	dl $F47B9B,$F47C1B,GFX_GoldenLetters_M,GFX_GoldenLetters_MEnd
	dl $F47C25,$F47CA5,GFX_GoldenLetters_N,GFX_GoldenLetters_NEnd
	dl $F47CAF,$F47D2F,GFX_GoldenLetters_O,GFX_GoldenLetters_OEnd
	dl $F47D39,$F47DB9,GFX_GoldenLetters_P,GFX_GoldenLetters_PEnd
	dl $F47DC3,$F47E43,GFX_GoldenLetters_Q,GFX_GoldenLetters_QEnd
	dl $F47E4D,$F47ECD,GFX_GoldenLetters_R,GFX_GoldenLetters_REnd
	dl $F47ED7,$F47F57,GFX_GoldenLetters_S,GFX_GoldenLetters_SEnd
	dl $F47F61,$F47FE1,GFX_GoldenLetters_T,GFX_GoldenLetters_TEnd
	dl $F47FEB,$F4806B,GFX_GoldenLetters_U,GFX_GoldenLetters_UEnd
	dl $F48075,$F480F5,GFX_GoldenLetters_V,GFX_GoldenLetters_VEnd
	dl $F480FF,$F4817F,GFX_GoldenLetters_W,GFX_GoldenLetters_WEnd
	dl $F48189,$F48209,GFX_GoldenLetters_X,GFX_GoldenLetters_XEnd
	dl $F48213,$F48293,GFX_GoldenLetters_Y,GFX_GoldenLetters_YEnd
	dl $F4829D,$F4831D,GFX_GoldenLetters_Z,GFX_GoldenLetters_ZEnd
	dl $F5001C,$F5027C,GFX_CrankyKong_Complain1,GFX_CrankyKong_Complain1End
	dl $F50298,$F504F8,GFX_CrankyKong_Complain2,GFX_CrankyKong_Complain2End
	dl $F50516,$F50796,GFX_CrankyKong_Complain3,GFX_CrankyKong_Complain3End
	dl $F507B4,$F50A34,GFX_CrankyKong_Complain4,GFX_CrankyKong_Complain4End
	dl $F50A52,$F50CD2,GFX_CrankyKong_Complain5,GFX_CrankyKong_Complain5End
	dl $F50CEA,$F50F0A,GFX_CrankyKong_ThrowTNT1,GFX_CrankyKong_ThrowTNT1End
	dl $F50F22,$F51142,GFX_CrankyKong_ThrowTNT2,GFX_CrankyKong_ThrowTNT2End
	dl $F51156,$F51396,GFX_CrankyKong_ThrowTNT3,GFX_CrankyKong_ThrowTNT3End
	dl $F513AA,$F5158A,GFX_CrankyKong_ThrowTNT4,GFX_CrankyKong_ThrowTNT4End
	dl $F5159E,$F5177E,GFX_CrankyKong_ThrowTNT5,GFX_CrankyKong_ThrowTNT5End
	dl $F51790,$F51950,GFX_CrankyKong_ThrowTNT6,GFX_CrankyKong_ThrowTNT6End
	dl $F51966,$F51B66,GFX_CrankyKong_ThrowTNT7,GFX_CrankyKong_ThrowTNT7End
	dl $F51B7C,$F51D7C,GFX_CrankyKong_ThrowTNT8,GFX_CrankyKong_ThrowTNT8End
	dl $F51D90,$F51F70,GFX_CrankyKong_ThrowTNT9,GFX_CrankyKong_ThrowTNT9End
	dl $F51F82,$F52142,GFX_CrankyKong_ThrowTNT10,GFX_CrankyKong_ThrowTNT10End
	dl $F52154,$F52314,GFX_CrankyKong_ThrowTNT11,GFX_CrankyKong_ThrowTNT11End
	dl $F52326,$F524E6,GFX_CrankyKong_ThrowTNT12,GFX_CrankyKong_ThrowTNT12End
	dl $F524F8,$F526B8,GFX_CrankyKong_ThrowTNT13,GFX_CrankyKong_ThrowTNT13End
	dl $F526CA,$F5288A,GFX_CrankyKong_ThrowTNT14,GFX_CrankyKong_ThrowTNT14End
	dl $F5289C,$F52A5C,GFX_CrankyKong_ThrowTNT15,GFX_CrankyKong_ThrowTNT15End
	dl $F52A82,$F52EA2,GFX_CrankyKong_InRockingChair1,GFX_CrankyKong_InRockingChair1End
	dl $F52EC8,$F532E8,GFX_CrankyKong_InRockingChair2,GFX_CrankyKong_InRockingChair2End
	dl $F5330C,$F5370C,GFX_CrankyKong_InRockingChair3,GFX_CrankyKong_InRockingChair3End
	dl $F53732,$F53B52,GFX_CrankyKong_InRockingChair4,GFX_CrankyKong_InRockingChair4End
	dl $F53B78,$F53F98,GFX_CrankyKong_InRockingChair5,GFX_CrankyKong_InRockingChair5End
	dl $F53FBE,$F543DE,GFX_CrankyKong_InRockingChair6,GFX_CrankyKong_InRockingChair6End
	dl $F54400,$F547E0,GFX_CrankyKong_InRockingChair7,GFX_CrankyKong_InRockingChair7End
	dl $F54804,$F54C04,GFX_CrankyKong_InRockingChair8,GFX_CrankyKong_InRockingChair8End
	dl $F54C28,$F55028,GFX_CrankyKong_InRockingChair9,GFX_CrankyKong_InRockingChair9End
	dl $F5504C,$F5544C,GFX_CrankyKong_InRockingChair10,GFX_CrankyKong_InRockingChair10End
	dl $F5546E,$F5584E,GFX_CrankyKong_InRockingChair11,GFX_CrankyKong_InRockingChair11End
	dl $F55870,$F55C50,GFX_CrankyKong_InRockingChair12,GFX_CrankyKong_InRockingChair12End
	dl $F55C72,$F56052,GFX_CrankyKong_InRockingChair13,GFX_CrankyKong_InRockingChair13End
	dl $F56074,$F56454,GFX_CrankyKong_InRockingChair14,GFX_CrankyKong_InRockingChair14End
	dl $F56478,$F56878,GFX_CrankyKong_InRockingChair15,GFX_CrankyKong_InRockingChair15End
	dl $F5689C,$F56C9C,GFX_CrankyKong_InRockingChair16,GFX_CrankyKong_InRockingChair16End
	dl $F56CC2,$F570E2,GFX_CrankyKong_InRockingChair17,GFX_CrankyKong_InRockingChair17End
	dl $F57108,$F57528,GFX_CrankyKong_InRockingChair18,GFX_CrankyKong_InRockingChair18End
	dl $F5754E,$F5796E,GFX_CrankyKong_InRockingChair19,GFX_CrankyKong_InRockingChair19End
	dl $F57992,$F57D92,GFX_CrankyKong_InRockingChair20,GFX_CrankyKong_InRockingChair20End
	dl $F6001A,$F6025A,GFX_DonkeyKong_FreakOut1,GFX_DonkeyKong_FreakOut1End
	dl $F60274,$F604B4,GFX_DonkeyKong_FreakOut2,GFX_DonkeyKong_FreakOut2End
	dl $F604CE,$F6070E,GFX_DonkeyKong_FreakOut3,GFX_DonkeyKong_FreakOut3End
	dl $F60728,$F60968,GFX_DonkeyKong_FreakOut4,GFX_DonkeyKong_FreakOut4End
	dl $F60982,$F60BC2,GFX_DonkeyKong_FreakOut5,GFX_DonkeyKong_FreakOut5End
	dl $F60BDC,$F60E1C,GFX_DonkeyKong_FreakOut6,GFX_DonkeyKong_FreakOut6End
	dl $F60E36,$F61076,GFX_DonkeyKong_FreakOut7,GFX_DonkeyKong_FreakOut7End
	dl $F61090,$F612D0,GFX_DonkeyKong_FreakOut8,GFX_DonkeyKong_FreakOut8End
	dl $F612EC,$F615AC,GFX_DonkeyKong_FreakOut9,GFX_DonkeyKong_FreakOut9End
	dl $F615CC,$F618CC,GFX_DonkeyKong_FreakOut10,GFX_DonkeyKong_FreakOut10End
	dl $F618EE,$F61C0E,GFX_DonkeyKong_FreakOut11,GFX_DonkeyKong_FreakOut11End
	dl $F61C36,$F61F56,GFX_DonkeyKong_FreakOut12,GFX_DonkeyKong_FreakOut12End
	dl $F61F7C,$F6227C,GFX_DonkeyKong_FreakOut13,GFX_DonkeyKong_FreakOut13End
	dl $F622A2,$F625A2,GFX_DonkeyKong_FreakOut14,GFX_DonkeyKong_FreakOut14End
	dl $F625CA,$F628EA,GFX_DonkeyKong_FreakOut15,GFX_DonkeyKong_FreakOut15End
	dl $F62918,$F62C98,GFX_DonkeyKong_FreakOut16,GFX_DonkeyKong_FreakOut16End
	dl $F62CC0,$F63040,GFX_DonkeyKong_FreakOut17,GFX_DonkeyKong_FreakOut17End
	dl $F63066,$F633C6,GFX_DonkeyKong_FreakOut18,GFX_DonkeyKong_FreakOut18End
	dl $F633EE,$F6376E,GFX_DonkeyKong_FreakOut19,GFX_DonkeyKong_FreakOut19End
	dl $F6378C,$F63ACC,GFX_DonkeyKong_FreakOut20,GFX_DonkeyKong_FreakOut20End
	dl $F63AF0,$F63E30,GFX_DonkeyKong_FreakOut21,GFX_DonkeyKong_FreakOut21End
	dl $F63E4E,$F640CE,GFX_DonkeyKong_FreakOut22,GFX_DonkeyKong_FreakOut22End
	dl $F640EC,$F6436C,GFX_DonkeyKong_BeatChest1,GFX_DonkeyKong_BeatChest1End
	dl $F64388,$F64648,GFX_DonkeyKong_BeatChest2,GFX_DonkeyKong_BeatChest2End
	dl $F64662,$F64902,GFX_DonkeyKong_BeatChest3,GFX_DonkeyKong_BeatChest3End
	dl $F6491E,$F64BDE,GFX_DonkeyKong_BeatChest4,GFX_DonkeyKong_BeatChest4End
	dl $F64BF8,$F64E98,GFX_DonkeyKong_BeatChest5,GFX_DonkeyKong_BeatChest5End
	dl $F64EB6,$F65136,GFX_DonkeyKong_BeatChest6,GFX_DonkeyKong_BeatChest6End
	dl $F6514E,$F653CE,GFX_DonkeyKong_BeatChest7,GFX_DonkeyKong_BeatChest7End
	dl $F653EA,$F6564A,GFX_DonkeyKong_BeatChest8,GFX_DonkeyKong_BeatChest8End
	dl $F65668,$F658E8,GFX_DonkeyKong_BeatChest9,GFX_DonkeyKong_BeatChest9End
	dl $F65906,$F65B86,GFX_DonkeyKong_BeatChest10,GFX_DonkeyKong_BeatChest10End
	dl $F65BA4,$F65E24,GFX_DonkeyKong_BeatChest11,GFX_DonkeyKong_BeatChest11End
	dl $F65E42,$F660C2,GFX_DonkeyKong_BeatChest12,GFX_DonkeyKong_BeatChest12End
	dl $F660DE,$F6633E,GFX_DonkeyKong_BeatChest13,GFX_DonkeyKong_BeatChest13End
	dl $F6635E,$F665FE,GFX_DonkeyKong_BeatChest14,GFX_DonkeyKong_BeatChest14End
	dl $F6661E,$F668BE,GFX_DonkeyKong_BeatChest15,GFX_DonkeyKong_BeatChest15End
	dl $F668DC,$F66B5C,GFX_DonkeyKong_BeatChest16,GFX_DonkeyKong_BeatChest16End
	dl $F66B7A,$F66DFA,GFX_DonkeyKong_BeatChest17,GFX_DonkeyKong_BeatChest17End
	dl $F66E14,$F67054,GFX_DonkeyKong_BeatChest18,GFX_DonkeyKong_BeatChest18End
	dl $F6706E,$F672AE,GFX_DonkeyKong_BeatChest19,GFX_DonkeyKong_BeatChest19End
	dl $F672C8,$F67508,GFX_DonkeyKong_BeatChest20,GFX_DonkeyKong_BeatChest20End
	dl $F67524,$F67784,GFX_DonkeyKong_BeatChest21,GFX_DonkeyKong_BeatChest21End
	dl $F677A0,$F67A00,GFX_DonkeyKong_BeatChest22,GFX_DonkeyKong_BeatChest22End
	dl $F67A18,$F67C98,GFX_DonkeyKong_BeatChest23,GFX_DonkeyKong_BeatChest23End
	dl $F67CB2,$F67F52,GFX_DonkeyKong_BeatChest24,GFX_DonkeyKong_BeatChest24End
	dl $F75FCE,$F763AE,GFX_DonkeyKong_DropFromAbove1,GFX_DonkeyKong_DropFromAbove1End
	dl $F763DA,$F7679A,GFX_DonkeyKong_DropFromAbove2,GFX_DonkeyKong_DropFromAbove2End
	dl $F767C0,$F76B80,GFX_DonkeyKong_DropFromAbove3,GFX_DonkeyKong_DropFromAbove3End
	dl $F76BB0,$F76F50,GFX_DonkeyKong_DropFromAbove4,GFX_DonkeyKong_DropFromAbove4End
	dl $F76F6E,$F772AE,GFX_DonkeyKong_DropFromAbove5,GFX_DonkeyKong_DropFromAbove5End
	dl $F772CE,$F7762E,GFX_DonkeyKong_DropFromAbove6,GFX_DonkeyKong_DropFromAbove6End
	dl $F7764E,$F7794E,GFX_DonkeyKong_DropFromAbove7,GFX_DonkeyKong_DropFromAbove7End
	dl $F7796C,$F77C4C,GFX_DonkeyKong_DropFromAbove8,GFX_DonkeyKong_DropFromAbove8End
	dl $F77C6A,$F77F4A,GFX_DonkeyKong_DropFromAbove9,GFX_DonkeyKong_DropFromAbove9End
	dl $F77F68,$F78248,GFX_DonkeyKong_DropFromAbove10,GFX_DonkeyKong_DropFromAbove10End
	dl $F7826C,$F7854C,GFX_DonkeyKong_DropFromAbove11,GFX_DonkeyKong_DropFromAbove11End
	dl $F78564,$F78844,GFX_DonkeyKong_DropFromAbove12,GFX_DonkeyKong_DropFromAbove12End
	dl $F78860,$F78B20,GFX_DonkeyKong_DropFromAbove13,GFX_DonkeyKong_DropFromAbove13End
	dl $F78B36,$F78DF6,GFX_DonkeyKong_DropFromAbove14,GFX_DonkeyKong_DropFromAbove14End
	dl $F78E0C,$F790CC,GFX_DonkeyKong_DropFromAbove15,GFX_DonkeyKong_DropFromAbove15End
	dl $F790E6,$F793E6,GFX_DonkeyKong_DropFromAbove16,GFX_DonkeyKong_DropFromAbove16End
	dl $F79404,$F79744,GFX_DonkeyKong_DropFromAbove17,GFX_DonkeyKong_DropFromAbove17End
	dl $F7976E,$F79B0E,GFX_DonkeyKong_DropFromAbove18,GFX_DonkeyKong_DropFromAbove18End
	dl $F79B34,$F79F54,GFX_CrankyKong_ShakeCane1,GFX_CrankyKong_ShakeCane1End
	dl $F79F7A,$F7A39A,GFX_CrankyKong_ShakeCane2,GFX_CrankyKong_ShakeCane2End
	dl $F7A3C2,$F7A802,GFX_CrankyKong_ShakeCane3,GFX_CrankyKong_ShakeCane3End
	dl $F7A82C,$F7AC8C,GFX_CrankyKong_ShakeCane4,GFX_CrankyKong_ShakeCane4End
	dl $F7ACB6,$F7B116,GFX_CrankyKong_ShakeCane5,GFX_CrankyKong_ShakeCane5End
	dl $F7B142,$F7B5C2,GFX_CrankyKong_ShakeCane6,GFX_CrankyKong_ShakeCane6End
	dl $F7B5F0,$F7BA90,GFX_CrankyKong_ShakeCane7,GFX_CrankyKong_ShakeCane7End
	dl $F7BABE,$F7BF5E,GFX_CrankyKong_ShakeCane8,GFX_CrankyKong_ShakeCane8End
	dl $F7BF8C,$F7C42C,GFX_CrankyKong_ShakeCane9,GFX_CrankyKong_ShakeCane9End
	dl $F7C45A,$F7C8FA,GFX_CrankyKong_ShakeCane10,GFX_CrankyKong_ShakeCane10End
	dl $F7C928,$F7CDC8,GFX_CrankyKong_ShakeCane11,GFX_CrankyKong_ShakeCane11End
	dl $F7CDF6,$F7D296,GFX_CrankyKong_ShakeCane12,GFX_CrankyKong_ShakeCane12End
	dl $F7D2C6,$F7D786,GFX_CrankyKong_HitWithCane1,GFX_CrankyKong_HitWithCane1End
	dl $F7D7B6,$F7DC76,GFX_CrankyKong_HitWithCane2,GFX_CrankyKong_HitWithCane2End
	dl $F7DCA6,$F7E166,GFX_CrankyKong_HitWithCane3,GFX_CrankyKong_HitWithCane3End
	dl $F7E194,$F7E634,GFX_CrankyKong_HitWithCane4,GFX_CrankyKong_HitWithCane4End
	dl $F7E662,$F7EB02,GFX_CrankyKong_HitWithCane5,GFX_CrankyKong_HitWithCane5End
	dl $F7EB30,$F7EFD0,GFX_CrankyKong_HitWithCane6,GFX_CrankyKong_HitWithCane6End
	dl $F7EFFE,$F7F49E,GFX_CrankyKong_HitWithCane7,GFX_CrankyKong_HitWithCane7End
	dl $F7F4CA,$F7F88A,GFX_KRoolsShip_AfterWorld6,GFX_KRoolsShip_AfterWorld6End
	dl $F7F8A2,$F7FAC2,GFX_KRoolsShip_AfterWorld5,GFX_KRoolsShip_AfterWorld5End
	dl $F7FAD2,$F7FC72,GFX_KRoolsShip_AfterWorld4,GFX_KRoolsShip_AfterWorld4End
	dl $F7FC84,$F7FD84,GFX_KRoolsShip_AfterWorld3,GFX_KRoolsShip_AfterWorld3End
	dl $F7FD98,$F7FE58,GFX_KRoolsShip_AfterWorld2,GFX_KRoolsShip_AfterWorld2End
	dl $F7FE6A,$F7FF0A,GFX_KRoolsShip_AfterWorld1,GFX_KRoolsShip_AfterWorld1End
	dl $F80022,$F803A2,GFX_BreakableWall_LeftFactoryWall,GFX_BreakableWall_LeftFactoryWallEnd
	dl $F803BA,$F804BA,GFX_BreakableWall_Unknown3,GFX_BreakableWall_Unknown3End
	dl $F804D8,$F808D8,GFX_BreakableWall_RightTempleWall,GFX_BreakableWall_RightTempleWallEnd
	dl $F808E8,$F80968,GFX_GroundCover_TempleLevel,GFX_GroundCover_TempleLevelEnd
	dl $F80974,$F80A74,GFX_GroundCover_FactoryLevel,GFX_GroundCover_FactoryLevelEnd
	dl $F80AAA,$F80D0A,GFX_OnBarrel_Pose,GFX_OnBarrel_PoseEnd
	dl $F80D20,$F80F80,GFX_OffBarrel_Pose,GFX_OffBarrel_PoseEnd
	dl $F80F98,$F81218,GFX_EnemySpawnBarrel_Normal,GFX_EnemySpawnBarrel_NormalEnd
	dl $F81232,$F81412,GFX_EnemySpawnBarrel_Broken,GFX_EnemySpawnBarrel_BrokenEnd
	dl $F81428,$F81688,GFX_StopBarrel_Pose,GFX_StopBarrel_PoseEnd
	dl $F816A4,$F81964,GFX_DonkeyKong_Jump1,GFX_DonkeyKong_Jump1End
	dl $F81986,$F81C46,GFX_DonkeyKong_Jump2,GFX_DonkeyKong_Jump2End
	dl $F81C68,$F81F88,GFX_DonkeyKong_Jump3,GFX_DonkeyKong_Jump3End
	dl $F81FAA,$F822CA,GFX_DonkeyKong_Jump4,GFX_DonkeyKong_Jump4End
	dl $F822EE,$F8262E,GFX_DonkeyKong_Jump5,GFX_DonkeyKong_Jump5End
	dl $F82654,$F829B4,GFX_DonkeyKong_Jump6,GFX_DonkeyKong_Jump6End
	dl $F829D4,$F82D34,GFX_DonkeyKong_Jump7,GFX_DonkeyKong_Jump7End
	dl $F82D54,$F830B4,GFX_DonkeyKong_Jump8,GFX_DonkeyKong_Jump8End
	dl $F830D4,$F83434,GFX_DonkeyKong_Jump9,GFX_DonkeyKong_Jump9End
	dl $F8345A,$F837BA,GFX_DonkeyKong_Jump10,GFX_DonkeyKong_Jump10End
	dl $F837E2,$F83B62,GFX_DonkeyKong_Jump11,GFX_DonkeyKong_Jump11End
	dl $F83B88,$F83EE8,GFX_DonkeyKong_Land1,GFX_DonkeyKong_Land1End
	dl $F83F04,$F84224,GFX_DonkeyKong_Land2,GFX_DonkeyKong_Land2End
	dl $F84240,$F84500,GFX_DonkeyKong_Land3,GFX_DonkeyKong_Land3End
	dl $F8451C,$F8477C,GFX_DonkeyKong_Land4,GFX_DonkeyKong_Land4End
	dl $F8479C,$F84A3C,GFX_DonkeyKong_Land5,GFX_DonkeyKong_Land5End
	dl $F84A60,$F84CE0,GFX_DonkeyKong_Land6,GFX_DonkeyKong_Land6End
	dl $F84CFA,$F84F9A,GFX_DonkeyKong_Land7,GFX_DonkeyKong_Land7End
	dl $F84FB4,$F85254,GFX_DonkeyKong_Land8,GFX_DonkeyKong_Land8End
	dl $F85270,$F85530,GFX_DonkeyKong_Land9,GFX_DonkeyKong_Land9End
	dl $F85542,$F85762,GFX_OilFire_Idle1,GFX_OilFire_Idle1End
	dl $F85778,$F85978,GFX_OilFire_Idle2,GFX_OilFire_Idle2End
	dl $F8598E,$F85B8E,GFX_OilFire_Idle3,GFX_OilFire_Idle3End
	dl $F85BA4,$F85DA4,GFX_OilFire_Idle4,GFX_OilFire_Idle4End
	dl $F85DBC,$F85FDC,GFX_OilFire_Idle5,GFX_OilFire_Idle5End
	dl $F85FF0,$F86230,GFX_OilFire_Idle6,GFX_OilFire_Idle6End
	dl $F86242,$F86462,GFX_OilFire_Idle7,GFX_OilFire_Idle7End
	dl $F86478,$F86678,GFX_OilFire_Idle8,GFX_OilFire_Idle8End
	dl $F86690,$F868B0,GFX_OilFire_Idle9,GFX_OilFire_Idle9End
	dl $F868C6,$F86AC6,GFX_OilFire_Idle10,GFX_OilFire_Idle10End
	dl $F86ADC,$F86CDC,GFX_OilFire_Idle11,GFX_OilFire_Idle11End
	dl $F86CF2,$F86EF2,GFX_OilFire_Idle12,GFX_OilFire_Idle12End
	dl $F86F08,$F87108,GFX_OilFire_Idle13,GFX_OilFire_Idle13End
	dl $F8711E,$F8731E,GFX_OilFire_Idle14,GFX_OilFire_Idle14End
	dl $F87334,$F87534,GFX_OilFire_Idle15,GFX_OilFire_Idle15End
	dl $F87548,$F87728,GFX_OilFire_Idle16,GFX_OilFire_Idle16End
	dl $F90018,$F902F8,GFX_Rockkroc_Run1,GFX_Rockkroc_Run1End
	dl $F9031A,$F905DA,GFX_Rockkroc_Run2,GFX_Rockkroc_Run2End
	dl $F905FC,$F908BC,GFX_Rockkroc_Run3,GFX_Rockkroc_Run3End
	dl $F908D4,$F90BB4,GFX_Rockkroc_Run4,GFX_Rockkroc_Run4End
	dl $F90BD0,$F90EF0,GFX_Rockkroc_Run5,GFX_Rockkroc_Run5End
	dl $F90F0E,$F9124E,GFX_Rockkroc_Run6,GFX_Rockkroc_Run6End
	dl $F91268,$F91568,GFX_Rockkroc_Run7,GFX_Rockkroc_Run7End
	dl $F91582,$F91882,GFX_Rockkroc_Run8,GFX_Rockkroc_Run8End
	dl $F918A6,$F91E86,GFX_FueledPlatform_ZeroLights,GFX_FueledPlatform_ZeroLightsEnd
	dl $F91EAA,$F9248A,GFX_FueledPlatform_OneLight,GFX_FueledPlatform_OneLightEnd
	dl $F924AE,$F92A8E,GFX_FueledPlatform_TwoLights,GFX_FueledPlatform_TwoLightsEnd
	dl $F92AB2,$F93092,GFX_FueledPlatform_ThreeLights,GFX_FueledPlatform_ThreeLightsEnd
	dl $F930B6,$F93696,GFX_FueledPlatform_FourLights,GFX_FueledPlatform_FourLightsEnd
	dl $F936BA,$F93C9A,GFX_FueledPlatform_FiveLights,GFX_FueledPlatform_FiveLightsEnd
	dl $F93CB2,$F93E72,GFX_Clambo_SpitPearl1,GFX_Clambo_SpitPearl1End
	dl $F93E8E,$F9408E,GFX_Clambo_SpitPearl2,GFX_Clambo_SpitPearl2End
	dl $F940A2,$F942E2,GFX_Clambo_SpitPearl3,GFX_Clambo_SpitPearl3End
	dl $F942FA,$F9457A,GFX_Clambo_SpitPearl4,GFX_Clambo_SpitPearl4End
	dl $F94596,$F94856,GFX_Clambo_SpitPearl5,GFX_Clambo_SpitPearl5End
	dl $F94872,$F94B32,GFX_Clambo_SpitPearl6,GFX_Clambo_SpitPearl6End
	dl $F94B4E,$F94E6E,GFX_Clambo_SpitPearl7,GFX_Clambo_SpitPearl7End
	dl $F94E8A,$F951AA,GFX_Clambo_SpitPearl8,GFX_Clambo_SpitPearl8End
	dl $F951C6,$F954E6,GFX_Clambo_SpitPearl9,GFX_Clambo_SpitPearl9End
	dl $F95502,$F95822,GFX_Clambo_SpitPearl10,GFX_Clambo_SpitPearl10End
	dl $F9583E,$F95B5E,GFX_Clambo_SpitPearl11,GFX_Clambo_SpitPearl11End
	dl $F9696E,$F96B6E,GFX_Tire_Roll1,GFX_Tire_Roll1End
	dl $F96B7E,$F96D7E,GFX_Tire_Roll2,GFX_Tire_Roll2End
	dl $F96D8E,$F96F8E,GFX_Tire_Roll3,GFX_Tire_Roll3End
	dl $F96F9E,$F9719E,GFX_Tire_Roll4,GFX_Tire_Roll4End
	dl $F971AE,$F973AE,GFX_Tire_Roll5,GFX_Tire_Roll5End
	dl $F973BE,$F975BE,GFX_Tire_Roll6,GFX_Tire_Roll6End
	dl $F975CE,$F977CE,GFX_Tire_Roll7,GFX_Tire_Roll7End
	dl $F977DE,$F979DE,GFX_Tire_Roll8,GFX_Tire_Roll8End
	dl $FA0024,$FA0364,GFX_CandyKong_Swoon1,GFX_CandyKong_Swoon1End
	dl $FA0388,$FA06C8,GFX_CandyKong_Swoon2,GFX_CandyKong_Swoon2End
	dl $FA06EC,$FA0A2C,GFX_CandyKong_Swoon3,GFX_CandyKong_Swoon3End
	dl $FA0A48,$FA0D08,GFX_CandyKong_Swoon4,GFX_CandyKong_Swoon4End
	dl $FA0D24,$FA0FE4,GFX_CandyKong_Swoon5,GFX_CandyKong_Swoon5End
	dl $FA1000,$FA12C0,GFX_CandyKong_Swoon6,GFX_CandyKong_Swoon6End
	dl $FA12DE,$FA15BE,GFX_CandyKong_Swoon7,GFX_CandyKong_Swoon7End
	dl $FA15D6,$FA18B6,GFX_CandyKong_Swoon8,GFX_CandyKong_Swoon8End
	dl $FA18CE,$FA1BAE,GFX_CandyKong_Swoon9,GFX_CandyKong_Swoon9End
	dl $FA1BC6,$FA1EA6,GFX_CandyKong_Swoon10,GFX_CandyKong_Swoon10End
	dl $FA1EBE,$FA219E,GFX_CandyKong_Swoon11,GFX_CandyKong_Swoon11End
	dl $FA81EF,$FA842F,GFX_Diddy_Hurt17,GFX_Diddy_Hurt17End
	dl $FAC185,$FAC405,GFX_DonkeyKong_Failure1,GFX_DonkeyKong_Failure1End
	dl $FAC419,$FAC659,GFX_DonkeyKong_Failure2,GFX_DonkeyKong_Failure2End
	dl $FAC671,$FAC8F1,GFX_DonkeyKong_Failure3,GFX_DonkeyKong_Failure3End
	dl $FAC909,$FACB89,GFX_DonkeyKong_Failure4,GFX_DonkeyKong_Failure4End
	dl $FACB9F,$FACDFF,GFX_DonkeyKong_Failure5,GFX_DonkeyKong_Failure5End
	dl $FACE13,$FAD053,GFX_DonkeyKong_Failure6,GFX_DonkeyKong_Failure6End
	dl $FAD067,$FAD2A7,GFX_DonkeyKong_Failure7,GFX_DonkeyKong_Failure7End
	dl $FAD2BB,$FAD4FB,GFX_DonkeyKong_Failure8,GFX_DonkeyKong_Failure8End
	dl $FAD50F,$FAD74F,GFX_DonkeyKong_Failure9,GFX_DonkeyKong_Failure9End
	dl $FAD763,$FAD9A3,GFX_DonkeyKong_Failure10,GFX_DonkeyKong_Failure10End
	dl $FAD9B7,$FADBF7,GFX_DonkeyKong_Failure11,GFX_DonkeyKong_Failure11End
	dl $FADC0B,$FADE4B,GFX_DonkeyKong_Failure12,GFX_DonkeyKong_Failure12End
	dl $FADE5F,$FAE09F,GFX_DonkeyKong_Failure13,GFX_DonkeyKong_Failure13End
	dl $FB0018,$FB0238,GFX_Diddy_Bounce1,GFX_Diddy_Bounce1End
	dl $FB024E,$FB03EE,GFX_Diddy_Bounce2,GFX_Diddy_Bounce2End
	dl $FB0402,$FB0582,GFX_Diddy_Bounce3,GFX_Diddy_Bounce3End
	dl $FB0598,$FB0738,GFX_Diddy_Bounce4,GFX_Diddy_Bounce4End
	dl $FB074C,$FB08CC,GFX_Diddy_Bounce5,GFX_Diddy_Bounce5End
	dl $FB08E0,$FB0A60,GFX_Diddy_Bounce6,GFX_Diddy_Bounce6End
	dl $FB0A76,$FB0C16,GFX_Diddy_Bounce7,GFX_Diddy_Bounce7End
	dl $FB0C2A,$FB0DAA,GFX_Diddy_Bounce8,GFX_Diddy_Bounce8End
	dl $FB0DBE,$FB0F3E,GFX_Diddy_Bounce9,GFX_Diddy_Bounce9End
	dl $FB0F52,$FB10D2,GFX_Diddy_Bounce10,GFX_Diddy_Bounce10End
	dl $FB10E6,$FB1266,GFX_Diddy_Bounce11,GFX_Diddy_Bounce11End
	dl $FB127A,$FB13FA,GFX_Diddy_Bounce12,GFX_Diddy_Bounce12End
	dl $FB140E,$FB158E,GFX_Diddy_Bounce13,GFX_Diddy_Bounce13End
	dl $FB15A0,$FB1760,GFX_Diddy_Bounce14,GFX_Diddy_Bounce14End
	dl $FB1776,$FB1916,GFX_Diddy_Bounce15,GFX_Diddy_Bounce15End
	dl $FB192A,$FB1AAA,GFX_Diddy_Bounce16,GFX_Diddy_Bounce16End
	dl $FB1AC0,$FB1C60,GFX_Diddy_Bounce17,GFX_Diddy_Bounce17End
	dl $FB1C76,$FB1E16,GFX_Diddy_Bounce18,GFX_Diddy_Bounce18End
	dl $FB1E24,$FB1E84,GFX_BrokenPhonographBoard_Pose1,GFX_BrokenPhonographBoard_Pose1End
	dl $FB1E90,$FB1F30,GFX_BrokenPhonographBoard_Pose2,GFX_BrokenPhonographBoard_Pose2End
	dl $FB1F3E,$FB1FFE,GFX_BrokenPhonographBoard_Pose3,GFX_BrokenPhonographBoard_Pose3End
	dl $FB200E,$FB208E,GFX_BrokenPhonographBoard_Pose4,GFX_BrokenPhonographBoard_Pose4End
	dl $FB209C,$FB20FC,GFX_BrokenPhonographBoard_Pose5,GFX_BrokenPhonographBoard_Pose5End
	dl $FB2108,$FB21A8,GFX_BrokenPhonographBoard_Pose6,GFX_BrokenPhonographBoard_Pose6End
	dl $FB21B6,$FB2276,GFX_BrokenPhonographBoard_Pose7,GFX_BrokenPhonographBoard_Pose7End
	dl $FB2286,$FB2306,GFX_BrokenPhonographBoard_Pose8,GFX_BrokenPhonographBoard_Pose8End
	dl $FB2324,$FB2724,GFX_CavePlatform_Pose,GFX_CavePlatform_PoseEnd
	dl $FB273A,$FB2A5A,GFX_MinePlatform_Pose,GFX_MinePlatform_PoseEnd
	dl $FB2A74,$FB2C54,GFX_Diddy_RideAnimalBuddy1,GFX_Diddy_RideAnimalBuddy1End
	dl $FB2C72,$FB2E92,GFX_Diddy_RideAnimalBuddy2,GFX_Diddy_RideAnimalBuddy2End
	dl $FB2EA8,$FB30A8,GFX_Diddy_RideAnimalBuddy3,GFX_Diddy_RideAnimalBuddy3End
	dl $FB30C2,$FB32A2,GFX_Diddy_RideAnimalBuddy4,GFX_Diddy_RideAnimalBuddy4End
	dl $FB32BA,$FB347A,GFX_Diddy_RideAnimalBuddy5,GFX_Diddy_RideAnimalBuddy5End
	dl $FB3492,$FB3652,GFX_Diddy_Unknown1Pose1,GFX_Diddy_Unknown1Pose1End
	dl $FB3668,$FB3808,GFX_Diddy_Unknown1Pose2,GFX_Diddy_Unknown1Pose2End
	dl $FB3820,$FB39E0,GFX_Diddy_Unknown1Pose3,GFX_Diddy_Unknown1Pose3End
	dl $FB39FA,$FB3BDA,GFX_Diddy_Unknown1Pose4,GFX_Diddy_Unknown1Pose4End
	dl $FB3BF4,$FB3E94,GFX_DonkeyKong_Unknown4Pose1,GFX_DonkeyKong_Unknown4Pose1End
	dl $FB3EB0,$FB4170,GFX_DonkeyKong_Unknown4Pose2,GFX_DonkeyKong_Unknown4Pose2End
	dl $FB418C,$FB444C,GFX_DonkeyKong_HoldWalk1,GFX_DonkeyKong_HoldWalk1End
	dl $FB446C,$FB476C,GFX_DonkeyKong_HoldWalk2,GFX_DonkeyKong_HoldWalk2End
	dl $FB4788,$FB4AA8,GFX_DonkeyKong_HoldWalk3,GFX_DonkeyKong_HoldWalk3End
	dl $FB4AC0,$FB4DA0,GFX_DonkeyKong_HoldWalk4,GFX_DonkeyKong_HoldWalk4End
	dl $FB4DBC,$FB507C,GFX_DonkeyKong_HoldWalk5,GFX_DonkeyKong_HoldWalk5End
	dl $FB5094,$FB5314,GFX_DonkeyKong_HoldWalk6,GFX_DonkeyKong_HoldWalk6End
	dl $FB532C,$FB55AC,GFX_DonkeyKong_HoldWalk7,GFX_DonkeyKong_HoldWalk7End
	dl $FB55CA,$FB58AA,GFX_DonkeyKong_HoldWalk8,GFX_DonkeyKong_HoldWalk8End
	dl $FB58C6,$FB5B86,GFX_DonkeyKong_HoldWalk9,GFX_DonkeyKong_HoldWalk9End
	dl $FB5BA2,$FB5E62,GFX_DonkeyKong_HoldWalk10,GFX_DonkeyKong_HoldWalk10End
	dl $FB5E7E,$FB613E,GFX_DonkeyKong_HoldWalk11,GFX_DonkeyKong_HoldWalk11End
	dl $FB615A,$FB647A,GFX_DonkeyKong_HoldWalk12,GFX_DonkeyKong_HoldWalk12End
	dl $FB6498,$FB67D8,GFX_DonkeyKong_HoldWalk13,GFX_DonkeyKong_HoldWalk13End
	dl $FC5852,$FC5A12,GFX_LifeBalloon_Unknown,GFX_LifeBalloon_UnknownEnd
	dl $FD003C,$FD085C,GFX_KRool_Jump1,GFX_KRool_Jump1End
	dl $FD0894,$FD10D4,GFX_KRool_Jump2,GFX_KRool_Jump2End
	dl $FD1112,$FD1A12,GFX_KRool_Jump3,GFX_KRool_Jump3End
	dl $FD1A56,$FD2356,GFX_KRool_Jump4,GFX_KRool_Jump4End
	dl $FD2392,$FD2D32,GFX_KRool_Jump5,GFX_KRool_Jump5End
	dl $FD2D80,$FD3780,GFX_KRool_Jump6,GFX_KRool_Jump6End
	dl $FD379C,$FD39FC,GFX_DonkeyKong_EnterCrawlSpace1,GFX_DonkeyKong_EnterCrawlSpace1End
	dl $FD3A1A,$FD3C9A,GFX_DonkeyKong_EnterCrawlSpace2,GFX_DonkeyKong_EnterCrawlSpace2End
	dl $FD3CB8,$FD3F38,GFX_DonkeyKong_EnterCrawlSpace3,GFX_DonkeyKong_EnterCrawlSpace3End
	dl $FD3F52,$FD4192,GFX_DonkeyKong_EnterCrawlSpace4,GFX_DonkeyKong_EnterCrawlSpace4End
	dl $FD41AC,$FD43EC,GFX_DonkeyKong_Crawling1,GFX_DonkeyKong_Crawling1End
	dl $FD440A,$FD468A,GFX_DonkeyKong_Crawling2,GFX_DonkeyKong_Crawling2End
	dl $FD46A6,$FD4906,GFX_DonkeyKong_Crawling3,GFX_DonkeyKong_Crawling3End
	dl $FD4920,$FD4B60,GFX_DonkeyKong_Crawling4,GFX_DonkeyKong_Crawling4End
	dl $FD4B7A,$FD4DBA,GFX_DonkeyKong_Crawling5,GFX_DonkeyKong_Crawling5End
	dl $FD4DD4,$FD5014,GFX_DonkeyKong_Crawling6,GFX_DonkeyKong_Crawling6End
	dl $FD5030,$FD5290,GFX_DonkeyKong_Crawling7,GFX_DonkeyKong_Crawling7End
	dl $FD52B0,$FD5550,GFX_DonkeyKong_Crawling8,GFX_DonkeyKong_Crawling8End
	dl $FD556A,$FD580A,GFX_DonkeyKong_Crawling9,GFX_DonkeyKong_Crawling9End
	dl $FD5822,$FD5AA2,GFX_DonkeyKong_Crawling10,GFX_DonkeyKong_Crawling10End
	dl $FD5ABE,$FD5D1E,GFX_DonkeyKong_Crawling11,GFX_DonkeyKong_Crawling11End
	dl $FD5D3A,$FD5F9A,GFX_DonkeyKong_Crawling12,GFX_DonkeyKong_Crawling12End
	dl $FD5FB6,$FD6216,GFX_DonkeyKong_Crawling13,GFX_DonkeyKong_Crawling13End
	dl $FD6230,$FD6470,GFX_DonkeyKong_Crawling14,GFX_DonkeyKong_Crawling14End
	dl $FD648A,$FD66CA,GFX_DonkeyKong_Crawling15,GFX_DonkeyKong_Crawling15End
	dl $FD66E4,$FD6924,GFX_DonkeyKong_Crawling16,GFX_DonkeyKong_Crawling16End
	dl $FD693E,$FD6B7E,GFX_DonkeyKong_Crawling17,GFX_DonkeyKong_Crawling17End
	dl $FD6B98,$FD6DD8,GFX_DonkeyKong_Crawling18,GFX_DonkeyKong_Crawling18End
	dl $FD6DF4,$FD7054,GFX_DonkeyKong_Crawling19,GFX_DonkeyKong_Crawling19End
	dl $FD7070,$FD72D0,GFX_DonkeyKong_Crawling20,GFX_DonkeyKong_Crawling20End
	dl $FE0012,$FE0172,GFX_MasterNeckysNut_Pose1,GFX_MasterNeckysNut_Pose1End
	dl $FE0184,$FE02E4,GFX_MasterNeckysNut_Pose2,GFX_MasterNeckysNut_Pose2End
	dl $FE02F4,$FE0434,GFX_MasterNeckysNut_Pose3,GFX_MasterNeckysNut_Pose3End
	dl $FE0446,$FE05A6,GFX_MasterNeckysNut_Pose4,GFX_MasterNeckysNut_Pose4End
	dl $FE05B8,$FE0718,GFX_MasterNeckysNut_Pose5,GFX_MasterNeckysNut_Pose5End
	dl $FE072E,$FE092E,GFX_Diddy_BePranked1,GFX_Diddy_BePranked1End
	dl $FE0948,$FE0B28,GFX_Diddy_BePranked2,GFX_Diddy_BePranked2End
	dl $FE0B3E,$FE0CDE,GFX_Diddy_BePranked3,GFX_Diddy_BePranked3End
	dl $FE0CF8,$FE0ED8,GFX_Diddy_BePranked4,GFX_Diddy_BePranked4End
	dl $FE0EF2,$FE10D2,GFX_Diddy_BePranked5,GFX_Diddy_BePranked5End
	dl $FE10EE,$FE12EE,GFX_Diddy_BePranked6,GFX_Diddy_BePranked6End
	dl $FE130A,$FE150A,GFX_Diddy_BePranked7,GFX_Diddy_BePranked7End
	dl $FE1528,$FE1748,GFX_Diddy_BePranked8,GFX_Diddy_BePranked8End
	dl $FE1766,$FE1986,GFX_Diddy_BePranked9,GFX_Diddy_BePranked9End
	dl $FE19A4,$FE1BC4,GFX_Diddy_BePranked10,GFX_Diddy_BePranked10End
	dl $FE1BE2,$FE1E02,GFX_Diddy_BePranked11,GFX_Diddy_BePranked11End
	dl $FE1E1E,$FE201E,GFX_Diddy_BePranked12,GFX_Diddy_BePranked12End
	dl $FE203A,$FE223A,GFX_Diddy_BePranked13,GFX_Diddy_BePranked13End
	dl $FE224E,$FE242E,GFX_Diddy_BePranked14,GFX_Diddy_BePranked14End
	dl $FE244A,$FE264A,GFX_Diddy_BePranked15,GFX_Diddy_BePranked15End
	dl $FE2668,$FE2888,GFX_Diddy_BePranked16,GFX_Diddy_BePranked16End
	dl $FE28A4,$FE2B04,GFX_Diddy_BePranked17,GFX_Diddy_BePranked17End
	dl $FE2B22,$FE2DA2,GFX_Diddy_BePranked18,GFX_Diddy_BePranked18End
	dl $FE2DC0,$FE3040,GFX_Diddy_BePranked19,GFX_Diddy_BePranked19End
	dl $FE3060,$FE32A0,GFX_Diddy_BePranked20,GFX_Diddy_BePranked20End
	dl $FE32B6,$FE3516,GFX_Diddy_BePranked21,GFX_Diddy_BePranked21End
	dl $FE352A,$FE370A,GFX_Diddy_BePranked22,GFX_Diddy_BePranked22End
	dl $FE371C,$FE38DC,GFX_Diddy_BePranked23,GFX_Diddy_BePranked23End
	dl $FE38EE,$FE3AAE,GFX_Diddy_BePranked24,GFX_Diddy_BePranked24End
	dl $FE3AC0,$FE3C80,GFX_Diddy_BePranked25,GFX_Diddy_BePranked25End
	dl $FE3C90,$FE3E30,GFX_Diddy_BiteDKsFinger1,GFX_Diddy_BiteDKsFinger1End
	dl $FE3E42,$FE4002,GFX_Diddy_BiteDKsFinger2,GFX_Diddy_BiteDKsFinger2End
	dl $FE4014,$FE41D4,GFX_Diddy_BiteDKsFinger3,GFX_Diddy_BiteDKsFinger3End
	dl $FE41EA,$FE438A,GFX_Diddy_BiteDKsFinger4,GFX_Diddy_BiteDKsFinger4End
	dl $FE439E,$FE457E,GFX_Diddy_BiteDKsFinger5,GFX_Diddy_BiteDKsFinger5End
	dl $FE4592,$FE4772,GFX_Diddy_BiteDKsFinger6,GFX_Diddy_BiteDKsFinger6End
	dl $FE4786,$FE4966,GFX_Diddy_BiteDKsFinger7,GFX_Diddy_BiteDKsFinger7End
	dl $FE4978,$FE4B38,GFX_Diddy_BiteDKsFinger8,GFX_Diddy_BiteDKsFinger8End
	dl $FE4B50,$FE4D10,GFX_Diddy_BiteDKsFinger9,GFX_Diddy_BiteDKsFinger9End
	dl $FE4D24,$FE4F04,GFX_Diddy_BiteDKsFinger10,GFX_Diddy_BiteDKsFinger10End
	dl $FE4F18,$FE50F8,GFX_Diddy_BiteDKsFinger11,GFX_Diddy_BiteDKsFinger11End
	dl $FE510C,$FE52EC,GFX_Diddy_BiteDKsFinger12,GFX_Diddy_BiteDKsFinger12End
	dl $FE5300,$FE54E0,GFX_Diddy_BiteDKsFinger13,GFX_Diddy_BiteDKsFinger13End
	dl $FE54F4,$FE56D4,GFX_Diddy_BiteDKsFinger14,GFX_Diddy_BiteDKsFinger14End
	dl $FE56E8,$FE58C8,GFX_Diddy_BiteDKsFinger15,GFX_Diddy_BiteDKsFinger15End
	dl $FE58DA,$FE5A9A,GFX_Diddy_BiteDKsFinger16,GFX_Diddy_BiteDKsFinger16End
	dl $FE5AAC,$FE5C6C,GFX_Diddy_BiteDKsFinger17,GFX_Diddy_BiteDKsFinger17End
	dl $FE5C7E,$FE5E3E,GFX_Diddy_BiteDKsFinger18,GFX_Diddy_BiteDKsFinger18End
	dl $FE5E50,$FE6010,GFX_Diddy_BiteDKsFinger19,GFX_Diddy_BiteDKsFinger19End
	dl $FE6022,$FE61E2,GFX_Diddy_BiteDKsFinger20,GFX_Diddy_BiteDKsFinger20End
	dl $FE61F6,$FE63D6,GFX_Diddy_BiteDKsFinger21,GFX_Diddy_BiteDKsFinger21End
	dl $FE63E8,$FE65A8,GFX_Diddy_BiteDKsFinger22,GFX_Diddy_BiteDKsFinger22End
	dl $FE65BC,$FE673C,GFX_Diddy_BiteDKsFinger23,GFX_Diddy_BiteDKsFinger23End
	dl $FE674E,$FE68AE,GFX_Diddy_BiteDKsFinger24,GFX_Diddy_BiteDKsFinger24End
	dl $FE68C2,$FE6A42,GFX_Diddy_BiteDKsFinger25,GFX_Diddy_BiteDKsFinger25End
	dl $FE6A5A,$FE6C1A,GFX_Diddy_BiteDKsFinger26,GFX_Diddy_BiteDKsFinger26End
	dl $FE6C32,$FE6DF2,GFX_Diddy_BiteDKsFinger27,GFX_Diddy_BiteDKsFinger27End
	dl $FE6E08,$FE7008,GFX_Diddy_BiteDKsFinger28,GFX_Diddy_BiteDKsFinger28End
	dl $FE701A,$FE711A,GFX_MapDonkeyKong_Jump1,GFX_MapDonkeyKong_Jump1End
	dl $FE712A,$FE720A,GFX_MapDonkeyKong_Jump2,GFX_MapDonkeyKong_Jump2End
	dl $FE721C,$FE731C,GFX_MapDonkeyKong_Jump3,GFX_MapDonkeyKong_Jump3End
	dl $FE732C,$FE740C,GFX_MapDonkeyKong_Jump4,GFX_MapDonkeyKong_Jump4End
	dl $FE741C,$FE74FC,GFX_MapDonkeyKong_Jump5,GFX_MapDonkeyKong_Jump5End
	dl $FE750C,$FE75EC,GFX_MapDonkeyKong_Jump6,GFX_MapDonkeyKong_Jump6End
	dl $FE7600,$FE7720,GFX_MapDonkeyKong_Jump7,GFX_MapDonkeyKong_Jump7End
	dl $FE7734,$FE7854,GFX_MapDonkeyKong_Jump8,GFX_MapDonkeyKong_Jump8End
	dl $FE7864,$FE79A4,GFX_MapDonkeyKong_Jump9,GFX_MapDonkeyKong_Jump9End
	dl $FE79B6,$FE7AB6,GFX_MapDonkeyKong_Jump10,GFX_MapDonkeyKong_Jump10End
	dl $FE7AC8,$FE7BC8,GFX_MapDonkeyKong_Jump11,GFX_MapDonkeyKong_Jump11End
	dl $FE7BDA,$FE7CDA,GFX_MapDonkeyKong_Jump12,GFX_MapDonkeyKong_Jump12End
	dl $FE7CEA,$FE7DCA,GFX_MapDonkeyKong_Jump13,GFX_MapDonkeyKong_Jump13End
	dl $FE7DDA,$FE7EBA,GFX_MapDonkeyKong_Jump14,GFX_MapDonkeyKong_Jump14End
	dl $FE7ECA,$FE7FAA,GFX_MapDonkeyKong_Jump15,GFX_MapDonkeyKong_Jump15End
DynamicSpriteGFXPointersEnd:

;--------------------------------------------------------------------

CompressedGFXPointersStart:
	dl $C88864,$C8D9C1,GFX_FGBG_BananaHoard,GFX_FGBG_BananaHoardEnd
	dl $D58FC0,$D5E6D1,GFX_FGBG_JungleLevels,GFX_FGBG_JungleLevelsEnd
	dl $D80000,$D86DBE,GFX_FGBG_CrystalCaveLevels,GFX_FGBG_CrystalCaveLevelsEnd
	dl $DC0000,$DC5F36,GFX_FGBG_CaveLevels,GFX_FGBG_CaveLevelsEnd
	dl $DD9CCE,$DDEC91,GFX_Layer1_MineCartCarnage,GFX_Layer1_MineCartCarnageEnd
	dl $E31180,$E383FB,GFX_FGBG_ForestLevels,GFX_FGBG_ForestLevelsEnd
	dl $E417F0,$E4604D,GFX_Layer1_WalkwayLevels,GFX_Layer1_WalkwayLevelsEnd
	dl $E50000,$E54E79,GFX_Layer1_MineLevels,GFX_Layer1_MineLevelsEnd
	dl $E73BDE,$E78033,GFX_Layer1_TempleLevels,GFX_Layer1_TempleLevelsEnd
	dl $EB0000,$EB5A96,GFX_FGBG_FactoryLevels,GFX_FGBG_FactoryLevelsEnd
	dl $F10000,$F13D10,GFX_Layer1_TreehouseLevels,GFX_Layer1_TreehouseLevelsEnd
	dl $FA219E,$FA81CF,GFX_FGBG_SnowLevels,GFX_FGBG_SnowLevelsEnd
	dl $FA842F,$FAC16D,GFX_Layer1_UnderwaterLevels,GFX_Layer1_UnderwaterLevelsEnd
CompressedGFXPointersEnd:

;--------------------------------------------------------------------

UncompressedTilemapsPointersStart:
	dl $C01340,$C01A40,TM_Layer1_CandysSavePoint,TM_Layer1_CandysSavePointEnd
	dl $C10FF0,$C116F0,TM_Layer1_WorldMap,TM_Layer1_WorldMapEnd
	dl $C40000,$C40700,TM_Layer1_GorillaGlacierMap1,TM_Layer1_GorillaGlacierMap1End
	dl $C40700,$C40D00,TM_Layer3_HangingLampLight,TM_Layer3_HangingLampLightEnd
	dl $C50912,$C51012,TM_Layer1_KongoJungleMap1,TM_Layer1_KongoJungleMap1End
	dl $C61057,$C61757,TM_Layer1_KongoJungleMap2,TM_Layer1_KongoJungleMap2End
	dl $C675F7,$C67CF7,TM_Layer1_MonkeyMinesMap1,TM_Layer1_MonkeyMinesMap1End
	dl $C821E4,$C828E4,TM_Layer1_VineValleyMap2,TM_Layer1_VineValleyMap2End
	dl $CA0000,$CA0700,TM_Layer1_VineValleyMap1,TM_Layer1_VineValleyMap1End
	dl $CC33FE,$CC3BFE,TM_Layer2_TreehouseLevels,TM_Layer2_TreehouseLevelsEnd
	dl $CC5D9E,$CC64DE,TM_Layer2_KongsBananaHoardCave,TM_Layer2_KongsBananaHoardCaveEnd
	dl $CC84B4,$CC8BB4,TM_Layer1_MonkeyMinesMap2,TM_Layer1_MonkeyMinesMap2End
	dl $CDF337,$CDF4B7,TM_Layer3_JungleLevels,TM_Layer3_JungleLevelsEnd
	dl $CF7DA0,$CF84A0,TM_Layer1_DKsHouse,TM_Layer1_DKsHouseEnd
	dl $D10000,$D10700,TM_Layer1_ChimpCavernsMap1,TM_Layer1_ChimpCavernsMap1End
	dl $D166C2,$D16DC2,TM_Layer1_ChimpCavernsMap2,TM_Layer1_ChimpCavernsMap2End
	dl $D20000,$D200C8,TM_Layer1_SmallRareLogo,TM_Layer1_SmallRareLogoEnd
	dl $D35914,$D36114,TM_Layer2_Fog,TM_Layer2_FogEnd
	dl $D4DF52,$D4EB52,TM_Layer3_TempleLevels,TM_Layer3_TempleLevelsEnd
	dl $D7590A,$D7620A,TM_Layer3_Rain,TM_Layer3_RainEnd
	dl $DECC74,$DECE74,TM_Layer3_Snow,TM_Layer3_SnowEnd
	dl $DF0000,$DF0680,TM_Layer3_SnowLevels,TM_Layer3_SnowLevelsEnd
	dl $E193CB,$E1974B,TM_Layer1_WireframeRareLogo,TM_Layer1_WireframeRareLogoEnd
	dl $E1CA27,$E1D227,TM_Layer3_Fog,TM_Layer3_FogEnd
	dl $E2816D,$E2896D,TM_Layer3_FactoryLevels,TM_Layer3_FactoryLevelsEnd
	dl $E383FB,$E38BFB,TM_Layer3_ForestLevels,TM_Layer3_ForestLevelsEnd
	dl $E40450,$E40690,TM_Layer1_CopyrightScreen,TM_Layer1_CopyrightScreenEnd
	dl $E5DFBB,$E5E3FB,TM_Layer1_RegionLockoutScreenText,TM_Layer1_RegionLockoutScreenTextEnd
	dl $E5E3FB,$E5E8BB,TM_Layer1_CopyDetectionScreenText,TM_Layer1_CopyDetectionScreenTextEnd
	dl $E5E8BB,$E5EC3B,TM_Layer1_AntiCheatScreenText,TM_Layer1_AntiCheatScreenTextEnd
	dl $E6BEE4,$E6C224,TM_Layer1_NintendoLogo,TM_Layer1_NintendoLogoEnd
	dl $E7069E,$E7095E,TM_Layer2_IntroScreen,TM_Layer2_IntroScreenEnd
	dl $E7DCE9,$E7FCE9,TM_Layer3_CaveLevels,TM_Layer3_CaveLevelsEnd
	dl $E80000,$E80480,TM_Layer1_LanguageSelectText,TM_Layer1_LanguageSelectTextEnd
	dl $E82466,$E82666,TM_UnknownTreetops,TM_UnknownTreetopsEnd
	dl $E88A2A,$E8922A,TM_Layer2_WalkwayLevelsLeftHalf,TM_Layer2_WalkwayLevelsLeftHalfEnd
	dl $E8922A,$E89A2A,TM_Layer2_WalkwayLevelsRightHalf,TM_Layer2_WalkwayLevelsRightHalfEnd
	dl $E9C50A,$E9C6A4,TM_Mode7_RareLogo,TM_Mode7_RareLogoEnd
	dl $ED2398,$ED2944,TM_Layer3_NintendoLogoShine,TM_Layer3_NintendoLogoShineEnd
	dl $ED2944,$ED2CC4,TM_Layer2_LargeRareLogo,TM_Layer2_LargeRareLogoEnd
	dl $EDCCB6,$EDD4B6,TM_Layer3_GangplankGalleon,TM_Layer3_GangplankGalleonEnd
	dl $EEFC5D,$EEFF6F,TM_Layer2_IntroSky,TM_Layer2_IntroSkyEnd
	dl $EF0000,$EF0700,TM_Layer1_TitleScreen,TM_Layer1_TitleScreenEnd
	dl $EF7FBE,$EF86BE,TM_Layer3_FileSelectScreen,TM_Layer3_FileSelectScreenEnd
	dl $EF86BE,$EF8DBE,TM_Layer1_PlayerSelectScreen,TM_Layer1_PlayerSelectScreenEnd
	dl $EFB29E,$EFB89E,TM_Layer2_PlayerSelectScreen,TM_Layer2_PlayerSelectScreenEnd
	dl $F0A18E,$F0A88E,TM_Layer1_IntroScreen,TM_Layer1_IntroScreenEnd
	dl $F17D02,$F18502,TM_Layer3_TreehouseLevels,TM_Layer3_TreehouseLevelsEnd
	dl $F1C2C7,$F1C3C7,TM_Layer1_SelectAGame,TM_Layer1_SelectAGameEnd
	dl $F1C3C7,$F1C887,TM_Layer1_FileSelectScreen,TM_Layer1_FileSelectScreenEnd
	dl $F1C887,$F1C987,TM_Layer1_CandysGameSave,TM_Layer1_CandysGameSaveEnd
	dl $F1EA67,$F1EA8F,TM_Layer1_FileSelectOnePlayerHeadIcon,TM_Layer1_FileSelectOnePlayerHeadIconEnd
	dl $F1EA8F,$F1EAB7,TM_Layer1_FileSelectTwoPlayerTeamHeadIcon,TM_Layer1_FileSelectTwoPlayerTeamHeadIconEnd
	dl $F1EAB7,$F1EADF,TM_Layer1_FileSelectTwoPlayerContestHeadIcon,TM_Layer1_FileSelectTwoPlayerContestHeadIconEnd
	dl $F20000,$F20700,TM_Layer1_KremkrocIndustriesIncMap1,TM_Layer1_KremkrocIndustriesIncMap1End
	dl $F29712,$F29DD2,TM_Layer1_CrankysCabin,TM_Layer1_CrankysCabinEnd
	dl $F40E57,$F41558,TM_Layer1_GorillaGlacierMap2,TM_Layer1_GorillaGlacierMap2End
	dl $F491FD,$F499FD,TM_Layer3_MineLevels,TM_Layer3_MineLevelsEnd
	dl $F499FD,$F4A0FD,TM_Layer1_FunkysFlights,TM_Layer1_FunkysFlightsEnd
	dl $F95B5E,$F9695E,TM_Layer2_Millstone,TM_Layer2_MillstoneEnd
	dl $F87728,$F87E28,TM_Layer1_GameOverScreen,TM_Layer1_GameOverScreenEnd
	dl $FB67D8,$FB6ED8,TM_Layer2_UnderwaterLevels,TM_Layer2_UnderwaterLevelsEnd
	dl $FF0000,$FF0700,TM_Layer1_KremkrocIndustriesIncMap2,TM_Layer1_KremkrocIndustriesIncMap2End
UncompressedTilemapsPointersEnd:

;--------------------------------------------------------------------

CompressedTilemapsPointersStart:
CompressedTilemapsPointersEnd:

;--------------------------------------------------------------------

Map32PointersStart:
	dl $C35200,$C36200,M32_TreehouseLevels,M32_TreehouseLevelsEnd
	dl $C3BD00,$C3EDA0,M32_ForestLevels,M32_ForestLevelsEnd
	dl $C3EFA0,$C40000,M32_BananaHoardCave,M32_BananaHoardCaveEnd
	dl $CBE040,$CC0000,M32_WalkwayLevels,M32_WalkwayLevelsEnd
	dl $D00000,$D04760,M32_UnderwaterLevels,M32_UnderwaterLevelsEnd
	dl $D9A3C0,$D9ED00,M32_JungleLevels,M32_JungleLevelsEnd
	dl $DABF00,$DAF580,M32_CaveLevels,M32_CaveLevelsEnd
	dl $DBA0CC,$DBCC4C,M32_MineLevels,M32_MineLevelsEnd
	dl $E0AAD6,$E0DB16,M32_SnowLevels,M32_SnowLevelsEnd
	dl $E13BE5,$E16D05,M32_CrystalCaveLevels,M32_CrystalCaveLevelsEnd
	dl $E26200,$E27CA0,M32_FactoryLevels,M32_FactoryLevelsEnd
	dl $E30200,$E31180,M32_DKsHouse,M32_DKsHouseEnd
	dl $E6A188,$E6BE48,M32_MineCartCarnage,M32_MineCartCarnageEnd
	dl $EC7E28,$ECA288,M32_TempleLevels,M32_TempleLevelsEnd
Map32PointersEnd:

;--------------------------------------------------------------------

LevelDataPointersStart:
	dl $C30000,$C35200,TreehouseLevels,TreehouseLevelsEnd
	dl $C36200,$C3BD00,ForestLevels,ForestLevelsEnd
	dl $C3EDA0,$C3EFA0,BananaHoardCave,BananaHoardCaveEnd
	dl $CB0000,$CBE040,WalkwayLevels,WalkwayLevelsEnd
	dl $D90000,$D9A3C0,JungleLevels,JungleLevelsEnd
	dl $DA0000,$DABF00,CaveLevels,CaveLevelsEnd
	dl $DB05CC,$DBA0CC,MineLevels,MineLevelsEnd
	dl $E03636,$E0AAD6,SnowLevels,SnowLevelsEnd
	dl $E101E5,$E13BE5,CrystalCaveLevels,CrystalCaveLevelsEnd
	dl $E20000,$E26200,FactoryLevels,FactoryLevelsEnd
	dl $E30000,$E30200,DKsHouse,DKsHouseEnd
	dl $E60D88,$E6A188,MineCartCarnage,MineCartCarnageEnd
	dl $E90000,$E9C380,UnderwaterLevels,UnderwaterLevelsEnd
	dl $EC1728,$EC7E28,TempleLevels,TempleLevelsEnd
LevelDataPointersEnd:

;--------------------------------------------------------------------

LevelSpritePointersStart:
	dl $FD81CC,$FD846C,SPR_ReptileRumble_Main,SPR_ReptileRumble_MainEnd
	dl $FD846C,$FD8484,SPR_ReptileRumble_Bonus1,SPR_ReptileRumble_Bonus1End
	dl $FD8484,$FD849C,SPR_BouncyBonanza_WinkyRoom,SPR_BouncyBonanza_WinkyRoomEnd
	dl $FD849C,$FD84C4,SPR_ReptileRumble_Bonus3,SPR_ReptileRumble_Bonus3End
	dl $FD84C4,$FD84D4,SPR_ManicMincers_Bonus1,SPR_ManicMincers_Bonus1End
	dl $FD84D4,$FD84EC,SPR_JungleHijinxs_Bonus1,SPR_JungleHijinxs_Bonus1End
	dl $FD84EC,$FD8834,SPR_BouncyBonanza_Main,SPR_BouncyBonanza_MainEnd
	dl $FD8834,$FD8AD4,SPR_MistyMine_Main,SPR_MistyMine_MainEnd
	dl $FD8AD4,$FD8D7C,SPR_RopeyRampage_Main,SPR_RopeyRampage_MainEnd
	dl $FD8D7C,$FD90C4,SPR_OrangutanGang_Main,SPR_OrangutanGang_MainEnd
	dl $FD90C4,$FD9104,SPR_BouncyBonanza_Bonus2,SPR_BouncyBonanza_Bonus2End
	dl $FD9104,$FD9434,SPR_ManicMincers_Main,SPR_ManicMincers_MainEnd
	dl $FD9434,$FD95DC,SPR_TorchlightTrouble_Main,SPR_TorchlightTrouble_MainEnd
	dl $FD95DC,$FD981C,SPR_JungleHijinxs_Main,SPR_JungleHijinxs_MainEnd
	dl $FD981C,$FD9CD4,SPR_BarrelCannonCanyon_Main,SPR_BarrelCannonCanyon_MainEnd
	dl $FD9CD4,$FDA03C,SPR_ElevatorAntics_Main,SPR_ElevatorAntics_MainEnd
	dl $FDA03C,$FDA04C,SPR_JungleHijinxs_Bonus2,SPR_JungleHijinxs_Bonus2End
	dl $FDA04C,$FDA05C,SPR_RopeyRampage_Bonus2,SPR_RopeyRampage_Bonus2End
	dl $FDA05C,$FDA0A4,SPR_RopeyRampage_Bonus1,SPR_RopeyRampage_Bonus1End
	dl $FDA0A4,$FDA0CC,SPR_OrangutanGang_Bonus3,SPR_OrangutanGang_Bonus3End
	dl $FDA0CC,$FDA0FC,SPR_OrangutanGang_Bonus2,SPR_OrangutanGang_Bonus2End
	dl $FDA0FC,$FDA10C,SPR_OrangutanGang_Bonus1,SPR_OrangutanGang_Bonus1End
	dl $FDA10C,$FDA5A6,SPR_PoisonPond_Main,SPR_PoisonPond_MainEnd
	dl $FDA5A6,$FDA7E0,SPR_CroctopusChase_Main,SPR_CroctopusChase_MainEnd
	dl $FDA7E0,$FDAC38,SPR_SnowBarrelBlast_Main,SPR_SnowBarrelBlast_MainEnd
	dl $FDAC38,$FDAEB8,SPR_MinecartMadness_Main,SPR_MinecartMadness_MainEnd
	dl $FDAEB8,$FDB2B0,SPR_PlatformPerils_Main,SPR_PlatformPerils_MainEnd
	dl $FDB2B0,$FDB3F8,SPR_MineCartCarnage_Main,SPR_MineCartCarnage_MainEnd
	dl $FDB3F8,$FDB658,SPR_TrickTrackTrek_Main,SPR_TrickTrackTrek_MainEnd
	dl $FDB658,$FDB9C0,SPR_TankedUpTrouble_Main,SPR_TankedUpTrouble_MainEnd
	dl $FDB9C0,$FDBE28,SPR_StopAndGoStation_Main,SPR_StopAndGoStation_MainEnd
	dl $FDBE28,$FDBE38,SPR_MistyMine_Bonus2,SPR_MistyMine_Bonus2End
	dl $FDBE38,$FDBE78,SPR_MistyMine_Bonus1,SPR_MistyMine_Bonus1End
	dl $FDBE78,$FDBEE8,SPR_AnimalTokenTest_Main,SPR_AnimalTokenTest_MainEnd
	dl $FDBEE8,$FDC320,SPR_LoopyLights_Main,SPR_LoopyLights_MainEnd
	dl $FDC320,$FDC370,SPR_LoopyLights_Bonus2,SPR_LoopyLights_Bonus2End
	dl $FDC370,$FDC810,SPR_OilDrumAlley_Main,SPR_OilDrumAlley_MainEnd
	dl $FDC810,$FDCAB8,SPR_BlackoutBasement_Main,SPR_BlackoutBasement_MainEnd
	dl $FDCAB8,$FDCD38,SPR_MillstoneMayhem_Main,SPR_MillstoneMayhem_MainEnd
	dl $FDCD38,$FDCFF0,SPR_TempleTempest_Main,SPR_TempleTempest_MainEnd
	dl $FDCFF0,$FDD048,SPR_BarrelCannonCanyon_Bonus1,SPR_BarrelCannonCanyon_Bonus1End
	dl $FDD048,$FDD068,SPR_JungleHijinxs_EmptyKongsBananaHoard,SPR_JungleHijinxs_EmptyKongsBananaHoardEnd
	dl $FDD068,$FDD0C8,SPR_ReptileRumble_Bonus2,SPR_ReptileRumble_Bonus2End
	dl $FDD0C8,$FDD130,SPR_LoopyLights_Bonus1,SPR_LoopyLights_Bonus1End
	dl $FDD130,$FDD160,SPR_StopAndGoStation_Bonus2,SPR_StopAndGoStation_Bonus2End
	dl $FDD160,$FDD198,SPR_StopAndGoStation_Bonus1,SPR_StopAndGoStation_Bonus1End
	dl $FDD198,$FDD1B8,SPR_JungleHijinxs_FullKongsBananaHoard,SPR_JungleHijinxs_FullKongsBananaHoardEnd
	dl $FDD1B8,$FDD210,SPR_MinecartMadness_Bonus1,SPR_MinecartMadness_Bonus1End
	dl $FDD210,$FDD220,SPR_PlatformPerils_Bonus1,SPR_PlatformPerils_Bonus1End
	dl $FDD220,$FDD270,SPR_WinkysWalkway_Bonus1,SPR_WinkysWalkway_Bonus1End
	dl $FDD270,$FDD280,SPR_PlatformPerils_Bonus2,SPR_PlatformPerils_Bonus2End
	dl $FDD280,$FDD2F8,SPR_TempleTempest_Bonus1,SPR_TempleTempest_Bonus1End
	dl $FDD2F8,$FDD310,SPR_TempleTempest_Bonus2,SPR_TempleTempest_Bonus2End
	dl $FDD310,$FDD338,SPR_MillstoneMayhem_Bonus1,SPR_MillstoneMayhem_Bonus1End
	dl $FDD338,$FDD350,SPR_MillstoneMayhem_Bonus2,SPR_MillstoneMayhem_Bonus2End
	dl $FDD350,$FDD360,SPR_MillstoneMayhem_Bonus3,SPR_MillstoneMayhem_Bonus3End
	dl $FDD360,$FDD380,SPR_OrangutanGang_Bonus5,SPR_OrangutanGang_Bonus5End
	dl $FDD380,$FDD3A0,SPR_OrangutanGang_Bonus4,SPR_OrangutanGang_Bonus4End
	dl $FDD3A0,$FDD3D8,SPR_JungleHijinxs_DKsHouse,SPR_JungleHijinxs_DKsHouseEnd
	dl $FDD3D8,$FDD400,SPR_BarrelCannonCanyon_Bonus2,SPR_BarrelCannonCanyon_Bonus2End
	dl $FDD400,$FDD418,SPR_Credits,SPR_CreditsEnd
	dl $FDD418,$FDD468,SPR_OilDrumAlley_Bonus4,SPR_OilDrumAlley_Bonus4End
	dl $FDD468,$FDD488,SPR_OilDrumAlley_Bonus2,SPR_OilDrumAlley_Bonus2End
	dl $FDD488,$FDD4A0,SPR_OilDrumAlley_Bonus1,SPR_OilDrumAlley_Bonus1End
	dl $FDD4A0,$FDD508,SPR_BlackoutBasement_Bonus1,SPR_BlackoutBasement_Bonus1End
	dl $FDD508,$FDD568,SPR_SnowBarrelBlast_Bonus3,SPR_SnowBarrelBlast_Bonus3End
	dl $FDD568,$FDD578,SPR_SnowBarrelBlast_Bonus1,SPR_SnowBarrelBlast_Bonus1End
	dl $FDD578,$FDD590,SPR_GangplankGalleon_Main,SPR_GangplankGalleon_MainEnd
	dl $FDD590,$FDD5B0,SPR_SnowBarrelBlast_Bonus2,SPR_SnowBarrelBlast_Bonus2End
	dl $FDD5B0,$FDD610,SPR_IceAgeAlley_Bonus1,SPR_IceAgeAlley_Bonus1End
	dl $FDD610,$FDD620,SPR_IceAgeAlley_Bonus2,SPR_IceAgeAlley_Bonus2End
	dl $FDD620,$FDD638,SPR_ExpressoBonus,SPR_ExpressoBonusEnd
	dl $FDD638,$FDD9BA,SPR_SlipSlideRide_Main,SPR_SlipSlideRide_MainEnd
	dl $FDD9BA,$FDD9CA,SPR_BouncyBonanza_Bonus1,SPR_BouncyBonanza_Bonus1End
	dl $FDD9CA,$FDD9DA,SPR_ManicMincers_Bonus2,SPR_ManicMincers_Bonus2End
	dl $FDD9DA,$FDDA22,SPR_ManicMincers_MincerRoom,SPR_ManicMincers_MincerRoomEnd
	dl $FDDA22,$FDDA32,SPR_ElevatorAntics_Bonus1,SPR_ElevatorAntics_Bonus1End
	dl $FDDA32,$FDDA8A,SPR_ElevatorAntics_Bonus2,SPR_ElevatorAntics_Bonus2End
	dl $FDDA8A,$FDDA9A,SPR_ElevatorAntics_Bonus3,SPR_ElevatorAntics_Bonus3End
	dl $FDDA9A,$FDDAAA,SPR_TrickTrackTrek_Bonus3,SPR_TrickTrackTrek_Bonus3End
	dl $FDDAAA,$FDDABA,SPR_TrickTrackTrek_Bonus2,SPR_TrickTrackTrek_Bonus2End
	dl $FDDABA,$FDDACA,SPR_TankedUpTrouble_Bonus1,SPR_TankedUpTrouble_Bonus1End
	dl $FDDACA,$FDDADA,SPR_MinecartMadness_Bonus2,SPR_MinecartMadness_Bonus2End
	dl $FDDADA,$FDDAF2,SPR_TrickTrackTrek_Bonus1,SPR_TrickTrackTrek_Bonus1End
	dl $FDDAF2,$FDDB12,SPR_MinecartMadness_Bonus3,SPR_MinecartMadness_Bonus3End
	dl $FDDB12,$FDDB2A,SPR_BlackoutBasement_Bonus2,SPR_BlackoutBasement_Bonus2End
	dl $FDDB2A,$FDDE32,SPR_TreeTopTown_Main,SPR_TreeTopTown_MainEnd
	dl $FDDE32,$FDE11A,SPR_VultureCulture_Main,SPR_VultureCulture_MainEnd
	dl $FDE11A,$FDE152,SPR_EnguardeBonus,SPR_EnguardeBonusEnd
	dl $FDE152,$FDE3D2,SPR_IceAgeAlley_Main,SPR_IceAgeAlley_MainEnd
	dl $FDE3D2,$FDE3EA,SPR_TreeTopTown_Bonus2,SPR_TreeTopTown_Bonus2End
	dl $FDE3EA,$FDE3FA,SPR_TreeTopTown_Bonus1,SPR_TreeTopTown_Bonus1End
	dl $FDE3FA,$FDE412,SPR_VultureCulture_Bonus1,SPR_VultureCulture_Bonus1End
	dl $FDE412,$FDE42A,SPR_VultureCulture_Bonus2,SPR_VultureCulture_Bonus2End
	dl $FDE42A,$FDE492,SPR_VultureCulture_Bonus3,SPR_VultureCulture_Bonus3End
	dl $FDE492,$FDE4AA,SPR_OilDrumAlley_Bonus3,SPR_OilDrumAlley_Bonus3End
	dl $FDE4AA,$FDE60C,SPR_CoralCapers_Main,SPR_CoralCapers_MainEnd
	dl $FDE60C,$FDE61C,SPR_TorchlightTrouble_Bonus1,SPR_TorchlightTrouble_Bonus1End
	dl $FDE61C,$FDE63C,SPR_TorchlightTrouble_Bonus2,SPR_TorchlightTrouble_Bonus2End
	dl $FDE63C,$FDE64C,SPR_SlipSlideRide_Bonus2,SPR_SlipSlideRide_Bonus2End
	dl $FDE64C,$FDE6A4,SPR_SlipSlideRide_Bonus3,SPR_SlipSlideRide_Bonus3End
	dl $FDE6A4,$FDE6B4,SPR_SlipSlideRide_Bonus1,SPR_SlipSlideRide_Bonus1End
	dl $FDE6B4,$FDE99C,SPR_RopeBridgeRumble_Main,SPR_RopeBridgeRumble_MainEnd
	dl $FDE99C,$FDECE4,SPR_ForestFrenzy_Main,SPR_ForestFrenzy_MainEnd
	dl $FDECE4,$FDECFC,SPR_RambiBonus,SPR_RambiBonusEnd
	dl $FDECFC,$FDEDBC,SPR_WinkyBonus,SPR_WinkyBonusEnd
	dl $FDEDBC,$FDEDDC,SPR_ForestFrenzy_Bonus2,SPR_ForestFrenzy_Bonus2End
	dl $FDEDDC,$FDEE54,SPR_RopeBridgeRumble_Bonus1,SPR_RopeBridgeRumble_Bonus1End
	dl $FDEE54,$FDEE64,SPR_RopeBridgeRumble_Bonus2,SPR_RopeBridgeRumble_Bonus2End
	dl $FDEE64,$FDEFBC,SPR_WinkysWalkway_Main,SPR_WinkysWalkway_MainEnd
	dl $FDEFBC,$FDEFCC,SPR_ForestFrenzy_Bonus1,SPR_ForestFrenzy_Bonus1End
	dl $FDEFCC,$FDF18E,SPR_ClamCity_Main,SPR_ClamCity_MainEnd
	dl $FDF18E,$FDF19E,SPR_VeryGnawtysLair_Main,SPR_VeryGnawtysLair_MainEnd
	dl $FDF19E,$FDF1AE,SPR_NeckysNuts_Main,SPR_NeckysNuts_MainEnd
	dl $FDF1AE,$FDF1BE,SPR_ReallyGnawtyRampage_Main,SPR_ReallyGnawtyRampage_MainEnd
	dl $FDF1BE,$FDF1CE,SPR_BossDumbDrum_Main,SPR_BossDumbDrum_MainEnd
	dl $FDF1CE,$FDF1DE,SPR_NeckysRevenge_Main,SPR_NeckysRevenge_MainEnd
	dl $FDF1DE,$FDF1F0,SPR_BumbleBRumble_Main,SPR_BumbleBRumble_MainEnd
LevelSpritePointersEnd:

;--------------------------------------------------------------------

BananaDataPointersStart:
	dl $F8C1C1,$F8C1EB,BFD_JungleHijinx_Main,BFD_JungleHijinx_MainEnd
	dl $F8C1EB,$F8C215,BFD_ReptileRumble_Main,BFD_ReptileRumble_MainEnd
	dl $F8C215,$F8C27B,BFD_BouncyBonanza_Main,BFD_BouncyBonanza_MainEnd
	dl $F8C27B,$F8C2B9,BFD_MistyMine_Main,BFD_MistyMine_MainEnd
	dl $F8C2B9,$F8C2F7,BFD_RopeyRampage_Main,BFD_RopeyRampage_MainEnd
	dl $F8C2F7,$F8C329,BFD_OrangutanGang_Main,BFD_OrangutanGang_MainEnd
	dl $F8C329,$F8C3D7,BFD_BarrelCannonCanyon_Main,BFD_BarrelCannonCanyon_MainEnd
	dl $F8C3D7,$F8C3E1,BFD_ReptileRumble_Bonus1,BFD_ReptileRumble_Bonus1End
	dl $F8C3E1,$F8C3F3,BFD_ReptileRumble_Bonus3,BFD_ReptileRumble_Bonus3End
	dl $F8C3F3,$F8C405,BFD_JungleHijinx_Bonus1,BFD_JungleHijinx_Bonus1End
	dl $F8C405,$F8C423,BFD_UnknownLevelID000A,BFD_UnknownLevelID000AEnd
	dl $F8C423,$F8C435,BFD_BouncyBonanza_Bonus2,BFD_BouncyBonanza_Bonus2End
	dl $F8C435,$F8C467,BFD_ManicMincers_Main,BFD_ManicMincers_MainEnd
	dl $F8C467,$F8C469,BFD_UnknownLevelID000D,BFD_UnknownLevelID000DEnd
	dl $F8C469,$F8C493,BFD_TorchlightTrouble_Main,BFD_TorchlightTrouble_MainEnd
	dl $F8C493,$F8C4CD,BFD_ElevatorAntics_Main,BFD_ElevatorAntics_MainEnd
	dl $F8C4CD,$F8C4EF,BFD_JungleHijinx_Bonus2,BFD_JungleHijinx_Bonus2End
	dl $F8C4EF,$F8C4F1,BFD_RopeyRampage_Bonus2,BFD_RopeyRampage_Bonus2End
	dl $F8C4F1,$F8C523,BFD_RopeyRampage_Bonus1,BFD_RopeyRampage_Bonus1End
	dl $F8C523,$F8C529,BFD_OrangutanGang_Bonus3,BFD_OrangutanGang_Bonus3End
	dl $F8C529,$F8C52F,BFD_OrangutanGang_Bonus2,BFD_OrangutanGang_Bonus2End
	dl $F8C52F,$F8C535,BFD_UnknownLevelID0015,BFD_UnknownLevelID0015End
	dl $F8C535,$F8C537,BFD_UnusedRoom,BFD_UnusedRoomEnd
	dl $F8C537,$F8C575,BFD_PoisonPond_Main,BFD_PoisonPond_MainEnd
	dl $F8C575,$F8C5FB,BFD_SnowBarrelBlast_Main,BFD_SnowBarrelBlast_MainEnd
	dl $F8C5FB,$F8C641,BFD_MinecartMadness_Main,BFD_MinecartMadness_MainEnd
	dl $F8C641,$F8C693,BFD_PlatformPerils_Main,BFD_PlatformPerils_MainEnd
	dl $F8C693,$F8C6ED,BFD_MinecartCarnage_Main,BFD_MinecartCarnage_MainEnd
	dl $F8C6ED,$F8C72F,BFD_TrickTrackTrek_Main,BFD_TrickTrackTrek_MainEnd
	dl $F8C72F,$F8C76D,BFD_TankedUpTrouble_Main,BFD_TankedUpTrouble_MainEnd
	dl $F8C76D,$F8C79F,BFD_StopAndGoStation_Main,BFD_StopAndGoStation_MainEnd
	dl $F8C79F,$F8C7A1,BFD_MistyMine_Bonus2,BFD_MistyMine_Bonus2End
	dl $F8C7A1,$F8C7F7,BFD_MistyMine_Bonus1,BFD_MistyMine_Bonus1End
	dl $F8C7F7,$F8C7F9,BFD_AnimalTokenTest,BFD_AnimalTokenTestEnd
	dl $F8C7F9,$F8C7FB,BFD_UnknownLevelID0022,BFD_UnknownLevelID0022End
	dl $F8C7FB,$F8C85D,BFD_LoopyLights_Main,BFD_LoopyLights_MainEnd
	dl $F8C85D,$F8C867,BFD_LoopyLights_Bonus2,BFD_LoopyLights_Bonus2End
	dl $F8C867,$F8C8B9,BFD_CroctopusChase_Main,BFD_CroctopusChase_MainEnd
	dl $F8C8B9,$F8C8EB,BFD_OilDrumAlley_Main,BFD_OilDrumAlley_MainEnd
	dl $F8C8EB,$F8C91D,BFD_BlackoutBasement_Main,BFD_BlackoutBasement_MainEnd
	dl $F8C91D,$F8C95B,BFD_MillstoneMayhem_Main,BFD_MillstoneMayhem_MainEnd
	dl $F8C95B,$F8C9B5,BFD_TempleTempest_Main,BFD_TempleTempest_MainEnd
	dl $F8C9B5,$F8C9B7,BFD_BouncyBonanza_Bonus1,BFD_BouncyBonanza_Bonus1End
	dl $F8C9B7,$F8CA21,BFD_UnknownLevelID002B,BFD_UnknownLevelID002BEnd
	dl $F8CA21,$F8CA2B,BFD_BarrelCannonCanyon_Bonus1,BFD_BarrelCannonCanyon_Bonus1End
	dl $F8CA2B,$F8CA2D,BFD_JungleHijinx_EmptyKongsBananaHoard,BFD_JungleHijinx_EmptyKongsBananaHoardEnd
	dl $F8CA2D,$F8CA4F,BFD_ReptileRumble_Bonus2,BFD_ReptileRumble_Bonus2End
	dl $F8CA4F,$F8CA59,BFD_LoopyLights_Bonus1,BFD_LoopyLights_Bonus1End
	dl $F8CA59,$F8CA7F,BFD_UnknownLevelID0030,BFD_UnknownLevelID0030End
	dl $F8CA7F,$F8CA81,BFD_UnknownLevelID0031,BFD_UnknownLevelID0031End
	dl $F8CA81,$F8CA83,BFD_JungleHijinx_FullKongsBananaHoard,BFD_JungleHijinx_FullKongsBananaHoardEnd
	dl $F8CA83,$F8CA8D,BFD_MinecartMadness_Bonus1,BFD_MinecartMadness_Bonus1End
	dl $F8CA8D,$F8CA8F,BFD_TrickTrackTrek_Bonus2,BFD_TrickTrackTrek_Bonus2End
	dl $F8CA8F,$F8CA99,BFD_WinkysWalkway_Bonus1,BFD_WinkysWalkway_Bonus1End
	dl $F8CA99,$F8CA9B,BFD_UnknownLevelID0036,BFD_UnknownLevelID0036End
	dl $F8CA9B,$F8CA9D,BFD_UnknownLevelID0037,BFD_UnknownLevelID0037End
	dl $F8CA9D,$F8CA9F,BFD_TempleTempest_Bonus1,BFD_TempleTempest_Bonus1End
	dl $F8CA9F,$F8CAA1,BFD_TempleTempest_Bonus2,BFD_TempleTempest_Bonus2End
	dl $F8CAA1,$F8CAA3,BFD_UnknownLevelID003A,BFD_UnknownLevelID003AEnd
	dl $F8CAA3,$F8CAA5,BFD_UnknownLevelID003B,BFD_UnknownLevelID003BEnd
	dl $F8CAA5,$F8CAA7,BFD_MillstoneMayhem_Bonus2,BFD_MillstoneMayhem_Bonus2End
	dl $F8CAA7,$F8CAA9,BFD_MillstoneMayhem_Bonus3,BFD_MillstoneMayhem_Bonus3End
	dl $F8CAA9,$F8CABB,BFD_OrangutanGang_Bonus5,BFD_OrangutanGang_Bonus5End
	dl $F8CABB,$F8CABD,BFD_OrangutanGang_Bonus4,BFD_OrangutanGang_Bonus4End
	dl $F8CABD,$F8CABF,BFD_JungleHijinx_DKsHouse,BFD_JungleHijinx_DKsHouseEnd
	dl $F8CABF,$F8CAE5,BFD_StopAndGoStation_Bonus2,BFD_StopAndGoStation_Bonus2End
	dl $F8CAE5,$F8CAE7,BFD_Credits,BFD_CreditsEnd
	dl $F8CAE7,$F8CAE9,BFD_UnknownLevelID0043,BFD_UnknownLevelID0043End
	dl $F8CAE9,$F8CAF7,BFD_OilDrumAlley_Bonus4,BFD_OilDrumAlley_Bonus4End
	dl $F8CAF7,$F8CAF9,BFD_OilDrumAlley_Bonus2,BFD_OilDrumAlley_Bonus2End
	dl $F8CAF9,$F8CAFB,BFD_UnknownLevelID0046,BFD_UnknownLevelID0046End
	dl $F8CAFB,$F8CB09,BFD_UnknownLevelID0047,BFD_UnknownLevelID0047End
	dl $F8CB09,$F8CB2B,BFD_IceAgeAlley_Bonus1,BFD_IceAgeAlley_Bonus1End
	dl $F8CB2B,$F8CB55,BFD_StopAndGoStation_Bonus1,BFD_StopAndGoStation_Bonus1End
	dl $F8CB55,$F8CB63,BFD_SnowBarrelBlast_Bonus3,BFD_SnowBarrelBlast_Bonus3End
	dl $F8CB63,$F8CB65,BFD_SnowBarrelBlast_Bonus1,BFD_SnowBarrelBlast_Bonus1End
	dl $F8CB65,$F8CB67,BFD_GangplankGalleon_Main,BFD_GangplankGalleon_MainEnd
	dl $F8CB67,$F8CB75,BFD_TreeTopTown_Bonus2,BFD_TreeTopTown_Bonus2End
	dl $F8CB75,$F8CB77,BFD_UnknownLevelID004E,BFD_UnknownLevelID004EEnd
	dl $F8CB77,$F8CB79,BFD_IceAgeAlley_Bonus2,BFD_IceAgeAlley_Bonus2End
	dl $F8CB79,$F8CCA7,BFD_ExpressoBonus,BFD_ExpressoBonusEnd
	dl $F8CCA7,$F8CD25,BFD_SlipSlideRide_Main,BFD_SlipSlideRide_MainEnd
	dl $F8CD25,$F8CD2F,BFD_ManicMincers_MincerRoom,BFD_ManicMincers_MincerRoomEnd
	dl $F8CD2F,$F8CD39,BFD_ElevatorAntics_Bonus2,BFD_ElevatorAntics_Bonus2End
	dl $F8CD39,$F8CD47,BFD_ElevatorAntics_Bonus3,BFD_ElevatorAntics_Bonus3End
	dl $F8CD47,$F8CD49,BFD_UnknownLevelID0055,BFD_UnknownLevelID0055End
	dl $F8CD49,$F8CD6F,BFD_TrickTrackTrek_Bonus1,BFD_TrickTrackTrek_Bonus1End
	dl $F8CD6F,$F8CD79,BFD_MinecartMadness_Bonus3,BFD_MinecartMadness_Bonus3End
	dl $F8CD79,$F8CD9B,BFD_TreeTopTown_Main,BFD_TreeTopTown_MainEnd
	dl $F8CD9B,$F8CDD9,BFD_VultureCulture_Main,BFD_VultureCulture_MainEnd
	dl $F8CDD9,$F8D04F,BFD_EnguardeBonus,BFD_EnguardeBonusEnd
	dl $F8D04F,$F8D08D,BFD_IceAgeAlley_Main,BFD_IceAgeAlley_MainEnd
	dl $F8D08D,$F8D08F,BFD_UnknownLevelID005C,BFD_UnknownLevelID005CEnd
	dl $F8D08F,$F8D091,BFD_TreeTopTown_Bonus1,BFD_TreeTopTown_Bonus1End
	dl $F8D091,$F8D093,BFD_VultureCulture_Bonus1,BFD_VultureCulture_Bonus1End
	dl $F8D093,$F8D09D,BFD_VultureCulture_Bonus3,BFD_VultureCulture_Bonus3End
	dl $F8D09D,$F8D09F,BFD_UnknownLevelID0060,BFD_UnknownLevelID0060End
	dl $F8D09F,$F8D105,BFD_CoralCapers_Main,BFD_CoralCapers_MainEnd
	dl $F8D105,$F8D107,BFD_UnknownLevelID0062,BFD_UnknownLevelID0062End
	dl $F8D107,$F8D149,BFD_SlipSlideRide_Bonus3,BFD_SlipSlideRide_Bonus3End
	dl $F8D149,$F8D177,BFD_RopeBridgeRumble_Main,BFD_RopeBridgeRumble_MainEnd
	dl $F8D177,$F8D1B5,BFD_ForestFrenzy_Main,BFD_ForestFrenzy_MainEnd
	dl $F8D1B5,$F8D44B,BFD_RambiBonus,BFD_RambiBonusEnd
	dl $F8D44B,$F8D5B9,BFD_WinkyBonus,BFD_WinkyBonusEnd
	dl $F8D5B9,$F8D5D3,BFD_ForestFrenzy_Bonus2,BFD_ForestFrenzy_Bonus2End
	dl $F8D5D3,$F8D5E9,BFD_RopeBridgeRumble_Bonus1,BFD_RopeBridgeRumble_Bonus1End
	dl $F8D5E9,$F8D603,BFD_WinkysWalkway_Main,BFD_WinkysWalkway_MainEnd
	dl $F8D603,$F8D629,BFD_ClamCity_Main,BFD_ClamCity_MainEnd
	dl $F8D629,$F8D62B,BFD_VeryGnawrtysLair_Main,BFD_VeryGnawrtysLair_MainEnd
	dl $F8D62B,$F8D62D,BFD_UnknownLevelID006D,BFD_UnknownLevelID006DEnd
	dl $F8D62D,$F8D62F,BFD_UnknownLevelID006E,BFD_UnknownLevelID006EEnd
	dl $F8D62F,$F8D631,BFD_UnknownLevelID006F,BFD_UnknownLevelID006FEnd
BananaDataPointersEnd:

;--------------------------------------------------------------------

PalettesPointersStart:
	dl $F99A14,$F99B14,PAL_FGBG_MinecartMadness,PAL_FGBG_MinecartMadnessEnd
	dl $F99B14,$F99B1C,PAL_Layer3_Snow,PAL_Layer3_SnowEnd
	dl $F99B1C,$F99C1C,PAL_FGBG_SnowLevels,PAL_FGBG_SnowLevelsEnd
	dl $F99C1C,$F99D1C,PAL_FGBG_CoralCapers,PAL_FGBG_CoralCapersEnd
	dl $F99D1C,$F99E1C,PAL_FGBG_CroctopusChase,PAL_FGBG_CroctopusChaseEnd
	dl $F99E1C,$F99F1C,PAL_FGBG_EnguardeBonus,PAL_FGBG_EnguardeBonusEnd
	dl $F99F1C,$F9A01C,PAL_FGBG_PoisonPond,PAL_FGBG_PoisonPondEnd
	dl $F9A01C,$F9A11C,PAL_FGBG_ReptileRumble,PAL_FGBG_ReptileRumbleEnd
	dl $F9A11C,$F9A17C,PAL_FGBG_UnknownPalette1,PAL_FGBG_UnknownPalette1End
	dl $F9A17C,$F9A1DC,PAL_FGBG_UnknownPalette2,PAL_FGBG_UnknownPalette2End
	dl $F9A1DC,$F9A2DC,PAL_FGBG_JungleLevels,PAL_FGBG_JungleLevelsEnd
	dl $F9A2DC,$F9A2FC,PAL_FGBG_WalkwayLevels,PAL_FGBG_WalkwayLevelsEnd
	dl $F9A2FC,$F9A3DC,PAL_FGBG_UnknownPalette3,PAL_FGBG_UnknownPalette3End
	dl $F9A3DC,$F9A4DC,PAL_FGBG_MineLevels,PAL_FGBG_MineLevelsEnd
	dl $F9AD65,$F9AE65,PAL_FGBG_BouncyBonanza,PAL_FGBG_BouncyBonanzaEnd
	dl $F9AE65,$F9AF65,PAL_FGBG_ManicMincers,PAL_FGBG_ManicMincersEnd
	dl $F9AF65,$F9B065,PAL_FGBG_PurpleCaveLevels,PAL_FGBG_PurpleCaveLevelsEnd
	dl $F9B065,$F9B083,PAL_FGBG_UnknownPalette4,PAL_FGBG_UnknownPalette4End
	dl $F9B083,$F9B0A3,PAL_FGBG_UnknownPalette5,PAL_FGBG_UnknownPalette5End
	dl $F9B0A3,$F9B1A3,PAL_FGBG_FactoryLevels,PAL_FGBG_FactoryLevelsEnd
	dl $F9B1A3,$F9B2A3,PAL_FGBG_RopeBridgeRumble,PAL_FGBG_RopeBridgeRumbleEnd
	dl $F9B2A3,$F9B3A3,PAL_FGBG_TreeTopTown,PAL_FGBG_TreeTopTownEnd
	dl $F9B3A3,$F9B4A3,PAL_FGBG_TempleLevels,PAL_FGBG_TempleLevelsEnd
	dl $F9B4A3,$F9B5A3,PAL_FGBG_TitleScreen,PAL_FGBG_TitleScreenEnd
	dl $F9B5A3,$F9B723,PAL_FGBG_IntroScreen,PAL_FGBG_IntroScreenEnd
	dl $F9B723,$F9B7E3,PAL_Sprite_IntroScreen,PAL_Sprite_IntroScreenEnd
	dl $F9B7E3,$F9B8E3,PAL_Layer1_GameOverScreen,PAL_Layer1_GameOverScreenEnd
	dl $F9B8E3,$F9B983,PAL_Sprite_FunkysFlights,PAL_Sprite_FunkysFlightsEnd
	dl $F9B983,$F9BA83,PAL_Layer1_FunkysFlights,PAL_Layer1_FunkysFlightsEnd
	dl $F9BA83,$F9BAC3,PAL_FGBG_UnknownPalette6,PAL_FGBG_UnknownPalette6End
	dl $F9BAC3,$F9BBC3,PAL_Layer1_CandysSavePoint,PAL_Layer1_CandysSavePointEnd
	dl $F9BBC3,$F9BC03,PAL_FGBG_UnknownPalette7,PAL_FGBG_UnknownPalette7End
	dl $F9BC03,$F9BCA3,PAL_Sprite_CandysSavePoint,PAL_Sprite_CandysSavePointEnd
	dl $F9BCA3,$F9BDA3,PAL_FGBG_CrankysCabin,PAL_FGBG_CrankysCabinEnd
	dl $F9BDA3,$F9BE03,PAL_Sprite_CrankysCabin,PAL_Sprite_CrankysCabinEnd
	dl $F9BE03,$F9BF03,PAL_FGBG_WorldMap,PAL_FGBG_WorldMapEnd
	dl $F9BF03,$F9C003,PAL_Sprite_MapScreen,PAL_Sprite_MapScreenEnd
	dl $F9C003,$F9C103,PAL_Layer1_KongoJungleMap2,PAL_Layer1_KongoJungleMap2End
	dl $F9C103,$F9C203,PAL_Layer1_KongoJungleMap1,PAL_Layer1_KongoJungleMap1End
	dl $F9C203,$F9C223,PAL_Layer1_CopyrightScreen,PAL_Layer1_CopyrightScreenEnd
	dl $F9C223,$F9C323,PAL_Layer1_GorillaGlacierMap2,PAL_Layer1_GorillaGlacierMap2End
	dl $F9C323,$F9C423,PAL_Layer1_GorillaGlacierMap1,PAL_Layer1_GorillaGlacierMap1End
	dl $F9C423,$F9C523,PAL_Layer1_MonkeyMinesMap2,PAL_Layer1_MonkeyMinesMap2End
	dl $F9C523,$F9C623,PAL_Layer1_MonkeyMinesMap1,PAL_Layer1_MonkeyMinesMap1End
	dl $F9C623,$F9C723,PAL_FGBG_ForestLevels,PAL_FGBG_ForestLevelsEnd
	dl $F9C723,$F9C823,PAL_FGBG_SlipSlideRide,PAL_FGBG_SlipSlideRideEnd
	dl $F9CC83,$F9CD63,PAL_Layer1_KremkrocIndustriesIncMap1,PAL_Layer1_KremkrocIndustriesIncMap1End
	dl $F9CD63,$F9CE63,PAL_Layer1_KremkrocIndustriesIncMap2,PAL_Layer1_KremkrocIndustriesIncMap2End
	dl $F9CE63,$F9CF43,PAL_FGBG_BananaHoardCave,PAL_FGBG_BananaHoardCaveEnd
	dl $F9CF43,$F9D043,PAL_Layer1_VineValleyMap1,PAL_Layer1_VineValleyMap1End
	dl $F9D043,$F9D143,PAL_Layer1_VineValleyMap2,PAL_Layer1_VineValleyMap2End
	dl $F9D143,$F9D243,PAL_Layer1_ChimpCavernsMap1,PAL_Layer1_ChimpCavernsMap1End
	dl $F9D243,$F9D343,PAL_Layer1_ChimpCavernsMap2,PAL_Layer1_ChimpCavernsMap2End
	dl $F9D343,$F9D363,PAL_Layer2_KongsBananaHoardCave,PAL_Layer2_KongsBananaHoardCaveEnd
	dl $F9D363,$F9D463,PAL_FGBG_UnknownPalette8,PAL_FGBG_UnknownPalette8End
	dl $F9D463,$F9D563,PAL_FGBG_PlayerSelectScreen,PAL_FGBG_PlayerSelectScreenEnd
	dl $F9D563,$F9D663,PAL_FGBG_FileSelectScreen,PAL_FGBG_FileSelectScreenEnd
	dl $F9D663,$F9D683,PAL_Sprite_FileSelectScreen,PAL_Sprite_FileSelectScreenEnd
	dl $F9D683,$F9D783,PAL_FGBG_DKsHouse,PAL_FGBG_DKsHouseEnd
	dl $F9D783,$F9D7AE,PAL_Layer1_ErrorMessageScreen,PAL_Layer1_ErrorMessageScreenEnd
	dl $F9E145,$F9E365,PAL_FGBG_UnknownPalette9,PAL_FGBG_UnknownPalette9End
	dl $FC81CC,$FC81EA,PAL_Sprite_UnknownPalette1,PAL_Sprite_UnknownPalette1End
	dl $FC81EA,$FC8208,PAL_Sprite_CaveWallHole,PAL_Sprite_CaveWallHoleEnd
	dl $FC8208,$FC8226,PAL_Sprite_UnknownPalette2,PAL_Sprite_UnknownPalette2End
	dl $FC8226,$FC8244,PAL_Sprite_GroundCover_JungleLevel,PAL_Sprite_GroundCover_JungleLevelEnd
	dl $FC8244,$FC8262,PAL_Sprite_JunglePlant,PAL_Sprite_JunglePlantEnd
	dl $FC8262,$FC8280,PAL_Sprite_DKIslandInFinalBattle,PAL_Sprite_DKIslandInFinalBattleEnd
	dl $FC8280,$FC829E,PAL_Sprite_UnknownPalette3,PAL_Sprite_UnknownPalette3End
	dl $FC829E,$FC82BA,PAL_Sprite_Cannonball,PAL_Sprite_CannonballEnd
	dl $FC82BA,$FC82D8,PAL_Sprite_MasterNeckysNut,PAL_Sprite_MasterNeckysNutEnd
	dl $FC82D8,$FC82F6,PAL_Sprite_MasterNecky,PAL_Sprite_MasterNeckyEnd
	dl $FC82F6,$FC8314,PAL_Sprite_MasterNeckySnr,PAL_Sprite_MasterNeckySnrEnd
	dl $FC8314,$FC8332,PAL_Sprite_KRool,PAL_Sprite_KRoolEnd
	dl $FC8332,$FC8350,PAL_Sprite_UnknownPalette4,PAL_Sprite_UnknownPalette4End
	dl $FC8350,$FC836E,PAL_Sprite_Sign,PAL_Sprite_SignEnd
	dl $FC836E,$FC838C,PAL_Sprite_YellowQueenB,PAL_Sprite_YellowQueenBEnd
	dl $FC838C,$FC83AA,PAL_Sprite_RedQueenB,PAL_Sprite_RedQueenBEnd
	dl $FC83AA,$FC83C8,PAL_Sprite_RedGnawty,PAL_Sprite_RedGnawtyEnd
	dl $FC83C8,$FC83E6,PAL_Sprite_DumbDrum,PAL_Sprite_DumbDrumEnd
	dl $FC83E6,$FC8404,PAL_Sprite_UnknownPalette5,PAL_Sprite_UnknownPalette5End
	dl $FC8404,$FC8422,PAL_Sprite_SteelKeg,PAL_Sprite_SteelKegEnd
	dl $FC8422,$FC8440,PAL_Sprite_Diddy_Active,PAL_Sprite_Diddy_ActiveEnd
	dl $FC8440,$FC845E,PAL_Sprite_Diddy_Inactive,PAL_Sprite_Diddy_InactiveEnd
	dl $FC845E,$FC847C,PAL_Sprite_Diddy_P2Active,PAL_Sprite_Diddy_P2ActiveEnd
	dl $FC847C,$FC849A,PAL_Sprite_Diddy_P2Inactive,PAL_Sprite_Diddy_P2InactiveEnd
	dl $FC849A,$FC84B8,PAL_Sprite_DonkeyKong_Active,PAL_Sprite_DonkeyKong_ActiveEnd
	dl $FC84B8,$FC84D6,PAL_Sprite_DonkeyKong_Inactive,PAL_Sprite_DonkeyKong_InactiveEnd
	dl $FC84D6,$FC84F4,PAL_Sprite_DonkeyKong_P2Active,PAL_Sprite_DonkeyKong_P2ActiveEnd
	dl $FC84F4,$FC8512,PAL_Sprite_DonkeyKong_P2Inactive,PAL_Sprite_DonkeyKong_P2InactiveEnd
	dl $FC8512,$FC8530,PAL_Sprite_GreenKritter,PAL_Sprite_GreenKritterEnd
	dl $FC8530,$FC854E,PAL_Sprite_VioletKritter,PAL_Sprite_VioletKritterEnd
	dl $FC854E,$FC856C,PAL_Sprite_BrownKritter,PAL_Sprite_BrownKritterEnd
	dl $FC856C,$FC858A,PAL_Sprite_BlueKritter,PAL_Sprite_BlueKritterEnd
	dl $FC858A,$FC85A8,PAL_Sprite_YellowKritter,PAL_Sprite_YellowKritterEnd
	dl $FC85A8,$FC85C6,PAL_Sprite_GreyKritter,PAL_Sprite_GreyKritterEnd
	dl $FC85C6,$FC85E4,PAL_Sprite_Klump,PAL_Sprite_KlumpEnd
	dl $FC85E4,$FC8602,PAL_Sprite_Expresso,PAL_Sprite_ExpressoEnd
	dl $FC8602,$FC8620,PAL_Sprite_Slippa,PAL_Sprite_SlippaEnd
	dl $FC8620,$FC863E,PAL_Sprite_UnknownPalette6,PAL_Sprite_UnknownPalette6End
	dl $FC863E,$FC865C,PAL_Sprite_Winky,PAL_Sprite_WinkyEnd
	dl $FC865C,$FC867A,PAL_Sprite_BrownRope,PAL_Sprite_BrownRopeEnd
	dl $FC867A,$FC8698,PAL_Sprite_Minecart,PAL_Sprite_MinecartEnd
	dl $FC8698,$FC86B6,PAL_Sprite_Squidge,PAL_Sprite_SquidgeEnd
	dl $FC86B6,$FC86D4,PAL_Sprite_UnknownPalette7,PAL_Sprite_UnknownPalette7End
	dl $FC86D4,$FC86F2,PAL_Sprite_Necky,PAL_Sprite_NeckyEnd
	dl $FC86F2,$FC8710,PAL_Sprite_Global,PAL_Sprite_GlobalEnd
	dl $FC8710,$FC872E,PAL_Sprite_AnimalBuddyBox,PAL_Sprite_AnimalBuddyBoxEnd
	dl $FC872E,$FC874C,PAL_Sprite_Barrel,PAL_Sprite_BarrelEnd
	dl $FC874C,$FC876A,PAL_Sprite_MinecartSparks,PAL_Sprite_MinecartSparksEnd
	dl $FC876A,$FC8788,PAL_Sprite_BlueKlaptrap,PAL_Sprite_BlueKlaptrapEnd
	dl $FC8788,$FC87A6,PAL_Sprite_GreenKlaptrap,PAL_Sprite_GreenKlaptrapEnd
	dl $FC87A6,$FC87C4,PAL_Sprite_PurpleKlaptrap,PAL_Sprite_PurpleKlaptrapEnd
	dl $FC87C4,$FC87E2,PAL_Sprite_RedKlaptrap,PAL_Sprite_RedKlaptrapEnd
	dl $FC87E2,$FC8800,PAL_Sprite_GreyKlaptrap,PAL_Sprite_GreyKlaptrapEnd
	dl $FC8800,$FC881E,PAL_Sprite_UnknownPalette8,PAL_Sprite_UnknownPalette8End
	dl $FC881E,$FC883C,PAL_Sprite_Tire,PAL_Sprite_TireEnd
	dl $FC883C,$FC885A,PAL_Sprite_LoopyLightsTire,PAL_Sprite_LoopyLightsTireEnd
	dl $FC885A,$FC8878,PAL_Sprite_GiantBanana,PAL_Sprite_GiantBananaEnd
	dl $FC8878,$FC8896,PAL_Sprite_RedExtraLifeBalloon,PAL_Sprite_RedExtraLifeBalloonEnd
	dl $FC8896,$FC88B4,PAL_Sprite_GreenExtraLifeBalloon,PAL_Sprite_GreenExtraLifeBalloonEnd
	dl $FC88B4,$FC88D2,PAL_Sprite_BlueExtraLifeBalloon,PAL_Sprite_BlueExtraLifeBalloonEnd
	dl $FC88D2,$FC88F0,PAL_Sprite_CavePlatform,PAL_Sprite_CavePlatformEnd
	dl $FC88F0,$FC890E,PAL_Sprite_MinePlatform,PAL_Sprite_MinePlatformEnd
	dl $FC890E,$FC892C,PAL_Sprite_LoopyLightsMinePlatform,PAL_Sprite_LoopyLightsMinePlatformEnd
	dl $FC892C,$FC894A,PAL_Sprite_PurpleButterfly,PAL_Sprite_PurpleButterflyEnd
	dl $FC894A,$FC8968,PAL_Sprite_PinkButterfly,PAL_Sprite_PinkButterflyEnd
	dl $FC8968,$FC8986,PAL_Sprite_YellowButterfly,PAL_Sprite_YellowButterflyEnd
	dl $FC8986,$FC89A4,PAL_Sprite_DarkRedButterfly,PAL_Sprite_DarkRedButterflyEnd
	dl $FC89A4,$FC89C2,PAL_Sprite_AnimalBuddyToken,PAL_Sprite_AnimalBuddyTokenEnd
	dl $FC89C2,$FC89E0,PAL_Sprite_BlueKrusha,PAL_Sprite_BlueKrushaEnd
	dl $FC89E0,$FC89FE,PAL_Sprite_GreyKrusha,PAL_Sprite_GreyKrushaEnd
	dl $FC89FE,$FC8A1C,PAL_Sprite_ElevatorLift,PAL_Sprite_ElevatorLiftEnd
	dl $FC8A1C,$FC8A3A,PAL_Sprite_GreenGnawty,PAL_Sprite_GreenGnawtyEnd
	dl $FC8A3A,$FC8A58,PAL_Sprite_ArrowPlatform,PAL_Sprite_ArrowPlatformEnd
	dl $FC8A58,$FC8A76,PAL_Sprite_MankyKong,PAL_Sprite_MankyKongEnd
	dl $FC8A76,$FC8A94,PAL_Sprite_MiniNecky,PAL_Sprite_MiniNeckyEnd
	dl $FC8A94,$FC8AB2,PAL_Sprite_UnknownPalette9,PAL_Sprite_UnknownPalette9End
	dl $FC8AB2,$FC8AD0,PAL_Sprite_Chomps,PAL_Sprite_ChompsEnd
	dl $FC8AD0,$FC8AEE,PAL_Sprite_ChompsJr,PAL_Sprite_ChompsJrEnd
	dl $FC8AEE,$FC8B0C,PAL_Sprite_Bitesize,PAL_Sprite_BitesizeEnd
	dl $FC8B0C,$FC8B2A,PAL_Sprite_Puftup,PAL_Sprite_PuftupEnd
	dl $FC8B2A,$FC8B48,PAL_Sprite_BlueCroctopus,PAL_Sprite_BlueCroctopusEnd
	dl $FC8B48,$FC8B66,PAL_Sprite_PurpleCroctopus,PAL_Sprite_PurpleCroctopusEnd
	dl $FC8B66,$FC8B84,PAL_Sprite_BrownCroctopus,PAL_Sprite_BrownCroctopusEnd
	dl $FC8B84,$FC8BA2,PAL_Sprite_Enguarde,PAL_Sprite_EnguardeEnd
	dl $FC8BA2,$FC8BC0,PAL_Sprite_GreenFueledPlatform,PAL_Sprite_GreenFueledPlatformEnd
	dl $FC8BC0,$FC8BDE,PAL_Sprite_OrangeFueledPlatform,PAL_Sprite_OrangeFueledPlatformEnd
	dl $FC8BDE,$FC8BFC,PAL_Sprite_RedFueledPlatform,PAL_Sprite_RedFueledPlatformEnd
	dl $FC8BFC,$FC8C1A,PAL_Sprite_CeilingLight,PAL_Sprite_CeilingLightEnd
	dl $FC8C1A,$FC8C38,PAL_Sprite_TrickTrackTrekPlatform,PAL_Sprite_TrickTrackTrekPlatformEnd
	dl $FC8C38,$FC8C56,PAL_Sprite_FuelCan,PAL_Sprite_FuelCanEnd
	dl $FC8C56,$FC8C74,PAL_Sprite_UnknownPalette10,PAL_Sprite_UnknownPalette10End
	dl $FC8C74,$FC8C92,PAL_Sprite_FishInDKHousePicture,PAL_Sprite_FishInDKHousePictureEnd
	dl $FC8C92,$FC8CB0,PAL_Sprite_Clambo,PAL_Sprite_ClamboEnd
	dl $FC8CB0,$FC8CCE,PAL_Sprite_OffBarrel,PAL_Sprite_OffBarrelEnd
	dl $FC8CCE,$FC8CEC,PAL_Sprite_OnBarrel,PAL_Sprite_OnBarrelEnd
	dl $FC8CEC,$FC8D0A,PAL_Sprite_GoBarrel,PAL_Sprite_GoBarrelEnd
	dl $FC8D0A,$FC8D28,PAL_Sprite_StopBarrel,PAL_Sprite_StopBarrelEnd
	dl $FC8D28,$FC8D46,PAL_Sprite_FactoryPlatform,PAL_Sprite_FactoryPlatformEnd
	dl $FC8D46,$FC8D64,PAL_Sprite_GroundCover_TempleLevel,PAL_Sprite_GroundCover_TempleLevelEnd
	dl $FC8D64,$FC8D82,PAL_Sprite_Rockkroc,PAL_Sprite_RockkrocEnd
	dl $FC8D82,$FC8DA0,PAL_Sprite_YellowZinger,PAL_Sprite_YellowZingerEnd
	dl $FC8DA0,$FC8DBE,PAL_Sprite_PinkZinger,PAL_Sprite_PinkZingerEnd
	dl $FC8DBE,$FC8DDC,PAL_Sprite_OrangeZinger,PAL_Sprite_OrangeZingerEnd
	dl $FC8DDC,$FC8DFA,PAL_Sprite_GreyPurpleZinger,PAL_Sprite_GreyPurpleZingerEnd
	dl $FC8DFA,$FC8E18,PAL_Sprite_BlueZinger,PAL_Sprite_BlueZingerEnd
	dl $FC8E18,$FC8E36,PAL_Sprite_GreenZinger,PAL_Sprite_GreenZingerEnd
	dl $FC8E36,$FC8E54,PAL_Sprite_UnknownPalette11,PAL_Sprite_UnknownPalette11End
	dl $FC8E54,$FC8E72,PAL_Sprite_BreakableWall_RightTempleWall,PAL_Sprite_BreakableWall_RightTempleWallEnd
	dl $FC8E72,$FC8E90,PAL_Sprite_DarkenedLetter,PAL_Sprite_DarkenedLetterEnd
	dl $FC8E90,$FC8EAE,PAL_Sprite_GroundCover_FactoryLevel,PAL_Sprite_GroundCover_FactoryLevelEnd
	dl $FC8EAE,$FC8ECC,PAL_Sprite_UnknownPalette12,PAL_Sprite_UnknownPalette12End
	dl $FC8ECC,$FC8EEA,PAL_Sprite_GroundCover_ForestLevel,PAL_Sprite_GroundCover_ForestLevelEnd
	dl $FC8EEA,$FC8F08,PAL_Sprite_BlueRope,PAL_Sprite_BlueRopeEnd
	dl $FC8F08,$FC8F26,PAL_Sprite_BreakableWall_LeftCrystalCaveWall,PAL_Sprite_BreakableWall_LeftCrystalCaveWallEnd
	dl $FC8F26,$FC8F44,PAL_Sprite_PurpleRope,PAL_Sprite_PurpleRopeEnd
	dl $FC8F44,$FC8F62,PAL_Sprite_OilDrumAndFire,PAL_Sprite_OilDrumAndFireEnd
	dl $FC8F62,$FC8F80,PAL_Sprite_CheckpointStars,PAL_Sprite_CheckpointStarsEnd
	dl $FC8F80,$FC8F9E,PAL_Sprite_Squawks,PAL_Sprite_SquawksEnd
	dl $FC8F9E,$FC8FBC,PAL_Sprite_SlipSlideRideWarpBarrel,PAL_Sprite_SlipSlideRideWarpBarrelEnd
	dl $FC8FBC,$FC8FDA,PAL_Sprite_FunkyKong,PAL_Sprite_FunkyKongEnd
	dl $FC8FDA,$FC8FF8,PAL_Sprite_FunkysSurfboard,PAL_Sprite_FunkysSurfboardEnd
	dl $FC8FF8,$FC9016,PAL_Sprite_CandyKong,PAL_Sprite_CandyKongEnd
	dl $FC9016,$FC9034,PAL_Sprite_CrankyKong,PAL_Sprite_CrankyKongEnd
	dl $FC9034,$FC903C,PAL_Sprite_Kredits,PAL_Sprite_KreditsEnd
PalettesPointersEnd:

;--------------------------------------------------------------------

GarbageDataPointersStart:
	dl $C07A21,$C08000,DATA_C07A21,DATA_C07A21End
	dl $C174BA,$C18000,DATA_C174BA,DATA_C174BAEnd
	dl $C1F3E8,$C20000,DATA_81F3E8,DATA_81F3E8End
	dl $C2F7ED,$C30000,DATA_C2F7ED,DATA_C2F7EDEnd
	dl $C4FDB2,$C50000,DATA_C4FDB2,DATA_C4FDB2End
	dl $C5FEB2,$C60000,DATA_C5FEB2,DATA_C5FEB2End
	dl $C6FEF7,$C6FFC0,DATA_C6FEF7,DATA_C6FEF7End
	dl $C9F905,$C9FF00,DATA_C9F905,DATA_C9F905End
	dl $CAF86C,$CB0000,DATA_CAF86C,DATA_CAF86CEnd
	dl $CDFD8B,$CE0000,DATA_CDFD8B,DATA_CDFD8BEnd
	dl $CFFF5C,$D00000,DATA_CFFF5C,DATA_CFFF5CEnd
	dl $D1FE8E,$D1FF8E,GFX_KRoolCrown_Unknown,GFX_KRoolCrown_UnknownEnd
	dl $DBFE39,$DC0000,DATA_DBFE39,DATA_DBFE39End
	dl $DDEC91,$DDFF4E,GFX_UnknownGraphics,GFX_UnknownGraphicsEnd
	dl $DFF665,$DFF9D3,GFX_VeryGnawty_Unknown,GFX_VeryGnawty_UnknownEnd
	dl $E7FFA9,$E80000,DATA_E7FFA9,DATA_E7FFA9End
	dl $E9F400,$E9F724,DATA_E9F400,DATA_E9F400End
	dl $EEFE9D,$EEFF6F,DATA_EEFE9D,DATA_EEFE9DEnd
	dl $EFFD48,$F00000,DATA_EFFD48,DATA_EFFD48End
	dl $F0FD00,$F10000,DATA_F0FD00,DATA_F0FD00End
	dl $F1EAE5,$F1EBB4,DATA_F1EAE5,DATA_F1EAE5End
	dl $F4FE9E,$F50000,DATA_F4FE9E,DATA_F4FE9EEnd
	dl $F57D92,$F58000,DATA_F57D92,DATA_F57D92End
	dl $F6FCB4,$F70000,DATA_B6FCB4,DATA_B6FCB4End
	dl $F7FF0A,$F80000,DATA_F7FF0A,DATA_F7FF0AEnd
	dl $F8DD8A,$F90000,DATA_B8DD8A,DATA_B8DD8AEnd
	dl $F9FF65,$FA0000,DATA_B9FF65,DATA_B9FF65End
	dl $FB7EB8,$FB8000,DATA_FB7EB8,DATA_FB7EB8End
	dl $FCFF1B,$FD0000,DATA_BCFF1B,DATA_BCFF1BEnd
	dl $FD7DB5,$FD8000,DATA_FD7DB5,DATA_FD7DB5End
	dl $F1FDCC,$F1FFCC,GFX_BreakableWall_Unknown,GFX_BreakableWall_UnknownEnd
	dl $FEF15A,$FF0000,DATA_BEF15A,DATA_BEF15AEnd
	dl $FF6261,$FF8000,GFX_FF6261,GFX_FF6261End
	dl $BFFF2C,$C00000,DATA_FFFF2C,DATA_FFFF2CEnd
GarbageDataPointersEnd:

;--------------------------------------------------------------------

MusicPointersStart:
	dl $C16B84,$C174BA,Music_SimianSegue,Music_SimianSegueEnd
	dl $C22ECC,$C23E2F,Music_GangplankGalleon,Music_GangplankGalleonEnd
	dl $C50000,$C50912,Music_ForestFrenzy,Music_ForestFrenzyEnd
	dl $C5EBC6,$C5F6E2,Music_TreetopRock,Music_TreetopRockEnd
	dl $C60000,$C60979,Music_FunkysFugue,Music_FunkysFugueEnd
	dl $C90000,$C90838,Music_CaveDwellerConcert,Music_CaveDwellerConcertEnd
	dl $C90838,$C90F83,Music_MistyMenance,Music_MistyMenanceEnd
	dl $C90F83,$C91CF8,Music_FearFactory,Music_FearFactoryEnd
	dl $C91CF8,$C92D95,Music_NorthernHemispheres,Music_NorthernHemispheresEnd
	dl $C93BBF,$C94C69,Music_MineCartMadness,Music_MineCartMadnessEnd
	dl $CA8000,$CA8C65,Music_AquaticAmbience,Music_AquaticAmbienceEnd
	dl $CA8C65,$CA9361,Music_CrankysTheme,Music_CrankysThemeEnd
	dl $CA9361,$CAA342,Music_DKIslandSwing,Music_DKIslandSwingEnd
	dl $D3D484,$D3DEAB,Music_TitleTheme,Music_TitleThemeEnd
	dl $D3DEAB,$D3E8D2,Music_Failure,Music_FailureEnd
	dl $D3F56A,$93FFB5,Music_EarlyTitleTheme,Music_EarlyTitleThemeEnd
	dl $DBF5D8,$DBFE39,Music_BonusRoomBlitz,Music_BonusRoomBlitzEnd
	dl $DF1650,$DF2244,Music_VoicesOfTheTemple,Music_VoicesOfTheTempleEnd
	dl $DFDBB4,$DFE5D4,Music_CreditsConcerto,Music_CreditsConcertoEnd
	dl $DFF03D,$DFF665,Music_EarlyCreditsConcerto,Music_EarlyCreditsConcertoEnd
	dl $E10000,$E101E5,Music_DeathMusic,Music_DeathMusicEnd
	dl $E3CDA7,$E3D7AB,Music_LifeInTheMines,Music_LifeInTheMinesEnd
	dl $E9C6A4,$E9D6DC,Music_BadBossBoogie,Music_BadBossBoogieEnd
	dl $E9F724,$E9FFD9,Music_EarlyBadBossBoogie,Music_EarlyBadBossBoogieEnd
	dl $EA0000,$EA020B,Music_SplashScreenFanfare,Music_SplashScreenFanfareEnd
	dl $EE1476,$EE17DD,Music_Victory,Music_VictoryEnd
	dl $F095BE,$F0A18E,Music_IceCaveChant,Music_IceCaveChantEnd
	dl $F1BB58,$F1C2C7,Music_CandysLoveSong,Music_CandysLoveSongEnd
	dl $F40000,$F401D7,Music_GameOver,Music_GameOverEnd
	dl $FC5A12,$FC5C4D,Music_BeatLevel,Music_BeatLevelEnd
MusicPointersEnd:

;--------------------------------------------------------------------

SoundEffectPointersStart:
	dl $C92D95,$C93BBF,GlobalSoundEffects,GlobalSoundEffectsEnd
SoundEffectPointersEnd:

;--------------------------------------------------------------------

BRRPointersStart:
	dl $C70004,$C70E39,BRRFile00,BRRFile00End
	dl $C70E3D,$C7246D,BRRFile01,BRRFile01End
	dl $C72471,$C72808,BRRFile02,BRRFile02End
	dl $C7280C,$C729D8,BRRFile03,BRRFile03End
	dl $C729DC,$C72EA5,BRRFile04,BRRFile04End
	dl $C72EA9,$C7403E,BRRFile05,BRRFile05End
	dl $C74042,$C74082,BRRFile06,BRRFile06End
	dl $C74086,$C7457C,BRRFile07,BRRFile07End
	dl $C74580,$C74956,BRRFile08,BRRFile08End
	dl $C7495A,$C74E8F,BRRFile09,BRRFile09End
	dl $C74E93,$C751FD,BRRFile0A,BRRFile0AEnd
	dl $C75201,$C756AF,BRRFile0B,BRRFile0BEnd
	dl $C756B3,$C75957,BRRFile0C,BRRFile0CEnd
	dl $C7595B,$C75CBC,BRRFile0D,BRRFile0DEnd
	dl $C75CC0,$C75D24,BRRFile0E,BRRFile0EEnd
	dl $C75D28,$C75D3B,BRRFile0F,BRRFile0FEnd
	dl $C75D3F,$C76285,BRRFile10,BRRFile10End
	dl $C76289,$C765BD,BRRFile11,BRRFile11End
	dl $C765C1,$C76DFC,BRRFile12,BRRFile12End
	dl $C76E00,$C76E40,BRRFile13,BRRFile13End
	dl $C76E44,$C76E84,BRRFile14,BRRFile14End
	dl $C76E88,$C7709C,BRRFile15,BRRFile15End
	dl $C770A0,$C77AE5,BRRFile16,BRRFile16End
	dl $C77AE9,$C77B83,BRRFile17,BRRFile17End
	dl $C77B87,$C77BC7,BRRFile18,BRRFile18End
	dl $C77BCB,$C77BE7,BRRFile19,BRRFile19End
	dl $C77BEB,$C77DF5,BRRFile1A,BRRFile1AEnd
	dl $C77DF9,$C784D5,BRRFile1B,BRRFile1BEnd
	dl $C784D9,$C7858E,BRRFile1C,BRRFile1CEnd
	dl $C78592,$C787CA,BRRFile1D,BRRFile1DEnd
	dl $C787CE,$C787E1,BRRFile1E,BRRFile1EEnd
	dl $C787E5,$C788B5,BRRFile1F,BRRFile1FEnd
	dl $C788B9,$C793D6,BRRFile20,BRRFile20End
	dl $C793DA,$C7987F,BRRFile21,BRRFile21End
	dl $C79883,$C798BA,BRRFile22,BRRFile22End
	dl $C798BE,$C7A00F,BRRFile23,BRRFile23End
	dl $C7A013,$C7A1DF,BRRFile24,BRRFile24End
	dl $C7A1E3,$C7A409,BRRFile25,BRRFile25End
	dl $C7A40D,$C7A56D,BRRFile26,BRRFile26End
	dl $C7A571,$C7A7F1,BRRFile27,BRRFile27End
	dl $C7A7F5,$C7AC91,BRRFile28,BRRFile28End
	dl $C7AC95,$C7AFFF,BRRFile29,BRRFile29End
	dl $C7B003,$C7B3F4,BRRFile2A,BRRFile2AEnd
	dl $C7B3F8,$C7BB13,BRRFile2B,BRRFile2BEnd
	dl $C7BB17,$C7BB57,BRRFile2C,BRRFile2CEnd
	dl $C7BB5B,$C7BB9B,BRRFile2D,BRRFile2DEnd
	dl $C7BB9F,$C7BBDF,BRRFile2E,BRRFile2EEnd
	dl $C7BBE3,$C7BC23,BRRFile2F,BRRFile2FEnd
	dl $C7BC27,$C7BCE5,BRRFile30,BRRFile30End
	dl $C7BCE9,$C7C230,BRRFile31,BRRFile31End
	dl $C7C234,$C7C4D8,BRRFile32,BRRFile32End
	dl $C7C4DC,$C7D416,BRRFile33,BRRFile33End
	dl $C7D41A,$C7DA8A,BRRFile34,BRRFile34End
	dl $C7DA8E,$C7E2C9,BRRFile35,BRRFile35End
	dl $C7E2CD,$C7E6FD,BRRFile36,BRRFile36End
	dl $C7E701,$C7EBF7,BRRFile37,BRRFile37End
	dl $C7EBFB,$C7EC0E,BRRFile38,BRRFile38End
	dl $C7EC12,$C7EC49,BRRFile39,BRRFile39End
	dl $C7EC4D,$C7F2CF,BRRFile3A,BRRFile3AEnd
	dl $C7F2D3,$C7F3BE,BRRFile3B,BRRFile3BEnd
	dl $C7F3C2,$C7FF6F,BRRFile3C,BRRFile3CEnd
	dl $C80004,$C805F6,BRRFile3D,BRRFile3DEnd
	dl $C805FA,$C80C07,BRRFile3E,BRRFile3EEnd
	dl $C80C0B,$C8119A,BRRFile3F,BRRFile3FEnd
	dl $C8119E,$C81B53,BRRFile40,BRRFile40End
	dl $C81B57,$C81B97,BRRFile41,BRRFile41End
	dl $C81B9B,$C81E24,BRRFile42,BRRFile42End
	dl $C81E28,$C81FEB,BRRFile43,BRRFile43End
	dl $C81FEF,$C821A9,BRRFile44,BRRFile44End
	dl $C821AD,$C821E4,BRRFile45,BRRFile45End
BRRPointersEnd:

;--------------------------------------------------------------------

GFX_Layer1_CandysSavePoint:
	db "GFX_Layer1_CandysSavePoint.bin"
GFX_Layer1_CandysSavePointEnd:
GFX_Layer1_WorldMap:
	db "GFX_Layer1_WorldMap.bin"
GFX_Layer1_WorldMapEnd:
GFX_Sprite_MapIcons:
	db "GFX_Sprite_MapIcons.bin"
GFX_Sprite_MapIconsEnd:
GFX_Layer3_HangingLampLight:
	db "GFX_Layer3_HangingLampLight.bin"
GFX_Layer3_HangingLampLightEnd:
GFX_Layer1_GameOverScreen:
	db "GFX_Layer1_GameOverScreen.bin"
GFX_Layer1_GameOverScreenEnd:
GFX_Layer1_KongoJungleMap1:
	db "GFX_Layer1_KongoJungleMap1.bin"
GFX_Layer1_KongoJungleMap1End:
GFX_Layer1_KongoJungleMap2:
	db "GFX_Layer1_KongoJungleMap2.bin"
GFX_Layer1_KongoJungleMap2End:
GFX_Layer1_MonkeyMinesMap1:
	db "GFX_Layer1_MonkeyMinesMap1.bin"
GFX_Layer1_MonkeyMinesMap1End:
GFX_Layer1_VineValleyMap2:
	db "GFX_Layer1_VineValleyMap2.bin"
GFX_Layer1_VineValleyMap2End:
GFX_Layer3_FileSelectScreen:
	db "GFX_Layer3_FileSelectScreen.bin"
GFX_Layer3_FileSelectScreenEnd:
GFX_Layer1_VineValleyMap1:
	db "GFX_Layer1_VineValleyMap1.bin"
GFX_Layer1_VineValleyMap1End:
GFX_Layer3_UnknownFont1:
	db "GFX_Layer3_UnknownFont1.bin"
GFX_Layer3_UnknownFont1End:
GFX_Layer2_TreehouseLevels:
	db "GFX_Layer2_TreehouseLevels.bin"
GFX_Layer2_TreehouseLevelsEnd:
GFX_FGBG_KongsBananaHoardCave:
	db "GFX_FGBG_KongsBananaHoardCave.bin"
GFX_FGBG_KongsBananaHoardCaveEnd:
GFX_Layer1_MonkeyMinesMap2:
	db "GFX_Layer1_MonkeyMinesMap2.bin"
GFX_Layer1_MonkeyMinesMap2End:
GFX_Layer3_JungleLevels:
	db "GFX_Layer3_JungleLevels.bin"
GFX_Layer3_JungleLevelsEnd:
GFX_Sprite_FishInDKHousePicture:
	db "GFX_Sprite_FishInDKHousePicture.bin"
GFX_Sprite_FishInDKHousePictureEnd:
GFX_FGBG_GangplankGalleon:
	db "GFX_FGBG_GangplankGalleon.bin"
GFX_FGBG_GangplankGalleonEnd:
GFX_Layer1_DKsHouse:
	db "GFX_Layer1_DKsHouse.bin"
GFX_Layer1_DKsHouseEnd:
GFX_Layer1_ChimpCavernsMap1:
	db "GFX_Layer1_ChimpCavernsMap1.bin"
GFX_Layer1_ChimpCavernsMap1End:
GFX_Layer1_ChimpCavernsMap2:
	db "GFX_Layer1_ChimpCavernsMap2.bin"
GFX_Layer1_ChimpCavernsMap2End:
GFX_Layer1_AnimatedTempleTorches:
	db "GFX_Layer1_AnimatedTempleTorches.bin"
GFX_Layer1_AnimatedTempleTorchesEnd:
GFX_Sprite_AirBubbles:
	db "GFX_Sprite_AirBubbles.bin"
GFX_Sprite_AirBubblesEnd:
GFX_Layer2_Fog:
	db "GFX_Layer2_Fog.bin"
GFX_Layer2_FogEnd:
GFX_Layer3_TempleLevels:
	db "GFX_Layer3_TempleLevels.bin"
GFX_Layer3_TempleLevelsEnd:
GFX_Layer2_Millstone:
	db "GFX_Layer2_Millstone.bin"
GFX_Layer2_MillstoneEnd:
GFX_Sprite_Sparkles:
	db "GFX_Sprite_Sparkles.bin"
GFX_Sprite_SparklesEnd:
GFX_Layer3_AnimatedHeavySnow:
	db "GFX_Layer3_AnimatedHeavySnow.bin"
GFX_Layer3_AnimatedHeavySnowEnd:
GFX_Layer2_AnimatedSnow:
	db "GFX_Layer2_AnimatedSnow.bin"
GFX_Layer2_AnimatedSnowEnd:
GFX_Layer2_AnimatedLightSnow:
	db "GFX_Layer2_AnimatedLightSnow.bin"
GFX_Layer2_AnimatedLightSnowEnd:
GFX_Layer3_SnowLevels:
	db "GFX_Layer3_SnowLevels.bin"
GFX_Layer3_SnowLevelsEnd:
GFX_Layer1_WireframeRareLogo:
	db "GFX_Layer1_WireframeRareLogo.bin"
GFX_Layer1_WireframeRareLogoEnd:
GFX_Layer3_Fog:
	db "GFX_Layer3_Fog.bin"
GFX_Layer3_FogEnd:
GFX_Layer3_FactoryLevels:
	db "GFX_Layer3_FactoryLevels.bin"
GFX_Layer3_FactoryLevelsEnd:
GFX_Layer3_ForestLevels:
	db "GFX_Layer3_ForestLevels.bin"
GFX_Layer3_ForestLevelsEnd:
GFX_Layer1_CopyrightScreen:
	db "GFX_Layer1_CopyrightScreen.bin"
GFX_Layer1_CopyrightScreenEnd:
GFX_Layer1_ErrorMessageScreen:
	db "GFX_Layer1_ErrorMessageScreen.bin"
GFX_Layer1_ErrorMessageScreenEnd:
GFX_Layer1_NintendoLogo:
	db "GFX_Layer1_NintendoLogo.bin"
GFX_Layer1_NintendoLogoEnd:
GFX_Layer2_IntroScreen:
	db "GFX_Layer2_IntroScreen.bin"
GFX_Layer2_IntroScreenEnd:
GFX_Layer3_CaveLevels:
	db "GFX_Layer3_CaveLevels.bin"
GFX_Layer3_CaveLevelsEnd:
GFX_Layer1_LanguageSelectText:
	db "GFX_Layer1_LanguageSelectText.bin"
GFX_Layer1_LanguageSelectTextEnd:
GFX_UnknownTreetops:
	db "GFX_UnknownTreetops.bin"
GFX_UnknownTreetopsEnd:
GFX_Layer2_WalkwayLevels:
	db "GFX_Layer2_WalkwayLevels.bin"
GFX_Layer2_WalkwayLevelsEnd:
GFX_UnusedWideLettersAndNintendoLogo:
	db "GFX_UnusedWideLettersAndNintendoLogo.bin"
GFX_UnusedWideLettersAndNintendoLogoEnd:
GFX_Sprite_AreaNameFont:
	db "GFX_Sprite_AreaNameFont.bin"
GFX_Sprite_AreaNameFontEnd:
GFX_Layer3_UnknownFont2:
	db "GFX_Layer3_UnknownFont2.bin"
GFX_Layer3_UnknownFont2End:
GFX_Layer1_UnknownFont1:
	db "GFX_Layer1_UnknownFont1.bin"
GFX_Layer1_UnknownFont1End:
GFX_Layer3_NintendoLogoShine:
	db "GFX_Layer3_NintendoLogoShine.bin"
GFX_Layer3_NintendoLogoShineEnd:
GFX_Layer2_LargeRareLogo:
	db "GFX_Layer2_LargeRareLogo.bin"
GFX_Layer2_LargeRareLogoEnd:
GFX_Layer3_GangplankGalleon:
	db "GFX_Layer3_GangplankGalleon.bin"
GFX_Layer3_GangplankGalleonEnd:
GFX_Mode7_RareLogo:
	db "GFX_Mode7_RareLogo.bin"
GFX_Mode7_RareLogoEnd:
GFX_Layer1_TitleScreen:
	db "GFX_Layer1_TitleScreen.bin"
GFX_Layer1_TitleScreenEnd:
GFX_Layer1_PlayerSelectScreen:
	db "GFX_Layer1_PlayerSelectScreen.bin"
GFX_Layer1_PlayerSelectScreenEnd:
GFX_Layer2_PlayerSelectScreen:
	db "GFX_Layer2_PlayerSelectScreen.bin"
GFX_Layer2_PlayerSelectScreenEnd:
GFX_Sprite_ElevatorLift:
	db "GFX_Sprite_ElevatorLift.bin"
GFX_Sprite_ElevatorLiftEnd:
GFX_Layer1_IntroScreen:
	db "GFX_Layer1_IntroScreen.bin"
GFX_Layer1_IntroScreenEnd:
GFX_Layer3_TreehouseLevels:
	db "GFX_Layer3_TreehouseLevels.bin"
GFX_Layer3_TreehouseLevelsEnd:
GFX_Layer1_FileSelectScreen:
	db "GFX_Layer1_FileSelectScreen.bin"
GFX_Layer1_FileSelectScreenEnd:
GFX_Layer1_KremkrocIndustriesIncMap1:
	db "GFX_Layer1_KremkrocIndustriesIncMap1.bin"
GFX_Layer1_KremkrocIndustriesIncMap1End:
GFX_Sprite_SmallSmokePuff:
	db "GFX_Sprite_SmallSmokePuff.bin"
GFX_Sprite_SmallSmokePuffEnd:
GFX_Layer1_CrankysCabin:
	db "GFX_Layer1_CrankysCabin.bin"
GFX_Layer1_CrankysCabinEnd:
GFX_Layer3_UnknownFont3:
	db "GFX_Layer3_UnknownFont3.bin"
GFX_Layer3_UnknownFont3End:
GFX_Layer1_GorillaGlacierMap2:
	db "GFX_Layer1_GorillaGlacierMap2.bin"
GFX_Layer1_GorillaGlacierMap2End:
GFX_Layer3_MineLevels:
	db "GFX_Layer3_MineLevels.bin"
GFX_Layer3_MineLevelsEnd:
GFX_Layer1_FunkysFlights:
	db "GFX_Layer1_FunkysFlights.bin"
GFX_Layer1_FunkysFlightsEnd:
GFX_Layer1_GorillaGlacierMap1:
	db "GFX_Layer1_GorillaGlacierMap1.bin"
GFX_Layer1_GorillaGlacierMap1End:
GFX_Sprite_OverworldPathDot:
	db "GFX_Sprite_OverworldPathDot.bin"
GFX_Sprite_OverworldPathDotEnd:
GFX_Layer1_UnknownFont2:
	db "GFX_Layer1_UnknownFont2.bin"
GFX_Layer1_UnknownFont2End:
GFX_Layer1_UnknownFont3:
	db "GFX_Layer1_UnknownFont3.bin"
GFX_Layer1_UnknownFont3End:
GFX_Layer1_ShadedDebugFont:
	db "GFX_Layer1_ShadedDebugFont.bin"
GFX_Layer1_ShadedDebugFontEnd:
GFX_Sprite_GlobalSprites:
	db "GFX_Sprite_GlobalSprites.bin"
GFX_Sprite_GlobalSpritesEnd:
GFX_Sprite_HUDNumbers:
	db "GFX_Sprite_HUDNumbers.bin"
GFX_Sprite_HUDNumbersEnd:
GFX_Sprite_Bananas:
	db "GFX_Sprite_Bananas.bin"
GFX_Sprite_BananasEnd:
GFX_Sprite_TinyWinkyTokens:
	db "GFX_Sprite_TinyWinkyTokens.bin"
GFX_Sprite_TinyWinkyTokensEnd:
GFX_Sprite_TinyExpressoTokens:
	db "GFX_Sprite_TinyExpressoTokens.bin"
GFX_Sprite_TinyExpressoTokensEnd:
GFX_Sprite_TinyRambiTokens:
	db "GFX_Sprite_TinyRambiTokens.bin"
GFX_Sprite_TinyRambiTokensEnd:
GFX_Sprite_TinyEnguardeTokens:
	db "GFX_Sprite_TinyEnguardeTokens.bin"
GFX_Sprite_TinyEnguardeTokensEnd:
GFX_Layer2_UnderwaterLevels:
	db "GFX_Layer2_UnderwaterLevels.bin"
GFX_Layer2_UnderwaterLevelsEnd:
GFX_Sprite_Snowflakes:
	db "GFX_Sprite_Snowflakes.bin"
GFX_Sprite_SnowflakesEnd:
GFX_Layer1_UnknownFont4:
	db "GFX_Layer1_UnknownFont4.bin"
GFX_Layer1_UnknownFont4End:
GFX_Layer1_KremkrocIndustriesIncMap2:
	db "GFX_Layer1_KremkrocIndustriesIncMap2.bin"
GFX_Layer1_KremkrocIndustriesIncMap2End:

;--------------------------------------------------------------------

GFX_CrankyKong_Fall1:
	db "GFX_CrankyKong_Fall1.bin"
GFX_CrankyKong_Fall1End:
GFX_CrankyKong_Fall2:
	db "GFX_CrankyKong_Fall2.bin"
GFX_CrankyKong_Fall2End:
GFX_CrankyKong_Fall3:
	db "GFX_CrankyKong_Fall3.bin"
GFX_CrankyKong_Fall3End:
GFX_CrankyKong_Fall4:
	db "GFX_CrankyKong_Fall4.bin"
GFX_CrankyKong_Fall4End:
GFX_CrankyKong_Fall5:
	db "GFX_CrankyKong_Fall5.bin"
GFX_CrankyKong_Fall5End:
GFX_CrankyKong_Fall6:
	db "GFX_CrankyKong_Fall6.bin"
GFX_CrankyKong_Fall6End:
GFX_CrankyKong_Fall7:
	db "GFX_CrankyKong_Fall7.bin"
GFX_CrankyKong_Fall7End:
GFX_Diddy_AngledInMinecart1:
	db "GFX_Diddy_AngledInMinecart1.bin"
GFX_Diddy_AngledInMinecart1End:
GFX_Diddy_AngledInMinecart2:
	db "GFX_Diddy_AngledInMinecart2.bin"
GFX_Diddy_AngledInMinecart2End:
GFX_Diddy_AngledInMinecart3:
	db "GFX_Diddy_AngledInMinecart3.bin"
GFX_Diddy_AngledInMinecart3End:
GFX_Diddy_AngledInMinecart4:
	db "GFX_Diddy_AngledInMinecart4.bin"
GFX_Diddy_AngledInMinecart4End:
GFX_Diddy_AngledInMinecart5:
	db "GFX_Diddy_AngledInMinecart5.bin"
GFX_Diddy_AngledInMinecart5End:
GFX_Diddy_AngledInMinecart6:
	db "GFX_Diddy_AngledInMinecart6.bin"
GFX_Diddy_AngledInMinecart6End:
GFX_Diddy_AngledInMinecart7:
	db "GFX_Diddy_AngledInMinecart7.bin"
GFX_Diddy_AngledInMinecart7End:
GFX_Diddy_AngledInMinecart8:
	db "GFX_Diddy_AngledInMinecart8.bin"
GFX_Diddy_AngledInMinecart8End:
GFX_Diddy_AngledInMinecart9:
	db "GFX_Diddy_AngledInMinecart9.bin"
GFX_Diddy_AngledInMinecart9End:
GFX_Diddy_AngledInMinecart10:
	db "GFX_Diddy_AngledInMinecart10.bin"
GFX_Diddy_AngledInMinecart10End:
GFX_Diddy_AngledInMinecart11:
	db "GFX_Diddy_AngledInMinecart11.bin"
GFX_Diddy_AngledInMinecart11End:
GFX_Diddy_AngledInMinecart12:
	db "GFX_Diddy_AngledInMinecart12.bin"
GFX_Diddy_AngledInMinecart12End:
GFX_Diddy_AngledInMinecart13:
	db "GFX_Diddy_AngledInMinecart13.bin"
GFX_Diddy_AngledInMinecart13End:
GFX_Diddy_AngledInMinecart14:
	db "GFX_Diddy_AngledInMinecart14.bin"
GFX_Diddy_AngledInMinecart14End:
GFX_Diddy_AngledInMinecart15:
	db "GFX_Diddy_AngledInMinecart15.bin"
GFX_Diddy_AngledInMinecart15End:
GFX_Diddy_AngledInMinecart16:
	db "GFX_Diddy_AngledInMinecart16.bin"
GFX_Diddy_AngledInMinecart16End:
GFX_Diddy_AngledInMinecart17:
	db "GFX_Diddy_AngledInMinecart17.bin"
GFX_Diddy_AngledInMinecart17End:
GFX_HalfTire_Bounce1:
	db "GFX_HalfTire_Bounce1.bin"
GFX_HalfTire_Bounce1End:
GFX_HalfTire_Bounce2:
	db "GFX_HalfTire_Bounce2.bin"
GFX_HalfTire_Bounce2End:
GFX_HalfTire_Bounce3:
	db "GFX_HalfTire_Bounce3.bin"
GFX_HalfTire_Bounce3End:
GFX_HalfTire_Bounce4:
	db "GFX_HalfTire_Bounce4.bin"
GFX_HalfTire_Bounce4End:
GFX_HalfTire_Bounce5:
	db "GFX_HalfTire_Bounce5.bin"
GFX_HalfTire_Bounce5End:
GFX_HalfTire_Bounce6:
	db "GFX_HalfTire_Bounce6.bin"
GFX_HalfTire_Bounce6End:
GFX_HalfTire_Idle:
	db "GFX_HalfTire_Idle.bin"
GFX_HalfTire_IdleEnd:
GFX_Sign_Arrow:
	db "GFX_Sign_Arrow.bin"
GFX_Sign_ArrowEnd:
GFX_Sign_Exit:
	db "GFX_Sign_Exit.bin"
GFX_Sign_ExitEnd:
GFX_KRool_WaitToCatchCrown1:
	db "GFX_KRool_WaitToCatchCrown1.bin"
GFX_KRool_WaitToCatchCrown1End:
GFX_KRool_WaitToCatchCrown2:
	db "GFX_KRool_WaitToCatchCrown2.bin"
GFX_KRool_WaitToCatchCrown2End:
GFX_KRool_WaitToCatchCrown3:
	db "GFX_KRool_WaitToCatchCrown3.bin"
GFX_KRool_WaitToCatchCrown3End:
GFX_KRool_WaitToCatchCrown4:
	db "GFX_KRool_WaitToCatchCrown4.bin"
GFX_KRool_WaitToCatchCrown4End:
GFX_KRool_Hurt1:
	db "GFX_KRool_Hurt1.bin"
GFX_KRool_Hurt1End:
GFX_KRool_Hurt2:
	db "GFX_KRool_Hurt2.bin"
GFX_KRool_Hurt2End:
GFX_KRool_Hurt3:
	db "GFX_KRool_Hurt3.bin"
GFX_KRool_Hurt3End:
GFX_KRool_Hurt4:
	db "GFX_KRool_Hurt4.bin"
GFX_KRool_Hurt4End:
GFX_KRool_FallOver1:
	db "GFX_KRool_FallOver1.bin"
GFX_KRool_FallOver1End:
GFX_KRool_FallOver2:
	db "GFX_KRool_FallOver2.bin"
GFX_KRool_FallOver2End:
GFX_KRool_FallOver3:
	db "GFX_KRool_FallOver3.bin"
GFX_KRool_FallOver3End:
GFX_KRool_FallOver4:
	db "GFX_KRool_FallOver4.bin"
GFX_KRool_FallOver4End:
GFX_KRool_FallOver5:
	db "GFX_KRool_FallOver5.bin"
GFX_KRool_FallOver5End:
GFX_KRool_FallOver6:
	db "GFX_KRool_FallOver6.bin"
GFX_KRool_FallOver6End:
GFX_KRool_FallOver7:
	db "GFX_KRool_FallOver7.bin"
GFX_KRool_FallOver7End:
GFX_KRool_FallOver8:
	db "GFX_KRool_FallOver8.bin"
GFX_KRool_FallOver8End:
GFX_KRool_FallOver9:
	db "GFX_KRool_FallOver9.bin"
GFX_KRool_FallOver9End:
GFX_KRool_FallOver10:
	db "GFX_KRool_FallOver10.bin"
GFX_KRool_FallOver10End:
GFX_KRool_FallOver11:
	db "GFX_KRool_FallOver11.bin"
GFX_KRool_FallOver11End:
GFX_KRool_FallOver12:
	db "GFX_KRool_FallOver12.bin"
GFX_KRool_FallOver12End:
GFX_QueenB_Fly1:
	db "GFX_QueenB_Fly1.bin"
GFX_QueenB_Fly1End:
GFX_QueenB_Fly2:
	db "GFX_QueenB_Fly2.bin"
GFX_QueenB_Fly2End:
GFX_QueenB_Fly3:
	db "GFX_QueenB_Fly3.bin"
GFX_QueenB_Fly3End:
GFX_QueenB_Fly4:
	db "GFX_QueenB_Fly4.bin"
GFX_QueenB_Fly4End:
GFX_QueenB_Fly5:
	db "GFX_QueenB_Fly5.bin"
GFX_QueenB_Fly5End:
GFX_QueenB_Fly6:
	db "GFX_QueenB_Fly6.bin"
GFX_QueenB_Fly6End:
GFX_QueenB_Fly7:
	db "GFX_QueenB_Fly7.bin"
GFX_QueenB_Fly7End:
GFX_QueenB_Fly8:
	db "GFX_QueenB_Fly8.bin"
GFX_QueenB_Fly8End:
GFX_QueenB_Fly9:
	db "GFX_QueenB_Fly9.bin"
GFX_QueenB_Fly9End:
GFX_AnimalBuddyBox_Rambi:
	db "GFX_AnimalBuddyBox_Rambi.bin"
GFX_AnimalBuddyBox_RambiEnd:
GFX_AnimalBuddyBox_Open1:
	db "GFX_AnimalBuddyBox_Open1.bin"
GFX_AnimalBuddyBox_Open1End:
GFX_AnimalBuddyBox_Open2:
	db "GFX_AnimalBuddyBox_Open2.bin"
GFX_AnimalBuddyBox_Open2End:
GFX_AnimalBuddyBox_Expresso:
	db "GFX_AnimalBuddyBox_Expresso.bin"
GFX_AnimalBuddyBox_ExpressoEnd:
GFX_AnimalBuddyBox_Winky:
	db "GFX_AnimalBuddyBox_Winky.bin"
GFX_AnimalBuddyBox_WinkyEnd:
GFX_AnimalBuddyBox_Squawks:
	db "GFX_AnimalBuddyBox_Squawks.bin"
GFX_AnimalBuddyBox_SquawksEnd:
GFX_Zinger_Dead1:
	db "GFX_Zinger_Dead1.bin"
GFX_Zinger_Dead1End:
GFX_Zinger_Dead2:
	db "GFX_Zinger_Dead2.bin"
GFX_Zinger_Dead2End:
GFX_Zinger_Dead3:
	db "GFX_Zinger_Dead3.bin"
GFX_Zinger_Dead3End:
GFX_Zinger_Dead4:
	db "GFX_Zinger_Dead4.bin"
GFX_Zinger_Dead4End:
GFX_Zinger_Dead5:
	db "GFX_Zinger_Dead5.bin"
GFX_Zinger_Dead5End:
GFX_DonkeyKong_GroundSlap1:
	db "GFX_DonkeyKong_GroundSlap1.bin"
GFX_DonkeyKong_GroundSlap1End:
GFX_DonkeyKong_GroundSlap2:
	db "GFX_DonkeyKong_GroundSlap2.bin"
GFX_DonkeyKong_GroundSlap2End:
GFX_DonkeyKong_GroundSlap3:
	db "GFX_DonkeyKong_GroundSlap3.bin"
GFX_DonkeyKong_GroundSlap3End:
GFX_DonkeyKong_GroundSlap4:
	db "GFX_DonkeyKong_GroundSlap4.bin"
GFX_DonkeyKong_GroundSlap4End:
GFX_DonkeyKong_GroundSlap5:
	db "GFX_DonkeyKong_GroundSlap5.bin"
GFX_DonkeyKong_GroundSlap5End:
GFX_DonkeyKong_GroundSlap6:
	db "GFX_DonkeyKong_GroundSlap6.bin"
GFX_DonkeyKong_GroundSlap6End:
GFX_DonkeyKong_GroundSlap7:
	db "GFX_DonkeyKong_GroundSlap7.bin"
GFX_DonkeyKong_GroundSlap7End:
GFX_DonkeyKong_GroundSlap8:
	db "GFX_DonkeyKong_GroundSlap8.bin"
GFX_DonkeyKong_GroundSlap8End:
GFX_DonkeyKong_GroundSlap9:
	db "GFX_DonkeyKong_GroundSlap9.bin"
GFX_DonkeyKong_GroundSlap9End:
GFX_DonkeyKong_GroundSlap10:
	db "GFX_DonkeyKong_GroundSlap10.bin"
GFX_DonkeyKong_GroundSlap10End:
GFX_DonkeyKong_GroundSlap11:
	db "GFX_DonkeyKong_GroundSlap11.bin"
GFX_DonkeyKong_GroundSlap11End:
GFX_DonkeyKong_GroundSlap12:
	db "GFX_DonkeyKong_GroundSlap12.bin"
GFX_DonkeyKong_GroundSlap12End:
GFX_DonkeyKong_GroundSlap13:
	db "GFX_DonkeyKong_GroundSlap13.bin"
GFX_DonkeyKong_GroundSlap13End:
GFX_DonkeyKong_GroundSlap14:
	db "GFX_DonkeyKong_GroundSlap14.bin"
GFX_DonkeyKong_GroundSlap14End:
GFX_DonkeyKong_GroundSlap15:
	db "GFX_DonkeyKong_GroundSlap15.bin"
GFX_DonkeyKong_GroundSlap15End:
GFX_DonkeyKong_GroundSlap16:
	db "GFX_DonkeyKong_GroundSlap16.bin"
GFX_DonkeyKong_GroundSlap16End:
GFX_DonkeyKong_GroundSlap17:
	db "GFX_DonkeyKong_GroundSlap17.bin"
GFX_DonkeyKong_GroundSlap17End:
GFX_DonkeyKong_GroundSlap18:
	db "GFX_DonkeyKong_GroundSlap18.bin"
GFX_DonkeyKong_GroundSlap18End:
GFX_DonkeyKong_GroundSlap19:
	db "GFX_DonkeyKong_GroundSlap19.bin"
GFX_DonkeyKong_GroundSlap19End:
GFX_DonkeyKong_GroundSlap20:
	db "GFX_DonkeyKong_GroundSlap20.bin"
GFX_DonkeyKong_GroundSlap20End:
GFX_DonkeyKong_GroundSlap21:
	db "GFX_DonkeyKong_GroundSlap21.bin"
GFX_DonkeyKong_GroundSlap21End:
GFX_DonkeyKong_GroundSlap22:
	db "GFX_DonkeyKong_GroundSlap22.bin"
GFX_DonkeyKong_GroundSlap22End:
GFX_DonkeyKong_GroundSlap23:
	db "GFX_DonkeyKong_GroundSlap23.bin"
GFX_DonkeyKong_GroundSlap23End:
GFX_DonkeyKong_GroundSlap24:
	db "GFX_DonkeyKong_GroundSlap24.bin"
GFX_DonkeyKong_GroundSlap24End:
GFX_DonkeyKong_GroundSlap25:
	db "GFX_DonkeyKong_GroundSlap25.bin"
GFX_DonkeyKong_GroundSlap25End:
GFX_DonkeyKong_GroundSlap26:
	db "GFX_DonkeyKong_GroundSlap26.bin"
GFX_DonkeyKong_GroundSlap26End:
GFX_DonkeyKong_GroundSlap27:
	db "GFX_DonkeyKong_GroundSlap27.bin"
GFX_DonkeyKong_GroundSlap27End:
GFX_DonkeyKong_GroundSlap28:
	db "GFX_DonkeyKong_GroundSlap28.bin"
GFX_DonkeyKong_GroundSlap28End:
GFX_DonkeyKong_GroundSlap29:
	db "GFX_DonkeyKong_GroundSlap29.bin"
GFX_DonkeyKong_GroundSlap29End:
GFX_DonkeyKong_GroundSlap30:
	db "GFX_DonkeyKong_GroundSlap30.bin"
GFX_DonkeyKong_GroundSlap30End:
GFX_DonkeyKong_Dancing1:
	db "GFX_DonkeyKong_Dancing1.bin"
GFX_DonkeyKong_Dancing1End:
GFX_DonkeyKong_Dancing2:
	db "GFX_DonkeyKong_Dancing2.bin"
GFX_DonkeyKong_Dancing2End:
GFX_DonkeyKong_Dancing3:
	db "GFX_DonkeyKong_Dancing3.bin"
GFX_DonkeyKong_Dancing3End:
GFX_DonkeyKong_Dancing4:
	db "GFX_DonkeyKong_Dancing4.bin"
GFX_DonkeyKong_Dancing4End:
GFX_DonkeyKong_Dancing5:
	db "GFX_DonkeyKong_Dancing5.bin"
GFX_DonkeyKong_Dancing5End:
GFX_DonkeyKong_Dancing6:
	db "GFX_DonkeyKong_Dancing6.bin"
GFX_DonkeyKong_Dancing6End:
GFX_DonkeyKong_Dancing7:
	db "GFX_DonkeyKong_Dancing7.bin"
GFX_DonkeyKong_Dancing7End:
GFX_DonkeyKong_Dancing8:
	db "GFX_DonkeyKong_Dancing8.bin"
GFX_DonkeyKong_Dancing8End:
GFX_DonkeyKong_Dancing9:
	db "GFX_DonkeyKong_Dancing9.bin"
GFX_DonkeyKong_Dancing9End:
GFX_DonkeyKong_Dancing10:
	db "GFX_DonkeyKong_Dancing10.bin"
GFX_DonkeyKong_Dancing10End:
GFX_DonkeyKong_Dancing11:
	db "GFX_DonkeyKong_Dancing11.bin"
GFX_DonkeyKong_Dancing11End:
GFX_DonkeyKong_Dancing12:
	db "GFX_DonkeyKong_Dancing12.bin"
GFX_DonkeyKong_Dancing12End:
GFX_DonkeyKong_Dancing13:
	db "GFX_DonkeyKong_Dancing13.bin"
GFX_DonkeyKong_Dancing13End:
GFX_DonkeyKong_Dancing14:
	db "GFX_DonkeyKong_Dancing14.bin"
GFX_DonkeyKong_Dancing14End:
GFX_DonkeyKong_Dancing15:
	db "GFX_DonkeyKong_Dancing15.bin"
GFX_DonkeyKong_Dancing15End:
GFX_DonkeyKong_Dancing16:
	db "GFX_DonkeyKong_Dancing16.bin"
GFX_DonkeyKong_Dancing16End:
GFX_DonkeyKong_Dancing17:
	db "GFX_DonkeyKong_Dancing17.bin"
GFX_DonkeyKong_Dancing17End:
GFX_DonkeyKong_Dancing18:
	db "GFX_DonkeyKong_Dancing18.bin"
GFX_DonkeyKong_Dancing18End:
GFX_DonkeyKong_Dancing19:
	db "GFX_DonkeyKong_Dancing19.bin"
GFX_DonkeyKong_Dancing19End:
GFX_DonkeyKong_Dancing20:
	db "GFX_DonkeyKong_Dancing20.bin"
GFX_DonkeyKong_Dancing20End:
GFX_DonkeyKong_Dancing21:
	db "GFX_DonkeyKong_Dancing21.bin"
GFX_DonkeyKong_Dancing21End:
GFX_DonkeyKong_Dancing22:
	db "GFX_DonkeyKong_Dancing22.bin"
GFX_DonkeyKong_Dancing22End:
GFX_DonkeyKong_Dancing23:
	db "GFX_DonkeyKong_Dancing23.bin"
GFX_DonkeyKong_Dancing23End:
GFX_DonkeyKong_Dancing24:
	db "GFX_DonkeyKong_Dancing24.bin"
GFX_DonkeyKong_Dancing24End:
GFX_DonkeyKong_Dancing25:
	db "GFX_DonkeyKong_Dancing25.bin"
GFX_DonkeyKong_Dancing25End:
GFX_DonkeyKong_Dancing26:
	db "GFX_DonkeyKong_Dancing26.bin"
GFX_DonkeyKong_Dancing26End:
GFX_DonkeyKong_Hurt13:
	db "GFX_DonkeyKong_Hurt13.bin"
GFX_DonkeyKong_Hurt13End:
GFX_DonkeyKong_Hurt12:
	db "GFX_DonkeyKong_Hurt12.bin"
GFX_DonkeyKong_Hurt12End:
GFX_DonkeyKong_Hurt11:
	db "GFX_DonkeyKong_Hurt11.bin"
GFX_DonkeyKong_Hurt11End:
GFX_DonkeyKong_Hurt10:
	db "GFX_DonkeyKong_Hurt10.bin"
GFX_DonkeyKong_Hurt10End:
GFX_DonkeyKong_Hurt9:
	db "GFX_DonkeyKong_Hurt9.bin"
GFX_DonkeyKong_Hurt9End:
GFX_DonkeyKong_Hurt8:
	db "GFX_DonkeyKong_Hurt8.bin"
GFX_DonkeyKong_Hurt8End:
GFX_DonkeyKong_Hurt7:
	db "GFX_DonkeyKong_Hurt7.bin"
GFX_DonkeyKong_Hurt7End:
GFX_DonkeyKong_Hurt6:
	db "GFX_DonkeyKong_Hurt6.bin"
GFX_DonkeyKong_Hurt6End:
GFX_DonkeyKong_Hurt5:
	db "GFX_DonkeyKong_Hurt5.bin"
GFX_DonkeyKong_Hurt5End:
GFX_DonkeyKong_Hurt4:
	db "GFX_DonkeyKong_Hurt4.bin"
GFX_DonkeyKong_Hurt4End:
GFX_DonkeyKong_Hurt3:
	db "GFX_DonkeyKong_Hurt3.bin"
GFX_DonkeyKong_Hurt3End:
GFX_DonkeyKong_Hurt2:
	db "GFX_DonkeyKong_Hurt2.bin"
GFX_DonkeyKong_Hurt2End:
GFX_DonkeyKong_Hurt1:
	db "GFX_DonkeyKong_Hurt1.bin"
GFX_DonkeyKong_Hurt1End:
GFX_FunkysSurfboard_Idle1:
	db "GFX_FunkysSurfboard_Idle1.bin"
GFX_FunkysSurfboard_Idle1End:
GFX_FunkysSurfboard_Idle2:
	db "GFX_FunkysSurfboard_Idle2.bin"
GFX_FunkysSurfboard_Idle2End:
GFX_FunkysSurfboard_Idle3:
	db "GFX_FunkysSurfboard_Idle3.bin"
GFX_FunkysSurfboard_Idle3End:
GFX_FunkysSurfboard_Idle4:
	db "GFX_FunkysSurfboard_Idle4.bin"
GFX_FunkysSurfboard_Idle4End:
GFX_Sign_BananaHoard:
	db "GFX_Sign_BananaHoard.bin"
GFX_Sign_BananaHoardEnd:
GFX_Cannonball_Pose:
	db "GFX_Cannonball_Pose.bin"
GFX_Cannonball_PoseEnd:
GFX_Diddy_Walk1:
	db "GFX_Diddy_Walk1.bin"
GFX_Diddy_Walk1End:
GFX_Diddy_Walk2:
	db "GFX_Diddy_Walk2.bin"
GFX_Diddy_Walk2End:
GFX_Diddy_Walk3:
	db "GFX_Diddy_Walk3.bin"
GFX_Diddy_Walk3End:
GFX_Diddy_Walk4:
	db "GFX_Diddy_Walk4.bin"
GFX_Diddy_Walk4End:
GFX_Diddy_Walk5:
	db "GFX_Diddy_Walk5.bin"
GFX_Diddy_Walk5End:
GFX_Diddy_Walk6:
	db "GFX_Diddy_Walk6.bin"
GFX_Diddy_Walk6End:
GFX_Diddy_Walk7:
	db "GFX_Diddy_Walk7.bin"
GFX_Diddy_Walk7End:
GFX_Diddy_Walk8:
	db "GFX_Diddy_Walk8.bin"
GFX_Diddy_Walk8End:
GFX_Diddy_Walk9:
	db "GFX_Diddy_Walk9.bin"
GFX_Diddy_Walk9End:
GFX_Diddy_Walk10:
	db "GFX_Diddy_Walk10.bin"
GFX_Diddy_Walk10End:
GFX_Diddy_Walk11:
	db "GFX_Diddy_Walk11.bin"
GFX_Diddy_Walk11End:
GFX_Diddy_Walk12:
	db "GFX_Diddy_Walk12.bin"
GFX_Diddy_Walk12End:
GFX_Diddy_Walk13:
	db "GFX_Diddy_Walk13.bin"
GFX_Diddy_Walk13End:
GFX_Diddy_Walk14:
	db "GFX_Diddy_Walk14.bin"
GFX_Diddy_Walk14End:
GFX_Diddy_Walk15:
	db "GFX_Diddy_Walk15.bin"
GFX_Diddy_Walk15End:
GFX_Diddy_Walk16:
	db "GFX_Diddy_Walk16.bin"
GFX_Diddy_Walk16End:
GFX_Klump_Walk1:
	db "GFX_Klump_Walk1.bin"
GFX_Klump_Walk1End:
GFX_Klump_Walk2:
	db "GFX_Klump_Walk2.bin"
GFX_Klump_Walk2End:
GFX_Klump_Walk3:
	db "GFX_Klump_Walk3.bin"
GFX_Klump_Walk3End:
GFX_Klump_Walk4:
	db "GFX_Klump_Walk4.bin"
GFX_Klump_Walk4End:
GFX_Klump_Walk5:
	db "GFX_Klump_Walk5.bin"
GFX_Klump_Walk5End:
GFX_Klump_Walk6:
	db "GFX_Klump_Walk6.bin"
GFX_Klump_Walk6End:
GFX_Klump_Walk7:
	db "GFX_Klump_Walk7.bin"
GFX_Klump_Walk7End:
GFX_Klump_Walk8:
	db "GFX_Klump_Walk8.bin"
GFX_Klump_Walk8End:
GFX_DumbDrum_Idle:
	db "GFX_DumbDrum_Idle.bin"
GFX_DumbDrum_IdleEnd:
GFX_DumbDrum_Dead:
	db "GFX_DumbDrum_Dead.bin"
GFX_DumbDrum_DeadEnd:
GFX_DumbDrum_Dump:
	db "GFX_DumbDrum_Dump.bin"
GFX_DumbDrum_DumpEnd:
GFX_DonkeyKong_ThrowPose1:
	db "GFX_DonkeyKong_ThrowPose1.bin"
GFX_DonkeyKong_ThrowPose1End:
GFX_DonkeyKong_ThrowPose2:
	db "GFX_DonkeyKong_ThrowPose2.bin"
GFX_DonkeyKong_ThrowPose2End:
GFX_DonkeyKong_ThrowPose3:
	db "GFX_DonkeyKong_ThrowPose3.bin"
GFX_DonkeyKong_ThrowPose3End:
GFX_DonkeyKong_ThrowPose4:
	db "GFX_DonkeyKong_ThrowPose4.bin"
GFX_DonkeyKong_ThrowPose4End:
GFX_DonkeyKong_ThrowPose5:
	db "GFX_DonkeyKong_ThrowPose5.bin"
GFX_DonkeyKong_ThrowPose5End:
GFX_DonkeyKong_ThrowPose6:
	db "GFX_DonkeyKong_ThrowPose6.bin"
GFX_DonkeyKong_ThrowPose6End:
GFX_DonkeyKong_ThrowPose7:
	db "GFX_DonkeyKong_ThrowPose7.bin"
GFX_DonkeyKong_ThrowPose7End:
GFX_DonkeyKong_ThrowPose8:
	db "GFX_DonkeyKong_ThrowPose8.bin"
GFX_DonkeyKong_ThrowPose8End:
GFX_DonkeyKong_ThrowPose9:
	db "GFX_DonkeyKong_ThrowPose9.bin"
GFX_DonkeyKong_ThrowPose9End:
GFX_DonkeyKong_ThrowPose10:
	db "GFX_DonkeyKong_ThrowPose10.bin"
GFX_DonkeyKong_ThrowPose10End:
GFX_DonkeyKong_ThrowPose11:
	db "GFX_DonkeyKong_ThrowPose11.bin"
GFX_DonkeyKong_ThrowPose11End:
GFX_DonkeyKong_ThrowPose12:
	db "GFX_DonkeyKong_ThrowPose12.bin"
GFX_DonkeyKong_ThrowPose12End:
GFX_DonkeyKong_ThrowPose13:
	db "GFX_DonkeyKong_ThrowPose13.bin"
GFX_DonkeyKong_ThrowPose13End:
GFX_DonkeyKong_ThrowPose14:
	db "GFX_DonkeyKong_ThrowPose14.bin"
GFX_DonkeyKong_ThrowPose14End:
GFX_DonkeyKong_ThrowPose15:
	db "GFX_DonkeyKong_ThrowPose15.bin"
GFX_DonkeyKong_ThrowPose15End:
GFX_DonkeyKong_ThrowPose16:
	db "GFX_DonkeyKong_ThrowPose16.bin"
GFX_DonkeyKong_ThrowPose16End:
GFX_DonkeyKong_ThrowPose17:
	db "GFX_DonkeyKong_ThrowPose17.bin"
GFX_DonkeyKong_ThrowPose17End:
GFX_DonkeyKong_ThrowPose18:
	db "GFX_DonkeyKong_ThrowPose18.bin"
GFX_DonkeyKong_ThrowPose18End:
GFX_DonkeyKong_ThrowPose19:
	db "GFX_DonkeyKong_ThrowPose19.bin"
GFX_DonkeyKong_ThrowPose19End:
GFX_KRool_Run1:
	db "GFX_KRool_Run1.bin"
GFX_KRool_Run1End:
GFX_KRool_Run2:
	db "GFX_KRool_Run2.bin"
GFX_KRool_Run2End:
GFX_KRool_Run3:
	db "GFX_KRool_Run3.bin"
GFX_KRool_Run3End:
GFX_KRool_Run4:
	db "GFX_KRool_Run4.bin"
GFX_KRool_Run4End:
GFX_KRool_Run5:
	db "GFX_KRool_Run5.bin"
GFX_KRool_Run5End:
GFX_KRool_Run6:
	db "GFX_KRool_Run6.bin"
GFX_KRool_Run6End:
GFX_KRool_Run7:
	db "GFX_KRool_Run7.bin"
GFX_KRool_Run7End:
GFX_DonkeyKong_Unknown1_Pose:
	db "GFX_DonkeyKong_Unknown1_Pose.bin"
GFX_DonkeyKong_Unknown1_PoseEnd:
GFX_DonkeyKong_Swimming1:
	db "GFX_DonkeyKong_Swimming1.bin"
GFX_DonkeyKong_Swimming1End:
GFX_DonkeyKong_Swimming2:
	db "GFX_DonkeyKong_Swimming2.bin"
GFX_DonkeyKong_Swimming2End:
GFX_DonkeyKong_Swimming3:
	db "GFX_DonkeyKong_Swimming3.bin"
GFX_DonkeyKong_Swimming3End:
GFX_DonkeyKong_Swimming4:
	db "GFX_DonkeyKong_Swimming4.bin"
GFX_DonkeyKong_Swimming4End:
GFX_DonkeyKong_Swimming5:
	db "GFX_DonkeyKong_Swimming5.bin"
GFX_DonkeyKong_Swimming5End:
GFX_DonkeyKong_Swimming6:
	db "GFX_DonkeyKong_Swimming6.bin"
GFX_DonkeyKong_Swimming6End:
GFX_DonkeyKong_Swimming7:
	db "GFX_DonkeyKong_Swimming7.bin"
GFX_DonkeyKong_Swimming7End:
GFX_DonkeyKong_Swimming8:
	db "GFX_DonkeyKong_Swimming8.bin"
GFX_DonkeyKong_Swimming8End:
GFX_DonkeyKong_Swimming9:
	db "GFX_DonkeyKong_Swimming9.bin"
GFX_DonkeyKong_Swimming9End:
GFX_DonkeyKong_Swimming10:
	db "GFX_DonkeyKong_Swimming10.bin"
GFX_DonkeyKong_Swimming10End:
GFX_DonkeyKong_Swimming11:
	db "GFX_DonkeyKong_Swimming11.bin"
GFX_DonkeyKong_Swimming11End:
GFX_DonkeyKong_Swimming12:
	db "GFX_DonkeyKong_Swimming12.bin"
GFX_DonkeyKong_Swimming12End:
GFX_DonkeyKong_Swimming13:
	db "GFX_DonkeyKong_Swimming13.bin"
GFX_DonkeyKong_Swimming13End:
GFX_DonkeyKong_Swimming14:
	db "GFX_DonkeyKong_Swimming14.bin"
GFX_DonkeyKong_Swimming14End:
GFX_DonkeyKong_Swimming15:
	db "GFX_DonkeyKong_Swimming15.bin"
GFX_DonkeyKong_Swimming15End:
GFX_Kritter_Walk1:
	db "GFX_Kritter_Walk1.bin"
GFX_Kritter_Walk1End:
GFX_Kritter_Walk2:
	db "GFX_Kritter_Walk2.bin"
GFX_Kritter_Walk2End:
GFX_Kritter_Walk3:
	db "GFX_Kritter_Walk3.bin"
GFX_Kritter_Walk3End:
GFX_Kritter_Walk4:
	db "GFX_Kritter_Walk4.bin"
GFX_Kritter_Walk4End:
GFX_Kritter_Walk5:
	db "GFX_Kritter_Walk5.bin"
GFX_Kritter_Walk5End:
GFX_Kritter_Walk6:
	db "GFX_Kritter_Walk6.bin"
GFX_Kritter_Walk6End:
GFX_Kritter_Walk7:
	db "GFX_Kritter_Walk7.bin"
GFX_Kritter_Walk7End:
GFX_Kritter_Walk8:
	db "GFX_Kritter_Walk8.bin"
GFX_Kritter_Walk8End:
GFX_DonkeyKong_Walk1:
	db "GFX_DonkeyKong_Walk1.bin"
GFX_DonkeyKong_Walk1End:
GFX_DonkeyKong_Walk2:
	db "GFX_DonkeyKong_Walk2.bin"
GFX_DonkeyKong_Walk2End:
GFX_DonkeyKong_Walk3:
	db "GFX_DonkeyKong_Walk3.bin"
GFX_DonkeyKong_Walk3End:
GFX_DonkeyKong_Walk4:
	db "GFX_DonkeyKong_Walk4.bin"
GFX_DonkeyKong_Walk4End:
GFX_DonkeyKong_Walk5:
	db "GFX_DonkeyKong_Walk5.bin"
GFX_DonkeyKong_Walk5End:
GFX_DonkeyKong_Walk6:
	db "GFX_DonkeyKong_Walk6.bin"
GFX_DonkeyKong_Walk6End:
GFX_DonkeyKong_Walk7:
	db "GFX_DonkeyKong_Walk7.bin"
GFX_DonkeyKong_Walk7End:
GFX_DonkeyKong_Walk8:
	db "GFX_DonkeyKong_Walk8.bin"
GFX_DonkeyKong_Walk8End:
GFX_DonkeyKong_Walk9:
	db "GFX_DonkeyKong_Walk9.bin"
GFX_DonkeyKong_Walk9End:
GFX_DonkeyKong_Walk10:
	db "GFX_DonkeyKong_Walk10.bin"
GFX_DonkeyKong_Walk10End:
GFX_DonkeyKong_Walk11:
	db "GFX_DonkeyKong_Walk11.bin"
GFX_DonkeyKong_Walk11End:
GFX_DonkeyKong_Walk12:
	db "GFX_DonkeyKong_Walk12.bin"
GFX_DonkeyKong_Walk12End:
GFX_DonkeyKong_Walk13:
	db "GFX_DonkeyKong_Walk13.bin"
GFX_DonkeyKong_Walk13End:
GFX_DonkeyKong_Walk14:
	db "GFX_DonkeyKong_Walk14.bin"
GFX_DonkeyKong_Walk14End:
GFX_DonkeyKong_Walk15:
	db "GFX_DonkeyKong_Walk15.bin"
GFX_DonkeyKong_Walk15End:
GFX_DonkeyKong_Walk16:
	db "GFX_DonkeyKong_Walk16.bin"
GFX_DonkeyKong_Walk16End:
GFX_DonkeyKong_Walk17:
	db "GFX_DonkeyKong_Walk17.bin"
GFX_DonkeyKong_Walk17End:
GFX_DonkeyKong_Walk18:
	db "GFX_DonkeyKong_Walk18.bin"
GFX_DonkeyKong_Walk18End:
GFX_DonkeyKong_Walk19:
	db "GFX_DonkeyKong_Walk19.bin"
GFX_DonkeyKong_Walk19End:
GFX_DonkeyKong_Walk20:
	db "GFX_DonkeyKong_Walk20.bin"
GFX_DonkeyKong_Walk20End:
GFX_LightningBolt_Pose:
	db "GFX_LightningBolt_Pose.bin"
GFX_LightningBolt_PoseEnd:
GFX_DonkeyKong_Unknown2Pose1:
	db "GFX_DonkeyKong_Unknown2Pose1.bin"
GFX_DonkeyKong_Unknown2Pose1End:
GFX_DonkeyKong_Unknown2Pose2:
	db "GFX_DonkeyKong_Unknown2Pose2.bin"
GFX_DonkeyKong_Unknown2Pose2End:
GFX_DonkeyKong_Bounce1:
	db "GFX_DonkeyKong_Bounce1.bin"
GFX_DonkeyKong_Bounce1End:
GFX_DonkeyKong_Bounce2:
	db "GFX_DonkeyKong_Bounce2.bin"
GFX_DonkeyKong_Bounce2End:
GFX_DonkeyKong_Bounce3:
	db "GFX_DonkeyKong_Bounce3.bin"
GFX_DonkeyKong_Bounce3End:
GFX_DonkeyKong_Bounce4:
	db "GFX_DonkeyKong_Bounce4.bin"
GFX_DonkeyKong_Bounce4End:
GFX_DonkeyKong_Bounce5:
	db "GFX_DonkeyKong_Bounce5.bin"
GFX_DonkeyKong_Bounce5End:
GFX_DonkeyKong_Bounce6:
	db "GFX_DonkeyKong_Bounce6.bin"
GFX_DonkeyKong_Bounce6End:
GFX_DonkeyKong_Bounce7:
	db "GFX_DonkeyKong_Bounce7.bin"
GFX_DonkeyKong_Bounce7End:
GFX_DonkeyKong_Bounce8:
	db "GFX_DonkeyKong_Bounce8.bin"
GFX_DonkeyKong_Bounce8End:
GFX_DonkeyKong_Bounce9:
	db "GFX_DonkeyKong_Bounce9.bin"
GFX_DonkeyKong_Bounce9End:
GFX_DonkeyKong_Bounce10:
	db "GFX_DonkeyKong_Bounce10.bin"
GFX_DonkeyKong_Bounce10End:
GFX_DonkeyKong_Bounce11:
	db "GFX_DonkeyKong_Bounce11.bin"
GFX_DonkeyKong_Bounce11End:
GFX_DonkeyKong_Bounce12:
	db "GFX_DonkeyKong_Bounce12.bin"
GFX_DonkeyKong_Bounce12End:
GFX_DonkeyKong_Bounce13:
	db "GFX_DonkeyKong_Bounce13.bin"
GFX_DonkeyKong_Bounce13End:
GFX_DonkeyKong_Bounce14:
	db "GFX_DonkeyKong_Bounce14.bin"
GFX_DonkeyKong_Bounce14End:
GFX_DonkeyKong_Bounce15:
	db "GFX_DonkeyKong_Bounce15.bin"
GFX_DonkeyKong_Bounce15End:
GFX_DonkeyKong_Bounce16:
	db "GFX_DonkeyKong_Bounce16.bin"
GFX_DonkeyKong_Bounce16End:
GFX_Diddy_Run1:
	db "GFX_Diddy_Run1.bin"
GFX_Diddy_Run1End:
GFX_Diddy_Run2:
	db "GFX_Diddy_Run2.bin"
GFX_Diddy_Run2End:
GFX_Diddy_Run3:
	db "GFX_Diddy_Run3.bin"
GFX_Diddy_Run3End:
GFX_Diddy_Run4:
	db "GFX_Diddy_Run4.bin"
GFX_Diddy_Run4End:
GFX_Diddy_Run5:
	db "GFX_Diddy_Run5.bin"
GFX_Diddy_Run5End:
GFX_Diddy_Run6:
	db "GFX_Diddy_Run6.bin"
GFX_Diddy_Run6End:
GFX_Diddy_Run7:
	db "GFX_Diddy_Run7.bin"
GFX_Diddy_Run7End:
GFX_Diddy_Run8:
	db "GFX_Diddy_Run8.bin"
GFX_Diddy_Run8End:
GFX_Diddy_Run9:
	db "GFX_Diddy_Run9.bin"
GFX_Diddy_Run9End:
GFX_Diddy_Run10:
	db "GFX_Diddy_Run10.bin"
GFX_Diddy_Run10End:
GFX_Diddy_Run11:
	db "GFX_Diddy_Run11.bin"
GFX_Diddy_Run11End:
GFX_Diddy_Run12:
	db "GFX_Diddy_Run12.bin"
GFX_Diddy_Run12End:
GFX_Diddy_Run13:
	db "GFX_Diddy_Run13.bin"
GFX_Diddy_Run13End:
GFX_Krash_InMinecart1:
	db "GFX_Krash_InMinecart1.bin"
GFX_Krash_InMinecart1End:
GFX_Krash_InMinecart2:
	db "GFX_Krash_InMinecart2.bin"
GFX_Krash_InMinecart2End:
GFX_Krash_InMinecart3:
	db "GFX_Krash_InMinecart3.bin"
GFX_Krash_InMinecart3End:
GFX_Krash_InMinecart4:
	db "GFX_Krash_InMinecart4.bin"
GFX_Krash_InMinecart4End:
GFX_Krash_InMinecart5:
	db "GFX_Krash_InMinecart5.bin"
GFX_Krash_InMinecart5End:
GFX_Krash_InMinecart6:
	db "GFX_Krash_InMinecart6.bin"
GFX_Krash_InMinecart6End:
GFX_Krash_InMinecart7:
	db "GFX_Krash_InMinecart7.bin"
GFX_Krash_InMinecart7End:
GFX_Krash_InMinecart8:
	db "GFX_Krash_InMinecart8.bin"
GFX_Krash_InMinecart8End:
GFX_Krash_InMinecart9:
	db "GFX_Krash_InMinecart9.bin"
GFX_Krash_InMinecart9End:
GFX_Krash_InMinecart10:
	db "GFX_Krash_InMinecart10.bin"
GFX_Krash_InMinecart10End:
GFX_Krash_InMinecart11:
	db "GFX_Krash_InMinecart11.bin"
GFX_Krash_InMinecart11End:
GFX_Krash_InMinecart12:
	db "GFX_Krash_InMinecart12.bin"
GFX_Krash_InMinecart12End:
GFX_Krash_InMinecart13:
	db "GFX_Krash_InMinecart13.bin"
GFX_Krash_InMinecart13End:
GFX_Krash_InMinecart14:
	db "GFX_Krash_InMinecart14.bin"
GFX_Krash_InMinecart14End:
GFX_Krash_InMinecart15:
	db "GFX_Krash_InMinecart15.bin"
GFX_Krash_InMinecart15End:
GFX_Krash_InMinecart16:
	db "GFX_Krash_InMinecart16.bin"
GFX_Krash_InMinecart16End:
GFX_Krash_InMinecart17:
	db "GFX_Krash_InMinecart17.bin"
GFX_Krash_InMinecart17End:
GFX_ClownFish_Swim1:
	db "GFX_ClownFish_Swim1.bin"
GFX_ClownFish_Swim1End:
GFX_ClownFish_Swim2:
	db "GFX_ClownFish_Swim2.bin"
GFX_ClownFish_Swim2End:
GFX_ClownFish_Swim3:
	db "GFX_ClownFish_Swim3.bin"
GFX_ClownFish_Swim3End:
GFX_ClownFish_Swim4:
	db "GFX_ClownFish_Swim4.bin"
GFX_ClownFish_Swim4End:
GFX_ClownFish_Swim5:
	db "GFX_ClownFish_Swim5.bin"
GFX_ClownFish_Swim5End:
GFX_ClownFish_Swim6:
	db "GFX_ClownFish_Swim6.bin"
GFX_ClownFish_Swim6End:
GFX_ClownFish_Swim7:
	db "GFX_ClownFish_Swim7.bin"
GFX_ClownFish_Swim7End:
GFX_ClownFish_Swim8:
	db "GFX_ClownFish_Swim8.bin"
GFX_ClownFish_Swim8End:
GFX_JunglePlant_Idle:
	db "GFX_JunglePlant_Idle.bin"
GFX_JunglePlant_IdleEnd:
GFX_JunglePlant_Broken:
	db "GFX_JunglePlant_Broken.bin"
GFX_JunglePlant_BrokenEnd:
GFX_Mincer_Spin1:
	db "GFX_Mincer_Spin1.bin"
GFX_Mincer_Spin1End:
GFX_Mincer_Spin2:
	db "GFX_Mincer_Spin2.bin"
GFX_Mincer_Spin2End:
GFX_Mincer_Spin3:
	db "GFX_Mincer_Spin3.bin"
GFX_Mincer_Spin3End:
GFX_Mincer_Spin4:
	db "GFX_Mincer_Spin4.bin"
GFX_Mincer_Spin4End:
GFX_Mincer_Spin5:
	db "GFX_Mincer_Spin5.bin"
GFX_Mincer_Spin5End:
GFX_Mincer_Spin6:
	db "GFX_Mincer_Spin6.bin"
GFX_Mincer_Spin6End:
GFX_Mincer_Spin7:
	db "GFX_Mincer_Spin7.bin"
GFX_Mincer_Spin7End:
GFX_Mincer_Spin8:
	db "GFX_Mincer_Spin8.bin"
GFX_Mincer_Spin8End:
GFX_FlyingRock_Pose1:
	db "GFX_FlyingRock_Pose1.bin"
GFX_FlyingRock_Pose1End:
GFX_FlyingRock_Pose2:
	db "GFX_FlyingRock_Pose2.bin"
GFX_FlyingRock_Pose2End:
GFX_FlyingRock_Pose3:
	db "GFX_FlyingRock_Pose3.bin"
GFX_FlyingRock_Pose3End:
GFX_FlyingRock_Pose4:
	db "GFX_FlyingRock_Pose4.bin"
GFX_FlyingRock_Pose4End:
GFX_FlyingRock_Pose5:
	db "GFX_FlyingRock_Pose5.bin"
GFX_FlyingRock_Pose5End:
GFX_FlyingRock_Pose6:
	db "GFX_FlyingRock_Pose6.bin"
GFX_FlyingRock_Pose6End:
GFX_FlyingRock_Pose7:
	db "GFX_FlyingRock_Pose7.bin"
GFX_FlyingRock_Pose7End:
GFX_FlyingRock_Pose8:
	db "GFX_FlyingRock_Pose8.bin"
GFX_FlyingRock_Pose8End:
GFX_SmallFlyingRock_Pose1:
	db "GFX_SmallFlyingRock_Pose1.bin"
GFX_SmallFlyingRock_Pose1End:
GFX_SmallFlyingRock_Pose2:
	db "GFX_SmallFlyingRock_Pose2.bin"
GFX_SmallFlyingRock_Pose2End:
GFX_SmallFlyingRock_Pose3:
	db "GFX_SmallFlyingRock_Pose3.bin"
GFX_SmallFlyingRock_Pose3End:
GFX_SmallFlyingRock_Pose4:
	db "GFX_SmallFlyingRock_Pose4.bin"
GFX_SmallFlyingRock_Pose4End:
GFX_SmallFlyingRock_Pose5:
	db "GFX_SmallFlyingRock_Pose5.bin"
GFX_SmallFlyingRock_Pose5End:
GFX_SmallFlyingRock_Pose6:
	db "GFX_SmallFlyingRock_Pose6.bin"
GFX_SmallFlyingRock_Pose6End:
GFX_SmallFlyingRock_Pose7:
	db "GFX_SmallFlyingRock_Pose7.bin"
GFX_SmallFlyingRock_Pose7End:
GFX_SmallFlyingRock_Pose8:
	db "GFX_SmallFlyingRock_Pose8.bin"
GFX_SmallFlyingRock_Pose8End:
GFX_CrankyKong_WindPhonograph1:
	db "GFX_CrankyKong_WindPhonograph1.bin"
GFX_CrankyKong_WindPhonograph1End:
GFX_CrankyKong_WindPhonograph2:
	db "GFX_CrankyKong_WindPhonograph2.bin"
GFX_CrankyKong_WindPhonograph2End:
GFX_CrankyKong_WindPhonograph3:
	db "GFX_CrankyKong_WindPhonograph3.bin"
GFX_CrankyKong_WindPhonograph3End:
GFX_CrankyKong_WindPhonograph4:
	db "GFX_CrankyKong_WindPhonograph4.bin"
GFX_CrankyKong_WindPhonograph4End:
GFX_CrankyKong_WindPhonograph5:
	db "GFX_CrankyKong_WindPhonograph5.bin"
GFX_CrankyKong_WindPhonograph5End:
GFX_CrankyKong_WindPhonograph6:
	db "GFX_CrankyKong_WindPhonograph6.bin"
GFX_CrankyKong_WindPhonograph6End:
GFX_CrankyKong_WindPhonograph7:
	db "GFX_CrankyKong_WindPhonograph7.bin"
GFX_CrankyKong_WindPhonograph7End:
GFX_CrankyKong_WindPhonograph8:
	db "GFX_CrankyKong_WindPhonograph8.bin"
GFX_CrankyKong_WindPhonograph8End:
GFX_CrankyKong_WindPhonograph9:
	db "GFX_CrankyKong_WindPhonograph9.bin"
GFX_CrankyKong_WindPhonograph9End:
GFX_CrankyKong_WindPhonograph10:
	db "GFX_CrankyKong_WindPhonograph10.bin"
GFX_CrankyKong_WindPhonograph10End:
GFX_CrankyKong_WindPhonograph11:
	db "GFX_CrankyKong_WindPhonograph11.bin"
GFX_CrankyKong_WindPhonograph11End:
GFX_CrankyKong_WindPhonograph12:
	db "GFX_CrankyKong_WindPhonograph12.bin"
GFX_CrankyKong_WindPhonograph12End:
GFX_GroundCover_JungleLevel:
	db "GFX_GroundCover_JungleLevel.bin"
GFX_GroundCover_JungleLevelEnd:
GFX_BreakableWall_RightJungleWall:
	db "GFX_BreakableWall_RightJungleWall.bin"
GFX_BreakableWall_RightJungleWallEnd:
GFX_BreakableWall_LeftJungleWall:
	db "GFX_BreakableWall_LeftJungleWall.bin"
GFX_BreakableWall_LeftJungleWallEnd:
GFX_WhiteTire_Bounce1:
	db "GFX_WhiteTire_Bounce1.bin"
GFX_WhiteTire_Bounce1End:
GFX_WhiteTire_Bounce2:
	db "GFX_WhiteTire_Bounce2.bin"
GFX_WhiteTire_Bounce2End:
GFX_WhiteTire_Bounce3:
	db "GFX_WhiteTire_Bounce3.bin"
GFX_WhiteTire_Bounce3End:
GFX_WhiteTire_Bounce4:
	db "GFX_WhiteTire_Bounce4.bin"
GFX_WhiteTire_Bounce4End:
GFX_WhiteTire_Bounce5:
	db "GFX_WhiteTire_Bounce5.bin"
GFX_WhiteTire_Bounce5End:
GFX_WhiteTire_Bounce6:
	db "GFX_WhiteTire_Bounce6.bin"
GFX_WhiteTire_Bounce6End:
GFX_WhiteTire_Idle:
	db "GFX_WhiteTire_Idle.bin"
GFX_WhiteTire_IdleEnd:
GFX_Klump_Turn:
	db "GFX_Klump_Turn.bin"
GFX_Klump_TurnEnd:
GFX_Klump_Recoil:
	db "GFX_Klump_Recoil.bin"
GFX_Klump_RecoilEnd:
GFX_Klump_Dead1:
	db "GFX_Klump_Dead1.bin"
GFX_Klump_Dead1End:
GFX_Klump_Dead2:
	db "GFX_Klump_Dead2.bin"
GFX_Klump_Dead2End:
GFX_Klump_Dead3:
	db "GFX_Klump_Dead3.bin"
GFX_Klump_Dead3End:
GFX_Klump_Dead4:
	db "GFX_Klump_Dead4.bin"
GFX_Klump_Dead4End:
GFX_Klump_Dead5:
	db "GFX_Klump_Dead5.bin"
GFX_Klump_Dead5End:
GFX_Klump_Dead6:
	db "GFX_Klump_Dead6.bin"
GFX_Klump_Dead6End:
GFX_Klump_Dead7:
	db "GFX_Klump_Dead7.bin"
GFX_Klump_Dead7End:
GFX_Diddy_Roll1:
	db "GFX_Diddy_Roll1.bin"
GFX_Diddy_Roll1End:
GFX_Diddy_Roll2:
	db "GFX_Diddy_Roll2.bin"
GFX_Diddy_Roll2End:
GFX_Diddy_Roll3:
	db "GFX_Diddy_Roll3.bin"
GFX_Diddy_Roll3End:
GFX_Diddy_Roll4:
	db "GFX_Diddy_Roll4.bin"
GFX_Diddy_Roll4End:
GFX_Diddy_Roll5:
	db "GFX_Diddy_Roll5.bin"
GFX_Diddy_Roll5End:
GFX_Diddy_Roll6:
	db "GFX_Diddy_Roll6.bin"
GFX_Diddy_Roll6End:
GFX_Diddy_Roll7:
	db "GFX_Diddy_Roll7.bin"
GFX_Diddy_Roll7End:
GFX_Diddy_Roll8:
	db "GFX_Diddy_Roll8.bin"
GFX_Diddy_Roll8End:
GFX_Diddy_Roll9:
	db "GFX_Diddy_Roll9.bin"
GFX_Diddy_Roll9End:
GFX_Diddy_Roll10:
	db "GFX_Diddy_Roll10.bin"
GFX_Diddy_Roll10End:
GFX_Diddy_Roll11:
	db "GFX_Diddy_Roll11.bin"
GFX_Diddy_Roll11End:
GFX_Diddy_Roll12:
	db "GFX_Diddy_Roll12.bin"
GFX_Diddy_Roll12End:
GFX_Diddy_Roll13:
	db "GFX_Diddy_Roll13.bin"
GFX_Diddy_Roll13End:
GFX_Diddy_Roll14:
	db "GFX_Diddy_Roll14.bin"
GFX_Diddy_Roll14End:
GFX_Diddy_Roll15:
	db "GFX_Diddy_Roll15.bin"
GFX_Diddy_Roll15End:
GFX_Diddy_Roll16:
	db "GFX_Diddy_Roll16.bin"
GFX_Diddy_Roll16End:
GFX_Diddy_Roll17:
	db "GFX_Diddy_Roll17.bin"
GFX_Diddy_Roll17End:
GFX_Diddy_Roll18:
	db "GFX_Diddy_Roll18.bin"
GFX_Diddy_Roll18End:
GFX_Diddy_Roll19:
	db "GFX_Diddy_Roll19.bin"
GFX_Diddy_Roll19End:
GFX_Diddy_Roll20:
	db "GFX_Diddy_Roll20.bin"
GFX_Diddy_Roll20End:
GFX_Diddy_TooCloseToEdge1:
	db "GFX_Diddy_TooCloseToEdge1.bin"
GFX_Diddy_TooCloseToEdge1End:
GFX_Diddy_TooCloseToEdge2:
	db "GFX_Diddy_TooCloseToEdge2.bin"
GFX_Diddy_TooCloseToEdge2End:
GFX_Diddy_TooCloseToEdge3:
	db "GFX_Diddy_TooCloseToEdge3.bin"
GFX_Diddy_TooCloseToEdge3End:
GFX_Diddy_TooCloseToEdge4:
	db "GFX_Diddy_TooCloseToEdge4.bin"
GFX_Diddy_TooCloseToEdge4End:
GFX_Diddy_TooCloseToEdge5:
	db "GFX_Diddy_TooCloseToEdge5.bin"
GFX_Diddy_TooCloseToEdge5End:
GFX_Diddy_TooCloseToEdge6:
	db "GFX_Diddy_TooCloseToEdge6.bin"
GFX_Diddy_TooCloseToEdge6End:
GFX_Diddy_TooCloseToEdge7:
	db "GFX_Diddy_TooCloseToEdge7.bin"
GFX_Diddy_TooCloseToEdge7End:
GFX_Diddy_TooCloseToEdge8:
	db "GFX_Diddy_TooCloseToEdge8.bin"
GFX_Diddy_TooCloseToEdge8End:
GFX_Diddy_TooCloseToEdge9:
	db "GFX_Diddy_TooCloseToEdge9.bin"
GFX_Diddy_TooCloseToEdge9End:
GFX_Diddy_TooCloseToEdge10:
	db "GFX_Diddy_TooCloseToEdge10.bin"
GFX_Diddy_TooCloseToEdge10End:
GFX_Diddy_TooCloseToEdge11:
	db "GFX_Diddy_TooCloseToEdge11.bin"
GFX_Diddy_TooCloseToEdge11End:
GFX_Diddy_TooCloseToEdge12:
	db "GFX_Diddy_TooCloseToEdge12.bin"
GFX_Diddy_TooCloseToEdge12End:
GFX_Diddy_TooCloseToEdge13:
	db "GFX_Diddy_TooCloseToEdge13.bin"
GFX_Diddy_TooCloseToEdge13End:
GFX_Diddy_TooCloseToEdge14:
	db "GFX_Diddy_TooCloseToEdge14.bin"
GFX_Diddy_TooCloseToEdge14End:
GFX_Diddy_TooCloseToEdge15:
	db "GFX_Diddy_TooCloseToEdge15.bin"
GFX_Diddy_TooCloseToEdge15End:
GFX_Diddy_TooCloseToEdge16:
	db "GFX_Diddy_TooCloseToEdge16.bin"
GFX_Diddy_TooCloseToEdge16End:
GFX_Diddy_TooCloseToEdge17:
	db "GFX_Diddy_TooCloseToEdge17.bin"
GFX_Diddy_TooCloseToEdge17End:
GFX_Diddy_TooCloseToEdge18:
	db "GFX_Diddy_TooCloseToEdge18.bin"
GFX_Diddy_TooCloseToEdge18End:
GFX_Diddy_Failure1:
	db "GFX_Diddy_Failure1.bin"
GFX_Diddy_Failure1End:
GFX_Diddy_Failure2:
	db "GFX_Diddy_Failure2.bin"
GFX_Diddy_Failure2End:
GFX_Diddy_Failure3:
	db "GFX_Diddy_Failure3.bin"
GFX_Diddy_Failure3End:
GFX_Diddy_Failure4:
	db "GFX_Diddy_Failure4.bin"
GFX_Diddy_Failure4End:
GFX_Diddy_Failure5:
	db "GFX_Diddy_Failure5.bin"
GFX_Diddy_Failure5End:
GFX_Diddy_Failure6:
	db "GFX_Diddy_Failure6.bin"
GFX_Diddy_Failure6End:
GFX_Diddy_Failure7:
	db "GFX_Diddy_Failure7.bin"
GFX_Diddy_Failure7End:
GFX_Diddy_Failure8:
	db "GFX_Diddy_Failure8.bin"
GFX_Diddy_Failure8End:
GFX_Diddy_Failure9:
	db "GFX_Diddy_Failure9.bin"
GFX_Diddy_Failure9End:
GFX_Diddy_Failure10:
	db "GFX_Diddy_Failure10.bin"
GFX_Diddy_Failure10End:
GFX_Diddy_Failure11:
	db "GFX_Diddy_Failure11.bin"
GFX_Diddy_Failure11End:
GFX_Diddy_Failure12:
	db "GFX_Diddy_Failure12.bin"
GFX_Diddy_Failure12End:
GFX_Diddy_Failure13:
	db "GFX_Diddy_Failure13.bin"
GFX_Diddy_Failure13End:
GFX_Diddy_Failure14:
	db "GFX_Diddy_Failure14.bin"
GFX_Diddy_Failure14End:
GFX_Diddy_Failure15:
	db "GFX_Diddy_Failure15.bin"
GFX_Diddy_Failure15End:
GFX_Diddy_Failure16:
	db "GFX_Diddy_Failure16.bin"
GFX_Diddy_Failure16End:
GFX_Diddy_Failure17:
	db "GFX_Diddy_Failure17.bin"
GFX_Diddy_Failure17End:
GFX_Diddy_Failure18:
	db "GFX_Diddy_Failure18.bin"
GFX_Diddy_Failure18End:
GFX_Diddy_Failure19:
	db "GFX_Diddy_Failure19.bin"
GFX_Diddy_Failure19End:
GFX_Diddy_Failure20:
	db "GFX_Diddy_Failure20.bin"
GFX_Diddy_Failure20End:
GFX_Diddy_Failure21:
	db "GFX_Diddy_Failure21.bin"
GFX_Diddy_Failure21End:
GFX_Diddy_Failure22:
	db "GFX_Diddy_Failure22.bin"
GFX_Diddy_Failure22End:
GFX_Diddy_Failure23:
	db "GFX_Diddy_Failure23.bin"
GFX_Diddy_Failure23End:
GFX_Diddy_Failure24:
	db "GFX_Diddy_Failure24.bin"
GFX_Diddy_Failure24End:
GFX_MiniNecky_SpitNut1:
	db "GFX_MiniNecky_SpitNut1.bin"
GFX_MiniNecky_SpitNut1End:
GFX_MiniNecky_SpitNut2:
	db "GFX_MiniNecky_SpitNut2.bin"
GFX_MiniNecky_SpitNut2End:
GFX_MiniNecky_SpitNut3:
	db "GFX_MiniNecky_SpitNut3.bin"
GFX_MiniNecky_SpitNut3End:
GFX_MiniNecky_SpitNut4:
	db "GFX_MiniNecky_SpitNut4.bin"
GFX_MiniNecky_SpitNut4End:
GFX_MiniNecky_SpitNut5:
	db "GFX_MiniNecky_SpitNut5.bin"
GFX_MiniNecky_SpitNut5End:
GFX_MiniNecky_SpitNut6:
	db "GFX_MiniNecky_SpitNut6.bin"
GFX_MiniNecky_SpitNut6End:
GFX_MiniNecky_SpitNut7:
	db "GFX_MiniNecky_SpitNut7.bin"
GFX_MiniNecky_SpitNut7End:
GFX_MiniNecky_SpitNut8:
	db "GFX_MiniNecky_SpitNut8.bin"
GFX_MiniNecky_SpitNut8End:
GFX_MiniNecky_Dead:
	db "GFX_MiniNecky_Dead.bin"
GFX_MiniNecky_DeadEnd:
GFX_MiniNecky_Fly1:
	db "GFX_MiniNecky_Fly1.bin"
GFX_MiniNecky_Fly1End:
GFX_MiniNecky_Fly2:
	db "GFX_MiniNecky_Fly2.bin"
GFX_MiniNecky_Fly2End:
GFX_MiniNecky_Fly3:
	db "GFX_MiniNecky_Fly3.bin"
GFX_MiniNecky_Fly3End:
GFX_MiniNecky_Fly4:
	db "GFX_MiniNecky_Fly4.bin"
GFX_MiniNecky_Fly4End:
GFX_MiniNecky_Fly5:
	db "GFX_MiniNecky_Fly5.bin"
GFX_MiniNecky_Fly5End:
GFX_MiniNecky_Fly6:
	db "GFX_MiniNecky_Fly6.bin"
GFX_MiniNecky_Fly6End:
GFX_MiniNecky_Fly7:
	db "GFX_MiniNecky_Fly7.bin"
GFX_MiniNecky_Fly7End:
GFX_MiniNecky_Fly8:
	db "GFX_MiniNecky_Fly8.bin"
GFX_MiniNecky_Fly8End:
GFX_MiniNecky_Fly9:
	db "GFX_MiniNecky_Fly9.bin"
GFX_MiniNecky_Fly9End:
GFX_MiniNecky_Fly10:
	db "GFX_MiniNecky_Fly10.bin"
GFX_MiniNecky_Fly10End:
GFX_MiniNecky_Fly11:
	db "GFX_MiniNecky_Fly11.bin"
GFX_MiniNecky_Fly11End:
GFX_MiniNecky_Fly12:
	db "GFX_MiniNecky_Fly12.bin"
GFX_MiniNecky_Fly12End:
GFX_MankyKong_Dead1:
	db "GFX_MankyKong_Dead1.bin"
GFX_MankyKong_Dead1End:
GFX_MankyKong_Dead2:
	db "GFX_MankyKong_Dead2.bin"
GFX_MankyKong_Dead2End:
GFX_MankyKong_Dead3:
	db "GFX_MankyKong_Dead3.bin"
GFX_MankyKong_Dead3End:
GFX_MankyKong_Dead4:
	db "GFX_MankyKong_Dead4.bin"
GFX_MankyKong_Dead4End:
GFX_MankyKong_Dead5:
	db "GFX_MankyKong_Dead5.bin"
GFX_MankyKong_Dead5End:
GFX_MankyKong_Dead6:
	db "GFX_MankyKong_Dead6.bin"
GFX_MankyKong_Dead6End:
GFX_MovingSingleBanana_Spin1:
	db "GFX_MovingSingleBanana_Spin1.bin"
GFX_MovingSingleBanana_Spin1End:
GFX_MovingSingleBanana_Spin2:
	db "GFX_MovingSingleBanana_Spin2.bin"
GFX_MovingSingleBanana_Spin2End:
GFX_MovingSingleBanana_Spin3:
	db "GFX_MovingSingleBanana_Spin3.bin"
GFX_MovingSingleBanana_Spin3End:
GFX_MovingSingleBanana_Spin4:
	db "GFX_MovingSingleBanana_Spin4.bin"
GFX_MovingSingleBanana_Spin4End:
GFX_MovingSingleBanana_Spin5:
	db "GFX_MovingSingleBanana_Spin5.bin"
GFX_MovingSingleBanana_Spin5End:
GFX_MovingSingleBanana_Spin6:
	db "GFX_MovingSingleBanana_Spin6.bin"
GFX_MovingSingleBanana_Spin6End:
GFX_MovingSingleBanana_Spin7:
	db "GFX_MovingSingleBanana_Spin7.bin"
GFX_MovingSingleBanana_Spin7End:
GFX_MovingSingleBanana_Spin8:
	db "GFX_MovingSingleBanana_Spin8.bin"
GFX_MovingSingleBanana_Spin8End:
GFX_Butterfly_Fly1:
	db "GFX_Butterfly_Fly1.bin"
GFX_Butterfly_Fly1End:
GFX_Butterfly_Fly2:
	db "GFX_Butterfly_Fly2.bin"
GFX_Butterfly_Fly2End:
GFX_Butterfly_Fly3:
	db "GFX_Butterfly_Fly3.bin"
GFX_Butterfly_Fly3End:
GFX_Butterfly_Fly4:
	db "GFX_Butterfly_Fly4.bin"
GFX_Butterfly_Fly4End:
GFX_Butterfly_Fly5:
	db "GFX_Butterfly_Fly5.bin"
GFX_Butterfly_Fly5End:
GFX_Butterfly_Fly6:
	db "GFX_Butterfly_Fly6.bin"
GFX_Butterfly_Fly6End:
GFX_DKIslandInFinalBattle_Pose:
	db "GFX_DKIslandInFinalBattle_Pose.bin"
GFX_DKIslandInFinalBattle_PoseEnd:
GFX_SteelKeg_Idle:
	db "GFX_SteelKeg_Idle.bin"
GFX_SteelKeg_IdleEnd:
GFX_SteelKeg_Grabbed1:
	db "GFX_SteelKeg_Grabbed1.bin"
GFX_SteelKeg_Grabbed1End:
GFX_SteelKeg_Grabbed2:
	db "GFX_SteelKeg_Grabbed2.bin"
GFX_SteelKeg_Grabbed2End:
GFX_SteelKeg_Grabbed3:
	db "GFX_SteelKeg_Grabbed3.bin"
GFX_SteelKeg_Grabbed3End:
GFX_SteelKeg_Thrown1:
	db "GFX_SteelKeg_Thrown1.bin"
GFX_SteelKeg_Thrown1End:
GFX_SteelKeg_Thrown2:
	db "GFX_SteelKeg_Thrown2.bin"
GFX_SteelKeg_Thrown2End:
GFX_SteelKeg_Thrown3:
	db "GFX_SteelKeg_Thrown3.bin"
GFX_SteelKeg_Thrown3End:
GFX_SteelKeg_Thrown4:
	db "GFX_SteelKeg_Thrown4.bin"
GFX_SteelKeg_Thrown4End:
GFX_SteelKeg_Thrown5:
	db "GFX_SteelKeg_Thrown5.bin"
GFX_SteelKeg_Thrown5End:
GFX_SteelKeg_Thrown6:
	db "GFX_SteelKeg_Thrown6.bin"
GFX_SteelKeg_Thrown6End:
GFX_SteelKeg_Thrown7:
	db "GFX_SteelKeg_Thrown7.bin"
GFX_SteelKeg_Thrown7End:
GFX_SteelKeg_Thrown8:
	db "GFX_SteelKeg_Thrown8.bin"
GFX_SteelKeg_Thrown8End:
GFX_Timer_Zero:
	db "GFX_Timer_Zero.bin"
GFX_Timer_ZeroEnd:
GFX_Timer_One:
	db "GFX_Timer_One.bin"
GFX_Timer_OneEnd:
GFX_Timer_Two:
	db "GFX_Timer_Two.bin"
GFX_Timer_TwoEnd:
GFX_Timer_Three:
	db "GFX_Timer_Three.bin"
GFX_Timer_ThreeEnd:
GFX_Timer_Four:
	db "GFX_Timer_Four.bin"
GFX_Timer_FourEnd:
GFX_Timer_Five:
	db "GFX_Timer_Five.bin"
GFX_Timer_FiveEnd:
GFX_Timer_Six:
	db "GFX_Timer_Six.bin"
GFX_Timer_SixEnd:
GFX_Timer_Seven:
	db "GFX_Timer_Seven.bin"
GFX_Timer_SevenEnd:
GFX_Timer_Eight:
	db "GFX_Timer_Eight.bin"
GFX_Timer_EightEnd:
GFX_Timer_Nine:
	db "GFX_Timer_Nine.bin"
GFX_Timer_NineEnd:
GFX_MasterNecky_Idle:
	db "GFX_MasterNecky_Idle.bin"
GFX_MasterNecky_IdleEnd:
GFX_MasterNecky_SpitNut1:
	db "GFX_MasterNecky_SpitNut1.bin"
GFX_MasterNecky_SpitNut1End:
GFX_MasterNecky_SpitNut2:
	db "GFX_MasterNecky_SpitNut2.bin"
GFX_MasterNecky_SpitNut2End:
GFX_MasterNecky_SpitNut3:
	db "GFX_MasterNecky_SpitNut3.bin"
GFX_MasterNecky_SpitNut3End:
GFX_MasterNecky_SpitNut4:
	db "GFX_MasterNecky_SpitNut4.bin"
GFX_MasterNecky_SpitNut4End:
GFX_MasterNecky_SpitNut5:
	db "GFX_MasterNecky_SpitNut5.bin"
GFX_MasterNecky_SpitNut5End:
GFX_MasterNecky_SpitNut6:
	db "GFX_MasterNecky_SpitNut6.bin"
GFX_MasterNecky_SpitNut6End:
GFX_MasterNecky_SpitNut7:
	db "GFX_MasterNecky_SpitNut7.bin"
GFX_MasterNecky_SpitNut7End:
GFX_MasterNecky_SpitNut8:
	db "GFX_MasterNecky_SpitNut8.bin"
GFX_MasterNecky_SpitNut8End:
GFX_MasterNecky_SpitNut9:
	db "GFX_MasterNecky_SpitNut9.bin"
GFX_MasterNecky_SpitNut9End:
GFX_MasterNecky_Hurt1:
	db "GFX_MasterNecky_Hurt1.bin"
GFX_MasterNecky_Hurt1End:
GFX_MasterNecky_Hurt2:
	db "GFX_MasterNecky_Hurt2.bin"
GFX_MasterNecky_Hurt2End:
GFX_MasterNecky_Hurt3:
	db "GFX_MasterNecky_Hurt3.bin"
GFX_MasterNecky_Hurt3End:
GFX_MasterNecky_Hurt4:
	db "GFX_MasterNecky_Hurt4.bin"
GFX_MasterNecky_Hurt4End:
GFX_MasterNecky_Hurt5:
	db "GFX_MasterNecky_Hurt5.bin"
GFX_MasterNecky_Hurt5End:
GFX_MasterNecky_Fall1:
	db "GFX_MasterNecky_Fall1.bin"
GFX_MasterNecky_Fall1End:
GFX_MasterNecky_Fall2:
	db "GFX_MasterNecky_Fall2.bin"
GFX_MasterNecky_Fall2End:
GFX_MasterNecky_Fall3:
	db "GFX_MasterNecky_Fall3.bin"
GFX_MasterNecky_Fall3End:
GFX_MasterNecky_Fall4:
	db "GFX_MasterNecky_Fall4.bin"
GFX_MasterNecky_Fall4End:
GFX_MasterNecky_Fall5:
	db "GFX_MasterNecky_Fall5.bin"
GFX_MasterNecky_Fall5End:
GFX_MasterNecky_Fall6:
	db "GFX_MasterNecky_Fall6.bin"
GFX_MasterNecky_Fall6End:
GFX_MasterNecky_Fall7:
	db "GFX_MasterNecky_Fall7.bin"
GFX_MasterNecky_Fall7End:
GFX_MasterNecky_Fall8:
	db "GFX_MasterNecky_Fall8.bin"
GFX_MasterNecky_Fall8End:
GFX_MasterNecky_Fall9:
	db "GFX_MasterNecky_Fall9.bin"
GFX_MasterNecky_Fall9End:
GFX_MasterNecky_Fall10:
	db "GFX_MasterNecky_Fall10.bin"
GFX_MasterNecky_Fall10End:
GFX_MasterNecky_Fall11:
	db "GFX_MasterNecky_Fall11.bin"
GFX_MasterNecky_Fall11End:
GFX_Diddy_TurnWhileSwimming1:
	db "GFX_Diddy_TurnWhileSwimming1.bin"
GFX_Diddy_TurnWhileSwimming1End:
GFX_Diddy_TurnWhileSwimming2:
	db "GFX_Diddy_TurnWhileSwimming2.bin"
GFX_Diddy_TurnWhileSwimming2End:
GFX_DonkeyKong_TurnWhileSwimming1:
	db "GFX_DonkeyKong_TurnWhileSwimming1.bin"
GFX_DonkeyKong_TurnWhileSwimming1End:
GFX_DonkeyKong_TurnWhileSwimming2:
	db "GFX_DonkeyKong_TurnWhileSwimming2.bin"
GFX_DonkeyKong_TurnWhileSwimming2End:
GFX_Klaptrap_Stomped1:
	db "GFX_Klaptrap_Stomped1.bin"
GFX_Klaptrap_Stomped1End:
GFX_Klaptrap_Stomped2:
	db "GFX_Klaptrap_Stomped2.bin"
GFX_Klaptrap_Stomped2End:
GFX_Klaptrap_Stomped3:
	db "GFX_Klaptrap_Stomped3.bin"
GFX_Klaptrap_Stomped3End:
GFX_Klaptrap_Stomped4:
	db "GFX_Klaptrap_Stomped4.bin"
GFX_Klaptrap_Stomped4End:
GFX_Klaptrap_Stomped5:
	db "GFX_Klaptrap_Stomped5.bin"
GFX_Klaptrap_Stomped5End:
GFX_Klaptrap_Stomped6:
	db "GFX_Klaptrap_Stomped6.bin"
GFX_Klaptrap_Stomped6End:
GFX_ChompsJr_Dead1:
	db "GFX_ChompsJr_Dead1.bin"
GFX_ChompsJr_Dead1End:
GFX_ChompsJr_Dead2:
	db "GFX_ChompsJr_Dead2.bin"
GFX_ChompsJr_Dead2End:
GFX_ChompsJr_Dead3:
	db "GFX_ChompsJr_Dead3.bin"
GFX_ChompsJr_Dead3End:
GFX_ChompsJr_Dead4:
	db "GFX_ChompsJr_Dead4.bin"
GFX_ChompsJr_Dead4End:
GFX_Pearl_Pose:
	db "GFX_Pearl_Pose.bin"
GFX_Pearl_PoseEnd:
GFX_KRool_Idle1:
	db "GFX_KRool_Idle1.bin"
GFX_KRool_Idle1End:
GFX_KRool_Idle2:
	db "GFX_KRool_Idle2.bin"
GFX_KRool_Idle2End:
GFX_KRool_Idle3:
	db "GFX_KRool_Idle3.bin"
GFX_KRool_Idle3End:
GFX_KRool_Idle4:
	db "GFX_KRool_Idle4.bin"
GFX_KRool_Idle4End:
GFX_KRoolCrown_Thrown1:
	db "GFX_KRoolCrown_Thrown1.bin"
GFX_KRoolCrown_Thrown1End:
GFX_KRoolCrown_Thrown2:
	db "GFX_KRoolCrown_Thrown2.bin"
GFX_KRoolCrown_Thrown2End:
GFX_KRoolCrown_Thrown3:
	db "GFX_KRoolCrown_Thrown3.bin"
GFX_KRoolCrown_Thrown3End:
GFX_KRoolCrown_Thrown4:
	db "GFX_KRoolCrown_Thrown4.bin"
GFX_KRoolCrown_Thrown4End:
GFX_KRoolCrown_Thrown5:
	db "GFX_KRoolCrown_Thrown5.bin"
GFX_KRoolCrown_Thrown5End:
GFX_KRoolCrown_Thrown6:
	db "GFX_KRoolCrown_Thrown6.bin"
GFX_KRoolCrown_Thrown6End:
GFX_KRoolCrown_Thrown7:
	db "GFX_KRoolCrown_Thrown7.bin"
GFX_KRoolCrown_Thrown7End:
GFX_KRoolCrown_Thrown8:
	db "GFX_KRoolCrown_Thrown8.bin"
GFX_KRoolCrown_Thrown8End:
GFX_KRoolCrown_Thrown9:
	db "GFX_KRoolCrown_Thrown9.bin"
GFX_KRoolCrown_Thrown9End:
GFX_KRoolCrown_Thrown10:
	db "GFX_KRoolCrown_Thrown10.bin"
GFX_KRoolCrown_Thrown10End:
GFX_KRoolCrown_Thrown11:
	db "GFX_KRoolCrown_Thrown11.bin"
GFX_KRoolCrown_Thrown11End:
GFX_KRoolCrown_Thrown12:
	db "GFX_KRoolCrown_Thrown12.bin"
GFX_KRoolCrown_Thrown12End:
GFX_Krusha_Dead1:
	db "GFX_Krusha_Dead1.bin"
GFX_Krusha_Dead1End:
GFX_Krusha_Dead2:
	db "GFX_Krusha_Dead2.bin"
GFX_Krusha_Dead2End:
GFX_Krusha_Dead3:
	db "GFX_Krusha_Dead3.bin"
GFX_Krusha_Dead3End:
GFX_Krusha_Dead4:
	db "GFX_Krusha_Dead4.bin"
GFX_Krusha_Dead4End:
GFX_Krusha_Dead5:
	db "GFX_Krusha_Dead5.bin"
GFX_Krusha_Dead5End:
GFX_Krusha_Dead6:
	db "GFX_Krusha_Dead6.bin"
GFX_Krusha_Dead6End:
GFX_Krusha_Turn1:
	db "GFX_Krusha_Turn1.bin"
GFX_Krusha_Turn1End:
GFX_Krusha_Turn2:
	db "GFX_Krusha_Turn2.bin"
GFX_Krusha_Turn2End:
GFX_Rambi_Walk1:
	db "GFX_Rambi_Walk1.bin"
GFX_Rambi_Walk1End:
GFX_Rambi_Walk2:
	db "GFX_Rambi_Walk2.bin"
GFX_Rambi_Walk2End:
GFX_Rambi_Walk3:
	db "GFX_Rambi_Walk3.bin"
GFX_Rambi_Walk3End:
GFX_Rambi_Walk4:
	db "GFX_Rambi_Walk4.bin"
GFX_Rambi_Walk4End:
GFX_Rambi_Walk5:
	db "GFX_Rambi_Walk5.bin"
GFX_Rambi_Walk5End:
GFX_Rambi_Walk6:
	db "GFX_Rambi_Walk6.bin"
GFX_Rambi_Walk6End:
GFX_Rambi_Walk7:
	db "GFX_Rambi_Walk7.bin"
GFX_Rambi_Walk7End:
GFX_Rambi_Walk8:
	db "GFX_Rambi_Walk8.bin"
GFX_Rambi_Walk8End:
GFX_Rambi_Walk9:
	db "GFX_Rambi_Walk9.bin"
GFX_Rambi_Walk9End:
GFX_Rambi_Walk10:
	db "GFX_Rambi_Walk10.bin"
GFX_Rambi_Walk10End:
GFX_Rambi_Walk11:
	db "GFX_Rambi_Walk11.bin"
GFX_Rambi_Walk11End:
GFX_Rambi_Walk12:
	db "GFX_Rambi_Walk12.bin"
GFX_Rambi_Walk12End:
GFX_Rambi_Walk13:
	db "GFX_Rambi_Walk13.bin"
GFX_Rambi_Walk13End:
GFX_Rambi_Walk14:
	db "GFX_Rambi_Walk14.bin"
GFX_Rambi_Walk14End:
GFX_Rambi_Walk15:
	db "GFX_Rambi_Walk15.bin"
GFX_Rambi_Walk15End:
GFX_Rambi_Jump1:
	db "GFX_Rambi_Jump1.bin"
GFX_Rambi_Jump1End:
GFX_Rambi_Jump2:
	db "GFX_Rambi_Jump2.bin"
GFX_Rambi_Jump2End:
GFX_Rambi_Jump3:
	db "GFX_Rambi_Jump3.bin"
GFX_Rambi_Jump3End:
GFX_Rambi_Jump4:
	db "GFX_Rambi_Jump4.bin"
GFX_Rambi_Jump4End:
GFX_Rambi_Jump5:
	db "GFX_Rambi_Jump5.bin"
GFX_Rambi_Jump5End:
GFX_Rambi_Jump6:
	db "GFX_Rambi_Jump6.bin"
GFX_Rambi_Jump6End:
GFX_Rambi_Jump7:
	db "GFX_Rambi_Jump7.bin"
GFX_Rambi_Jump7End:
GFX_DonkeyKong_HangOntoStabbingEnguarde1:
	db "GFX_DonkeyKong_HangOntoStabbingEnguarde1.bin"
GFX_DonkeyKong_HangOntoStabbingEnguarde1End:
GFX_DonkeyKong_HangOntoStabbingEnguarde2:
	db "GFX_DonkeyKong_HangOntoStabbingEnguarde2.bin"
GFX_DonkeyKong_HangOntoStabbingEnguarde2End:
GFX_DonkeyKong_HangOntoStabbingEnguarde3:
	db "GFX_DonkeyKong_HangOntoStabbingEnguarde3.bin"
GFX_DonkeyKong_HangOntoStabbingEnguarde3End:
GFX_DonkeyKong_HangOntoStabbingEnguarde4:
	db "GFX_DonkeyKong_HangOntoStabbingEnguarde4.bin"
GFX_DonkeyKong_HangOntoStabbingEnguarde4End:
GFX_DonkeyKong_HangOntoStabbingEnguarde5:
	db "GFX_DonkeyKong_HangOntoStabbingEnguarde5.bin"
GFX_DonkeyKong_HangOntoStabbingEnguarde5End:
GFX_DonkeyKong_HangOntoStabbingEnguarde6:
	db "GFX_DonkeyKong_HangOntoStabbingEnguarde6.bin"
GFX_DonkeyKong_HangOntoStabbingEnguarde6End:
GFX_DonkeyKong_HangOntoStabbingEnguarde7:
	db "GFX_DonkeyKong_HangOntoStabbingEnguarde7.bin"
GFX_DonkeyKong_HangOntoStabbingEnguarde7End:
GFX_Rambi_Hurt:
	db "GFX_Rambi_Hurt.bin"
GFX_Rambi_HurtEnd:
GFX_Winky_Idle1:
	db "GFX_Winky_Idle1.bin"
GFX_Winky_Idle1End:
GFX_Winky_Idle2:
	db "GFX_Winky_Idle2.bin"
GFX_Winky_Idle2End:
GFX_Winky_Idle3:
	db "GFX_Winky_Idle3.bin"
GFX_Winky_Idle3End:
GFX_Winky_Idle4:
	db "GFX_Winky_Idle4.bin"
GFX_Winky_Idle4End:
GFX_Winky_Idle5:
	db "GFX_Winky_Idle5.bin"
GFX_Winky_Idle5End:
GFX_Winky_Idle6:
	db "GFX_Winky_Idle6.bin"
GFX_Winky_Idle6End:
GFX_Winky_Idle7:
	db "GFX_Winky_Idle7.bin"
GFX_Winky_Idle7End:
GFX_Winky_Idle8:
	db "GFX_Winky_Idle8.bin"
GFX_Winky_Idle8End:
GFX_Winky_Idle9:
	db "GFX_Winky_Idle9.bin"
GFX_Winky_Idle9End:
GFX_Winky_Idle10:
	db "GFX_Winky_Idle10.bin"
GFX_Winky_Idle10End:
GFX_Winky_Idle11:
	db "GFX_Winky_Idle11.bin"
GFX_Winky_Idle11End:
GFX_Winky_Jump1:
	db "GFX_Winky_Jump1.bin"
GFX_Winky_Jump1End:
GFX_Winky_Jump2:
	db "GFX_Winky_Jump2.bin"
GFX_Winky_Jump2End:
GFX_Winky_Jump3:
	db "GFX_Winky_Jump3.bin"
GFX_Winky_Jump3End:
GFX_Winky_Jump4:
	db "GFX_Winky_Jump4.bin"
GFX_Winky_Jump4End:
GFX_Winky_Jump5:
	db "GFX_Winky_Jump5.bin"
GFX_Winky_Jump5End:
GFX_Winky_Jump6:
	db "GFX_Winky_Jump6.bin"
GFX_Winky_Jump6End:
GFX_Winky_Jump7:
	db "GFX_Winky_Jump7.bin"
GFX_Winky_Jump7End:
GFX_Winky_Jump8:
	db "GFX_Winky_Jump8.bin"
GFX_Winky_Jump8End:
GFX_Winky_Jump9:
	db "GFX_Winky_Jump9.bin"
GFX_Winky_Jump9End:
GFX_Winky_Jump10:
	db "GFX_Winky_Jump10.bin"
GFX_Winky_Jump10End:
GFX_Winky_Jump11:
	db "GFX_Winky_Jump11.bin"
GFX_Winky_Jump11End:
GFX_Winky_Jump12:
	db "GFX_Winky_Jump12.bin"
GFX_Winky_Jump12End:
GFX_Winky_Jump13:
	db "GFX_Winky_Jump13.bin"
GFX_Winky_Jump13End:
GFX_Winky_Jump14:
	db "GFX_Winky_Jump14.bin"
GFX_Winky_Jump14End:
GFX_Winky_Jump15:
	db "GFX_Winky_Jump15.bin"
GFX_Winky_Jump15End:
GFX_Winky_Jump16:
	db "GFX_Winky_Jump16.bin"
GFX_Winky_Jump16End:
GFX_Winky_Jump17:
	db "GFX_Winky_Jump17.bin"
GFX_Winky_Jump17End:
GFX_Winky_Land1:
	db "GFX_Winky_Land1.bin"
GFX_Winky_Land1End:
GFX_Winky_Land2:
	db "GFX_Winky_Land2.bin"
GFX_Winky_Land2End:
GFX_Winky_Land3:
	db "GFX_Winky_Land3.bin"
GFX_Winky_Land3End:
GFX_Winky_Land4:
	db "GFX_Winky_Land4.bin"
GFX_Winky_Land4End:
GFX_Winky_Land5:
	db "GFX_Winky_Land5.bin"
GFX_Winky_Land5End:
GFX_Winky_Land6:
	db "GFX_Winky_Land6.bin"
GFX_Winky_Land6End:
GFX_Winky_Land7:
	db "GFX_Winky_Land7.bin"
GFX_Winky_Land7End:
GFX_Winky_Land8:
	db "GFX_Winky_Land8.bin"
GFX_Winky_Land8End:
GFX_Winky_Land9:
	db "GFX_Winky_Land9.bin"
GFX_Winky_Land9End:
GFX_Winky_Land10:
	db "GFX_Winky_Land10.bin"
GFX_Winky_Land10End:
GFX_Winky_Land11:
	db "GFX_Winky_Land11.bin"
GFX_Winky_Land11End:
GFX_Expresso_Idle1:
	db "GFX_Expresso_Idle1.bin"
GFX_Expresso_Idle1End:
GFX_Expresso_Idle2:
	db "GFX_Expresso_Idle2.bin"
GFX_Expresso_Idle2End:
GFX_Expresso_Idle3:
	db "GFX_Expresso_Idle3.bin"
GFX_Expresso_Idle3End:
GFX_Expresso_Idle4:
	db "GFX_Expresso_Idle4.bin"
GFX_Expresso_Idle4End:
GFX_Expresso_Idle5:
	db "GFX_Expresso_Idle5.bin"
GFX_Expresso_Idle5End:
GFX_Expresso_Idle6:
	db "GFX_Expresso_Idle6.bin"
GFX_Expresso_Idle6End:
GFX_Expresso_Idle7:
	db "GFX_Expresso_Idle7.bin"
GFX_Expresso_Idle7End:
GFX_Expresso_Idle8:
	db "GFX_Expresso_Idle8.bin"
GFX_Expresso_Idle8End:
GFX_Expresso_Idle9:
	db "GFX_Expresso_Idle9.bin"
GFX_Expresso_Idle9End:
GFX_Expresso_Idle10:
	db "GFX_Expresso_Idle10.bin"
GFX_Expresso_Idle10End:
GFX_Expresso_Idle11:
	db "GFX_Expresso_Idle11.bin"
GFX_Expresso_Idle11End:
GFX_Expresso_Idle12:
	db "GFX_Expresso_Idle12.bin"
GFX_Expresso_Idle12End:
GFX_Expresso_Idle13:
	db "GFX_Expresso_Idle13.bin"
GFX_Expresso_Idle13End:
GFX_Expresso_Idle14:
	db "GFX_Expresso_Idle14.bin"
GFX_Expresso_Idle14End:
GFX_Expresso_Idle15:
	db "GFX_Expresso_Idle15.bin"
GFX_Expresso_Idle15End:
GFX_Expresso_Idle16:
	db "GFX_Expresso_Idle16.bin"
GFX_Expresso_Idle16End:
GFX_Expresso_Idle17:
	db "GFX_Expresso_Idle17.bin"
GFX_Expresso_Idle17End:
GFX_Expresso_Idle18:
	db "GFX_Expresso_Idle18.bin"
GFX_Expresso_Idle18End:
GFX_Expresso_Idle19:
	db "GFX_Expresso_Idle19.bin"
GFX_Expresso_Idle19End:
GFX_Diddy_HoldWalk1:
	db "GFX_Diddy_HoldWalk1.bin"
GFX_Diddy_HoldWalk1End:
GFX_Diddy_HoldWalk2:
	db "GFX_Diddy_HoldWalk2.bin"
GFX_Diddy_HoldWalk2End:
GFX_Diddy_HoldWalk3:
	db "GFX_Diddy_HoldWalk3.bin"
GFX_Diddy_HoldWalk3End:
GFX_Diddy_HoldWalk4:
	db "GFX_Diddy_HoldWalk4.bin"
GFX_Diddy_HoldWalk4End:
GFX_Diddy_HoldWalk5:
	db "GFX_Diddy_HoldWalk5.bin"
GFX_Diddy_HoldWalk5End:
GFX_Diddy_HoldWalk6:
	db "GFX_Diddy_HoldWalk6.bin"
GFX_Diddy_HoldWalk6End:
GFX_Diddy_HoldWalk7:
	db "GFX_Diddy_HoldWalk7.bin"
GFX_Diddy_HoldWalk7End:
GFX_Diddy_HoldWalk8:
	db "GFX_Diddy_HoldWalk8.bin"
GFX_Diddy_HoldWalk8End:
GFX_Diddy_HoldWalk9:
	db "GFX_Diddy_HoldWalk9.bin"
GFX_Diddy_HoldWalk9End:
GFX_HalfWhiteTire_Bounce1:
	db "GFX_HalfWhiteTire_Bounce1.bin"
GFX_HalfWhiteTire_Bounce1End:
GFX_HalfWhiteTire_Bounce2:
	db "GFX_HalfWhiteTire_Bounce2.bin"
GFX_HalfWhiteTire_Bounce2End:
GFX_HalfWhiteTire_Bounce3:
	db "GFX_HalfWhiteTire_Bounce3.bin"
GFX_HalfWhiteTire_Bounce3End:
GFX_HalfWhiteTire_Bounce4:
	db "GFX_HalfWhiteTire_Bounce4.bin"
GFX_HalfWhiteTire_Bounce4End:
GFX_HalfWhiteTire_Bounce5:
	db "GFX_HalfWhiteTire_Bounce5.bin"
GFX_HalfWhiteTire_Bounce5End:
GFX_HalfWhiteTire_Bounce6:
	db "GFX_HalfWhiteTire_Bounce6.bin"
GFX_HalfWhiteTire_Bounce6End:
GFX_HalfWhiteTire_Idle:
	db "GFX_HalfWhiteTire_Idle.bin"
GFX_HalfWhiteTire_IdleEnd:
GFX_BarrelCannon_Base1:
	db "GFX_BarrelCannon_Base1.bin"
GFX_BarrelCannon_Base1End:
GFX_BarrelCannon_Base2:
	db "GFX_BarrelCannon_Base2.bin"
GFX_BarrelCannon_Base2End:
GFX_BarrelCannon_Base3:
	db "GFX_BarrelCannon_Base3.bin"
GFX_BarrelCannon_Base3End:
GFX_BarrelCannon_Base4:
	db "GFX_BarrelCannon_Base4.bin"
GFX_BarrelCannon_Base4End:
GFX_BarrelCannon_Base5:
	db "GFX_BarrelCannon_Base5.bin"
GFX_BarrelCannon_Base5End:
GFX_BarrelCannon_Base6:
	db "GFX_BarrelCannon_Base6.bin"
GFX_BarrelCannon_Base6End:
GFX_BarrelCannon_Base7:
	db "GFX_BarrelCannon_Base7.bin"
GFX_BarrelCannon_Base7End:
GFX_BarrelCannon_Base8:
	db "GFX_BarrelCannon_Base8.bin"
GFX_BarrelCannon_Base8End:
GFX_BarrelCannon_Base9:
	db "GFX_BarrelCannon_Base9.bin"
GFX_BarrelCannon_Base9End:
GFX_BarrelCannon_Base10:
	db "GFX_BarrelCannon_Base10.bin"
GFX_BarrelCannon_Base10End:
GFX_BarrelCannon_Base11:
	db "GFX_BarrelCannon_Base11.bin"
GFX_BarrelCannon_Base11End:
GFX_BarrelCannon_Base12:
	db "GFX_BarrelCannon_Base12.bin"
GFX_BarrelCannon_Base12End:
GFX_BarrelCannon_Base13:
	db "GFX_BarrelCannon_Base13.bin"
GFX_BarrelCannon_Base13End:
GFX_BarrelCannon_Base14:
	db "GFX_BarrelCannon_Base14.bin"
GFX_BarrelCannon_Base14End:
GFX_BarrelCannon_Base15:
	db "GFX_BarrelCannon_Base15.bin"
GFX_BarrelCannon_Base15End:
GFX_BarrelCannon_Base16:
	db "GFX_BarrelCannon_Base16.bin"
GFX_BarrelCannon_Base16End:
GFX_Slippa_Turn1:
	db "GFX_Slippa_Turn1.bin"
GFX_Slippa_Turn1End:
GFX_Slippa_Turn2:
	db "GFX_Slippa_Turn2.bin"
GFX_Slippa_Turn2End:
GFX_Slippa_Turn3:
	db "GFX_Slippa_Turn3.bin"
GFX_Slippa_Turn3End:
GFX_Slippa_Turn4:
	db "GFX_Slippa_Turn4.bin"
GFX_Slippa_Turn4End:
GFX_Slippa_Turn5:
	db "GFX_Slippa_Turn5.bin"
GFX_Slippa_Turn5End:
GFX_Slippa_Turn6:
	db "GFX_Slippa_Turn6.bin"
GFX_Slippa_Turn6End:
GFX_Slippa_Turn7:
	db "GFX_Slippa_Turn7.bin"
GFX_Slippa_Turn7End:
GFX_Slippa_Turn8:
	db "GFX_Slippa_Turn8.bin"
GFX_Slippa_Turn8End:
GFX_BarrelPiece_Pose1:
	db "GFX_BarrelPiece_Pose1.bin"
GFX_BarrelPiece_Pose1End:
GFX_BarrelPiece_Pose2:
	db "GFX_BarrelPiece_Pose2.bin"
GFX_BarrelPiece_Pose2End:
GFX_BarrelPiece_Pose3:
	db "GFX_BarrelPiece_Pose3.bin"
GFX_BarrelPiece_Pose3End:
GFX_BarrelPiece_Pose4:
	db "GFX_BarrelPiece_Pose4.bin"
GFX_BarrelPiece_Pose4End:
GFX_BarrelPiece_Pose5:
	db "GFX_BarrelPiece_Pose5.bin"
GFX_BarrelPiece_Pose5End:
GFX_BarrelPiece_Pose6:
	db "GFX_BarrelPiece_Pose6.bin"
GFX_BarrelPiece_Pose6End:
GFX_BarrelPiece_Pose7:
	db "GFX_BarrelPiece_Pose7.bin"
GFX_BarrelPiece_Pose7End:
GFX_BarrelPiece_Pose8:
	db "GFX_BarrelPiece_Pose8.bin"
GFX_BarrelPiece_Pose8End:
GFX_Enguarde_Stab1:
	db "GFX_Enguarde_Stab1.bin"
GFX_Enguarde_Stab1End:
GFX_Enguarde_Stab2:
	db "GFX_Enguarde_Stab2.bin"
GFX_Enguarde_Stab2End:
GFX_Enguarde_Stab3:
	db "GFX_Enguarde_Stab3.bin"
GFX_Enguarde_Stab3End:
GFX_Enguarde_Stab4:
	db "GFX_Enguarde_Stab4.bin"
GFX_Enguarde_Stab4End:
GFX_Enguarde_Stab5:
	db "GFX_Enguarde_Stab5.bin"
GFX_Enguarde_Stab5End:
GFX_Enguarde_Stab6:
	db "GFX_Enguarde_Stab6.bin"
GFX_Enguarde_Stab6End:
GFX_Enguarde_Stab7:
	db "GFX_Enguarde_Stab7.bin"
GFX_Enguarde_Stab7End:
GFX_Enguarde_Swim1:
	db "GFX_Enguarde_Swim1.bin"
GFX_Enguarde_Swim1End:
GFX_Enguarde_Swim2:
	db "GFX_Enguarde_Swim2.bin"
GFX_Enguarde_Swim2End:
GFX_Enguarde_Swim3:
	db "GFX_Enguarde_Swim3.bin"
GFX_Enguarde_Swim3End:
GFX_Enguarde_Swim4:
	db "GFX_Enguarde_Swim4.bin"
GFX_Enguarde_Swim4End:
GFX_Enguarde_Swim5:
	db "GFX_Enguarde_Swim5.bin"
GFX_Enguarde_Swim5End:
GFX_Enguarde_Swim6:
	db "GFX_Enguarde_Swim6.bin"
GFX_Enguarde_Swim6End:
GFX_Enguarde_Swim7:
	db "GFX_Enguarde_Swim7.bin"
GFX_Enguarde_Swim7End:
GFX_Enguarde_Swim8:
	db "GFX_Enguarde_Swim8.bin"
GFX_Enguarde_Swim8End:
GFX_LifeBalloon_Idle1:
	db "GFX_LifeBalloon_Idle1.bin"
GFX_LifeBalloon_Idle1End:
GFX_LifeBalloon_Idle2:
	db "GFX_LifeBalloon_Idle2.bin"
GFX_LifeBalloon_Idle2End:
GFX_LifeBalloon_Idle3:
	db "GFX_LifeBalloon_Idle3.bin"
GFX_LifeBalloon_Idle3End:
GFX_LifeBalloon_Idle4:
	db "GFX_LifeBalloon_Idle4.bin"
GFX_LifeBalloon_Idle4End:
GFX_LifeBalloon_Idle5:
	db "GFX_LifeBalloon_Idle5.bin"
GFX_LifeBalloon_Idle5End:
GFX_LifeBalloon_Idle6:
	db "GFX_LifeBalloon_Idle6.bin"
GFX_LifeBalloon_Idle6End:
GFX_LifeBalloon_Idle7:
	db "GFX_LifeBalloon_Idle7.bin"
GFX_LifeBalloon_Idle7End:
GFX_LifeBalloon_Idle8:
	db "GFX_LifeBalloon_Idle8.bin"
GFX_LifeBalloon_Idle8End:
GFX_DKBarrel_Barrel1:
	db "GFX_DKBarrel_Barrel1.bin"
GFX_DKBarrel_Barrel1End:
GFX_DKBarrel_Barrel2:
	db "GFX_DKBarrel_Barrel2.bin"
GFX_DKBarrel_Barrel2End:
GFX_DKBarrel_Barrel3:
	db "GFX_DKBarrel_Barrel3.bin"
GFX_DKBarrel_Barrel3End:
GFX_DKBarrel_Barrel4:
	db "GFX_DKBarrel_Barrel4.bin"
GFX_DKBarrel_Barrel4End:
GFX_DKBarrel_Barrel5:
	db "GFX_DKBarrel_Barrel5.bin"
GFX_DKBarrel_Barrel5End:
GFX_DKBarrel_Barrel6:
	db "GFX_DKBarrel_Barrel6.bin"
GFX_DKBarrel_Barrel6End:
GFX_Barrel_Idle:
	db "GFX_Barrel_Idle.bin"
GFX_Barrel_IdleEnd:
GFX_Kritter_Dead1:
	db "GFX_Kritter_Dead1.bin"
GFX_Kritter_Dead1End:
GFX_Kritter_Dead2:
	db "GFX_Kritter_Dead2.bin"
GFX_Kritter_Dead2End:
GFX_Kritter_Dead3:
	db "GFX_Kritter_Dead3.bin"
GFX_Kritter_Dead3End:
GFX_Kritter_Dead4:
	db "GFX_Kritter_Dead4.bin"
GFX_Kritter_Dead4End:
GFX_Kritter_Dead5:
	db "GFX_Kritter_Dead5.bin"
GFX_Kritter_Dead5End:
GFX_Kritter_Dead6:
	db "GFX_Kritter_Dead6.bin"
GFX_Kritter_Dead6End:
GFX_Kritter_Dead7:
	db "GFX_Kritter_Dead7.bin"
GFX_Kritter_Dead7End:
GFX_Kritter_Dead8:
	db "GFX_Kritter_Dead8.bin"
GFX_Kritter_Dead8End:
GFX_Expresso_Jump1:
	db "GFX_Expresso_Jump1.bin"
GFX_Expresso_Jump1End:
GFX_Expresso_Jump2:
	db "GFX_Expresso_Jump2.bin"
GFX_Expresso_Jump2End:
GFX_Expresso_Jump3:
	db "GFX_Expresso_Jump3.bin"
GFX_Expresso_Jump3End:
GFX_Expresso_Jump4:
	db "GFX_Expresso_Jump4.bin"
GFX_Expresso_Jump4End:
GFX_Expresso_Jump5:
	db "GFX_Expresso_Jump5.bin"
GFX_Expresso_Jump5End:
GFX_Expresso_Jump6:
	db "GFX_Expresso_Jump6.bin"
GFX_Expresso_Jump6End:
GFX_Expresso_Jump7:
	db "GFX_Expresso_Jump7.bin"
GFX_Expresso_Jump7End:
GFX_Expresso_Jump8:
	db "GFX_Expresso_Jump8.bin"
GFX_Expresso_Jump8End:
GFX_Expresso_Land1:
	db "GFX_Expresso_Land1.bin"
GFX_Expresso_Land1End:
GFX_Expresso_Land2:
	db "GFX_Expresso_Land2.bin"
GFX_Expresso_Land2End:
GFX_DonkeyKong_Unknown3Pose1:
	db "GFX_DonkeyKong_Unknown3Pose1.bin"
GFX_DonkeyKong_Unknown3Pose1End:
GFX_DonkeyKong_Unknown3Pose2:
	db "GFX_DonkeyKong_Unknown3Pose2.bin"
GFX_DonkeyKong_Unknown3Pose2End:
GFX_DonkeyKong_Unknown3Pose3:
	db "GFX_DonkeyKong_Unknown3Pose3.bin"
GFX_DonkeyKong_Unknown3Pose3End:
GFX_Army_Stand:
	db "GFX_Army_Stand.bin"
GFX_Army_StandEnd:
GFX_Army_CurlUp1:
	db "GFX_Army_CurlUp1.bin"
GFX_Army_CurlUp1End:
GFX_Army_CurlUp2:
	db "GFX_Army_CurlUp2.bin"
GFX_Army_CurlUp2End:
GFX_Army_CurlUp3:
	db "GFX_Army_CurlUp3.bin"
GFX_Army_CurlUp3End:
GFX_Army_CurlUp4:
	db "GFX_Army_CurlUp4.bin"
GFX_Army_CurlUp4End:
GFX_Army_Unknown:
	db "GFX_Army_Unknown.bin"
GFX_Army_UnknownEnd:
GFX_Army_Roll1:
	db "GFX_Army_Roll1.bin"
GFX_Army_Roll1End:
GFX_Army_Roll2:
	db "GFX_Army_Roll2.bin"
GFX_Army_Roll2End:
GFX_Army_Roll3:
	db "GFX_Army_Roll3.bin"
GFX_Army_Roll3End:
GFX_Army_Roll4:
	db "GFX_Army_Roll4.bin"
GFX_Army_Roll4End:
GFX_Army_Roll5:
	db "GFX_Army_Roll5.bin"
GFX_Army_Roll5End:
GFX_Army_Roll6:
	db "GFX_Army_Roll6.bin"
GFX_Army_Roll6End:
GFX_Army_Roll7:
	db "GFX_Army_Roll7.bin"
GFX_Army_Roll7End:
GFX_Army_Idle1:
	db "GFX_Army_Idle1.bin"
GFX_Army_Idle1End:
GFX_Army_Idle2:
	db "GFX_Army_Idle2.bin"
GFX_Army_Idle2End:
GFX_Army_Idle3:
	db "GFX_Army_Idle3.bin"
GFX_Army_Idle3End:
GFX_CeilingLight_Pose1:
	db "GFX_CeilingLight_Pose1.bin"
GFX_CeilingLight_Pose1End:
GFX_CeilingLight_Pose2:
	db "GFX_CeilingLight_Pose2.bin"
GFX_CeilingLight_Pose2End:
GFX_CeilingLight_Pose3:
	db "GFX_CeilingLight_Pose3.bin"
GFX_CeilingLight_Pose3End:
GFX_CeilingLight_Pose4:
	db "GFX_CeilingLight_Pose4.bin"
GFX_CeilingLight_Pose4End:
GFX_CeilingLight_Pose5:
	db "GFX_CeilingLight_Pose5.bin"
GFX_CeilingLight_Pose5End:
GFX_CeilingLight_Pose6:
	db "GFX_CeilingLight_Pose6.bin"
GFX_CeilingLight_Pose6End:
GFX_CeilingLight_Pose7:
	db "GFX_CeilingLight_Pose7.bin"
GFX_CeilingLight_Pose7End:
GFX_Krusha_Walk1:
	db "GFX_Krusha_Walk1.bin"
GFX_Krusha_Walk1End:
GFX_Krusha_Walk2:
	db "GFX_Krusha_Walk2.bin"
GFX_Krusha_Walk2End:
GFX_Krusha_Walk3:
	db "GFX_Krusha_Walk3.bin"
GFX_Krusha_Walk3End:
GFX_Krusha_Walk4:
	db "GFX_Krusha_Walk4.bin"
GFX_Krusha_Walk4End:
GFX_Krusha_Walk5:
	db "GFX_Krusha_Walk5.bin"
GFX_Krusha_Walk5End:
GFX_Krusha_Walk6:
	db "GFX_Krusha_Walk6.bin"
GFX_Krusha_Walk6End:
GFX_Krusha_Walk7:
	db "GFX_Krusha_Walk7.bin"
GFX_Krusha_Walk7End:
GFX_Krusha_Walk8:
	db "GFX_Krusha_Walk8.bin"
GFX_Krusha_Walk8End:
GFX_Krusha_Walk9:
	db "GFX_Krusha_Walk9.bin"
GFX_Krusha_Walk9End:
GFX_Krusha_Walk10:
	db "GFX_Krusha_Walk10.bin"
GFX_Krusha_Walk10End:
GFX_Krusha_Walk11:
	db "GFX_Krusha_Walk11.bin"
GFX_Krusha_Walk11End:
GFX_Krusha_Walk12:
	db "GFX_Krusha_Walk12.bin"
GFX_Krusha_Walk12End:
GFX_LargeAnimalBuddyToken_Rambi:
	db "GFX_LargeAnimalBuddyToken_Rambi.bin"
GFX_LargeAnimalBuddyToken_RambiEnd:
GFX_LargeAnimalBuddyToken_Expresso:
	db "GFX_LargeAnimalBuddyToken_Expresso.bin"
GFX_LargeAnimalBuddyToken_ExpressoEnd:
GFX_LargeAnimalBuddyToken_Winky:
	db "GFX_LargeAnimalBuddyToken_Winky.bin"
GFX_LargeAnimalBuddyToken_WinkyEnd:
GFX_LargeAnimalBuddyToken_Enguarde:
	db "GFX_LargeAnimalBuddyToken_Enguarde.bin"
GFX_LargeAnimalBuddyToken_EnguardeEnd:
GFX_Necky_Fly1:
	db "GFX_Necky_Fly1.bin"
GFX_Necky_Fly1End:
GFX_Necky_Fly2:
	db "GFX_Necky_Fly2.bin"
GFX_Necky_Fly2End:
GFX_Necky_Fly3:
	db "GFX_Necky_Fly3.bin"
GFX_Necky_Fly3End:
GFX_Necky_Fly4:
	db "GFX_Necky_Fly4.bin"
GFX_Necky_Fly4End:
GFX_Necky_Fly5:
	db "GFX_Necky_Fly5.bin"
GFX_Necky_Fly5End:
GFX_Necky_Fly6:
	db "GFX_Necky_Fly6.bin"
GFX_Necky_Fly6End:
GFX_Necky_Fly7:
	db "GFX_Necky_Fly7.bin"
GFX_Necky_Fly7End:
GFX_Necky_Fly8:
	db "GFX_Necky_Fly8.bin"
GFX_Necky_Fly8End:
GFX_Necky_Fly9:
	db "GFX_Necky_Fly9.bin"
GFX_Necky_Fly9End:
GFX_Necky_Fly10:
	db "GFX_Necky_Fly10.bin"
GFX_Necky_Fly10End:
GFX_Necky_Fly11:
	db "GFX_Necky_Fly11.bin"
GFX_Necky_Fly11End:
GFX_Klaptrap_Walk1:
	db "GFX_Klaptrap_Walk1.bin"
GFX_Klaptrap_Walk1End:
GFX_Klaptrap_Walk2:
	db "GFX_Klaptrap_Walk2.bin"
GFX_Klaptrap_Walk2End:
GFX_Klaptrap_Walk3:
	db "GFX_Klaptrap_Walk3.bin"
GFX_Klaptrap_Walk3End:
GFX_Klaptrap_Walk4:
	db "GFX_Klaptrap_Walk4.bin"
GFX_Klaptrap_Walk4End:
GFX_Klaptrap_Walk5:
	db "GFX_Klaptrap_Walk5.bin"
GFX_Klaptrap_Walk5End:
GFX_Klaptrap_Walk6:
	db "GFX_Klaptrap_Walk6.bin"
GFX_Klaptrap_Walk6End:
GFX_Klaptrap_Walk7:
	db "GFX_Klaptrap_Walk7.bin"
GFX_Klaptrap_Walk7End:
GFX_Klaptrap_Walk8:
	db "GFX_Klaptrap_Walk8.bin"
GFX_Klaptrap_Walk8End:
GFX_Klaptrap_Turn:
	db "GFX_Klaptrap_Turn.bin"
GFX_Klaptrap_TurnEnd:
GFX_Klaptrap_Dead1:
	db "GFX_Klaptrap_Dead1.bin"
GFX_Klaptrap_Dead1End:
GFX_Klaptrap_Dead2:
	db "GFX_Klaptrap_Dead2.bin"
GFX_Klaptrap_Dead2End:
GFX_RopeBarrel_Grabbed1:
	db "GFX_RopeBarrel_Grabbed1.bin"
GFX_RopeBarrel_Grabbed1End:
GFX_RopeBarrel_Grabbed2:
	db "GFX_RopeBarrel_Grabbed2.bin"
GFX_RopeBarrel_Grabbed2End:
GFX_RopeBarrel_Grabbed3:
	db "GFX_RopeBarrel_Grabbed3.bin"
GFX_RopeBarrel_Grabbed3End:
GFX_RopeBarrel_Grabbed4:
	db "GFX_RopeBarrel_Grabbed4.bin"
GFX_RopeBarrel_Grabbed4End:
GFX_Barrel_FallsApart1:
	db "GFX_Barrel_FallsApart1.bin"
GFX_Barrel_FallsApart1End:
GFX_Barrel_FallsApart2:
	db "GFX_Barrel_FallsApart2.bin"
GFX_Barrel_FallsApart2End:
GFX_Barrel_FallsApart3:
	db "GFX_Barrel_FallsApart3.bin"
GFX_Barrel_FallsApart3End:
GFX_Barrel_FallsApart4:
	db "GFX_Barrel_FallsApart4.bin"
GFX_Barrel_FallsApart4End:
GFX_Barrel_FallsApart5:
	db "GFX_Barrel_FallsApart5.bin"
GFX_Barrel_FallsApart5End:
GFX_Barrel_FallsApart6:
	db "GFX_Barrel_FallsApart6.bin"
GFX_Barrel_FallsApart6End:
GFX_Barrel_FallsApart7:
	db "GFX_Barrel_FallsApart7.bin"
GFX_Barrel_FallsApart7End:
GFX_Barrel_FallsApart8:
	db "GFX_Barrel_FallsApart8.bin"
GFX_Barrel_FallsApart8End:
GFX_Barrel_Thrown1:
	db "GFX_Barrel_Thrown1.bin"
GFX_Barrel_Thrown1End:
GFX_Barrel_Thrown2:
	db "GFX_Barrel_Thrown2.bin"
GFX_Barrel_Thrown2End:
GFX_Barrel_Thrown3:
	db "GFX_Barrel_Thrown3.bin"
GFX_Barrel_Thrown3End:
GFX_Barrel_Thrown4:
	db "GFX_Barrel_Thrown4.bin"
GFX_Barrel_Thrown4End:
GFX_Barrel_Thrown5:
	db "GFX_Barrel_Thrown5.bin"
GFX_Barrel_Thrown5End:
GFX_Barrel_Thrown6:
	db "GFX_Barrel_Thrown6.bin"
GFX_Barrel_Thrown6End:
GFX_Barrel_Thrown7:
	db "GFX_Barrel_Thrown7.bin"
GFX_Barrel_Thrown7End:
GFX_Barrel_Thrown8:
	db "GFX_Barrel_Thrown8.bin"
GFX_Barrel_Thrown8End:
GFX_Barrel_Grabbed1:
	db "GFX_Barrel_Grabbed1.bin"
GFX_Barrel_Grabbed1End:
GFX_Barrel_Grabbed2:
	db "GFX_Barrel_Grabbed2.bin"
GFX_Barrel_Grabbed2End:
GFX_Barrel_Grabbed3:
	db "GFX_Barrel_Grabbed3.bin"
GFX_Barrel_Grabbed3End:
GFX_Barrel_Grabbed4:
	db "GFX_Barrel_Grabbed4.bin"
GFX_Barrel_Grabbed4End:
GFX_RopeBarrel_Idle:
	db "GFX_RopeBarrel_Idle.bin"
GFX_RopeBarrel_IdleEnd:
GFX_SmallOilDrum_WithRim:
	db "GFX_SmallOilDrum_WithRim.bin"
GFX_SmallOilDrum_WithRimEnd:
GFX_SmallOilDrum_NoRim:
	db "GFX_SmallOilDrum_NoRim.bin"
GFX_SmallOilDrum_NoRimEnd:
GFX_SmokePuff_Pose1:
	db "GFX_SmokePuff_Pose1.bin"
GFX_SmokePuff_Pose1End:
GFX_SmokePuff_Pose2:
	db "GFX_SmokePuff_Pose2.bin"
GFX_SmokePuff_Pose2End:
GFX_SmokePuff_Pose3:
	db "GFX_SmokePuff_Pose3.bin"
GFX_SmokePuff_Pose3End:
GFX_SmokePuff_Pose4:
	db "GFX_SmokePuff_Pose4.bin"
GFX_SmokePuff_Pose4End:
GFX_SmokePuff_Pose5:
	db "GFX_SmokePuff_Pose5.bin"
GFX_SmokePuff_Pose5End:
GFX_SmokePuff_Pose6:
	db "GFX_SmokePuff_Pose6.bin"
GFX_SmokePuff_Pose6End:
GFX_SmokePuff_Pose7:
	db "GFX_SmokePuff_Pose7.bin"
GFX_SmokePuff_Pose7End:
GFX_SmokePuff_Pose8:
	db "GFX_SmokePuff_Pose8.bin"
GFX_SmokePuff_Pose8End:
GFX_SmallBarrelPiece_Pose1:
	db "GFX_SmallBarrelPiece_Pose1.bin"
GFX_SmallBarrelPiece_Pose1End:
GFX_SmallBarrelPiece_Pose2:
	db "GFX_SmallBarrelPiece_Pose2.bin"
GFX_SmallBarrelPiece_Pose2End:
GFX_SmallBarrelPiece_Pose3:
	db "GFX_SmallBarrelPiece_Pose3.bin"
GFX_SmallBarrelPiece_Pose3End:
GFX_SmallBarrelPiece_Pose4:
	db "GFX_SmallBarrelPiece_Pose4.bin"
GFX_SmallBarrelPiece_Pose4End:
GFX_SmallBarrelPiece_Pose5:
	db "GFX_SmallBarrelPiece_Pose5.bin"
GFX_SmallBarrelPiece_Pose5End:
GFX_SmallBarrelPiece_Pose6:
	db "GFX_SmallBarrelPiece_Pose6.bin"
GFX_SmallBarrelPiece_Pose6End:
GFX_SmallBarrelPiece_Pose7:
	db "GFX_SmallBarrelPiece_Pose7.bin"
GFX_SmallBarrelPiece_Pose7End:
GFX_SmallBarrelPiece_Pose8:
	db "GFX_SmallBarrelPiece_Pose8.bin"
GFX_SmallBarrelPiece_Pose8End:
GFX_ThrownCane_Pose1:
	db "GFX_ThrownCane_Pose1.bin"
GFX_ThrownCane_Pose1End:
GFX_ThrownCane_Pose2:
	db "GFX_ThrownCane_Pose2.bin"
GFX_ThrownCane_Pose2End:
GFX_ThrownCane_Pose3:
	db "GFX_ThrownCane_Pose3.bin"
GFX_ThrownCane_Pose3End:
GFX_ThrownCane_Pose4:
	db "GFX_ThrownCane_Pose4.bin"
GFX_ThrownCane_Pose4End:
GFX_ThrownCane_Pose5:
	db "GFX_ThrownCane_Pose5.bin"
GFX_ThrownCane_Pose5End:
GFX_ThrownCane_Pose6:
	db "GFX_ThrownCane_Pose6.bin"
GFX_ThrownCane_Pose6End:
GFX_ThrownCane_Pose7:
	db "GFX_ThrownCane_Pose7.bin"
GFX_ThrownCane_Pose7End:
GFX_ThrownCane_Pose8:
	db "GFX_ThrownCane_Pose8.bin"
GFX_ThrownCane_Pose8End:
GFX_ThrownCane_Pose9:
	db "GFX_ThrownCane_Pose9.bin"
GFX_ThrownCane_Pose9End:
GFX_Arrow_Pose:
	db "GFX_Arrow_Pose.bin"
GFX_Arrow_PoseEnd:
GFX_Exit_Pose:
	db "GFX_Exit_Pose.bin"
GFX_Exit_PoseEnd:
GFX_SwingingRope_Pose1:
	db "GFX_SwingingRope_Pose1.bin"
GFX_SwingingRope_Pose1End:
GFX_SwingingRope_Pose2:
	db "GFX_SwingingRope_Pose2.bin"
GFX_SwingingRope_Pose2End:
GFX_SwingingRope_Pose3:
	db "GFX_SwingingRope_Pose3.bin"
GFX_SwingingRope_Pose3End:
GFX_SwingingRope_Pose4:
	db "GFX_SwingingRope_Pose4.bin"
GFX_SwingingRope_Pose4End:
GFX_SwingingRope_Pose5:
	db "GFX_SwingingRope_Pose5.bin"
GFX_SwingingRope_Pose5End:
GFX_SwingingRope_Pose6:
	db "GFX_SwingingRope_Pose6.bin"
GFX_SwingingRope_Pose6End:
GFX_SwingingRope_Pose7:
	db "GFX_SwingingRope_Pose7.bin"
GFX_SwingingRope_Pose7End:
GFX_SwingingRope_Pose8:
	db "GFX_SwingingRope_Pose8.bin"
GFX_SwingingRope_Pose8End:
GFX_SwingingRope_Pose9:
	db "GFX_SwingingRope_Pose9.bin"
GFX_SwingingRope_Pose9End:
GFX_SwingingRope_Pose10:
	db "GFX_SwingingRope_Pose10.bin"
GFX_SwingingRope_Pose10End:
GFX_SwingingRope_Pose11:
	db "GFX_SwingingRope_Pose11.bin"
GFX_SwingingRope_Pose11End:
GFX_SwingingRope_Pose12:
	db "GFX_SwingingRope_Pose12.bin"
GFX_SwingingRope_Pose12End:
GFX_SwingingRope_Pose13:
	db "GFX_SwingingRope_Pose13.bin"
GFX_SwingingRope_Pose13End:
GFX_SwingingRope_Pose14:
	db "GFX_SwingingRope_Pose14.bin"
GFX_SwingingRope_Pose14End:
GFX_SwingingRope_Pose15:
	db "GFX_SwingingRope_Pose15.bin"
GFX_SwingingRope_Pose15End:
GFX_SwingingRope_Pose16:
	db "GFX_SwingingRope_Pose16.bin"
GFX_SwingingRope_Pose16End:
GFX_Diddy_Victory1:
	db "GFX_Diddy_Victory1.bin"
GFX_Diddy_Victory1End:
GFX_Diddy_Victory2:
	db "GFX_Diddy_Victory2.bin"
GFX_Diddy_Victory2End:
GFX_Diddy_Victory3:
	db "GFX_Diddy_Victory3.bin"
GFX_Diddy_Victory3End:
GFX_Diddy_Victory4:
	db "GFX_Diddy_Victory4.bin"
GFX_Diddy_Victory4End:
GFX_Diddy_Victory5:
	db "GFX_Diddy_Victory5.bin"
GFX_Diddy_Victory5End:
GFX_Diddy_Victory6:
	db "GFX_Diddy_Victory6.bin"
GFX_Diddy_Victory6End:
GFX_Diddy_Victory7:
	db "GFX_Diddy_Victory7.bin"
GFX_Diddy_Victory7End:
GFX_Diddy_Victory8:
	db "GFX_Diddy_Victory8.bin"
GFX_Diddy_Victory8End:
GFX_Diddy_Victory9:
	db "GFX_Diddy_Victory9.bin"
GFX_Diddy_Victory9End:
GFX_Diddy_Victory10:
	db "GFX_Diddy_Victory10.bin"
GFX_Diddy_Victory10End:
GFX_Diddy_Victory11:
	db "GFX_Diddy_Victory11.bin"
GFX_Diddy_Victory11End:
GFX_Diddy_Victory12:
	db "GFX_Diddy_Victory12.bin"
GFX_Diddy_Victory12End:
GFX_Diddy_Victory13:
	db "GFX_Diddy_Victory13.bin"
GFX_Diddy_Victory13End:
GFX_DiddyStars_Pose1:
	db "GFX_DiddyStars_Pose1.bin"
GFX_DiddyStars_Pose1End:
GFX_DiddyStars_Pose2:
	db "GFX_DiddyStars_Pose2.bin"
GFX_DiddyStars_Pose2End:
GFX_DiddyStars_Pose3:
	db "GFX_DiddyStars_Pose3.bin"
GFX_DiddyStars_Pose3End:
GFX_Diddy_Duck1:
	db "GFX_Diddy_Duck1.bin"
GFX_Diddy_Duck1End:
GFX_Diddy_Duck2:
	db "GFX_Diddy_Duck2.bin"
GFX_Diddy_Duck2End:
GFX_Diddy_Duck3:
	db "GFX_Diddy_Duck3.bin"
GFX_Diddy_Duck3End:
GFX_Diddy_Duck4:
	db "GFX_Diddy_Duck4.bin"
GFX_Diddy_Duck4End:
GFX_Diddy_Duck5:
	db "GFX_Diddy_Duck5.bin"
GFX_Diddy_Duck5End:
GFX_Diddy_Duck6:
	db "GFX_Diddy_Duck6.bin"
GFX_Diddy_Duck6End:
GFX_Diddy_Duck7:
	db "GFX_Diddy_Duck7.bin"
GFX_Diddy_Duck7End:
GFX_Diddy_Duck8:
	db "GFX_Diddy_Duck8.bin"
GFX_Diddy_Duck8End:
GFX_Diddy_Duck9:
	db "GFX_Diddy_Duck9.bin"
GFX_Diddy_Duck9End:
GFX_Diddy_Duck10:
	db "GFX_Diddy_Duck10.bin"
GFX_Diddy_Duck10End:
GFX_Diddy_Duck11:
	db "GFX_Diddy_Duck11.bin"
GFX_Diddy_Duck11End:
GFX_Diddy_Duck12:
	db "GFX_Diddy_Duck12.bin"
GFX_Diddy_Duck12End:
GFX_Diddy_Duck13:
	db "GFX_Diddy_Duck13.bin"
GFX_Diddy_Duck13End:
GFX_DonkeyKong_HangOntoWinky1:
	db "GFX_DonkeyKong_HangOntoWinky1.bin"
GFX_DonkeyKong_HangOntoWinky1End:
GFX_DonkeyKong_HangOntoWinky2:
	db "GFX_DonkeyKong_HangOntoWinky2.bin"
GFX_DonkeyKong_HangOntoWinky2End:
GFX_DonkeyKong_HangOntoWinky3:
	db "GFX_DonkeyKong_HangOntoWinky3.bin"
GFX_DonkeyKong_HangOntoWinky3End:
GFX_Diddy_Crawling1:
	db "GFX_Diddy_Crawling1.bin"
GFX_Diddy_Crawling1End:
GFX_Diddy_Crawling2:
	db "GFX_Diddy_Crawling2.bin"
GFX_Diddy_Crawling2End:
GFX_Diddy_Crawling3:
	db "GFX_Diddy_Crawling3.bin"
GFX_Diddy_Crawling3End:
GFX_Diddy_Crawling4:
	db "GFX_Diddy_Crawling4.bin"
GFX_Diddy_Crawling4End:
GFX_Diddy_Crawling5:
	db "GFX_Diddy_Crawling5.bin"
GFX_Diddy_Crawling5End:
GFX_Diddy_Crawling6:
	db "GFX_Diddy_Crawling6.bin"
GFX_Diddy_Crawling6End:
GFX_Diddy_Crawling7:
	db "GFX_Diddy_Crawling7.bin"
GFX_Diddy_Crawling7End:
GFX_Diddy_Crawling8:
	db "GFX_Diddy_Crawling8.bin"
GFX_Diddy_Crawling8End:
GFX_Diddy_Crawling9:
	db "GFX_Diddy_Crawling9.bin"
GFX_Diddy_Crawling9End:
GFX_Diddy_Crawling10:
	db "GFX_Diddy_Crawling10.bin"
GFX_Diddy_Crawling10End:
GFX_Diddy_Crawling11:
	db "GFX_Diddy_Crawling11.bin"
GFX_Diddy_Crawling11End:
GFX_Diddy_Crawling12:
	db "GFX_Diddy_Crawling12.bin"
GFX_Diddy_Crawling12End:
GFX_Diddy_Jump1:
	db "GFX_Diddy_Jump1.bin"
GFX_Diddy_Jump1End:
GFX_Diddy_Jump2:
	db "GFX_Diddy_Jump2.bin"
GFX_Diddy_Jump2End:
GFX_Diddy_Jump3:
	db "GFX_Diddy_Jump3.bin"
GFX_Diddy_Jump3End:
GFX_Diddy_Jump4:
	db "GFX_Diddy_Jump4.bin"
GFX_Diddy_Jump4End:
GFX_Diddy_Jump5:
	db "GFX_Diddy_Jump5.bin"
GFX_Diddy_Jump5End:
GFX_Diddy_Jump6:
	db "GFX_Diddy_Jump6.bin"
GFX_Diddy_Jump6End:
GFX_Diddy_Jump7:
	db "GFX_Diddy_Jump7.bin"
GFX_Diddy_Jump7End:
GFX_Diddy_Jump8:
	db "GFX_Diddy_Jump8.bin"
GFX_Diddy_Jump8End:
GFX_Diddy_Jump9:
	db "GFX_Diddy_Jump9.bin"
GFX_Diddy_Jump9End:
GFX_Diddy_Jump10:
	db "GFX_Diddy_Jump10.bin"
GFX_Diddy_Jump10End:
GFX_Diddy_Jump11:
	db "GFX_Diddy_Jump11.bin"
GFX_Diddy_Jump11End:
GFX_Diddy_Jump12:
	db "GFX_Diddy_Jump12.bin"
GFX_Diddy_Jump12End:
GFX_Diddy_Jump13:
	db "GFX_Diddy_Jump13.bin"
GFX_Diddy_Jump13End:
GFX_Diddy_Fall1:
	db "GFX_Diddy_Fall1.bin"
GFX_Diddy_Fall1End:
GFX_Diddy_Fall2:
	db "GFX_Diddy_Fall2.bin"
GFX_Diddy_Fall2End:
GFX_Diddy_Fall3:
	db "GFX_Diddy_Fall3.bin"
GFX_Diddy_Fall3End:
GFX_Diddy_Fall4:
	db "GFX_Diddy_Fall4.bin"
GFX_Diddy_Fall4End:
GFX_Diddy_Fall5:
	db "GFX_Diddy_Fall5.bin"
GFX_Diddy_Fall5End:
GFX_Diddy_Land1:
	db "GFX_Diddy_Land1.bin"
GFX_Diddy_Land1End:
GFX_Diddy_Land2:
	db "GFX_Diddy_Land2.bin"
GFX_Diddy_Land2End:
GFX_Diddy_Swimming1:
	db "GFX_Diddy_Swimming1.bin"
GFX_Diddy_Swimming1End:
GFX_Diddy_Swimming2:
	db "GFX_Diddy_Swimming2.bin"
GFX_Diddy_Swimming2End:
GFX_Diddy_Swimming3:
	db "GFX_Diddy_Swimming3.bin"
GFX_Diddy_Swimming3End:
GFX_Diddy_Swimming4:
	db "GFX_Diddy_Swimming4.bin"
GFX_Diddy_Swimming4End:
GFX_Diddy_Swimming5:
	db "GFX_Diddy_Swimming5.bin"
GFX_Diddy_Swimming5End:
GFX_Diddy_Swimming6:
	db "GFX_Diddy_Swimming6.bin"
GFX_Diddy_Swimming6End:
GFX_Diddy_Swimming7:
	db "GFX_Diddy_Swimming7.bin"
GFX_Diddy_Swimming7End:
GFX_Diddy_Swimming8:
	db "GFX_Diddy_Swimming8.bin"
GFX_Diddy_Swimming8End:
GFX_Diddy_Swimming9:
	db "GFX_Diddy_Swimming9.bin"
GFX_Diddy_Swimming9End:
GFX_Diddy_Swimming10:
	db "GFX_Diddy_Swimming10.bin"
GFX_Diddy_Swimming10End:
GFX_Diddy_Swimming11:
	db "GFX_Diddy_Swimming11.bin"
GFX_Diddy_Swimming11End:
GFX_Diddy_Swimming12:
	db "GFX_Diddy_Swimming12.bin"
GFX_Diddy_Swimming12End:
GFX_Diddy_Swimming13:
	db "GFX_Diddy_Swimming13.bin"
GFX_Diddy_Swimming13End:
GFX_Diddy_Swimming14:
	db "GFX_Diddy_Swimming14.bin"
GFX_Diddy_Swimming14End:
GFX_Diddy_Swimming15:
	db "GFX_Diddy_Swimming15.bin"
GFX_Diddy_Swimming15End:
GFX_Diddy_Hurt1:
	db "GFX_Diddy_Hurt1.bin"
GFX_Diddy_Hurt1End:
GFX_Diddy_Hurt2:
	db "GFX_Diddy_Hurt2.bin"
GFX_Diddy_Hurt2End:
GFX_Diddy_Hurt3:
	db "GFX_Diddy_Hurt3.bin"
GFX_Diddy_Hurt3End:
GFX_Diddy_Hurt4:
	db "GFX_Diddy_Hurt4.bin"
GFX_Diddy_Hurt4End:
GFX_Diddy_Hurt5:
	db "GFX_Diddy_Hurt5.bin"
GFX_Diddy_Hurt5End:
GFX_Diddy_Hurt6:
	db "GFX_Diddy_Hurt6.bin"
GFX_Diddy_Hurt6End:
GFX_Diddy_Hurt7:
	db "GFX_Diddy_Hurt7.bin"
GFX_Diddy_Hurt7End:
GFX_Diddy_Hurt8:
	db "GFX_Diddy_Hurt8.bin"
GFX_Diddy_Hurt8End:
GFX_Diddy_Hurt9:
	db "GFX_Diddy_Hurt9.bin"
GFX_Diddy_Hurt9End:
GFX_Diddy_Hurt10:
	db "GFX_Diddy_Hurt10.bin"
GFX_Diddy_Hurt10End:
GFX_Diddy_Hurt11:
	db "GFX_Diddy_Hurt11.bin"
GFX_Diddy_Hurt11End:
GFX_Diddy_Hurt12:
	db "GFX_Diddy_Hurt12.bin"
GFX_Diddy_Hurt12End:
GFX_Diddy_Hurt13:
	db "GFX_Diddy_Hurt13.bin"
GFX_Diddy_Hurt13End:
GFX_Diddy_Hurt14:
	db "GFX_Diddy_Hurt14.bin"
GFX_Diddy_Hurt14End:
GFX_Diddy_Hurt15:
	db "GFX_Diddy_Hurt15.bin"
GFX_Diddy_Hurt15End:
GFX_Diddy_Hurt16:
	db "GFX_Diddy_Hurt16.bin"
GFX_Diddy_Hurt16End:
GFX_Diddy_Hurt18:
	db "GFX_Diddy_Hurt18.bin"
GFX_Diddy_Hurt18End:
GFX_Diddy_Hurt19:
	db "GFX_Diddy_Hurt19.bin"
GFX_Diddy_Hurt19End:
GFX_Diddy_Hurt20:
	db "GFX_Diddy_Hurt20.bin"
GFX_Diddy_Hurt20End:
GFX_DonkeyKong_Pickup1:
	db "GFX_DonkeyKong_Pickup1.bin"
GFX_DonkeyKong_Pickup1End:
GFX_DonkeyKong_Pickup2:
	db "GFX_DonkeyKong_Pickup2.bin"
GFX_DonkeyKong_Pickup2End:
GFX_DonkeyKong_Pickup3:
	db "GFX_DonkeyKong_Pickup3.bin"
GFX_DonkeyKong_Pickup3End:
GFX_DonkeyKong_Pickup4:
	db "GFX_DonkeyKong_Pickup4.bin"
GFX_DonkeyKong_Pickup4End:
GFX_DonkeyKong_Pickup5:
	db "GFX_DonkeyKong_Pickup5.bin"
GFX_DonkeyKong_Pickup5End:
GFX_DonkeyKong_Pickup6:
	db "GFX_DonkeyKong_Pickup6.bin"
GFX_DonkeyKong_Pickup6End:
GFX_DonkeyKong_Pickup7:
	db "GFX_DonkeyKong_Pickup7.bin"
GFX_DonkeyKong_Pickup7End:
GFX_DonkeyKong_SitDown1:
	db "GFX_DonkeyKong_SitDown1.bin"
GFX_DonkeyKong_SitDown1End:
GFX_DonkeyKong_SitDown2:
	db "GFX_DonkeyKong_SitDown2.bin"
GFX_DonkeyKong_SitDown2End:
GFX_DonkeyKong_SitDown3:
	db "GFX_DonkeyKong_SitDown3.bin"
GFX_DonkeyKong_SitDown3End:
GFX_DonkeyKong_SitDown4:
	db "GFX_DonkeyKong_SitDown4.bin"
GFX_DonkeyKong_SitDown4End:
GFX_DonkeyKong_SitDown5:
	db "GFX_DonkeyKong_SitDown5.bin"
GFX_DonkeyKong_SitDown5End:
GFX_DonkeyKong_SitDown6:
	db "GFX_DonkeyKong_SitDown6.bin"
GFX_DonkeyKong_SitDown6End:
GFX_DonkeyKong_SitDown7:
	db "GFX_DonkeyKong_SitDown7.bin"
GFX_DonkeyKong_SitDown7End:
GFX_DonkeyKong_Hurt14:
	db "GFX_DonkeyKong_Hurt14.bin"
GFX_DonkeyKong_Hurt14End:
GFX_DonkeyKong_Hurt15:
	db "GFX_DonkeyKong_Hurt15.bin"
GFX_DonkeyKong_Hurt15End:
GFX_DonkeyKong_Hurt16:
	db "GFX_DonkeyKong_Hurt16.bin"
GFX_DonkeyKong_Hurt16End:
GFX_DonkeyKong_Hurt17:
	db "GFX_DonkeyKong_Hurt17.bin"
GFX_DonkeyKong_Hurt17End:
GFX_DonkeyKong_UnusedVictory1:
	db "GFX_DonkeyKong_UnusedVictory1.bin"
GFX_DonkeyKong_UnusedVictory1End:
GFX_DonkeyKong_UnusedVictory2:
	db "GFX_DonkeyKong_UnusedVictory2.bin"
GFX_DonkeyKong_UnusedVictory2End:
GFX_DonkeyKong_UnusedVictory3:
	db "GFX_DonkeyKong_UnusedVictory3.bin"
GFX_DonkeyKong_UnusedVictory3End:
GFX_DonkeyKong_UnusedVictory4:
	db "GFX_DonkeyKong_UnusedVictory4.bin"
GFX_DonkeyKong_UnusedVictory4End:
GFX_DonkeyKong_UnusedVictory5:
	db "GFX_DonkeyKong_UnusedVictory5.bin"
GFX_DonkeyKong_UnusedVictory5End:
GFX_DonkeyKong_UnusedVictory6:
	db "GFX_DonkeyKong_UnusedVictory6.bin"
GFX_DonkeyKong_UnusedVictory6End:
GFX_DonkeyKong_UnusedVictory7:
	db "GFX_DonkeyKong_UnusedVictory7.bin"
GFX_DonkeyKong_UnusedVictory7End:
GFX_DonkeyKong_UnusedVictory8:
	db "GFX_DonkeyKong_UnusedVictory8.bin"
GFX_DonkeyKong_UnusedVictory8End:
GFX_DonkeyKong_UnusedVictory9:
	db "GFX_DonkeyKong_UnusedVictory9.bin"
GFX_DonkeyKong_UnusedVictory9End:
GFX_DonkeyKong_UnusedVictory10:
	db "GFX_DonkeyKong_UnusedVictory10.bin"
GFX_DonkeyKong_UnusedVictory10End:
GFX_DonkeyKong_UnusedVictory11:
	db "GFX_DonkeyKong_UnusedVictory11.bin"
GFX_DonkeyKong_UnusedVictory11End:
GFX_DonkeyKong_UnusedVictory12:
	db "GFX_DonkeyKong_UnusedVictory12.bin"
GFX_DonkeyKong_UnusedVictory12End:
GFX_DonkeyKong_Run1:
	db "GFX_DonkeyKong_Run1.bin"
GFX_DonkeyKong_Run1End:
GFX_DonkeyKong_Run2:
	db "GFX_DonkeyKong_Run2.bin"
GFX_DonkeyKong_Run2End:
GFX_DonkeyKong_Run3:
	db "GFX_DonkeyKong_Run3.bin"
GFX_DonkeyKong_Run3End:
GFX_DonkeyKong_Run4:
	db "GFX_DonkeyKong_Run4.bin"
GFX_DonkeyKong_Run4End:
GFX_DonkeyKong_Run5:
	db "GFX_DonkeyKong_Run5.bin"
GFX_DonkeyKong_Run5End:
GFX_DonkeyKong_Run6:
	db "GFX_DonkeyKong_Run6.bin"
GFX_DonkeyKong_Run6End:
GFX_DonkeyKong_Run7:
	db "GFX_DonkeyKong_Run7.bin"
GFX_DonkeyKong_Run7End:
GFX_DonkeyKong_Run8:
	db "GFX_DonkeyKong_Run8.bin"
GFX_DonkeyKong_Run8End:
GFX_DonkeyKong_Run9:
	db "GFX_DonkeyKong_Run9.bin"
GFX_DonkeyKong_Run9End:
GFX_DonkeyKong_Run10:
	db "GFX_DonkeyKong_Run10.bin"
GFX_DonkeyKong_Run10End:
GFX_DonkeyKong_Run11:
	db "GFX_DonkeyKong_Run11.bin"
GFX_DonkeyKong_Run11End:
GFX_DonkeyKong_Run12:
	db "GFX_DonkeyKong_Run12.bin"
GFX_DonkeyKong_Run12End:
GFX_DonkeyKong_Run13:
	db "GFX_DonkeyKong_Run13.bin"
GFX_DonkeyKong_Run13End:
GFX_DonkeyKong_Run14:
	db "GFX_DonkeyKong_Run14.bin"
GFX_DonkeyKong_Run14End:
GFX_DonkeyKong_Run15:
	db "GFX_DonkeyKong_Run15.bin"
GFX_DonkeyKong_Run15End:
GFX_DonkeyKong_Run16:
	db "GFX_DonkeyKong_Run16.bin"
GFX_DonkeyKong_Run16End:
GFX_DonkeyKong_Run17:
	db "GFX_DonkeyKong_Run17.bin"
GFX_DonkeyKong_Run17End:
GFX_DonkeyKong_Run18:
	db "GFX_DonkeyKong_Run18.bin"
GFX_DonkeyKong_Run18End:
GFX_DonkeyKong_Run19:
	db "GFX_DonkeyKong_Run19.bin"
GFX_DonkeyKong_Run19End:
GFX_DonkeyKong_Run20:
	db "GFX_DonkeyKong_Run20.bin"
GFX_DonkeyKong_Run20End:
GFX_Diddy_Throw1:
	db "GFX_Diddy_Throw1.bin"
GFX_Diddy_Throw1End:
GFX_Diddy_Throw2:
	db "GFX_Diddy_Throw2.bin"
GFX_Diddy_Throw2End:
GFX_Diddy_Throw3:
	db "GFX_Diddy_Throw3.bin"
GFX_Diddy_Throw3End:
GFX_Diddy_Throw4:
	db "GFX_Diddy_Throw4.bin"
GFX_Diddy_Throw4End:
GFX_Diddy_Throw5:
	db "GFX_Diddy_Throw5.bin"
GFX_Diddy_Throw5End:
GFX_Diddy_Throw6:
	db "GFX_Diddy_Throw6.bin"
GFX_Diddy_Throw6End:
GFX_Diddy_Throw7:
	db "GFX_Diddy_Throw7.bin"
GFX_Diddy_Throw7End:
GFX_Diddy_Throw8:
	db "GFX_Diddy_Throw8.bin"
GFX_Diddy_Throw8End:
GFX_Diddy_Throw9:
	db "GFX_Diddy_Throw9.bin"
GFX_Diddy_Throw9End:
GFX_Diddy_Throw10:
	db "GFX_Diddy_Throw10.bin"
GFX_Diddy_Throw10End:
GFX_Diddy_Throw11:
	db "GFX_Diddy_Throw11.bin"
GFX_Diddy_Throw11End:
GFX_Diddy_Throw12:
	db "GFX_Diddy_Throw12.bin"
GFX_Diddy_Throw12End:
GFX_Diddy_Throw13:
	db "GFX_Diddy_Throw13.bin"
GFX_Diddy_Throw13End:
GFX_Diddy_Throw14:
	db "GFX_Diddy_Throw14.bin"
GFX_Diddy_Throw14End:
GFX_Diddy_Throw15:
	db "GFX_Diddy_Throw15.bin"
GFX_Diddy_Throw15End:
GFX_Diddy_Throw16:
	db "GFX_Diddy_Throw16.bin"
GFX_Diddy_Throw16End:
GFX_Diddy_Throw17:
	db "GFX_Diddy_Throw17.bin"
GFX_Diddy_Throw17End:
GFX_Diddy_Throw18:
	db "GFX_Diddy_Throw18.bin"
GFX_Diddy_Throw18End:
GFX_Diddy_Throw19:
	db "GFX_Diddy_Throw19.bin"
GFX_Diddy_Throw19End:
GFX_Diddy_Throw20:
	db "GFX_Diddy_Throw20.bin"
GFX_Diddy_Throw20End:
GFX_GroundCover_CaveLevel:
	db "GFX_GroundCover_CaveLevel.bin"
GFX_GroundCover_CaveLevelEnd:
GFX_PhonographHorn_Spin1:
	db "GFX_PhonographHorn_Spin1.bin"
GFX_PhonographHorn_Spin1End:
GFX_PhonographHorn_Spin2:
	db "GFX_PhonographHorn_Spin2.bin"
GFX_PhonographHorn_Spin2End:
GFX_PhonographHorn_Spin3:
	db "GFX_PhonographHorn_Spin3.bin"
GFX_PhonographHorn_Spin3End:
GFX_PhonographHorn_Spin4:
	db "GFX_PhonographHorn_Spin4.bin"
GFX_PhonographHorn_Spin4End:
GFX_PhonographHorn_Spin5:
	db "GFX_PhonographHorn_Spin5.bin"
GFX_PhonographHorn_Spin5End:
GFX_PhonographHorn_Spin6:
	db "GFX_PhonographHorn_Spin6.bin"
GFX_PhonographHorn_Spin6End:
GFX_PhonographHorn_Spin7:
	db "GFX_PhonographHorn_Spin7.bin"
GFX_PhonographHorn_Spin7End:
GFX_PhonographHorn_Spin8:
	db "GFX_PhonographHorn_Spin8.bin"
GFX_PhonographHorn_Spin8End:
GFX_FunkyKong_LookTowardsCamera1:
	db "GFX_FunkyKong_LookTowardsCamera1.bin"
GFX_FunkyKong_LookTowardsCamera1End:
GFX_FunkyKong_LookTowardsCamera2:
	db "GFX_FunkyKong_LookTowardsCamera2.bin"
GFX_FunkyKong_LookTowardsCamera2End:
GFX_FunkyKong_LookTowardsCamera3:
	db "GFX_FunkyKong_LookTowardsCamera3.bin"
GFX_FunkyKong_LookTowardsCamera3End:
GFX_FunkyKong_LookTowardsCamera4:
	db "GFX_FunkyKong_LookTowardsCamera4.bin"
GFX_FunkyKong_LookTowardsCamera4End:
GFX_FunkyKong_LookTowardsCamera5:
	db "GFX_FunkyKong_LookTowardsCamera5.bin"
GFX_FunkyKong_LookTowardsCamera5End:
GFX_FunkyKong_LookTowardsCamera6:
	db "GFX_FunkyKong_LookTowardsCamera6.bin"
GFX_FunkyKong_LookTowardsCamera6End:
GFX_FunkyKong_LookTowardsCamera7:
	db "GFX_FunkyKong_LookTowardsCamera7.bin"
GFX_FunkyKong_LookTowardsCamera7End:
GFX_FunkyKong_LookTowardsCamera8:
	db "GFX_FunkyKong_LookTowardsCamera8.bin"
GFX_FunkyKong_LookTowardsCamera8End:
GFX_FunkyKong_LookTowardsCamera9:
	db "GFX_FunkyKong_LookTowardsCamera9.bin"
GFX_FunkyKong_LookTowardsCamera9End:
GFX_FunkyKong_LookTowardsCamera10:
	db "GFX_FunkyKong_LookTowardsCamera10.bin"
GFX_FunkyKong_LookTowardsCamera10End:
GFX_FunkyKong_LookTowardsCamera11:
	db "GFX_FunkyKong_LookTowardsCamera11.bin"
GFX_FunkyKong_LookTowardsCamera11End:
GFX_FunkyKong_LookTowardsCamera12:
	db "GFX_FunkyKong_LookTowardsCamera12.bin"
GFX_FunkyKong_LookTowardsCamera12End:
GFX_FunkyKong_LookTowardsCamera13:
	db "GFX_FunkyKong_LookTowardsCamera13.bin"
GFX_FunkyKong_LookTowardsCamera13End:
GFX_FunkyKong_LookTowardsCamera14:
	db "GFX_FunkyKong_LookTowardsCamera14.bin"
GFX_FunkyKong_LookTowardsCamera14End:
GFX_MankyKong_GrabBarrel1:
	db "GFX_MankyKong_GrabBarrel1.bin"
GFX_MankyKong_GrabBarrel1End:
GFX_MankyKong_GrabBarrel2:
	db "GFX_MankyKong_GrabBarrel2.bin"
GFX_MankyKong_GrabBarrel2End:
GFX_MankyKong_GrabBarrel3:
	db "GFX_MankyKong_GrabBarrel3.bin"
GFX_MankyKong_GrabBarrel3End:
GFX_MankyKong_GrabBarrel4:
	db "GFX_MankyKong_GrabBarrel4.bin"
GFX_MankyKong_GrabBarrel4End:
GFX_MankyKong_GrabBarrel5:
	db "GFX_MankyKong_GrabBarrel5.bin"
GFX_MankyKong_GrabBarrel5End:
GFX_MankyKong_GrabBarrel6:
	db "GFX_MankyKong_GrabBarrel6.bin"
GFX_MankyKong_GrabBarrel6End:
GFX_MankyKong_GrabBarrel7:
	db "GFX_MankyKong_GrabBarrel7.bin"
GFX_MankyKong_GrabBarrel7End:
GFX_MankyKong_GrabBarrel8:
	db "GFX_MankyKong_GrabBarrel8.bin"
GFX_MankyKong_GrabBarrel8End:
GFX_MankyKong_ThrowBarrel1:
	db "GFX_MankyKong_ThrowBarrel1.bin"
GFX_MankyKong_ThrowBarrel1End:
GFX_MankyKong_ThrowBarrel2:
	db "GFX_MankyKong_ThrowBarrel2.bin"
GFX_MankyKong_ThrowBarrel2End:
GFX_MankyKong_ThrowBarrel3:
	db "GFX_MankyKong_ThrowBarrel3.bin"
GFX_MankyKong_ThrowBarrel3End:
GFX_MankyKong_ThrowBarrel4:
	db "GFX_MankyKong_ThrowBarrel4.bin"
GFX_MankyKong_ThrowBarrel4End:
GFX_MankyKong_ThrowBarrel5:
	db "GFX_MankyKong_ThrowBarrel5.bin"
GFX_MankyKong_ThrowBarrel5End:
GFX_MankyKong_ThrowBarrel6:
	db "GFX_MankyKong_ThrowBarrel6.bin"
GFX_MankyKong_ThrowBarrel6End:
GFX_MankyKong_ThrowBarrel7:
	db "GFX_MankyKong_ThrowBarrel7.bin"
GFX_MankyKong_ThrowBarrel7End:
GFX_MankyKong_ThrowBarrel8:
	db "GFX_MankyKong_ThrowBarrel8.bin"
GFX_MankyKong_ThrowBarrel8End:
GFX_MankyKong_ThrowBarrel9:
	db "GFX_MankyKong_ThrowBarrel9.bin"
GFX_MankyKong_ThrowBarrel9End:
GFX_MankyKong_ThrowBarrel10:
	db "GFX_MankyKong_ThrowBarrel10.bin"
GFX_MankyKong_ThrowBarrel10End:
GFX_MankyKong_ThrowBarrel11:
	db "GFX_MankyKong_ThrowBarrel11.bin"
GFX_MankyKong_ThrowBarrel11End:
GFX_MankyKong_ThrowBarrel12:
	db "GFX_MankyKong_ThrowBarrel12.bin"
GFX_MankyKong_ThrowBarrel12End:
GFX_MankyKong_ThrowBarrel13:
	db "GFX_MankyKong_ThrowBarrel13.bin"
GFX_MankyKong_ThrowBarrel13End:
GFX_MankyKong_ThrowBarrel14:
	db "GFX_MankyKong_ThrowBarrel14.bin"
GFX_MankyKong_ThrowBarrel14End:
GFX_MankyKong_ThrowBarrel15:
	db "GFX_MankyKong_ThrowBarrel15.bin"
GFX_MankyKong_ThrowBarrel15End:
GFX_DonkeyKong_Idle1:
	db "GFX_DonkeyKong_Idle1.bin"
GFX_DonkeyKong_Idle1End:
GFX_DonkeyKong_Idle2:
	db "GFX_DonkeyKong_Idle2.bin"
GFX_DonkeyKong_Idle2End:
GFX_DonkeyKong_Idle3:
	db "GFX_DonkeyKong_Idle3.bin"
GFX_DonkeyKong_Idle3End:
GFX_DonkeyKong_Idle4:
	db "GFX_DonkeyKong_Idle4.bin"
GFX_DonkeyKong_Idle4End:
GFX_DonkeyKong_Idle5:
	db "GFX_DonkeyKong_Idle5.bin"
GFX_DonkeyKong_Idle5End:
GFX_DonkeyKong_Idle6:
	db "GFX_DonkeyKong_Idle6.bin"
GFX_DonkeyKong_Idle6End:
GFX_DonkeyKong_Idle7:
	db "GFX_DonkeyKong_Idle7.bin"
GFX_DonkeyKong_Idle7End:
GFX_DonkeyKong_Idle8:
	db "GFX_DonkeyKong_Idle8.bin"
GFX_DonkeyKong_Idle8End:
GFX_DonkeyKong_Idle9:
	db "GFX_DonkeyKong_Idle9.bin"
GFX_DonkeyKong_Idle9End:
GFX_DonkeyKong_Idle10:
	db "GFX_DonkeyKong_Idle10.bin"
GFX_DonkeyKong_Idle10End:
GFX_DonkeyKong_Idle11:
	db "GFX_DonkeyKong_Idle11.bin"
GFX_DonkeyKong_Idle11End:
GFX_DonkeyKong_Idle12:
	db "GFX_DonkeyKong_Idle12.bin"
GFX_DonkeyKong_Idle12End:
GFX_DonkeyKong_Idle13:
	db "GFX_DonkeyKong_Idle13.bin"
GFX_DonkeyKong_Idle13End:
GFX_DonkeyKong_Idle14:
	db "GFX_DonkeyKong_Idle14.bin"
GFX_DonkeyKong_Idle14End:
GFX_DonkeyKong_Idle15:
	db "GFX_DonkeyKong_Idle15.bin"
GFX_DonkeyKong_Idle15End:
GFX_DonkeyKong_Idle16:
	db "GFX_DonkeyKong_Idle16.bin"
GFX_DonkeyKong_Idle16End:
GFX_DonkeyKong_Idle17:
	db "GFX_DonkeyKong_Idle17.bin"
GFX_DonkeyKong_Idle17End:
GFX_DonkeyKong_Idle18:
	db "GFX_DonkeyKong_Idle18.bin"
GFX_DonkeyKong_Idle18End:
GFX_DonkeyKong_Idle19:
	db "GFX_DonkeyKong_Idle19.bin"
GFX_DonkeyKong_Idle19End:
GFX_DonkeyKong_Idle20:
	db "GFX_DonkeyKong_Idle20.bin"
GFX_DonkeyKong_Idle20End:
GFX_DonkeyKong_Idle21:
	db "GFX_DonkeyKong_Idle21.bin"
GFX_DonkeyKong_Idle21End:
GFX_Rockkroc_Turn1:
	db "GFX_Rockkroc_Turn1.bin"
GFX_Rockkroc_Turn1End:
GFX_Rockkroc_Turn2:
	db "GFX_Rockkroc_Turn2.bin"
GFX_Rockkroc_Turn2End:
GFX_SmallFish_Swim1:
	db "GFX_SmallFish_Swim1.bin"
GFX_SmallFish_Swim1End:
GFX_SmallFish_Swim2:
	db "GFX_SmallFish_Swim2.bin"
GFX_SmallFish_Swim2End:
GFX_SmallFish_Swim3:
	db "GFX_SmallFish_Swim3.bin"
GFX_SmallFish_Swim3End:
GFX_SmallFish_Swim4:
	db "GFX_SmallFish_Swim4.bin"
GFX_SmallFish_Swim4End:
GFX_SmallFish_Swim5:
	db "GFX_SmallFish_Swim5.bin"
GFX_SmallFish_Swim5End:
GFX_SmallFish_Swim6:
	db "GFX_SmallFish_Swim6.bin"
GFX_SmallFish_Swim6End:
GFX_SmallFish_Swim7:
	db "GFX_SmallFish_Swim7.bin"
GFX_SmallFish_Swim7End:
GFX_SmallFish_Swim8:
	db "GFX_SmallFish_Swim8.bin"
GFX_SmallFish_Swim8End:
GFX_InactiveMapDonkeyKong_Jump1:
	db "GFX_InactiveMapDonkeyKong_Jump1.bin"
GFX_InactiveMapDonkeyKong_Jump1End:
GFX_InactiveMapDonkeyKong_Jump2:
	db "GFX_InactiveMapDonkeyKong_Jump2.bin"
GFX_InactiveMapDonkeyKong_Jump2End:
GFX_InactiveMapDonkeyKong_Jump3:
	db "GFX_InactiveMapDonkeyKong_Jump3.bin"
GFX_InactiveMapDonkeyKong_Jump3End:
GFX_InactiveMapDonkeyKong_Jump4:
	db "GFX_InactiveMapDonkeyKong_Jump4.bin"
GFX_InactiveMapDonkeyKong_Jump4End:
GFX_InactiveMapDonkeyKong_Jump5:
	db "GFX_InactiveMapDonkeyKong_Jump5.bin"
GFX_InactiveMapDonkeyKong_Jump5End:
GFX_InactiveMapDonkeyKong_Jump6:
	db "GFX_InactiveMapDonkeyKong_Jump6.bin"
GFX_InactiveMapDonkeyKong_Jump6End:
GFX_InactiveMapDonkeyKong_Jump7:
	db "GFX_InactiveMapDonkeyKong_Jump7.bin"
GFX_InactiveMapDonkeyKong_Jump7End:
GFX_InactiveMapDonkeyKong_Jump8:
	db "GFX_InactiveMapDonkeyKong_Jump8.bin"
GFX_InactiveMapDonkeyKong_Jump8End:
GFX_InactiveMapDonkeyKong_Jump9:
	db "GFX_InactiveMapDonkeyKong_Jump9.bin"
GFX_InactiveMapDonkeyKong_Jump9End:
GFX_InactiveMapDonkeyKong_Jump10:
	db "GFX_InactiveMapDonkeyKong_Jump10.bin"
GFX_InactiveMapDonkeyKong_Jump10End:
GFX_InactiveMapDonkeyKong_Walk1:
	db "GFX_InactiveMapDonkeyKong_Walk1.bin"
GFX_InactiveMapDonkeyKong_Walk1End:
GFX_InactiveMapDonkeyKong_Walk2:
	db "GFX_InactiveMapDonkeyKong_Walk2.bin"
GFX_InactiveMapDonkeyKong_Walk2End:
GFX_InactiveMapDonkeyKong_Walk3:
	db "GFX_InactiveMapDonkeyKong_Walk3.bin"
GFX_InactiveMapDonkeyKong_Walk3End:
GFX_InactiveMapDonkeyKong_Walk4:
	db "GFX_InactiveMapDonkeyKong_Walk4.bin"
GFX_InactiveMapDonkeyKong_Walk4End:
GFX_InactiveMapDonkeyKong_Walk5:
	db "GFX_InactiveMapDonkeyKong_Walk5.bin"
GFX_InactiveMapDonkeyKong_Walk5End:
GFX_InactiveMapDonkeyKong_Walk6:
	db "GFX_InactiveMapDonkeyKong_Walk6.bin"
GFX_InactiveMapDonkeyKong_Walk6End:
GFX_InactiveMapDonkeyKong_Walk7:
	db "GFX_InactiveMapDonkeyKong_Walk7.bin"
GFX_InactiveMapDonkeyKong_Walk7End:
GFX_InactiveMapDonkeyKong_Walk8:
	db "GFX_InactiveMapDonkeyKong_Walk8.bin"
GFX_InactiveMapDonkeyKong_Walk8End:
GFX_InactiveMapDonkeyKong_Walk9:
	db "GFX_InactiveMapDonkeyKong_Walk9.bin"
GFX_InactiveMapDonkeyKong_Walk9End:
GFX_MapDonkeyKong_Walk1:
	db "GFX_MapDonkeyKong_Walk1.bin"
GFX_MapDonkeyKong_Walk1End:
GFX_MapDonkeyKong_Walk2:
	db "GFX_MapDonkeyKong_Walk2.bin"
GFX_MapDonkeyKong_Walk2End:
GFX_MapDonkeyKong_Walk3:
	db "GFX_MapDonkeyKong_Walk3.bin"
GFX_MapDonkeyKong_Walk3End:
GFX_MapDonkeyKong_Walk4:
	db "GFX_MapDonkeyKong_Walk4.bin"
GFX_MapDonkeyKong_Walk4End:
GFX_MapDonkeyKong_Walk5:
	db "GFX_MapDonkeyKong_Walk5.bin"
GFX_MapDonkeyKong_Walk5End:
GFX_MapDonkeyKong_Walk6:
	db "GFX_MapDonkeyKong_Walk6.bin"
GFX_MapDonkeyKong_Walk6End:
GFX_MapDonkeyKong_Walk7:
	db "GFX_MapDonkeyKong_Walk7.bin"
GFX_MapDonkeyKong_Walk7End:
GFX_MapDonkeyKong_Walk8:
	db "GFX_MapDonkeyKong_Walk8.bin"
GFX_MapDonkeyKong_Walk8End:
GFX_MapDonkeyKong_Walk9:
	db "GFX_MapDonkeyKong_Walk9.bin"
GFX_MapDonkeyKong_Walk9End:
GFX_MapDonkeyKong_Walk10:
	db "GFX_MapDonkeyKong_Walk10.bin"
GFX_MapDonkeyKong_Walk10End:
GFX_AirplaneBarrel_Pose:
	db "GFX_AirplaneBarrel_Pose.bin"
GFX_AirplaneBarrel_PoseEnd:
GFX_Diddy_IdleInMinecart1:
	db "GFX_Diddy_IdleInMinecart1.bin"
GFX_Diddy_IdleInMinecart1End:
GFX_Diddy_IdleInMinecart2:
	db "GFX_Diddy_IdleInMinecart2.bin"
GFX_Diddy_IdleInMinecart2End:
GFX_Diddy_IdleInMinecart3:
	db "GFX_Diddy_IdleInMinecart3.bin"
GFX_Diddy_IdleInMinecart3End:
GFX_NeckyFeather_Pose1:
	db "GFX_NeckyFeather_Pose1.bin"
GFX_NeckyFeather_Pose1End:
GFX_NeckyFeather_Pose2:
	db "GFX_NeckyFeather_Pose2.bin"
GFX_NeckyFeather_Pose2End:
GFX_NeckyFeather_Pose3:
	db "GFX_NeckyFeather_Pose3.bin"
GFX_NeckyFeather_Pose3End:
GFX_NeckyFeather_Pose4:
	db "GFX_NeckyFeather_Pose4.bin"
GFX_NeckyFeather_Pose4End:
GFX_NeckyFeather_Pose5:
	db "GFX_NeckyFeather_Pose5.bin"
GFX_NeckyFeather_Pose5End:
GFX_NeckyFeather_Pose6:
	db "GFX_NeckyFeather_Pose6.bin"
GFX_NeckyFeather_Pose6End:
GFX_Diddy_ClimbUpSingleVerticalRope1:
	db "GFX_Diddy_ClimbUpSingleVerticalRope1.bin"
GFX_Diddy_ClimbUpSingleVerticalRope1End:
GFX_Diddy_ClimbUpSingleVerticalRope2:
	db "GFX_Diddy_ClimbUpSingleVerticalRope2.bin"
GFX_Diddy_ClimbUpSingleVerticalRope2End:
GFX_Diddy_ClimbUpSingleVerticalRope3:
	db "GFX_Diddy_ClimbUpSingleVerticalRope3.bin"
GFX_Diddy_ClimbUpSingleVerticalRope3End:
GFX_Diddy_ClimbUpSingleVerticalRope4:
	db "GFX_Diddy_ClimbUpSingleVerticalRope4.bin"
GFX_Diddy_ClimbUpSingleVerticalRope4End:
GFX_Diddy_ClimbUpSingleVerticalRope5:
	db "GFX_Diddy_ClimbUpSingleVerticalRope5.bin"
GFX_Diddy_ClimbUpSingleVerticalRope5End:
GFX_Diddy_ClimbUpSingleVerticalRope6:
	db "GFX_Diddy_ClimbUpSingleVerticalRope6.bin"
GFX_Diddy_ClimbUpSingleVerticalRope6End:
GFX_Diddy_ClimbUpSingleVerticalRope7:
	db "GFX_Diddy_ClimbUpSingleVerticalRope7.bin"
GFX_Diddy_ClimbUpSingleVerticalRope7End:
GFX_Diddy_ClimbUpSingleVerticalRope8:
	db "GFX_Diddy_ClimbUpSingleVerticalRope8.bin"
GFX_Diddy_ClimbUpSingleVerticalRope8End:
GFX_Diddy_ClimbUpSingleVerticalRope9:
	db "GFX_Diddy_ClimbUpSingleVerticalRope9.bin"
GFX_Diddy_ClimbUpSingleVerticalRope9End:
GFX_Diddy_ClimbUpSingleVerticalRope10:
	db "GFX_Diddy_ClimbUpSingleVerticalRope10.bin"
GFX_Diddy_ClimbUpSingleVerticalRope10End:
GFX_Diddy_ClimbUpSingleVerticalRope11:
	db "GFX_Diddy_ClimbUpSingleVerticalRope11.bin"
GFX_Diddy_ClimbUpSingleVerticalRope11End:
GFX_Diddy_ClimbUpSingleVerticalRope12:
	db "GFX_Diddy_ClimbUpSingleVerticalRope12.bin"
GFX_Diddy_ClimbUpSingleVerticalRope12End:
GFX_VerticalRope_Pose:
	db "GFX_VerticalRope_Pose.bin"
GFX_VerticalRope_PoseEnd:
GFX_DonkeyKong_ClimbUpSingleVerticalRope1:
	db "GFX_DonkeyKong_ClimbUpSingleVerticalRope1.bin"
GFX_DonkeyKong_ClimbUpSingleVerticalRope1End:
GFX_DonkeyKong_ClimbUpSingleVerticalRope2:
	db "GFX_DonkeyKong_ClimbUpSingleVerticalRope2.bin"
GFX_DonkeyKong_ClimbUpSingleVerticalRope2End:
GFX_DonkeyKong_ClimbUpSingleVerticalRope3:
	db "GFX_DonkeyKong_ClimbUpSingleVerticalRope3.bin"
GFX_DonkeyKong_ClimbUpSingleVerticalRope3End:
GFX_DonkeyKong_ClimbUpSingleVerticalRope4:
	db "GFX_DonkeyKong_ClimbUpSingleVerticalRope4.bin"
GFX_DonkeyKong_ClimbUpSingleVerticalRope4End:
GFX_DonkeyKong_ClimbUpSingleVerticalRope5:
	db "GFX_DonkeyKong_ClimbUpSingleVerticalRope5.bin"
GFX_DonkeyKong_ClimbUpSingleVerticalRope5End:
GFX_DonkeyKong_ClimbUpSingleVerticalRope6:
	db "GFX_DonkeyKong_ClimbUpSingleVerticalRope6.bin"
GFX_DonkeyKong_ClimbUpSingleVerticalRope6End:
GFX_DonkeyKong_HangOnVerticalRope1:
	db "GFX_DonkeyKong_HangOnVerticalRope1.bin"
GFX_DonkeyKong_HangOnVerticalRope1End:
GFX_DonkeyKong_HangOnVerticalRope2:
	db "GFX_DonkeyKong_HangOnVerticalRope2.bin"
GFX_DonkeyKong_HangOnVerticalRope2End:
GFX_DonkeyKong_HangOnVerticalRope3:
	db "GFX_DonkeyKong_HangOnVerticalRope3.bin"
GFX_DonkeyKong_HangOnVerticalRope3End:
GFX_DonkeyKong_HangOnVerticalRope4:
	db "GFX_DonkeyKong_HangOnVerticalRope4.bin"
GFX_DonkeyKong_HangOnVerticalRope4End:
GFX_DonkeyKong_TurnOnVerticalRope1:
	db "GFX_DonkeyKong_TurnOnVerticalRope1.bin"
GFX_DonkeyKong_TurnOnVerticalRope1End:
GFX_DonkeyKong_TurnOnVerticalRope2:
	db "GFX_DonkeyKong_TurnOnVerticalRope2.bin"
GFX_DonkeyKong_TurnOnVerticalRope2End:
GFX_DonkeyKong_SwingOnRope1:
	db "GFX_DonkeyKong_SwingOnRope1.bin"
GFX_DonkeyKong_SwingOnRope1End:
GFX_DonkeyKong_SwingOnRope2:
	db "GFX_DonkeyKong_SwingOnRope2.bin"
GFX_DonkeyKong_SwingOnRope2End:
GFX_DonkeyKong_SwingOnRope3:
	db "GFX_DonkeyKong_SwingOnRope3.bin"
GFX_DonkeyKong_SwingOnRope3End:
GFX_DonkeyKong_SwingOnRope4:
	db "GFX_DonkeyKong_SwingOnRope4.bin"
GFX_DonkeyKong_SwingOnRope4End:
GFX_DonkeyKong_SwingOnRope5:
	db "GFX_DonkeyKong_SwingOnRope5.bin"
GFX_DonkeyKong_SwingOnRope5End:
GFX_DonkeyKong_SwingOnRope6:
	db "GFX_DonkeyKong_SwingOnRope6.bin"
GFX_DonkeyKong_SwingOnRope6End:
GFX_DonkeyKong_SwingOnRope7:
	db "GFX_DonkeyKong_SwingOnRope7.bin"
GFX_DonkeyKong_SwingOnRope7End:
GFX_DonkeyKong_SwingOnRope8:
	db "GFX_DonkeyKong_SwingOnRope8.bin"
GFX_DonkeyKong_SwingOnRope8End:
GFX_DonkeyKong_SwingOnRope9:
	db "GFX_DonkeyKong_SwingOnRope9.bin"
GFX_DonkeyKong_SwingOnRope9End:
GFX_DonkeyKong_SwingOnRope10:
	db "GFX_DonkeyKong_SwingOnRope10.bin"
GFX_DonkeyKong_SwingOnRope10End:
GFX_DonkeyKong_SwingOnRope11:
	db "GFX_DonkeyKong_SwingOnRope11.bin"
GFX_DonkeyKong_SwingOnRope11End:
GFX_DonkeyKong_SwingOnRope12:
	db "GFX_DonkeyKong_SwingOnRope12.bin"
GFX_DonkeyKong_SwingOnRope12End:
GFX_DonkeyKong_SwingOnRope13:
	db "GFX_DonkeyKong_SwingOnRope13.bin"
GFX_DonkeyKong_SwingOnRope13End:
GFX_DonkeyKong_SwingOnRope14:
	db "GFX_DonkeyKong_SwingOnRope14.bin"
GFX_DonkeyKong_SwingOnRope14End:
GFX_DonkeyKong_SwingOnRope15:
	db "GFX_DonkeyKong_SwingOnRope15.bin"
GFX_DonkeyKong_SwingOnRope15End:
GFX_DonkeyKong_SwingOnRope16:
	db "GFX_DonkeyKong_SwingOnRope16.bin"
GFX_DonkeyKong_SwingOnRope16End:
GFX_DonkeyKong_SwingOnRope17:
	db "GFX_DonkeyKong_SwingOnRope17.bin"
GFX_DonkeyKong_SwingOnRope17End:
GFX_DonkeyKong_SwingOnRope18:
	db "GFX_DonkeyKong_SwingOnRope18.bin"
GFX_DonkeyKong_SwingOnRope18End:
GFX_DonkeyKong_SwingOnRope19:
	db "GFX_DonkeyKong_SwingOnRope19.bin"
GFX_DonkeyKong_SwingOnRope19End:
GFX_DonkeyKong_SwingOnRope20:
	db "GFX_DonkeyKong_SwingOnRope20.bin"
GFX_DonkeyKong_SwingOnRope20End:
GFX_DonkeyKong_SwingOnRope21:
	db "GFX_DonkeyKong_SwingOnRope21.bin"
GFX_DonkeyKong_SwingOnRope21End:
GFX_DonkeyKong_SwingOnRope22:
	db "GFX_DonkeyKong_SwingOnRope22.bin"
GFX_DonkeyKong_SwingOnRope22End:
GFX_DonkeyKong_SwingOnRope23:
	db "GFX_DonkeyKong_SwingOnRope23.bin"
GFX_DonkeyKong_SwingOnRope23End:
GFX_DonkeyKong_SwingOnRope24:
	db "GFX_DonkeyKong_SwingOnRope24.bin"
GFX_DonkeyKong_SwingOnRope24End:
GFX_DonkeyKong_SwingOnRope25:
	db "GFX_DonkeyKong_SwingOnRope25.bin"
GFX_DonkeyKong_SwingOnRope25End:
GFX_DonkeyKong_SwingOnRope26:
	db "GFX_DonkeyKong_SwingOnRope26.bin"
GFX_DonkeyKong_SwingOnRope26End:
GFX_DonkeyKong_SwingOnRope27:
	db "GFX_DonkeyKong_SwingOnRope27.bin"
GFX_DonkeyKong_SwingOnRope27End:
GFX_DonkeyKong_SwingOnRope28:
	db "GFX_DonkeyKong_SwingOnRope28.bin"
GFX_DonkeyKong_SwingOnRope28End:
GFX_DonkeyKong_SwingOnRope29:
	db "GFX_DonkeyKong_SwingOnRope29.bin"
GFX_DonkeyKong_SwingOnRope29End:
GFX_DonkeyKong_SwingOnRope30:
	db "GFX_DonkeyKong_SwingOnRope30.bin"
GFX_DonkeyKong_SwingOnRope30End:
GFX_DonkeyKong_SwingOnRope31:
	db "GFX_DonkeyKong_SwingOnRope31.bin"
GFX_DonkeyKong_SwingOnRope31End:
GFX_Diddy_SwingOnRope1:
	db "GFX_Diddy_SwingOnRope1.bin"
GFX_Diddy_SwingOnRope1End:
GFX_Diddy_SwingOnRope2:
	db "GFX_Diddy_SwingOnRope2.bin"
GFX_Diddy_SwingOnRope2End:
GFX_Diddy_SwingOnRope3:
	db "GFX_Diddy_SwingOnRope3.bin"
GFX_Diddy_SwingOnRope3End:
GFX_Diddy_SwingOnRope4:
	db "GFX_Diddy_SwingOnRope4.bin"
GFX_Diddy_SwingOnRope4End:
GFX_Diddy_SwingOnRope5:
	db "GFX_Diddy_SwingOnRope5.bin"
GFX_Diddy_SwingOnRope5End:
GFX_Diddy_SwingOnRope6:
	db "GFX_Diddy_SwingOnRope6.bin"
GFX_Diddy_SwingOnRope6End:
GFX_Diddy_SwingOnRope7:
	db "GFX_Diddy_SwingOnRope7.bin"
GFX_Diddy_SwingOnRope7End:
GFX_Diddy_SwingOnRope8:
	db "GFX_Diddy_SwingOnRope8.bin"
GFX_Diddy_SwingOnRope8End:
GFX_Diddy_SwingOnRope9:
	db "GFX_Diddy_SwingOnRope9.bin"
GFX_Diddy_SwingOnRope9End:
GFX_Diddy_SwingOnRope10:
	db "GFX_Diddy_SwingOnRope10.bin"
GFX_Diddy_SwingOnRope10End:
GFX_Diddy_SwingOnRope11:
	db "GFX_Diddy_SwingOnRope11.bin"
GFX_Diddy_SwingOnRope11End:
GFX_Diddy_SwingOnRope12:
	db "GFX_Diddy_SwingOnRope12.bin"
GFX_Diddy_SwingOnRope12End:
GFX_Diddy_SwingOnRope13:
	db "GFX_Diddy_SwingOnRope13.bin"
GFX_Diddy_SwingOnRope13End:
GFX_Diddy_SwingOnRope14:
	db "GFX_Diddy_SwingOnRope14.bin"
GFX_Diddy_SwingOnRope14End:
GFX_Diddy_SwingOnRope15:
	db "GFX_Diddy_SwingOnRope15.bin"
GFX_Diddy_SwingOnRope15End:
GFX_Diddy_SwingOnRope16:
	db "GFX_Diddy_SwingOnRope16.bin"
GFX_Diddy_SwingOnRope16End:
GFX_Diddy_SwingOnRope17:
	db "GFX_Diddy_SwingOnRope17.bin"
GFX_Diddy_SwingOnRope17End:
GFX_Diddy_SwingOnRope18:
	db "GFX_Diddy_SwingOnRope18.bin"
GFX_Diddy_SwingOnRope18End:
GFX_Diddy_SwingOnRope19:
	db "GFX_Diddy_SwingOnRope19.bin"
GFX_Diddy_SwingOnRope19End:
GFX_Diddy_SwingOnRope20:
	db "GFX_Diddy_SwingOnRope20.bin"
GFX_Diddy_SwingOnRope20End:
GFX_Diddy_SwingOnRope21:
	db "GFX_Diddy_SwingOnRope21.bin"
GFX_Diddy_SwingOnRope21End:
GFX_Diddy_SwingOnRope22:
	db "GFX_Diddy_SwingOnRope22.bin"
GFX_Diddy_SwingOnRope22End:
GFX_Diddy_SwingOnRope23:
	db "GFX_Diddy_SwingOnRope23.bin"
GFX_Diddy_SwingOnRope23End:
GFX_Diddy_SwingOnRope24:
	db "GFX_Diddy_SwingOnRope24.bin"
GFX_Diddy_SwingOnRope24End:
GFX_Diddy_SwingOnRope25:
	db "GFX_Diddy_SwingOnRope25.bin"
GFX_Diddy_SwingOnRope25End:
GFX_Diddy_SwingOnRope26:
	db "GFX_Diddy_SwingOnRope26.bin"
GFX_Diddy_SwingOnRope26End:
GFX_Diddy_SwingOnRope27:
	db "GFX_Diddy_SwingOnRope27.bin"
GFX_Diddy_SwingOnRope27End:
GFX_Diddy_SwingOnRope28:
	db "GFX_Diddy_SwingOnRope28.bin"
GFX_Diddy_SwingOnRope28End:
GFX_Diddy_SwingOnRope29:
	db "GFX_Diddy_SwingOnRope29.bin"
GFX_Diddy_SwingOnRope29End:
GFX_Diddy_SwingOnRope30:
	db "GFX_Diddy_SwingOnRope30.bin"
GFX_Diddy_SwingOnRope30End:
GFX_Diddy_SwingOnRope31:
	db "GFX_Diddy_SwingOnRope31.bin"
GFX_Diddy_SwingOnRope31End:
GFX_Chomps_Swim1:
	db "GFX_Chomps_Swim1.bin"
GFX_Chomps_Swim1End:
GFX_Chomps_Swim2:
	db "GFX_Chomps_Swim2.bin"
GFX_Chomps_Swim2End:
GFX_Chomps_Swim3:
	db "GFX_Chomps_Swim3.bin"
GFX_Chomps_Swim3End:
GFX_Chomps_Swim4:
	db "GFX_Chomps_Swim4.bin"
GFX_Chomps_Swim4End:
GFX_Chomps_Swim5:
	db "GFX_Chomps_Swim5.bin"
GFX_Chomps_Swim5End:
GFX_Chomps_Swim6:
	db "GFX_Chomps_Swim6.bin"
GFX_Chomps_Swim6End:
GFX_Chomps_Swim7:
	db "GFX_Chomps_Swim7.bin"
GFX_Chomps_Swim7End:
GFX_Chomps_Swim8:
	db "GFX_Chomps_Swim8.bin"
GFX_Chomps_Swim8End:
GFX_Chomps_Swim9:
	db "GFX_Chomps_Swim9.bin"
GFX_Chomps_Swim9End:
GFX_Chomps_Swim10:
	db "GFX_Chomps_Swim10.bin"
GFX_Chomps_Swim10End:
GFX_Chomps_Swim11:
	db "GFX_Chomps_Swim11.bin"
GFX_Chomps_Swim11End:
GFX_Chomps_Swim12:
	db "GFX_Chomps_Swim12.bin"
GFX_Chomps_Swim12End:
GFX_Chomps_Swim13:
	db "GFX_Chomps_Swim13.bin"
GFX_Chomps_Swim13End:
GFX_Chomps_Swim14:
	db "GFX_Chomps_Swim14.bin"
GFX_Chomps_Swim14End:
GFX_Chomps_Swim15:
	db "GFX_Chomps_Swim15.bin"
GFX_Chomps_Swim15End:
GFX_Chomps_Swim16:
	db "GFX_Chomps_Swim16.bin"
GFX_Chomps_Swim16End:
GFX_Diddy_IdleSway1:
	db "GFX_Diddy_IdleSway1.bin"
GFX_Diddy_IdleSway1End:
GFX_Diddy_IdleSway2:
	db "GFX_Diddy_IdleSway2.bin"
GFX_Diddy_IdleSway2End:
GFX_Diddy_IdleSway3:
	db "GFX_Diddy_IdleSway3.bin"
GFX_Diddy_IdleSway3End:
GFX_Diddy_IdleSway4:
	db "GFX_Diddy_IdleSway4.bin"
GFX_Diddy_IdleSway4End:
GFX_Diddy_IdleSway5:
	db "GFX_Diddy_IdleSway5.bin"
GFX_Diddy_IdleSway5End:
GFX_Diddy_IdleSway6:
	db "GFX_Diddy_IdleSway6.bin"
GFX_Diddy_IdleSway6End:
GFX_Diddy_IdleSway7:
	db "GFX_Diddy_IdleSway7.bin"
GFX_Diddy_IdleSway7End:
GFX_Diddy_IdleSway8:
	db "GFX_Diddy_IdleSway8.bin"
GFX_Diddy_IdleSway8End:
GFX_Diddy_IdleSway9:
	db "GFX_Diddy_IdleSway9.bin"
GFX_Diddy_IdleSway9End:
GFX_Diddy_IdleSway10:
	db "GFX_Diddy_IdleSway10.bin"
GFX_Diddy_IdleSway10End:
GFX_Diddy_IdleSway11:
	db "GFX_Diddy_IdleSway11.bin"
GFX_Diddy_IdleSway11End:
GFX_Diddy_IdleSway12:
	db "GFX_Diddy_IdleSway12.bin"
GFX_Diddy_IdleSway12End:
GFX_Diddy_IdleSway13:
	db "GFX_Diddy_IdleSway13.bin"
GFX_Diddy_IdleSway13End:
GFX_Diddy_IdleSway14:
	db "GFX_Diddy_IdleSway14.bin"
GFX_Diddy_IdleSway14End:
GFX_Diddy_IdleSway15:
	db "GFX_Diddy_IdleSway15.bin"
GFX_Diddy_IdleSway15End:
GFX_Diddy_IdleSway16:
	db "GFX_Diddy_IdleSway16.bin"
GFX_Diddy_IdleSway16End:
GFX_Diddy_IdleSway17:
	db "GFX_Diddy_IdleSway17.bin"
GFX_Diddy_IdleSway17End:
GFX_Diddy_IdleSway18:
	db "GFX_Diddy_IdleSway18.bin"
GFX_Diddy_IdleSway18End:
GFX_Diddy_IdleSway19:
	db "GFX_Diddy_IdleSway19.bin"
GFX_Diddy_IdleSway19End:
GFX_Diddy_IdleSway20:
	db "GFX_Diddy_IdleSway20.bin"
GFX_Diddy_IdleSway20End:
GFX_Diddy_IdleSway21:
	db "GFX_Diddy_IdleSway21.bin"
GFX_Diddy_IdleSway21End:
GFX_Diddy_IdleSway22:
	db "GFX_Diddy_IdleSway22.bin"
GFX_Diddy_IdleSway22End:
GFX_OilFire_GrowOrShrink1:
	db "GFX_OilFire_GrowOrShrink1.bin"
GFX_OilFire_GrowOrShrink1End:
GFX_OilFire_GrowOrShrink2:
	db "GFX_OilFire_GrowOrShrink2.bin"
GFX_OilFire_GrowOrShrink2End:
GFX_OilFire_GrowOrShrink3:
	db "GFX_OilFire_GrowOrShrink3.bin"
GFX_OilFire_GrowOrShrink3End:
GFX_OilFire_GrowOrShrink4:
	db "GFX_OilFire_GrowOrShrink4.bin"
GFX_OilFire_GrowOrShrink4End:
GFX_OilFire_GrowOrShrink5:
	db "GFX_OilFire_GrowOrShrink5.bin"
GFX_OilFire_GrowOrShrink5End:
GFX_OilFire_GrowOrShrink6:
	db "GFX_OilFire_GrowOrShrink6.bin"
GFX_OilFire_GrowOrShrink6End:
GFX_OilFire_GrowOrShrink7:
	db "GFX_OilFire_GrowOrShrink7.bin"
GFX_OilFire_GrowOrShrink7End:
GFX_OilFire_GrowOrShrink8:
	db "GFX_OilFire_GrowOrShrink8.bin"
GFX_OilFire_GrowOrShrink8End:
GFX_OilFire_GrowOrShrink9:
	db "GFX_OilFire_GrowOrShrink9.bin"
GFX_OilFire_GrowOrShrink9End:
GFX_OilFire_GrowOrShrink10:
	db "GFX_OilFire_GrowOrShrink10.bin"
GFX_OilFire_GrowOrShrink10End:
GFX_OilFire_GrowOrShrink11:
	db "GFX_OilFire_GrowOrShrink11.bin"
GFX_OilFire_GrowOrShrink11End:
GFX_OilFire_GrowOrShrink12:
	db "GFX_OilFire_GrowOrShrink12.bin"
GFX_OilFire_GrowOrShrink12End:
GFX_OilFire_GrowOrShrink13:
	db "GFX_OilFire_GrowOrShrink13.bin"
GFX_OilFire_GrowOrShrink13End:
GFX_OilFire_GrowOrShrink14:
	db "GFX_OilFire_GrowOrShrink14.bin"
GFX_OilFire_GrowOrShrink14End:
GFX_OilFire_GrowOrShrink15:
	db "GFX_OilFire_GrowOrShrink15.bin"
GFX_OilFire_GrowOrShrink15End:
GFX_OilFire_GrowOrShrink16:
	db "GFX_OilFire_GrowOrShrink16.bin"
GFX_OilFire_GrowOrShrink16End:
GFX_Diddy_HangOntoStabbingEnguarde1:
	db "GFX_Diddy_HangOntoStabbingEnguarde1.bin"
GFX_Diddy_HangOntoStabbingEnguarde1End:
GFX_Diddy_HangOntoStabbingEnguarde2:
	db "GFX_Diddy_HangOntoStabbingEnguarde2.bin"
GFX_Diddy_HangOntoStabbingEnguarde2End:
GFX_Diddy_HangOntoStabbingEnguarde3:
	db "GFX_Diddy_HangOntoStabbingEnguarde3.bin"
GFX_Diddy_HangOntoStabbingEnguarde3End:
GFX_Diddy_HangOntoStabbingEnguarde4:
	db "GFX_Diddy_HangOntoStabbingEnguarde4.bin"
GFX_Diddy_HangOntoStabbingEnguarde4End:
GFX_Diddy_HangOntoStabbingEnguarde5:
	db "GFX_Diddy_HangOntoStabbingEnguarde5.bin"
GFX_Diddy_HangOntoStabbingEnguarde5End:
GFX_DonkeyKong_Duck1:
	db "GFX_DonkeyKong_Duck1.bin"
GFX_DonkeyKong_Duck1End:
GFX_DonkeyKong_Duck2:
	db "GFX_DonkeyKong_Duck2.bin"
GFX_DonkeyKong_Duck2End:
GFX_DonkeyKong_Duck3:
	db "GFX_DonkeyKong_Duck3.bin"
GFX_DonkeyKong_Duck3End:
GFX_DonkeyKong_Duck4:
	db "GFX_DonkeyKong_Duck4.bin"
GFX_DonkeyKong_Duck4End:
GFX_DonkeyKong_Duck5:
	db "GFX_DonkeyKong_Duck5.bin"
GFX_DonkeyKong_Duck5End:
GFX_DonkeyKong_Duck6:
	db "GFX_DonkeyKong_Duck6.bin"
GFX_DonkeyKong_Duck6End:
GFX_DonkeyKong_Duck7:
	db "GFX_DonkeyKong_Duck7.bin"
GFX_DonkeyKong_Duck7End:
GFX_DonkeyKong_Duck8:
	db "GFX_DonkeyKong_Duck8.bin"
GFX_DonkeyKong_Duck8End:
GFX_DonkeyKong_Duck9:
	db "GFX_DonkeyKong_Duck9.bin"
GFX_DonkeyKong_Duck9End:
GFX_DonkeyKong_Duck10:
	db "GFX_DonkeyKong_Duck10.bin"
GFX_DonkeyKong_Duck10End:
GFX_DonkeyKong_Duck11:
	db "GFX_DonkeyKong_Duck11.bin"
GFX_DonkeyKong_Duck11End:
GFX_DonkeyKong_Duck12:
	db "GFX_DonkeyKong_Duck12.bin"
GFX_DonkeyKong_Duck12End:
GFX_DonkeyKong_Duck13:
	db "GFX_DonkeyKong_Duck13.bin"
GFX_DonkeyKong_Duck13End:
GFX_DonkeyKong_Duck14:
	db "GFX_DonkeyKong_Duck14.bin"
GFX_DonkeyKong_Duck14End:
GFX_DonkeyKong_Duck15:
	db "GFX_DonkeyKong_Duck15.bin"
GFX_DonkeyKong_Duck15End:
GFX_DonkeyKong_Duck16:
	db "GFX_DonkeyKong_Duck16.bin"
GFX_DonkeyKong_Duck16End:
GFX_DonkeyKong_Duck17:
	db "GFX_DonkeyKong_Duck17.bin"
GFX_DonkeyKong_Duck17End:
GFX_DonkeyKong_Duck18:
	db "GFX_DonkeyKong_Duck18.bin"
GFX_DonkeyKong_Duck18End:
GFX_DonkeyKong_Duck19:
	db "GFX_DonkeyKong_Duck19.bin"
GFX_DonkeyKong_Duck19End:
GFX_DonkeyKong_Duck20:
	db "GFX_DonkeyKong_Duck20.bin"
GFX_DonkeyKong_Duck20End:
GFX_DonkeyKong_Duck21:
	db "GFX_DonkeyKong_Duck21.bin"
GFX_DonkeyKong_Duck21End:
GFX_DonkeyKong_Duck22:
	db "GFX_DonkeyKong_Duck22.bin"
GFX_DonkeyKong_Duck22End:
GFX_SmallFire_Pose1:
	db "GFX_SmallFire_Pose1.bin"
GFX_SmallFire_Pose1End:
GFX_SmallFire_Pose2:
	db "GFX_SmallFire_Pose2.bin"
GFX_SmallFire_Pose2End:
GFX_SmallFire_Pose3:
	db "GFX_SmallFire_Pose3.bin"
GFX_SmallFire_Pose3End:
GFX_SmallFire_Pose4:
	db "GFX_SmallFire_Pose4.bin"
GFX_SmallFire_Pose4End:
GFX_SmallFire_Pose5:
	db "GFX_SmallFire_Pose5.bin"
GFX_SmallFire_Pose5End:
GFX_SmallFire_Pose6:
	db "GFX_SmallFire_Pose6.bin"
GFX_SmallFire_Pose6End:
GFX_SmallFire_Pose7:
	db "GFX_SmallFire_Pose7.bin"
GFX_SmallFire_Pose7End:
GFX_SmallFire_Pose8:
	db "GFX_SmallFire_Pose8.bin"
GFX_SmallFire_Pose8End:
GFX_DonkeyKong_AngledInMinecart1:
	db "GFX_DonkeyKong_AngledInMinecart1.bin"
GFX_DonkeyKong_AngledInMinecart1End:
GFX_DonkeyKong_AngledInMinecart2:
	db "GFX_DonkeyKong_AngledInMinecart2.bin"
GFX_DonkeyKong_AngledInMinecart2End:
GFX_DonkeyKong_AngledInMinecart3:
	db "GFX_DonkeyKong_AngledInMinecart3.bin"
GFX_DonkeyKong_AngledInMinecart3End:
GFX_DonkeyKong_AngledInMinecart4:
	db "GFX_DonkeyKong_AngledInMinecart4.bin"
GFX_DonkeyKong_AngledInMinecart4End:
GFX_DonkeyKong_AngledInMinecart5:
	db "GFX_DonkeyKong_AngledInMinecart5.bin"
GFX_DonkeyKong_AngledInMinecart5End:
GFX_DonkeyKong_AngledInMinecart6:
	db "GFX_DonkeyKong_AngledInMinecart6.bin"
GFX_DonkeyKong_AngledInMinecart6End:
GFX_DonkeyKong_AngledInMinecart7:
	db "GFX_DonkeyKong_AngledInMinecart7.bin"
GFX_DonkeyKong_AngledInMinecart7End:
GFX_DonkeyKong_AngledInMinecart8:
	db "GFX_DonkeyKong_AngledInMinecart8.bin"
GFX_DonkeyKong_AngledInMinecart8End:
GFX_DonkeyKong_AngledInMinecart9:
	db "GFX_DonkeyKong_AngledInMinecart9.bin"
GFX_DonkeyKong_AngledInMinecart9End:
GFX_DonkeyKong_AngledInMinecart10:
	db "GFX_DonkeyKong_AngledInMinecart10.bin"
GFX_DonkeyKong_AngledInMinecart10End:
GFX_DonkeyKong_AngledInMinecart11:
	db "GFX_DonkeyKong_AngledInMinecart11.bin"
GFX_DonkeyKong_AngledInMinecart11End:
GFX_DonkeyKong_AngledInMinecart12:
	db "GFX_DonkeyKong_AngledInMinecart12.bin"
GFX_DonkeyKong_AngledInMinecart12End:
GFX_DonkeyKong_AngledInMinecart13:
	db "GFX_DonkeyKong_AngledInMinecart13.bin"
GFX_DonkeyKong_AngledInMinecart13End:
GFX_DonkeyKong_AngledInMinecart14:
	db "GFX_DonkeyKong_AngledInMinecart14.bin"
GFX_DonkeyKong_AngledInMinecart14End:
GFX_DonkeyKong_AngledInMinecart15:
	db "GFX_DonkeyKong_AngledInMinecart15.bin"
GFX_DonkeyKong_AngledInMinecart15End:
GFX_DonkeyKong_AngledInMinecart16:
	db "GFX_DonkeyKong_AngledInMinecart16.bin"
GFX_DonkeyKong_AngledInMinecart16End:
GFX_DonkeyKong_AngledInMinecart17:
	db "GFX_DonkeyKong_AngledInMinecart17.bin"
GFX_DonkeyKong_AngledInMinecart17End:
GFX_DonkeyKong_AngledInMinecart18:
	db "GFX_DonkeyKong_AngledInMinecart18.bin"
GFX_DonkeyKong_AngledInMinecart18End:
GFX_DonkeyKong_AngledInMinecart19:
	db "GFX_DonkeyKong_AngledInMinecart19.bin"
GFX_DonkeyKong_AngledInMinecart19End:
GFX_DonkeyKong_AngledInMinecart20:
	db "GFX_DonkeyKong_AngledInMinecart20.bin"
GFX_DonkeyKong_AngledInMinecart20End:
GFX_Army_Stomp1:
	db "GFX_Army_Stomp1.bin"
GFX_Army_Stomp1End:
GFX_Army_Stomp2:
	db "GFX_Army_Stomp2.bin"
GFX_Army_Stomp2End:
GFX_Army_Stomp3:
	db "GFX_Army_Stomp3.bin"
GFX_Army_Stomp3End:
GFX_Army_Stomp4:
	db "GFX_Army_Stomp4.bin"
GFX_Army_Stomp4End:
GFX_BurstEffect_Pose1:
	db "GFX_BurstEffect_Pose1.bin"
GFX_BurstEffect_Pose1End:
GFX_BurstEffect_Pose2:
	db "GFX_BurstEffect_Pose2.bin"
GFX_BurstEffect_Pose2End:
GFX_BurstEffect_Pose3:
	db "GFX_BurstEffect_Pose3.bin"
GFX_BurstEffect_Pose3End:
GFX_BurstEffect_Pose4:
	db "GFX_BurstEffect_Pose4.bin"
GFX_BurstEffect_Pose4End:
GFX_BurstEffect_Pose5:
	db "GFX_BurstEffect_Pose5.bin"
GFX_BurstEffect_Pose5End:
GFX_BurstEffect_Pose6:
	db "GFX_BurstEffect_Pose6.bin"
GFX_BurstEffect_Pose6End:
GFX_BurstEffect_Pose7:
	db "GFX_BurstEffect_Pose7.bin"
GFX_BurstEffect_Pose7End:
GFX_BurstEffect_Pose8:
	db "GFX_BurstEffect_Pose8.bin"
GFX_BurstEffect_Pose8End:
GFX_BurstEffect_Pose9:
	db "GFX_BurstEffect_Pose9.bin"
GFX_BurstEffect_Pose9End:
GFX_BurstEffect_Pose10:
	db "GFX_BurstEffect_Pose10.bin"
GFX_BurstEffect_Pose10End:
GFX_BurstEffect_Pose11:
	db "GFX_BurstEffect_Pose11.bin"
GFX_BurstEffect_Pose11End:
GFX_BurstEffect_Pose12:
	db "GFX_BurstEffect_Pose12.bin"
GFX_BurstEffect_Pose12End:
GFX_Diddy_EnterCrawlSpace1:
	db "GFX_Diddy_EnterCrawlSpace1.bin"
GFX_Diddy_EnterCrawlSpace1End:
GFX_Diddy_EnterCrawlSpace2:
	db "GFX_Diddy_EnterCrawlSpace2.bin"
GFX_Diddy_EnterCrawlSpace2End:
GFX_Diddy_EnterCrawlSpace3:
	db "GFX_Diddy_EnterCrawlSpace3.bin"
GFX_Diddy_EnterCrawlSpace3End:
GFX_Diddy_EnterCrawlSpace4:
	db "GFX_Diddy_EnterCrawlSpace4.bin"
GFX_Diddy_EnterCrawlSpace4End:
GFX_Rambi_Stab1:
	db "GFX_Rambi_Stab1.bin"
GFX_Rambi_Stab1End:
GFX_Rambi_Stab2:
	db "GFX_Rambi_Stab2.bin"
GFX_Rambi_Stab2End:
GFX_Rambi_Stab3:
	db "GFX_Rambi_Stab3.bin"
GFX_Rambi_Stab3End:
GFX_Rambi_Stab4:
	db "GFX_Rambi_Stab4.bin"
GFX_Rambi_Stab4End:
GFX_Rambi_Stab5:
	db "GFX_Rambi_Stab5.bin"
GFX_Rambi_Stab5End:
GFX_Rambi_Stab6:
	db "GFX_Rambi_Stab6.bin"
GFX_Rambi_Stab6End:
GFX_Rambi_Stab7:
	db "GFX_Rambi_Stab7.bin"
GFX_Rambi_Stab7End:
GFX_Rambi_Stab8:
	db "GFX_Rambi_Stab8.bin"
GFX_Rambi_Stab8End:
GFX_Sparkle_Pose1:
	db "GFX_Sparkle_Pose1.bin"
GFX_Sparkle_Pose1End:
GFX_Sparkle_Pose2:
	db "GFX_Sparkle_Pose2.bin"
GFX_Sparkle_Pose2End:
GFX_Sparkle_Pose3:
	db "GFX_Sparkle_Pose3.bin"
GFX_Sparkle_Pose3End:
GFX_Sparkle_Pose4:
	db "GFX_Sparkle_Pose4.bin"
GFX_Sparkle_Pose4End:
GFX_Sparkle_Pose5:
	db "GFX_Sparkle_Pose5.bin"
GFX_Sparkle_Pose5End:
GFX_Sparkle_Pose6:
	db "GFX_Sparkle_Pose6.bin"
GFX_Sparkle_Pose6End:
GFX_Sparkle_Pose7:
	db "GFX_Sparkle_Pose7.bin"
GFX_Sparkle_Pose7End:
GFX_Sparkle_Pose8:
	db "GFX_Sparkle_Pose8.bin"
GFX_Sparkle_Pose8End:
GFX_BananaBunch_Pose1:
	db "GFX_BananaBunch_Pose1.bin"
GFX_BananaBunch_Pose1End:
GFX_BananaBunch_Pose2:
	db "GFX_BananaBunch_Pose2.bin"
GFX_BananaBunch_Pose2End:
GFX_BananaBunch_Pose3:
	db "GFX_BananaBunch_Pose3.bin"
GFX_BananaBunch_Pose3End:
GFX_BananaBunch_Pose4:
	db "GFX_BananaBunch_Pose4.bin"
GFX_BananaBunch_Pose4End:
GFX_BananaBunch_Pose5:
	db "GFX_BananaBunch_Pose5.bin"
GFX_BananaBunch_Pose5End:
GFX_BananaBunch_Pose6:
	db "GFX_BananaBunch_Pose6.bin"
GFX_BananaBunch_Pose6End:
GFX_Gnawty_Walk1:
	db "GFX_Gnawty_Walk1.bin"
GFX_Gnawty_Walk1End:
GFX_Gnawty_Walk2:
	db "GFX_Gnawty_Walk2.bin"
GFX_Gnawty_Walk2End:
GFX_Gnawty_Walk3:
	db "GFX_Gnawty_Walk3.bin"
GFX_Gnawty_Walk3End:
GFX_Gnawty_Walk4:
	db "GFX_Gnawty_Walk4.bin"
GFX_Gnawty_Walk4End:
GFX_Gnawty_Walk5:
	db "GFX_Gnawty_Walk5.bin"
GFX_Gnawty_Walk5End:
GFX_Gnawty_Walk6:
	db "GFX_Gnawty_Walk6.bin"
GFX_Gnawty_Walk6End:
GFX_Gnawty_Walk7:
	db "GFX_Gnawty_Walk7.bin"
GFX_Gnawty_Walk7End:
GFX_Gnawty_Walk8:
	db "GFX_Gnawty_Walk8.bin"
GFX_Gnawty_Walk8End:
GFX_BarrelCannon_AutoFire1:
	db "GFX_BarrelCannon_AutoFire1.bin"
GFX_BarrelCannon_AutoFire1End:
GFX_BarrelCannon_AutoFire2:
	db "GFX_BarrelCannon_AutoFire2.bin"
GFX_BarrelCannon_AutoFire2End:
GFX_BarrelCannon_AutoFire3:
	db "GFX_BarrelCannon_AutoFire3.bin"
GFX_BarrelCannon_AutoFire3End:
GFX_BarrelCannon_AutoFire4:
	db "GFX_BarrelCannon_AutoFire4.bin"
GFX_BarrelCannon_AutoFire4End:
GFX_BarrelCannon_AutoFire5:
	db "GFX_BarrelCannon_AutoFire5.bin"
GFX_BarrelCannon_AutoFire5End:
GFX_BarrelCannon_AutoFire6:
	db "GFX_BarrelCannon_AutoFire6.bin"
GFX_BarrelCannon_AutoFire6End:
GFX_BarrelCannon_AutoFire7:
	db "GFX_BarrelCannon_AutoFire7.bin"
GFX_BarrelCannon_AutoFire7End:
GFX_BarrelCannon_AutoFire8:
	db "GFX_BarrelCannon_AutoFire8.bin"
GFX_BarrelCannon_AutoFire8End:
GFX_BarrelCannon_AutoFire9:
	db "GFX_BarrelCannon_AutoFire9.bin"
GFX_BarrelCannon_AutoFire9End:
GFX_BarrelCannon_AutoFire10:
	db "GFX_BarrelCannon_AutoFire10.bin"
GFX_BarrelCannon_AutoFire10End:
GFX_BarrelCannon_AutoFire11:
	db "GFX_BarrelCannon_AutoFire11.bin"
GFX_BarrelCannon_AutoFire11End:
GFX_BarrelCannon_AutoFire12:
	db "GFX_BarrelCannon_AutoFire12.bin"
GFX_BarrelCannon_AutoFire12End:
GFX_BarrelCannon_AutoFire13:
	db "GFX_BarrelCannon_AutoFire13.bin"
GFX_BarrelCannon_AutoFire13End:
GFX_BarrelCannon_AutoFire14:
	db "GFX_BarrelCannon_AutoFire14.bin"
GFX_BarrelCannon_AutoFire14End:
GFX_BarrelCannon_AutoFire15:
	db "GFX_BarrelCannon_AutoFire15.bin"
GFX_BarrelCannon_AutoFire15End:
GFX_BarrelCannon_AutoFire16:
	db "GFX_BarrelCannon_AutoFire16.bin"
GFX_BarrelCannon_AutoFire16End:
GFX_CheckpointBarrel_Pose1:
	db "GFX_CheckpointBarrel_Pose1.bin"
GFX_CheckpointBarrel_Pose1End:
GFX_CheckpointBarrel_Pose2:
	db "GFX_CheckpointBarrel_Pose2.bin"
GFX_CheckpointBarrel_Pose2End:
GFX_CheckpointBarrel_Pose3:
	db "GFX_CheckpointBarrel_Pose3.bin"
GFX_CheckpointBarrel_Pose3End:
GFX_CheckpointBarrel_Pose4:
	db "GFX_CheckpointBarrel_Pose4.bin"
GFX_CheckpointBarrel_Pose4End:
GFX_CheckpointBarrel_Pose5:
	db "GFX_CheckpointBarrel_Pose5.bin"
GFX_CheckpointBarrel_Pose5End:
GFX_CheckpointBarrel_Pose6:
	db "GFX_CheckpointBarrel_Pose6.bin"
GFX_CheckpointBarrel_Pose6End:
GFX_CheckpointBarrel_Pose7:
	db "GFX_CheckpointBarrel_Pose7.bin"
GFX_CheckpointBarrel_Pose7End:
GFX_CheckpointBarrel_Pose8:
	db "GFX_CheckpointBarrel_Pose8.bin"
GFX_CheckpointBarrel_Pose8End:
GFX_EnemySpawnBarrel_UpsideDown:
	db "GFX_EnemySpawnBarrel_UpsideDown.bin"
GFX_EnemySpawnBarrel_UpsideDownEnd:
GFX_EnemySpawnBarrel_Sideways:
	db "GFX_EnemySpawnBarrel_Sideways.bin"
GFX_EnemySpawnBarrel_SidewaysEnd:
GFX_GFX_CheckpointBarrel_Broken:
	db "GFX_GFX_CheckpointBarrel_Broken.bin"
GFX_GFX_CheckpointBarrel_BrokenEnd:
GFX_MiniNecky_ThrowNut1:
	db "GFX_MiniNecky_ThrowNut1.bin"
GFX_MiniNecky_ThrowNut1End:
GFX_MiniNecky_ThrowNut2:
	db "GFX_MiniNecky_ThrowNut2.bin"
GFX_MiniNecky_ThrowNut2End:
GFX_MiniNecky_ThrowNut3:
	db "GFX_MiniNecky_ThrowNut3.bin"
GFX_MiniNecky_ThrowNut3End:
GFX_MiniNecky_ThrowNut4:
	db "GFX_MiniNecky_ThrowNut4.bin"
GFX_MiniNecky_ThrowNut4End:
GFX_MiniNecky_ThrowNut5:
	db "GFX_MiniNecky_ThrowNut5.bin"
GFX_MiniNecky_ThrowNut5End:
GFX_MiniNecky_ThrowNut6:
	db "GFX_MiniNecky_ThrowNut6.bin"
GFX_MiniNecky_ThrowNut6End:
GFX_MiniNecky_ThrowNut7:
	db "GFX_MiniNecky_ThrowNut7.bin"
GFX_MiniNecky_ThrowNut7End:
GFX_MiniNecky_ThrowNut8:
	db "GFX_MiniNecky_ThrowNut8.bin"
GFX_MiniNecky_ThrowNut8End:
GFX_MiniNecky_ThrowNut9:
	db "GFX_MiniNecky_ThrowNut9.bin"
GFX_MiniNecky_ThrowNut9End:
GFX_MiniNecky_ThrowNut10:
	db "GFX_MiniNecky_ThrowNut10.bin"
GFX_MiniNecky_ThrowNut10End:
GFX_MiniNecky_ThrowNut11:
	db "GFX_MiniNecky_ThrowNut11.bin"
GFX_MiniNecky_ThrowNut11End:
GFX_MiniNecky_ThrowNut12:
	db "GFX_MiniNecky_ThrowNut12.bin"
GFX_MiniNecky_ThrowNut12End:
GFX_MiniNecky_ThrowNut13:
	db "GFX_MiniNecky_ThrowNut13.bin"
GFX_MiniNecky_ThrowNut13End:
GFX_MiniNecky_ThrowNut14:
	db "GFX_MiniNecky_ThrowNut14.bin"
GFX_MiniNecky_ThrowNut14End:
GFX_Gnawty_Dead1:
	db "GFX_Gnawty_Dead1.bin"
GFX_Gnawty_Dead1End:
GFX_Gnawty_Dead2:
	db "GFX_Gnawty_Dead2.bin"
GFX_Gnawty_Dead2End:
GFX_Gnawty_Dead3:
	db "GFX_Gnawty_Dead3.bin"
GFX_Gnawty_Dead3End:
GFX_Gnawty_Dead4:
	db "GFX_Gnawty_Dead4.bin"
GFX_Gnawty_Dead4End:
GFX_Gnawty_Dead5:
	db "GFX_Gnawty_Dead5.bin"
GFX_Gnawty_Dead5End:
GFX_Gnawty_Turn1:
	db "GFX_Gnawty_Turn1.bin"
GFX_Gnawty_Turn1End:
GFX_Gnawty_Turn2:
	db "GFX_Gnawty_Turn2.bin"
GFX_Gnawty_Turn2End:
GFX_Expresso_BeginFlutter1:
	db "GFX_Expresso_BeginFlutter1.bin"
GFX_Expresso_BeginFlutter1End:
GFX_Expresso_BeginFlutter2:
	db "GFX_Expresso_BeginFlutter2.bin"
GFX_Expresso_BeginFlutter2End:
GFX_Expresso_BeginFlutter3:
	db "GFX_Expresso_BeginFlutter3.bin"
GFX_Expresso_BeginFlutter3End:
GFX_Expresso_BeginFlutter4:
	db "GFX_Expresso_BeginFlutter4.bin"
GFX_Expresso_BeginFlutter4End:
GFX_Expresso_BeginFlutter5:
	db "GFX_Expresso_BeginFlutter5.bin"
GFX_Expresso_BeginFlutter5End:
GFX_Expresso_BeginFlutter6:
	db "GFX_Expresso_BeginFlutter6.bin"
GFX_Expresso_BeginFlutter6End:
GFX_Expresso_BeginFlutter7:
	db "GFX_Expresso_BeginFlutter7.bin"
GFX_Expresso_BeginFlutter7End:
GFX_Expresso_BeginFlutter8:
	db "GFX_Expresso_BeginFlutter8.bin"
GFX_Expresso_BeginFlutter8End:
GFX_Expresso_BeginFlutter9:
	db "GFX_Expresso_BeginFlutter9.bin"
GFX_Expresso_BeginFlutter9End:
GFX_Expresso_BeginFlutter10:
	db "GFX_Expresso_BeginFlutter10.bin"
GFX_Expresso_BeginFlutter10End:
GFX_VeryGnawty_Hurt1:
	db "GFX_VeryGnawty_Hurt1.bin"
GFX_VeryGnawty_Hurt1End:
GFX_VeryGnawty_Hurt2:
	db "GFX_VeryGnawty_Hurt2.bin"
GFX_VeryGnawty_Hurt2End:
GFX_VeryGnawty_Hurt3:
	db "GFX_VeryGnawty_Hurt3.bin"
GFX_VeryGnawty_Hurt3End:
GFX_KremlinHeadIcon_Pose1:
	db "GFX_KremlinHeadIcon_Pose1.bin"
GFX_KremlinHeadIcon_Pose1End:
GFX_KremlinHeadIcon_Pose2:
	db "GFX_KremlinHeadIcon_Pose2.bin"
GFX_KremlinHeadIcon_Pose2End:
GFX_KremlinHeadIcon_Pose3:
	db "GFX_KremlinHeadIcon_Pose3.bin"
GFX_KremlinHeadIcon_Pose3End:
GFX_KremlinHeadIcon_Pose4:
	db "GFX_KremlinHeadIcon_Pose4.bin"
GFX_KremlinHeadIcon_Pose4End:
GFX_NeckyNut_Pose1:
	db "GFX_NeckyNut_Pose1.bin"
GFX_NeckyNut_Pose1End:
GFX_NeckyNut_Pose2:
	db "GFX_NeckyNut_Pose2.bin"
GFX_NeckyNut_Pose2End:
GFX_NeckyNut_Pose3:
	db "GFX_NeckyNut_Pose3.bin"
GFX_NeckyNut_Pose3End:
GFX_MiniNeckyNut_Pose1:
	db "GFX_MiniNeckyNut_Pose1.bin"
GFX_MiniNeckyNut_Pose1End:
GFX_MiniNeckyNut_Pose2:
	db "GFX_MiniNeckyNut_Pose2.bin"
GFX_MiniNeckyNut_Pose2End:
GFX_MiniNeckyNut_Pose3:
	db "GFX_MiniNeckyNut_Pose3.bin"
GFX_MiniNeckyNut_Pose3End:
GFX_CandyKong_Stand1:
	db "GFX_CandyKong_Stand1.bin"
GFX_CandyKong_Stand1End:
GFX_CandyKong_Stand2:
	db "GFX_CandyKong_Stand2.bin"
GFX_CandyKong_Stand2End:
GFX_CandyKong_Stand3:
	db "GFX_CandyKong_Stand3.bin"
GFX_CandyKong_Stand3End:
GFX_CandyKong_BlowKiss1:
	db "GFX_CandyKong_BlowKiss1.bin"
GFX_CandyKong_BlowKiss1End:
GFX_CandyKong_BlowKiss2:
	db "GFX_CandyKong_BlowKiss2.bin"
GFX_CandyKong_BlowKiss2End:
GFX_CandyKong_BlowKiss3:
	db "GFX_CandyKong_BlowKiss3.bin"
GFX_CandyKong_BlowKiss3End:
GFX_CandyKong_BlowKiss4:
	db "GFX_CandyKong_BlowKiss4.bin"
GFX_CandyKong_BlowKiss4End:
GFX_CandyKong_BlowKiss5:
	db "GFX_CandyKong_BlowKiss5.bin"
GFX_CandyKong_BlowKiss5End:
GFX_CandyKong_BlowKiss6:
	db "GFX_CandyKong_BlowKiss6.bin"
GFX_CandyKong_BlowKiss6End:
GFX_CandyKong_BlowKiss7:
	db "GFX_CandyKong_BlowKiss7.bin"
GFX_CandyKong_BlowKiss7End:
GFX_CandyKong_BlowKiss8:
	db "GFX_CandyKong_BlowKiss8.bin"
GFX_CandyKong_BlowKiss8End:
GFX_CandyKong_BlowKiss9:
	db "GFX_CandyKong_BlowKiss9.bin"
GFX_CandyKong_BlowKiss9End:
GFX_CandyKong_BlowKiss10:
	db "GFX_CandyKong_BlowKiss10.bin"
GFX_CandyKong_BlowKiss10End:
GFX_CandyKong_BlowKiss11:
	db "GFX_CandyKong_BlowKiss11.bin"
GFX_CandyKong_BlowKiss11End:
GFX_CandyKong_BlowKiss12:
	db "GFX_CandyKong_BlowKiss12.bin"
GFX_CandyKong_BlowKiss12End:
GFX_CandyKong_BlowKiss13:
	db "GFX_CandyKong_BlowKiss13.bin"
GFX_CandyKong_BlowKiss13End:
GFX_CandyKong_BlowKiss14:
	db "GFX_CandyKong_BlowKiss14.bin"
GFX_CandyKong_BlowKiss14End:
GFX_Expresso_Flutter1:
	db "GFX_Expresso_Flutter1.bin"
GFX_Expresso_Flutter1End:
GFX_Expresso_Flutter2:
	db "GFX_Expresso_Flutter2.bin"
GFX_Expresso_Flutter2End:
GFX_Expresso_Flutter3:
	db "GFX_Expresso_Flutter3.bin"
GFX_Expresso_Flutter3End:
GFX_Expresso_Flutter4:
	db "GFX_Expresso_Flutter4.bin"
GFX_Expresso_Flutter4End:
GFX_Krusha_Laugh1:
	db "GFX_Krusha_Laugh1.bin"
GFX_Krusha_Laugh1End:
GFX_Krusha_Laugh2:
	db "GFX_Krusha_Laugh2.bin"
GFX_Krusha_Laugh2End:
GFX_Krusha_Laugh3:
	db "GFX_Krusha_Laugh3.bin"
GFX_Krusha_Laugh3End:
GFX_Krusha_Laugh4:
	db "GFX_Krusha_Laugh4.bin"
GFX_Krusha_Laugh4End:
GFX_Krusha_Laugh5:
	db "GFX_Krusha_Laugh5.bin"
GFX_Krusha_Laugh5End:
GFX_Krusha_Laugh6:
	db "GFX_Krusha_Laugh6.bin"
GFX_Krusha_Laugh6End:
GFX_DonkeyKong_RideSteelKeg1:
	db "GFX_DonkeyKong_RideSteelKeg1.bin"
GFX_DonkeyKong_RideSteelKeg1End:
GFX_DonkeyKong_RideSteelKeg2:
	db "GFX_DonkeyKong_RideSteelKeg2.bin"
GFX_DonkeyKong_RideSteelKeg2End:
GFX_DonkeyKong_RideSteelKeg3:
	db "GFX_DonkeyKong_RideSteelKeg3.bin"
GFX_DonkeyKong_RideSteelKeg3End:
GFX_DonkeyKong_RideSteelKeg4:
	db "GFX_DonkeyKong_RideSteelKeg4.bin"
GFX_DonkeyKong_RideSteelKeg4End:
GFX_DonkeyKong_RideSteelKeg5:
	db "GFX_DonkeyKong_RideSteelKeg5.bin"
GFX_DonkeyKong_RideSteelKeg5End:
GFX_DonkeyKong_RideSteelKeg6:
	db "GFX_DonkeyKong_RideSteelKeg6.bin"
GFX_DonkeyKong_RideSteelKeg6End:
GFX_DonkeyKong_RideSteelKeg7:
	db "GFX_DonkeyKong_RideSteelKeg7.bin"
GFX_DonkeyKong_RideSteelKeg7End:
GFX_DonkeyKong_RideSteelKeg8:
	db "GFX_DonkeyKong_RideSteelKeg8.bin"
GFX_DonkeyKong_RideSteelKeg8End:
GFX_DonkeyKong_RideSteelKeg9:
	db "GFX_DonkeyKong_RideSteelKeg9.bin"
GFX_DonkeyKong_RideSteelKeg9End:
GFX_DonkeyKong_RideSteelKeg10:
	db "GFX_DonkeyKong_RideSteelKeg10.bin"
GFX_DonkeyKong_RideSteelKeg10End:
GFX_DonkeyKong_RideSteelKeg11:
	db "GFX_DonkeyKong_RideSteelKeg11.bin"
GFX_DonkeyKong_RideSteelKeg11End:
GFX_DonkeyKong_RideSteelKeg12:
	db "GFX_DonkeyKong_RideSteelKeg12.bin"
GFX_DonkeyKong_RideSteelKeg12End:
GFX_VeryGnawty_Laugh1:
	db "GFX_VeryGnawty_Laugh1.bin"
GFX_VeryGnawty_Laugh1End:
GFX_VeryGnawty_Laugh2:
	db "GFX_VeryGnawty_Laugh2.bin"
GFX_VeryGnawty_Laugh2End:
GFX_VeryGnawty_Laugh3:
	db "GFX_VeryGnawty_Laugh3.bin"
GFX_VeryGnawty_Laugh3End:
GFX_VeryGnawty_Laugh4:
	db "GFX_VeryGnawty_Laugh4.bin"
GFX_VeryGnawty_Laugh4End:
GFX_GoBarrel_Pose:
	db "GFX_GoBarrel_Pose.bin"
GFX_GoBarrel_PoseEnd:
GFX_UnknownSprite1_Pose1:
	db "GFX_UnknownSprite1_Pose1.bin"
GFX_UnknownSprite1_Pose1End:
GFX_UnknownSprite1_Pose2:
	db "GFX_UnknownSprite1_Pose2.bin"
GFX_UnknownSprite1_Pose2End:
GFX_UnknownSprite1_Pose3:
	db "GFX_UnknownSprite1_Pose3.bin"
GFX_UnknownSprite1_Pose3End:
GFX_ChompsJr_Swim1:
	db "GFX_ChompsJr_Swim1.bin"
GFX_ChompsJr_Swim1End:
GFX_ChompsJr_Swim2:
	db "GFX_ChompsJr_Swim2.bin"
GFX_ChompsJr_Swim2End:
GFX_ChompsJr_Swim3:
	db "GFX_ChompsJr_Swim3.bin"
GFX_ChompsJr_Swim3End:
GFX_ChompsJr_Swim4:
	db "GFX_ChompsJr_Swim4.bin"
GFX_ChompsJr_Swim4End:
GFX_ChompsJr_Swim5:
	db "GFX_ChompsJr_Swim5.bin"
GFX_ChompsJr_Swim5End:
GFX_ChompsJr_Swim6:
	db "GFX_ChompsJr_Swim6.bin"
GFX_ChompsJr_Swim6End:
GFX_ChompsJr_Swim7:
	db "GFX_ChompsJr_Swim7.bin"
GFX_ChompsJr_Swim7End:
GFX_ChompsJr_Swim8:
	db "GFX_ChompsJr_Swim8.bin"
GFX_ChompsJr_Swim8End:
GFX_ChompsJr_Swim9:
	db "GFX_ChompsJr_Swim9.bin"
GFX_ChompsJr_Swim9End:
GFX_ChompsJr_Swim10:
	db "GFX_ChompsJr_Swim10.bin"
GFX_ChompsJr_Swim10End:
GFX_ChompsJr_Swim11:
	db "GFX_ChompsJr_Swim11.bin"
GFX_ChompsJr_Swim11End:
GFX_ChompsJr_Swim12:
	db "GFX_ChompsJr_Swim12.bin"
GFX_ChompsJr_Swim12End:
GFX_ChompsJr_Swim13:
	db "GFX_ChompsJr_Swim13.bin"
GFX_ChompsJr_Swim13End:
GFX_ChompsJr_Swim14:
	db "GFX_ChompsJr_Swim14.bin"
GFX_ChompsJr_Swim14End:
GFX_ChompsJr_Swim15:
	db "GFX_ChompsJr_Swim15.bin"
GFX_ChompsJr_Swim15End:
GFX_ChompsJr_Swim16:
	db "GFX_ChompsJr_Swim16.bin"
GFX_ChompsJr_Swim16End:
GFX_Croctopus_Unknown1:
	db "GFX_Croctopus_Unknown1.bin"
GFX_Croctopus_Unknown1End:
GFX_Croctopus_Unknown2:
	db "GFX_Croctopus_Unknown2.bin"
GFX_Croctopus_Unknown2End:
GFX_Croctopus_Unknown3:
	db "GFX_Croctopus_Unknown3.bin"
GFX_Croctopus_Unknown3End:
GFX_Croctopus_Unknown4:
	db "GFX_Croctopus_Unknown4.bin"
GFX_Croctopus_Unknown4End:
GFX_Croctopus_Unknown5:
	db "GFX_Croctopus_Unknown5.bin"
GFX_Croctopus_Unknown5End:
GFX_Croctopus_Unknown6:
	db "GFX_Croctopus_Unknown6.bin"
GFX_Croctopus_Unknown6End:
GFX_Croctopus_Unknown7:
	db "GFX_Croctopus_Unknown7.bin"
GFX_Croctopus_Unknown7End:
GFX_Enguarde_Hurt:
	db "GFX_Enguarde_Hurt.bin"
GFX_Enguarde_HurtEnd:
GFX_Bitesize_Swim1:
	db "GFX_Bitesize_Swim1.bin"
GFX_Bitesize_Swim1End:
GFX_Bitesize_Swim2:
	db "GFX_Bitesize_Swim2.bin"
GFX_Bitesize_Swim2End:
GFX_Bitesize_Swim3:
	db "GFX_Bitesize_Swim3.bin"
GFX_Bitesize_Swim3End:
GFX_Bitesize_Swim4:
	db "GFX_Bitesize_Swim4.bin"
GFX_Bitesize_Swim4End:
GFX_Bitesize_Swim5:
	db "GFX_Bitesize_Swim5.bin"
GFX_Bitesize_Swim5End:
GFX_Bitesize_Swim6:
	db "GFX_Bitesize_Swim6.bin"
GFX_Bitesize_Swim6End:
GFX_Bitesize_Swim7:
	db "GFX_Bitesize_Swim7.bin"
GFX_Bitesize_Swim7End:
GFX_Bitesize_Swim8:
	db "GFX_Bitesize_Swim8.bin"
GFX_Bitesize_Swim8End:
GFX_Bitesize_Swim9:
	db "GFX_Bitesize_Swim9.bin"
GFX_Bitesize_Swim9End:
GFX_Bitesize_Swim10:
	db "GFX_Bitesize_Swim10.bin"
GFX_Bitesize_Swim10End:
GFX_Bitesize_Swim11:
	db "GFX_Bitesize_Swim11.bin"
GFX_Bitesize_Swim11End:
GFX_Bitesize_Swim12:
	db "GFX_Bitesize_Swim12.bin"
GFX_Bitesize_Swim12End:
GFX_Bitesize_Swim13:
	db "GFX_Bitesize_Swim13.bin"
GFX_Bitesize_Swim13End:
GFX_ChompsJr_Turn1:
	db "GFX_ChompsJr_Turn1.bin"
GFX_ChompsJr_Turn1End:
GFX_ChompsJr_Turn2:
	db "GFX_ChompsJr_Turn2.bin"
GFX_ChompsJr_Turn2End:
GFX_ChompsJr_Turn3:
	db "GFX_ChompsJr_Turn3.bin"
GFX_ChompsJr_Turn3End:
GFX_ChompsJr_Turn4:
	db "GFX_ChompsJr_Turn4.bin"
GFX_ChompsJr_Turn4End:
GFX_ChompsJr_Turn5:
	db "GFX_ChompsJr_Turn5.bin"
GFX_ChompsJr_Turn5End:
GFX_ChompsJr_Turn6:
	db "GFX_ChompsJr_Turn6.bin"
GFX_ChompsJr_Turn6End:
GFX_ChompsJr_Turn7:
	db "GFX_ChompsJr_Turn7.bin"
GFX_ChompsJr_Turn7End:
GFX_ChompsJr_Turn8:
	db "GFX_ChompsJr_Turn8.bin"
GFX_ChompsJr_Turn8End:
GFX_ChompsJr_Turn9:
	db "GFX_ChompsJr_Turn9.bin"
GFX_ChompsJr_Turn9End:
GFX_Puftup_Swim1:
	db "GFX_Puftup_Swim1.bin"
GFX_Puftup_Swim1End:
GFX_Puftup_Swim2:
	db "GFX_Puftup_Swim2.bin"
GFX_Puftup_Swim2End:
GFX_Puftup_Swim3:
	db "GFX_Puftup_Swim3.bin"
GFX_Puftup_Swim3End:
GFX_Puftup_Swim4:
	db "GFX_Puftup_Swim4.bin"
GFX_Puftup_Swim4End:
GFX_Puftup_Swim5:
	db "GFX_Puftup_Swim5.bin"
GFX_Puftup_Swim5End:
GFX_Puftup_Swim6:
	db "GFX_Puftup_Swim6.bin"
GFX_Puftup_Swim6End:
GFX_Puftup_Swim7:
	db "GFX_Puftup_Swim7.bin"
GFX_Puftup_Swim7End:
GFX_Puftup_Swim8:
	db "GFX_Puftup_Swim8.bin"
GFX_Puftup_Swim8End:
GFX_Puftup_Swim9:
	db "GFX_Puftup_Swim9.bin"
GFX_Puftup_Swim9End:
GFX_Puftup_Swim10:
	db "GFX_Puftup_Swim10.bin"
GFX_Puftup_Swim10End:
GFX_Puftup_Swim11:
	db "GFX_Puftup_Swim11.bin"
GFX_Puftup_Swim11End:
GFX_Puftup_Swim12:
	db "GFX_Puftup_Swim12.bin"
GFX_Puftup_Swim12End:
GFX_Puftup_Swim13:
	db "GFX_Puftup_Swim13.bin"
GFX_Puftup_Swim13End:
GFX_Chomps_Dead1:
	db "GFX_Chomps_Dead1.bin"
GFX_Chomps_Dead1End:
GFX_Chomps_Dead2:
	db "GFX_Chomps_Dead2.bin"
GFX_Chomps_Dead2End:
GFX_Chomps_Dead3:
	db "GFX_Chomps_Dead3.bin"
GFX_Chomps_Dead3End:
GFX_Chomps_Dead4:
	db "GFX_Chomps_Dead4.bin"
GFX_Chomps_Dead4End:
GFX_Chomps_Dead5:
	db "GFX_Chomps_Dead5.bin"
GFX_Chomps_Dead5End:
GFX_Chomps_Dead6:
	db "GFX_Chomps_Dead6.bin"
GFX_Chomps_Dead6End:
GFX_Chomps_Turn1:
	db "GFX_Chomps_Turn1.bin"
GFX_Chomps_Turn1End:
GFX_Chomps_Turn2:
	db "GFX_Chomps_Turn2.bin"
GFX_Chomps_Turn2End:
GFX_Chomps_Turn3:
	db "GFX_Chomps_Turn3.bin"
GFX_Chomps_Turn3End:
GFX_Chomps_Turn4:
	db "GFX_Chomps_Turn4.bin"
GFX_Chomps_Turn4End:
GFX_Chomps_Turn5:
	db "GFX_Chomps_Turn5.bin"
GFX_Chomps_Turn5End:
GFX_Chomps_Turn6:
	db "GFX_Chomps_Turn6.bin"
GFX_Chomps_Turn6End:
GFX_Chomps_Turn7:
	db "GFX_Chomps_Turn7.bin"
GFX_Chomps_Turn7End:
GFX_Chomps_Turn8:
	db "GFX_Chomps_Turn8.bin"
GFX_Chomps_Turn8End:
GFX_Chomps_Turn9:
	db "GFX_Chomps_Turn9.bin"
GFX_Chomps_Turn9End:
GFX_Bitesize_Turn1:
	db "GFX_Bitesize_Turn1.bin"
GFX_Bitesize_Turn1End:
GFX_Bitesize_Turn2:
	db "GFX_Bitesize_Turn2.bin"
GFX_Bitesize_Turn2End:
GFX_Bitesize_Turn3:
	db "GFX_Bitesize_Turn3.bin"
GFX_Bitesize_Turn3End:
GFX_Bitesize_Turn4:
	db "GFX_Bitesize_Turn4.bin"
GFX_Bitesize_Turn4End:
GFX_Bitesize_Dead1:
	db "GFX_Bitesize_Dead1.bin"
GFX_Bitesize_Dead1End:
GFX_Bitesize_Dead2:
	db "GFX_Bitesize_Dead2.bin"
GFX_Bitesize_Dead2End:
GFX_Bitesize_Dead3:
	db "GFX_Bitesize_Dead3.bin"
GFX_Bitesize_Dead3End:
GFX_Bitesize_Dead4:
	db "GFX_Bitesize_Dead4.bin"
GFX_Bitesize_Dead4End:
GFX_Squidge_Swim1:
	db "GFX_Squidge_Swim1.bin"
GFX_Squidge_Swim1End:
GFX_Squidge_Swim2:
	db "GFX_Squidge_Swim2.bin"
GFX_Squidge_Swim2End:
GFX_Squidge_Swim3:
	db "GFX_Squidge_Swim3.bin"
GFX_Squidge_Swim3End:
GFX_Squidge_Swim4:
	db "GFX_Squidge_Swim4.bin"
GFX_Squidge_Swim4End:
GFX_Squidge_Swim5:
	db "GFX_Squidge_Swim5.bin"
GFX_Squidge_Swim5End:
GFX_Squidge_Swim6:
	db "GFX_Squidge_Swim6.bin"
GFX_Squidge_Swim6End:
GFX_Squidge_Swim7:
	db "GFX_Squidge_Swim7.bin"
GFX_Squidge_Swim7End:
GFX_Squidge_Swim8:
	db "GFX_Squidge_Swim8.bin"
GFX_Squidge_Swim8End:
GFX_Squidge_Swim9:
	db "GFX_Squidge_Swim9.bin"
GFX_Squidge_Swim9End:
GFX_KRool_Throw1:
	db "GFX_KRool_Throw1.bin"
GFX_KRool_Throw1End:
GFX_KRool_Throw2:
	db "GFX_KRool_Throw2.bin"
GFX_KRool_Throw2End:
GFX_KRool_Throw3:
	db "GFX_KRool_Throw3.bin"
GFX_KRool_Throw3End:
GFX_KRool_Throw4:
	db "GFX_KRool_Throw4.bin"
GFX_KRool_Throw4End:
GFX_InactiveMapDiddy_Walk1:
	db "GFX_InactiveMapDiddy_Walk1.bin"
GFX_InactiveMapDiddy_Walk1End:
GFX_InactiveMapDiddy_Walk2:
	db "GFX_InactiveMapDiddy_Walk2.bin"
GFX_InactiveMapDiddy_Walk2End:
GFX_InactiveMapDiddy_Walk3:
	db "GFX_InactiveMapDiddy_Walk3.bin"
GFX_InactiveMapDiddy_Walk3End:
GFX_InactiveMapDiddy_Walk4:
	db "GFX_InactiveMapDiddy_Walk4.bin"
GFX_InactiveMapDiddy_Walk4End:
GFX_InactiveMapDiddy_Walk5:
	db "GFX_InactiveMapDiddy_Walk5.bin"
GFX_InactiveMapDiddy_Walk5End:
GFX_InactiveMapDiddy_Walk6:
	db "GFX_InactiveMapDiddy_Walk6.bin"
GFX_InactiveMapDiddy_Walk6End:
GFX_InactiveMapDiddy_Walk7:
	db "GFX_InactiveMapDiddy_Walk7.bin"
GFX_InactiveMapDiddy_Walk7End:
GFX_InactiveMapDiddy_Walk8:
	db "GFX_InactiveMapDiddy_Walk8.bin"
GFX_InactiveMapDiddy_Walk8End:
GFX_Croctopus_Spin1:
	db "GFX_Croctopus_Spin1.bin"
GFX_Croctopus_Spin1End:
GFX_Croctopus_Spin2:
	db "GFX_Croctopus_Spin2.bin"
GFX_Croctopus_Spin2End:
GFX_Croctopus_Spin3:
	db "GFX_Croctopus_Spin3.bin"
GFX_Croctopus_Spin3End:
GFX_Croctopus_Spin4:
	db "GFX_Croctopus_Spin4.bin"
GFX_Croctopus_Spin4End:
GFX_Croctopus_Spin5:
	db "GFX_Croctopus_Spin5.bin"
GFX_Croctopus_Spin5End:
GFX_Croctopus_Spin6:
	db "GFX_Croctopus_Spin6.bin"
GFX_Croctopus_Spin6End:
GFX_Croctopus_Spin7:
	db "GFX_Croctopus_Spin7.bin"
GFX_Croctopus_Spin7End:
GFX_Croctopus_Spin8:
	db "GFX_Croctopus_Spin8.bin"
GFX_Croctopus_Spin8End:
GFX_Croctopus_Spin9:
	db "GFX_Croctopus_Spin9.bin"
GFX_Croctopus_Spin9End:
GFX_Croctopus_Spin10:
	db "GFX_Croctopus_Spin10.bin"
GFX_Croctopus_Spin10End:
GFX_Croctopus_Spin11:
	db "GFX_Croctopus_Spin11.bin"
GFX_Croctopus_Spin11End:
GFX_Croctopus_Spin12:
	db "GFX_Croctopus_Spin12.bin"
GFX_Croctopus_Spin12End:
GFX_Croctopus_Spin13:
	db "GFX_Croctopus_Spin13.bin"
GFX_Croctopus_Spin13End:
GFX_Croctopus_Spin14:
	db "GFX_Croctopus_Spin14.bin"
GFX_Croctopus_Spin14End:
GFX_Croctopus_TransitionToSpin1:
	db "GFX_Croctopus_TransitionToSpin1.bin"
GFX_Croctopus_TransitionToSpin1End:
GFX_Croctopus_TransitionToSpin2:
	db "GFX_Croctopus_TransitionToSpin2.bin"
GFX_Croctopus_TransitionToSpin2End:
GFX_Croctopus_TransitionToSpin3:
	db "GFX_Croctopus_TransitionToSpin3.bin"
GFX_Croctopus_TransitionToSpin3End:
GFX_Croctopus_TransitionToSpin4:
	db "GFX_Croctopus_TransitionToSpin4.bin"
GFX_Croctopus_TransitionToSpin4End:
GFX_Croctopus_TransitionToSpin5:
	db "GFX_Croctopus_TransitionToSpin5.bin"
GFX_Croctopus_TransitionToSpin5End:
GFX_Minecart_Pose1:
	db "GFX_Minecart_Pose1.bin"
GFX_Minecart_Pose1End:
GFX_Minecart_Pose2:
	db "GFX_Minecart_Pose2.bin"
GFX_Minecart_Pose2End:
GFX_Minecart_Pose3:
	db "GFX_Minecart_Pose3.bin"
GFX_Minecart_Pose3End:
GFX_Minecart_Pose4:
	db "GFX_Minecart_Pose4.bin"
GFX_Minecart_Pose4End:
GFX_Minecart_Pose5:
	db "GFX_Minecart_Pose5.bin"
GFX_Minecart_Pose5End:
GFX_Minecart_Pose6:
	db "GFX_Minecart_Pose6.bin"
GFX_Minecart_Pose6End:
GFX_Minecart_Pose7:
	db "GFX_Minecart_Pose7.bin"
GFX_Minecart_Pose7End:
GFX_Minecart_Pose8:
	db "GFX_Minecart_Pose8.bin"
GFX_Minecart_Pose8End:
GFX_Minecart_Pose9:
	db "GFX_Minecart_Pose9.bin"
GFX_Minecart_Pose9End:
GFX_Minecart_Pose10:
	db "GFX_Minecart_Pose10.bin"
GFX_Minecart_Pose10End:
GFX_Minecart_Pose11:
	db "GFX_Minecart_Pose11.bin"
GFX_Minecart_Pose11End:
GFX_Minecart_Pose12:
	db "GFX_Minecart_Pose12.bin"
GFX_Minecart_Pose12End:
GFX_Minecart_Pose13:
	db "GFX_Minecart_Pose13.bin"
GFX_Minecart_Pose13End:
GFX_Minecart_Pose14:
	db "GFX_Minecart_Pose14.bin"
GFX_Minecart_Pose14End:
GFX_Minecart_Pose15:
	db "GFX_Minecart_Pose15.bin"
GFX_Minecart_Pose15End:
GFX_Minecart_Pose16:
	db "GFX_Minecart_Pose16.bin"
GFX_Minecart_Pose16End:
GFX_Minecart_Pose17:
	db "GFX_Minecart_Pose17.bin"
GFX_Minecart_Pose17End:
GFX_Minecart_Pose18:
	db "GFX_Minecart_Pose18.bin"
GFX_Minecart_Pose18End:
GFX_Minecart_Pose19:
	db "GFX_Minecart_Pose19.bin"
GFX_Minecart_Pose19End:
GFX_Diddy_DiddyTakesLead1:
	db "GFX_Diddy_DiddyTakesLead1.bin"
GFX_Diddy_DiddyTakesLead1End:
GFX_Diddy_DiddyTakesLead2:
	db "GFX_Diddy_DiddyTakesLead2.bin"
GFX_Diddy_DiddyTakesLead2End:
GFX_Diddy_DiddyTakesLead3:
	db "GFX_Diddy_DiddyTakesLead3.bin"
GFX_Diddy_DiddyTakesLead3End:
GFX_Diddy_DiddyTakesLead4:
	db "GFX_Diddy_DiddyTakesLead4.bin"
GFX_Diddy_DiddyTakesLead4End:
GFX_Diddy_DiddyTakesLead5:
	db "GFX_Diddy_DiddyTakesLead5.bin"
GFX_Diddy_DiddyTakesLead5End:
GFX_Diddy_DiddyTakesLead6:
	db "GFX_Diddy_DiddyTakesLead6.bin"
GFX_Diddy_DiddyTakesLead6End:
GFX_Diddy_DiddyTakesLead7:
	db "GFX_Diddy_DiddyTakesLead7.bin"
GFX_Diddy_DiddyTakesLead7End:
GFX_Diddy_DiddyTakesLead8:
	db "GFX_Diddy_DiddyTakesLead8.bin"
GFX_Diddy_DiddyTakesLead8End:
GFX_Diddy_DiddyTakesLead9:
	db "GFX_Diddy_DiddyTakesLead9.bin"
GFX_Diddy_DiddyTakesLead9End:
GFX_Diddy_DiddyTakesLead10:
	db "GFX_Diddy_DiddyTakesLead10.bin"
GFX_Diddy_DiddyTakesLead10End:
GFX_Diddy_DiddyTakesLead11:
	db "GFX_Diddy_DiddyTakesLead11.bin"
GFX_Diddy_DiddyTakesLead11End:
GFX_Diddy_DiddyTakesLead12:
	db "GFX_Diddy_DiddyTakesLead12.bin"
GFX_Diddy_DiddyTakesLead12End:
GFX_Diddy_DiddyTakesLead13:
	db "GFX_Diddy_DiddyTakesLead13.bin"
GFX_Diddy_DiddyTakesLead13End:
GFX_DonkeyKong_DiddyTakesLead1:
	db "GFX_DonkeyKong_DiddyTakesLead1.bin"
GFX_DonkeyKong_DiddyTakesLead1End:
GFX_DonkeyKong_DiddyTakesLead2:
	db "GFX_DonkeyKong_DiddyTakesLead2.bin"
GFX_DonkeyKong_DiddyTakesLead2End:
GFX_DonkeyKong_DiddyTakesLead3:
	db "GFX_DonkeyKong_DiddyTakesLead3.bin"
GFX_DonkeyKong_DiddyTakesLead3End:
GFX_DonkeyKong_DiddyTakesLead4:
	db "GFX_DonkeyKong_DiddyTakesLead4.bin"
GFX_DonkeyKong_DiddyTakesLead4End:
GFX_DonkeyKong_DiddyTakesLead5:
	db "GFX_DonkeyKong_DiddyTakesLead5.bin"
GFX_DonkeyKong_DiddyTakesLead5End:
GFX_DonkeyKong_DonkeyTakesLead1:
	db "GFX_DonkeyKong_DonkeyTakesLead1.bin"
GFX_DonkeyKong_DonkeyTakesLead1End:
GFX_DonkeyKong_DonkeyTakesLead2:
	db "GFX_DonkeyKong_DonkeyTakesLead2.bin"
GFX_DonkeyKong_DonkeyTakesLead2End:
GFX_DonkeyKong_DonkeyTakesLead3:
	db "GFX_DonkeyKong_DonkeyTakesLead3.bin"
GFX_DonkeyKong_DonkeyTakesLead3End:
GFX_DonkeyKong_DonkeyTakesLead4:
	db "GFX_DonkeyKong_DonkeyTakesLead4.bin"
GFX_DonkeyKong_DonkeyTakesLead4End:
GFX_DonkeyKong_DonkeyTakesLead5:
	db "GFX_DonkeyKong_DonkeyTakesLead5.bin"
GFX_DonkeyKong_DonkeyTakesLead5End:
GFX_DonkeyKong_DonkeyTakesLead6:
	db "GFX_DonkeyKong_DonkeyTakesLead6.bin"
GFX_DonkeyKong_DonkeyTakesLead6End:
GFX_DonkeyKong_DonkeyTakesLead7:
	db "GFX_DonkeyKong_DonkeyTakesLead7.bin"
GFX_DonkeyKong_DonkeyTakesLead7End:
GFX_DonkeyKong_DonkeyTakesLead8:
	db "GFX_DonkeyKong_DonkeyTakesLead8.bin"
GFX_DonkeyKong_DonkeyTakesLead8End:
GFX_DonkeyKong_DonkeyTakesLead9:
	db "GFX_DonkeyKong_DonkeyTakesLead9.bin"
GFX_DonkeyKong_DonkeyTakesLead9End:
GFX_DonkeyKong_DonkeyTakesLead10:
	db "GFX_DonkeyKong_DonkeyTakesLead10.bin"
GFX_DonkeyKong_DonkeyTakesLead10End:
GFX_Diddy_DonkeyTakesLead1:
	db "GFX_Diddy_DonkeyTakesLead1.bin"
GFX_Diddy_DonkeyTakesLead1End:
GFX_Diddy_DonkeyTakesLead2:
	db "GFX_Diddy_DonkeyTakesLead2.bin"
GFX_Diddy_DonkeyTakesLead2End:
GFX_Diddy_DonkeyTakesLead3:
	db "GFX_Diddy_DonkeyTakesLead3.bin"
GFX_Diddy_DonkeyTakesLead3End:
GFX_Diddy_DonkeyTakesLead4:
	db "GFX_Diddy_DonkeyTakesLead4.bin"
GFX_Diddy_DonkeyTakesLead4End:
GFX_Diddy_DonkeyTakesLead5:
	db "GFX_Diddy_DonkeyTakesLead5.bin"
GFX_Diddy_DonkeyTakesLead5End:
GFX_Diddy_DonkeyTakesLead6:
	db "GFX_Diddy_DonkeyTakesLead6.bin"
GFX_Diddy_DonkeyTakesLead6End:
GFX_Diddy_DonkeyTakesLead7:
	db "GFX_Diddy_DonkeyTakesLead7.bin"
GFX_Diddy_DonkeyTakesLead7End:
GFX_Diddy_DonkeyTakesLead8:
	db "GFX_Diddy_DonkeyTakesLead8.bin"
GFX_Diddy_DonkeyTakesLead8End:
GFX_Diddy_DonkeyTakesLead9:
	db "GFX_Diddy_DonkeyTakesLead9.bin"
GFX_Diddy_DonkeyTakesLead9End:
GFX_MinecartSparks_Pose1:
	db "GFX_MinecartSparks_Pose1.bin"
GFX_MinecartSparks_Pose1End:
GFX_MinecartSparks_Pose2:
	db "GFX_MinecartSparks_Pose2.bin"
GFX_MinecartSparks_Pose2End:
GFX_MinecartSparks_Pose3:
	db "GFX_MinecartSparks_Pose3.bin"
GFX_MinecartSparks_Pose3End:
GFX_MinecartSparks_Pose4:
	db "GFX_MinecartSparks_Pose4.bin"
GFX_MinecartSparks_Pose4End:
GFX_MinecartSparks_Pose5:
	db "GFX_MinecartSparks_Pose5.bin"
GFX_MinecartSparks_Pose5End:
GFX_MinecartSparks_Pose6:
	db "GFX_MinecartSparks_Pose6.bin"
GFX_MinecartSparks_Pose6End:
GFX_MinecartSparks_Pose7:
	db "GFX_MinecartSparks_Pose7.bin"
GFX_MinecartSparks_Pose7End:
GFX_MinecartSparks_Pose8:
	db "GFX_MinecartSparks_Pose8.bin"
GFX_MinecartSparks_Pose8End:
GFX_MinecartSparks_Pose9:
	db "GFX_MinecartSparks_Pose9.bin"
GFX_MinecartSparks_Pose9End:
GFX_MinecartSparks_Pose10:
	db "GFX_MinecartSparks_Pose10.bin"
GFX_MinecartSparks_Pose10End:
GFX_MinecartSparks_Pose11:
	db "GFX_MinecartSparks_Pose11.bin"
GFX_MinecartSparks_Pose11End:
GFX_MinecartSparks_Pose12:
	db "GFX_MinecartSparks_Pose12.bin"
GFX_MinecartSparks_Pose12End:
GFX_MinecartSparks_Pose13:
	db "GFX_MinecartSparks_Pose13.bin"
GFX_MinecartSparks_Pose13End:
GFX_MinecartSparks_Pose14:
	db "GFX_MinecartSparks_Pose14.bin"
GFX_MinecartSparks_Pose14End:
GFX_Croctopus_Idle1:
	db "GFX_Croctopus_Idle1.bin"
GFX_Croctopus_Idle1End:
GFX_Croctopus_Idle2:
	db "GFX_Croctopus_Idle2.bin"
GFX_Croctopus_Idle2End:
GFX_Croctopus_Idle3:
	db "GFX_Croctopus_Idle3.bin"
GFX_Croctopus_Idle3End:
GFX_Croctopus_Idle4:
	db "GFX_Croctopus_Idle4.bin"
GFX_Croctopus_Idle4End:
GFX_Croctopus_Idle5:
	db "GFX_Croctopus_Idle5.bin"
GFX_Croctopus_Idle5End:
GFX_Croctopus_Idle6:
	db "GFX_Croctopus_Idle6.bin"
GFX_Croctopus_Idle6End:
GFX_Croctopus_Idle7:
	db "GFX_Croctopus_Idle7.bin"
GFX_Croctopus_Idle7End:
GFX_Croctopus_Idle8:
	db "GFX_Croctopus_Idle8.bin"
GFX_Croctopus_Idle8End:
GFX_Croctopus_Idle9:
	db "GFX_Croctopus_Idle9.bin"
GFX_Croctopus_Idle9End:
GFX_Croctopus_Idle10:
	db "GFX_Croctopus_Idle10.bin"
GFX_Croctopus_Idle10End:
GFX_Croctopus_Idle11:
	db "GFX_Croctopus_Idle11.bin"
GFX_Croctopus_Idle11End:
GFX_Croctopus_Idle12:
	db "GFX_Croctopus_Idle12.bin"
GFX_Croctopus_Idle12End:
GFX_Croctopus_Idle13:
	db "GFX_Croctopus_Idle13.bin"
GFX_Croctopus_Idle13End:
GFX_Croctopus_Idle14:
	db "GFX_Croctopus_Idle14.bin"
GFX_Croctopus_Idle14End:
GFX_Croctopus_Idle15:
	db "GFX_Croctopus_Idle15.bin"
GFX_Croctopus_Idle15End:
GFX_Croctopus_Idle16:
	db "GFX_Croctopus_Idle16.bin"
GFX_Croctopus_Idle16End:
GFX_BreakableWall_LeftForestWall:
	db "GFX_BreakableWall_LeftForestWall.bin"
GFX_BreakableWall_LeftForestWallEnd:
GFX_GroundCover_ForestLevel:
	db "GFX_GroundCover_ForestLevel.bin"
GFX_GroundCover_ForestLevelEnd:
GFX_BreakableWall_LeftCrystalCaveWall:
	db "GFX_BreakableWall_LeftCrystalCaveWall.bin"
GFX_BreakableWall_LeftCrystalCaveWallEnd:
GFX_GroundCover_CrystalCaveLevel:
	db "GFX_GroundCover_CrystalCaveLevel.bin"
GFX_GroundCover_CrystalCaveLevelEnd:
GFX_Tire_Bounce1:
	db "GFX_Tire_Bounce1.bin"
GFX_Tire_Bounce1End:
GFX_Tire_Bounce2:
	db "GFX_Tire_Bounce2.bin"
GFX_Tire_Bounce2End:
GFX_Tire_Bounce3:
	db "GFX_Tire_Bounce3.bin"
GFX_Tire_Bounce3End:
GFX_Tire_Bounce4:
	db "GFX_Tire_Bounce4.bin"
GFX_Tire_Bounce4End:
GFX_Tire_Bounce5:
	db "GFX_Tire_Bounce5.bin"
GFX_Tire_Bounce5End:
GFX_Tire_Bounce6:
	db "GFX_Tire_Bounce6.bin"
GFX_Tire_Bounce6End:
GFX_TrickTrackTrekPlatform_Pose1:
	db "GFX_TrickTrackTrekPlatform_Pose1.bin"
GFX_TrickTrackTrekPlatform_Pose1End:
GFX_TrickTrackTrekPlatform_Pose2:
	db "GFX_TrickTrackTrekPlatform_Pose2.bin"
GFX_TrickTrackTrekPlatform_Pose2End:
GFX_TrickTrackTrekPlatform_Pose3:
	db "GFX_TrickTrackTrekPlatform_Pose3.bin"
GFX_TrickTrackTrekPlatform_Pose3End:
GFX_FactoryPlatform_Pose:
	db "GFX_FactoryPlatform_Pose.bin"
GFX_FactoryPlatform_PoseEnd:
GFX_InactiveMapDiddy_Jump1:
	db "GFX_InactiveMapDiddy_Jump1.bin"
GFX_InactiveMapDiddy_Jump1End:
GFX_InactiveMapDiddy_Jump2:
	db "GFX_InactiveMapDiddy_Jump2.bin"
GFX_InactiveMapDiddy_Jump2End:
GFX_InactiveMapDiddy_Jump3:
	db "GFX_InactiveMapDiddy_Jump3.bin"
GFX_InactiveMapDiddy_Jump3End:
GFX_InactiveMapDiddy_Jump4:
	db "GFX_InactiveMapDiddy_Jump4.bin"
GFX_InactiveMapDiddy_Jump4End:
GFX_InactiveMapDiddy_Jump5:
	db "GFX_InactiveMapDiddy_Jump5.bin"
GFX_InactiveMapDiddy_Jump5End:
GFX_InactiveMapDiddy_Jump6:
	db "GFX_InactiveMapDiddy_Jump6.bin"
GFX_InactiveMapDiddy_Jump6End:
GFX_InactiveMapDiddy_Jump7:
	db "GFX_InactiveMapDiddy_Jump7.bin"
GFX_InactiveMapDiddy_Jump7End:
GFX_InactiveMapDiddy_Jump8:
	db "GFX_InactiveMapDiddy_Jump8.bin"
GFX_InactiveMapDiddy_Jump8End:
GFX_InactiveMapDiddy_Jump9:
	db "GFX_InactiveMapDiddy_Jump9.bin"
GFX_InactiveMapDiddy_Jump9End:
GFX_InactiveMapDiddy_Jump10:
	db "GFX_InactiveMapDiddy_Jump10.bin"
GFX_InactiveMapDiddy_Jump10End:
GFX_InactiveMapDiddy_Jump11:
	db "GFX_InactiveMapDiddy_Jump11.bin"
GFX_InactiveMapDiddy_Jump11End:
GFX_DonkeyKong_Victory1:
	db "GFX_DonkeyKong_Victory1.bin"
GFX_DonkeyKong_Victory1End:
GFX_DonkeyKong_Victory2:
	db "GFX_DonkeyKong_Victory2.bin"
GFX_DonkeyKong_Victory2End:
GFX_DonkeyKong_Victory3:
	db "GFX_DonkeyKong_Victory3.bin"
GFX_DonkeyKong_Victory3End:
GFX_DonkeyKong_Victory4:
	db "GFX_DonkeyKong_Victory4.bin"
GFX_DonkeyKong_Victory4End:
GFX_DonkeyKong_Victory5:
	db "GFX_DonkeyKong_Victory5.bin"
GFX_DonkeyKong_Victory5End:
GFX_DonkeyKong_Victory6:
	db "GFX_DonkeyKong_Victory6.bin"
GFX_DonkeyKong_Victory6End:
GFX_DonkeyKong_Victory7:
	db "GFX_DonkeyKong_Victory7.bin"
GFX_DonkeyKong_Victory7End:
GFX_DonkeyKong_Victory8:
	db "GFX_DonkeyKong_Victory8.bin"
GFX_DonkeyKong_Victory8End:
GFX_DonkeyKong_Victory9:
	db "GFX_DonkeyKong_Victory9.bin"
GFX_DonkeyKong_Victory9End:
GFX_DonkeyKong_Victory10:
	db "GFX_DonkeyKong_Victory10.bin"
GFX_DonkeyKong_Victory10End:
GFX_DonkeyKong_Victory11:
	db "GFX_DonkeyKong_Victory11.bin"
GFX_DonkeyKong_Victory11End:
GFX_DonkeyKong_Victory12:
	db "GFX_DonkeyKong_Victory12.bin"
GFX_DonkeyKong_Victory12End:
GFX_DonkeyKong_Victory13:
	db "GFX_DonkeyKong_Victory13.bin"
GFX_DonkeyKong_Victory13End:
GFX_DonkeyKong_Victory14:
	db "GFX_DonkeyKong_Victory14.bin"
GFX_DonkeyKong_Victory14End:
GFX_DonkeyKong_Victory15:
	db "GFX_DonkeyKong_Victory15.bin"
GFX_DonkeyKong_Victory15End:
GFX_DonkeyKong_Victory16:
	db "GFX_DonkeyKong_Victory16.bin"
GFX_DonkeyKong_Victory16End:
GFX_DonkeyKong_Victory17:
	db "GFX_DonkeyKong_Victory17.bin"
GFX_DonkeyKong_Victory17End:
GFX_DonkeyKong_Victory18:
	db "GFX_DonkeyKong_Victory18.bin"
GFX_DonkeyKong_Victory18End:
GFX_DonkeyKong_Victory19:
	db "GFX_DonkeyKong_Victory19.bin"
GFX_DonkeyKong_Victory19End:
GFX_DonkeyKong_Victory20:
	db "GFX_DonkeyKong_Victory20.bin"
GFX_DonkeyKong_Victory20End:
GFX_DonkeyKong_Victory21:
	db "GFX_DonkeyKong_Victory21.bin"
GFX_DonkeyKong_Victory21End:
GFX_DonkeyKong_Victory22:
	db "GFX_DonkeyKong_Victory22.bin"
GFX_DonkeyKong_Victory22End:
GFX_DonkeyKong_Victory23:
	db "GFX_DonkeyKong_Victory23.bin"
GFX_DonkeyKong_Victory23End:
GFX_DonkeyKong_Victory24:
	db "GFX_DonkeyKong_Victory24.bin"
GFX_DonkeyKong_Victory24End:
GFX_DonkeyKong_Victory25:
	db "GFX_DonkeyKong_Victory25.bin"
GFX_DonkeyKong_Victory25End:
GFX_DonkeyKong_Victory26:
	db "GFX_DonkeyKong_Victory26.bin"
GFX_DonkeyKong_Victory26End:
GFX_DonkeyKong_Victory27:
	db "GFX_DonkeyKong_Victory27.bin"
GFX_DonkeyKong_Victory27End:
GFX_DonkeyKong_Victory28:
	db "GFX_DonkeyKong_Victory28.bin"
GFX_DonkeyKong_Victory28End:
GFX_DonkeyKong_Victory29:
	db "GFX_DonkeyKong_Victory29.bin"
GFX_DonkeyKong_Victory29End:
GFX_DonkeyKong_Victory30:
	db "GFX_DonkeyKong_Victory30.bin"
GFX_DonkeyKong_Victory30End:
GFX_DonkeyKong_Victory31:
	db "GFX_DonkeyKong_Victory31.bin"
GFX_DonkeyKong_Victory31End:
GFX_DonkeyKong_Victory32:
	db "GFX_DonkeyKong_Victory32.bin"
GFX_DonkeyKong_Victory32End:
GFX_DonkeyKong_Kick1:
	db "GFX_DonkeyKong_Kick1.bin"
GFX_DonkeyKong_Kick1End:
GFX_DonkeyKong_Kick2:
	db "GFX_DonkeyKong_Kick2.bin"
GFX_DonkeyKong_Kick2End:
GFX_DonkeyKong_Kick3:
	db "GFX_DonkeyKong_Kick3.bin"
GFX_DonkeyKong_Kick3End:
GFX_DonkeyKong_Kick4:
	db "GFX_DonkeyKong_Kick4.bin"
GFX_DonkeyKong_Kick4End:
GFX_DonkeyKong_Kick5:
	db "GFX_DonkeyKong_Kick5.bin"
GFX_DonkeyKong_Kick5End:
GFX_DonkeyKong_Kick6:
	db "GFX_DonkeyKong_Kick6.bin"
GFX_DonkeyKong_Kick6End:
GFX_DonkeyKong_Kick7:
	db "GFX_DonkeyKong_Kick7.bin"
GFX_DonkeyKong_Kick7End:
GFX_DonkeyKong_Kick8:
	db "GFX_DonkeyKong_Kick8.bin"
GFX_DonkeyKong_Kick8End:
GFX_DonkeyKong_Kick9:
	db "GFX_DonkeyKong_Kick9.bin"
GFX_DonkeyKong_Kick9End:
GFX_DonkeyKong_Kick10:
	db "GFX_DonkeyKong_Kick10.bin"
GFX_DonkeyKong_Kick10End:
GFX_DonkeyKong_Kick11:
	db "GFX_DonkeyKong_Kick11.bin"
GFX_DonkeyKong_Kick11End:
GFX_DonkeyKong_Kick12:
	db "GFX_DonkeyKong_Kick12.bin"
GFX_DonkeyKong_Kick12End:
GFX_DonkeyKong_Kick13:
	db "GFX_DonkeyKong_Kick13.bin"
GFX_DonkeyKong_Kick13End:
GFX_DonkeyKong_Kick14:
	db "GFX_DonkeyKong_Kick14.bin"
GFX_DonkeyKong_Kick14End:
GFX_DonkeyKong_Kick15:
	db "GFX_DonkeyKong_Kick15.bin"
GFX_DonkeyKong_Kick15End:
GFX_DonkeyKong_Kick16:
	db "GFX_DonkeyKong_Kick16.bin"
GFX_DonkeyKong_Kick16End:
GFX_DonkeyKong_Kick17:
	db "GFX_DonkeyKong_Kick17.bin"
GFX_DonkeyKong_Kick17End:
GFX_DonkeyKong_Kick18:
	db "GFX_DonkeyKong_Kick18.bin"
GFX_DonkeyKong_Kick18End:
GFX_DonkeyKong_Kick19:
	db "GFX_DonkeyKong_Kick19.bin"
GFX_DonkeyKong_Kick19End:
GFX_DonkeyKong_Kick20:
	db "GFX_DonkeyKong_Kick20.bin"
GFX_DonkeyKong_Kick20End:
GFX_DonkeyKong_Kick21:
	db "GFX_DonkeyKong_Kick21.bin"
GFX_DonkeyKong_Kick21End:
GFX_DonkeyKong_Kick22:
	db "GFX_DonkeyKong_Kick22.bin"
GFX_DonkeyKong_Kick22End:
GFX_DonkeyKong_Kick23:
	db "GFX_DonkeyKong_Kick23.bin"
GFX_DonkeyKong_Kick23End:
GFX_DonkeyKong_Kick24:
	db "GFX_DonkeyKong_Kick24.bin"
GFX_DonkeyKong_Kick24End:
GFX_DonkeyKong_Kick25:
	db "GFX_DonkeyKong_Kick25.bin"
GFX_DonkeyKong_Kick25End:
GFX_DonkeyKong_Kick26:
	db "GFX_DonkeyKong_Kick26.bin"
GFX_DonkeyKong_Kick26End:
GFX_DonkeyKong_Kick27:
	db "GFX_DonkeyKong_Kick27.bin"
GFX_DonkeyKong_Kick27End:
GFX_DonkeyKong_Kick28:
	db "GFX_DonkeyKong_Kick28.bin"
GFX_DonkeyKong_Kick28End:
GFX_DonkeyKong_Kick29:
	db "GFX_DonkeyKong_Kick29.bin"
GFX_DonkeyKong_Kick29End:
GFX_DonkeyKong_Kick30:
	db "GFX_DonkeyKong_Kick30.bin"
GFX_DonkeyKong_Kick30End:
GFX_DonkeyKong_TooCloseToEdge1:
	db "GFX_DonkeyKong_TooCloseToEdge1.bin"
GFX_DonkeyKong_TooCloseToEdge1End:
GFX_DonkeyKong_TooCloseToEdge2:
	db "GFX_DonkeyKong_TooCloseToEdge2.bin"
GFX_DonkeyKong_TooCloseToEdge2End:
GFX_DonkeyKong_TooCloseToEdge3:
	db "GFX_DonkeyKong_TooCloseToEdge3.bin"
GFX_DonkeyKong_TooCloseToEdge3End:
GFX_DonkeyKong_TooCloseToEdge4:
	db "GFX_DonkeyKong_TooCloseToEdge4.bin"
GFX_DonkeyKong_TooCloseToEdge4End:
GFX_DonkeyKong_TooCloseToEdge5:
	db "GFX_DonkeyKong_TooCloseToEdge5.bin"
GFX_DonkeyKong_TooCloseToEdge5End:
GFX_DonkeyKong_TooCloseToEdge6:
	db "GFX_DonkeyKong_TooCloseToEdge6.bin"
GFX_DonkeyKong_TooCloseToEdge6End:
GFX_DonkeyKong_TooCloseToEdge7:
	db "GFX_DonkeyKong_TooCloseToEdge7.bin"
GFX_DonkeyKong_TooCloseToEdge7End:
GFX_DonkeyKong_TooCloseToEdge8:
	db "GFX_DonkeyKong_TooCloseToEdge8.bin"
GFX_DonkeyKong_TooCloseToEdge8End:
GFX_DonkeyKong_TooCloseToEdge9:
	db "GFX_DonkeyKong_TooCloseToEdge9.bin"
GFX_DonkeyKong_TooCloseToEdge9End:
GFX_DonkeyKong_TooCloseToEdge10:
	db "GFX_DonkeyKong_TooCloseToEdge10.bin"
GFX_DonkeyKong_TooCloseToEdge10End:
GFX_DonkeyKong_TooCloseToEdge11:
	db "GFX_DonkeyKong_TooCloseToEdge11.bin"
GFX_DonkeyKong_TooCloseToEdge11End:
GFX_DonkeyKong_TooCloseToEdge12:
	db "GFX_DonkeyKong_TooCloseToEdge12.bin"
GFX_DonkeyKong_TooCloseToEdge12End:
GFX_DonkeyKong_TooCloseToEdge13:
	db "GFX_DonkeyKong_TooCloseToEdge13.bin"
GFX_DonkeyKong_TooCloseToEdge13End:
GFX_DonkeyKong_TooCloseToEdge14:
	db "GFX_DonkeyKong_TooCloseToEdge14.bin"
GFX_DonkeyKong_TooCloseToEdge14End:
GFX_DonkeyKong_TooCloseToEdge15:
	db "GFX_DonkeyKong_TooCloseToEdge15.bin"
GFX_DonkeyKong_TooCloseToEdge15End:
GFX_DonkeyKong_TooCloseToEdge16:
	db "GFX_DonkeyKong_TooCloseToEdge16.bin"
GFX_DonkeyKong_TooCloseToEdge16End:
GFX_DonkeyKong_TooCloseToEdge17:
	db "GFX_DonkeyKong_TooCloseToEdge17.bin"
GFX_DonkeyKong_TooCloseToEdge17End:
GFX_DonkeyKong_TooCloseToEdge18:
	db "GFX_DonkeyKong_TooCloseToEdge18.bin"
GFX_DonkeyKong_TooCloseToEdge18End:
GFX_DonkeyKong_TooCloseToEdge19:
	db "GFX_DonkeyKong_TooCloseToEdge19.bin"
GFX_DonkeyKong_TooCloseToEdge19End:
GFX_DonkeyKong_TooCloseToEdge20:
	db "GFX_DonkeyKong_TooCloseToEdge20.bin"
GFX_DonkeyKong_TooCloseToEdge20End:
GFX_DonkeyKong_TooCloseToEdge21:
	db "GFX_DonkeyKong_TooCloseToEdge21.bin"
GFX_DonkeyKong_TooCloseToEdge21End:
GFX_DonkeyKong_TooCloseToEdge22:
	db "GFX_DonkeyKong_TooCloseToEdge22.bin"
GFX_DonkeyKong_TooCloseToEdge22End:
GFX_DKBarrel_Letters1:
	db "GFX_DKBarrel_Letters1.bin"
GFX_DKBarrel_Letters1End:
GFX_DKBarrel_Letters2:
	db "GFX_DKBarrel_Letters2.bin"
GFX_DKBarrel_Letters2End:
GFX_DKBarrel_Letters3:
	db "GFX_DKBarrel_Letters3.bin"
GFX_DKBarrel_Letters3End:
GFX_DKBarrel_Letters4:
	db "GFX_DKBarrel_Letters4.bin"
GFX_DKBarrel_Letters4End:
GFX_DKBarrel_Letters5:
	db "GFX_DKBarrel_Letters5.bin"
GFX_DKBarrel_Letters5End:
GFX_DKBarrel_Letters6:
	db "GFX_DKBarrel_Letters6.bin"
GFX_DKBarrel_Letters6End:
GFX_DKBarrel_Letters7:
	db "GFX_DKBarrel_Letters7.bin"
GFX_DKBarrel_Letters7End:
GFX_DonkeyKong_Hurt18:
	db "GFX_DonkeyKong_Hurt18.bin"
GFX_DonkeyKong_Hurt18End:
GFX_DonkeyKong_Pushing1:
	db "GFX_DonkeyKong_Pushing1.bin"
GFX_DonkeyKong_Pushing1End:
GFX_DonkeyKong_Pushing2:
	db "GFX_DonkeyKong_Pushing2.bin"
GFX_DonkeyKong_Pushing2End:
GFX_DonkeyKong_Pushing3:
	db "GFX_DonkeyKong_Pushing3.bin"
GFX_DonkeyKong_Pushing3End:
GFX_Diddy_TapDKsBack1:
	db "GFX_Diddy_TapDKsBack1.bin"
GFX_Diddy_TapDKsBack1End:
GFX_Diddy_TapDKsBack2:
	db "GFX_Diddy_TapDKsBack2.bin"
GFX_Diddy_TapDKsBack2End:
GFX_Diddy_TapDKsBack3:
	db "GFX_Diddy_TapDKsBack3.bin"
GFX_Diddy_TapDKsBack3End:
GFX_Diddy_TapDKsBack4:
	db "GFX_Diddy_TapDKsBack4.bin"
GFX_Diddy_TapDKsBack4End:
GFX_Diddy_TapDKsBack5:
	db "GFX_Diddy_TapDKsBack5.bin"
GFX_Diddy_TapDKsBack5End:
GFX_Diddy_TapDKsBack6:
	db "GFX_Diddy_TapDKsBack6.bin"
GFX_Diddy_TapDKsBack6End:
GFX_Diddy_TapDKsBack7:
	db "GFX_Diddy_TapDKsBack7.bin"
GFX_Diddy_TapDKsBack7End:
GFX_Diddy_LookUp1:
	db "GFX_Diddy_LookUp1.bin"
GFX_Diddy_LookUp1End:
GFX_Diddy_LookUp2:
	db "GFX_Diddy_LookUp2.bin"
GFX_Diddy_LookUp2End:
GFX_Diddy_LookUp3:
	db "GFX_Diddy_LookUp3.bin"
GFX_Diddy_LookUp3End:
GFX_Diddy_LookUp4:
	db "GFX_Diddy_LookUp4.bin"
GFX_Diddy_LookUp4End:
GFX_Diddy_LookUp5:
	db "GFX_Diddy_LookUp5.bin"
GFX_Diddy_LookUp5End:
GFX_Diddy_LookUp6:
	db "GFX_Diddy_LookUp6.bin"
GFX_Diddy_LookUp6End:
GFX_Diddy_StompDKsFoot1:
	db "GFX_Diddy_StompDKsFoot1.bin"
GFX_Diddy_StompDKsFoot1End:
GFX_Diddy_StompDKsFoot2:
	db "GFX_Diddy_StompDKsFoot2.bin"
GFX_Diddy_StompDKsFoot2End:
GFX_Diddy_StompDKsFoot3:
	db "GFX_Diddy_StompDKsFoot3.bin"
GFX_Diddy_StompDKsFoot3End:
GFX_Diddy_StompDKsFoot4:
	db "GFX_Diddy_StompDKsFoot4.bin"
GFX_Diddy_StompDKsFoot4End:
GFX_Diddy_Laugh1:
	db "GFX_Diddy_Laugh1.bin"
GFX_Diddy_Laugh1End:
GFX_Diddy_Laugh2:
	db "GFX_Diddy_Laugh2.bin"
GFX_Diddy_Laugh2End:
GFX_Diddy_Laugh3:
	db "GFX_Diddy_Laugh3.bin"
GFX_Diddy_Laugh3End:
GFX_Diddy_Laugh4:
	db "GFX_Diddy_Laugh4.bin"
GFX_Diddy_Laugh4End:
GFX_Diddy_Laugh5:
	db "GFX_Diddy_Laugh5.bin"
GFX_Diddy_Laugh5End:
GFX_Diddy_Laugh6:
	db "GFX_Diddy_Laugh6.bin"
GFX_Diddy_Laugh6End:
GFX_Diddy_ClockedByDK1:
	db "GFX_Diddy_ClockedByDK1.bin"
GFX_Diddy_ClockedByDK1End:
GFX_Diddy_ClockedByDK2:
	db "GFX_Diddy_ClockedByDK2.bin"
GFX_Diddy_ClockedByDK2End:
GFX_Diddy_ClockedByDK3:
	db "GFX_Diddy_ClockedByDK3.bin"
GFX_Diddy_ClockedByDK3End:
GFX_Diddy_ClockedByDK4:
	db "GFX_Diddy_ClockedByDK4.bin"
GFX_Diddy_ClockedByDK4End:
GFX_Diddy_ClockedByDK5:
	db "GFX_Diddy_ClockedByDK5.bin"
GFX_Diddy_ClockedByDK5End:
GFX_Diddy_ClockedByDK6:
	db "GFX_Diddy_ClockedByDK6.bin"
GFX_Diddy_ClockedByDK6End:
GFX_Diddy_ClockedByDK7:
	db "GFX_Diddy_ClockedByDK7.bin"
GFX_Diddy_ClockedByDK7End:
GFX_Diddy_ClockedByDK8:
	db "GFX_Diddy_ClockedByDK8.bin"
GFX_Diddy_ClockedByDK8End:
GFX_Diddy_ClockedByDK9:
	db "GFX_Diddy_ClockedByDK9.bin"
GFX_Diddy_ClockedByDK9End:
GFX_Diddy_ClockedByDK10:
	db "GFX_Diddy_ClockedByDK10.bin"
GFX_Diddy_ClockedByDK10End:
GFX_Diddy_ClockedByDK11:
	db "GFX_Diddy_ClockedByDK11.bin"
GFX_Diddy_ClockedByDK11End:
GFX_Diddy_ClockedByDK12:
	db "GFX_Diddy_ClockedByDK12.bin"
GFX_Diddy_ClockedByDK12End:
GFX_Diddy_ClockedByDK13:
	db "GFX_Diddy_ClockedByDK13.bin"
GFX_Diddy_ClockedByDK13End:
GFX_Diddy_ClockedByDK14:
	db "GFX_Diddy_ClockedByDK14.bin"
GFX_Diddy_ClockedByDK14End:
GFX_Diddy_ClockedByDK15:
	db "GFX_Diddy_ClockedByDK15.bin"
GFX_Diddy_ClockedByDK15End:
GFX_Diddy_ClockedByDK16:
	db "GFX_Diddy_ClockedByDK16.bin"
GFX_Diddy_ClockedByDK16End:
GFX_Diddy_ClockedByDK17:
	db "GFX_Diddy_ClockedByDK17.bin"
GFX_Diddy_ClockedByDK17End:
GFX_Diddy_ClockedByDK18:
	db "GFX_Diddy_ClockedByDK18.bin"
GFX_Diddy_ClockedByDK18End:
GFX_Diddy_ClockedByDK19:
	db "GFX_Diddy_ClockedByDK19.bin"
GFX_Diddy_ClockedByDK19End:
GFX_Diddy_ClockedByDK20:
	db "GFX_Diddy_ClockedByDK20.bin"
GFX_Diddy_ClockedByDK20End:
GFX_Diddy_ClockedByDK21:
	db "GFX_Diddy_ClockedByDK21.bin"
GFX_Diddy_ClockedByDK21End:
GFX_Diddy_ClockedByDK22:
	db "GFX_Diddy_ClockedByDK22.bin"
GFX_Diddy_ClockedByDK22End:
GFX_DonkeyKong_LookUp1:
	db "GFX_DonkeyKong_LookUp1.bin"
GFX_DonkeyKong_LookUp1End:
GFX_DonkeyKong_LookUp2:
	db "GFX_DonkeyKong_LookUp2.bin"
GFX_DonkeyKong_LookUp2End:
GFX_DonkeyKong_LookUp3:
	db "GFX_DonkeyKong_LookUp3.bin"
GFX_DonkeyKong_LookUp3End:
GFX_DonkeyKong_LookUp4:
	db "GFX_DonkeyKong_LookUp4.bin"
GFX_DonkeyKong_LookUp4End:
GFX_DonkeyKong_LookUp5:
	db "GFX_DonkeyKong_LookUp5.bin"
GFX_DonkeyKong_LookUp5End:
GFX_DonkeyKong_LookUp6:
	db "GFX_DonkeyKong_LookUp6.bin"
GFX_DonkeyKong_LookUp6End:
GFX_DonkeyKong_LookUp7:
	db "GFX_DonkeyKong_LookUp7.bin"
GFX_DonkeyKong_LookUp7End:
GFX_DonkeyKong_LookUp8:
	db "GFX_DonkeyKong_LookUp8.bin"
GFX_DonkeyKong_LookUp8End:
GFX_DonkeyKong_LookUp9:
	db "GFX_DonkeyKong_LookUp9.bin"
GFX_DonkeyKong_LookUp9End:
GFX_DonkeyKong_FootStomped1:
	db "GFX_DonkeyKong_FootStomped1.bin"
GFX_DonkeyKong_FootStomped1End:
GFX_DonkeyKong_FootStomped2:
	db "GFX_DonkeyKong_FootStomped2.bin"
GFX_DonkeyKong_FootStomped2End:
GFX_DonkeyKong_FootStomped3:
	db "GFX_DonkeyKong_FootStomped3.bin"
GFX_DonkeyKong_FootStomped3End:
GFX_DonkeyKong_FootStomped4:
	db "GFX_DonkeyKong_FootStomped4.bin"
GFX_DonkeyKong_FootStomped4End:
GFX_DonkeyKong_FootStomped5:
	db "GFX_DonkeyKong_FootStomped5.bin"
GFX_DonkeyKong_FootStomped5End:
GFX_DonkeyKong_FootStomped6:
	db "GFX_DonkeyKong_FootStomped6.bin"
GFX_DonkeyKong_FootStomped6End:
GFX_DonkeyKong_FootStomped7:
	db "GFX_DonkeyKong_FootStomped7.bin"
GFX_DonkeyKong_FootStomped7End:
GFX_DonkeyKong_FootStomped8:
	db "GFX_DonkeyKong_FootStomped8.bin"
GFX_DonkeyKong_FootStomped8End:
GFX_DonkeyKong_FootStomped9:
	db "GFX_DonkeyKong_FootStomped9.bin"
GFX_DonkeyKong_FootStomped9End:
GFX_DonkeyKong_FootStomped10:
	db "GFX_DonkeyKong_FootStomped10.bin"
GFX_DonkeyKong_FootStomped10End:
GFX_DonkeyKong_ClockDiddyOnHead1:
	db "GFX_DonkeyKong_ClockDiddyOnHead1.bin"
GFX_DonkeyKong_ClockDiddyOnHead1End:
GFX_DonkeyKong_ClockDiddyOnHead2:
	db "GFX_DonkeyKong_ClockDiddyOnHead2.bin"
GFX_DonkeyKong_ClockDiddyOnHead2End:
GFX_DonkeyKong_ClockDiddyOnHead3:
	db "GFX_DonkeyKong_ClockDiddyOnHead3.bin"
GFX_DonkeyKong_ClockDiddyOnHead3End:
GFX_DonkeyKong_ClockDiddyOnHead4:
	db "GFX_DonkeyKong_ClockDiddyOnHead4.bin"
GFX_DonkeyKong_ClockDiddyOnHead4End:
GFX_DonkeyKong_ClockDiddyOnHead5:
	db "GFX_DonkeyKong_ClockDiddyOnHead5.bin"
GFX_DonkeyKong_ClockDiddyOnHead5End:
GFX_DonkeyKong_ClockDiddyOnHead6:
	db "GFX_DonkeyKong_ClockDiddyOnHead6.bin"
GFX_DonkeyKong_ClockDiddyOnHead6End:
GFX_DonkeyKong_ClockDiddyOnHead7:
	db "GFX_DonkeyKong_ClockDiddyOnHead7.bin"
GFX_DonkeyKong_ClockDiddyOnHead7End:
GFX_DonkeyKong_ClockDiddyOnHead8:
	db "GFX_DonkeyKong_ClockDiddyOnHead8.bin"
GFX_DonkeyKong_ClockDiddyOnHead8End:
GFX_DonkeyKong_ClockDiddyOnHead9:
	db "GFX_DonkeyKong_ClockDiddyOnHead9.bin"
GFX_DonkeyKong_ClockDiddyOnHead9End:
GFX_DonkeyKong_ClockDiddyOnHead10:
	db "GFX_DonkeyKong_ClockDiddyOnHead10.bin"
GFX_DonkeyKong_ClockDiddyOnHead10End:
GFX_DonkeyKong_ClockDiddyOnHead11:
	db "GFX_DonkeyKong_ClockDiddyOnHead11.bin"
GFX_DonkeyKong_ClockDiddyOnHead11End:
GFX_DonkeyKong_ClockDiddyOnHead12:
	db "GFX_DonkeyKong_ClockDiddyOnHead12.bin"
GFX_DonkeyKong_ClockDiddyOnHead12End:
GFX_DonkeyKong_ClockDiddyOnHead13:
	db "GFX_DonkeyKong_ClockDiddyOnHead13.bin"
GFX_DonkeyKong_ClockDiddyOnHead13End:
GFX_DonkeyKong_ClockDiddyOnHead14:
	db "GFX_DonkeyKong_ClockDiddyOnHead14.bin"
GFX_DonkeyKong_ClockDiddyOnHead14End:
GFX_DonkeyKong_ClockDiddyOnHead15:
	db "GFX_DonkeyKong_ClockDiddyOnHead15.bin"
GFX_DonkeyKong_ClockDiddyOnHead15End:
GFX_DonkeyKong_ClockDiddyOnHead16:
	db "GFX_DonkeyKong_ClockDiddyOnHead16.bin"
GFX_DonkeyKong_ClockDiddyOnHead16End:
GFX_DonkeyKong_ClockDiddyOnHead17:
	db "GFX_DonkeyKong_ClockDiddyOnHead17.bin"
GFX_DonkeyKong_ClockDiddyOnHead17End:
GFX_DonkeyKong_ClockDiddyOnHead18:
	db "GFX_DonkeyKong_ClockDiddyOnHead18.bin"
GFX_DonkeyKong_ClockDiddyOnHead18End:
GFX_DonkeyKong_ClockDiddyOnHead19:
	db "GFX_DonkeyKong_ClockDiddyOnHead19.bin"
GFX_DonkeyKong_ClockDiddyOnHead19End:
GFX_CrankyKong_Walk1:
	db "GFX_CrankyKong_Walk1.bin"
GFX_CrankyKong_Walk1End:
GFX_CrankyKong_Walk2:
	db "GFX_CrankyKong_Walk2.bin"
GFX_CrankyKong_Walk2End:
GFX_CrankyKong_Walk3:
	db "GFX_CrankyKong_Walk3.bin"
GFX_CrankyKong_Walk3End:
GFX_CrankyKong_Walk4:
	db "GFX_CrankyKong_Walk4.bin"
GFX_CrankyKong_Walk4End:
GFX_CrankyKong_Walk5:
	db "GFX_CrankyKong_Walk5.bin"
GFX_CrankyKong_Walk5End:
GFX_CrankyKong_Walk6:
	db "GFX_CrankyKong_Walk6.bin"
GFX_CrankyKong_Walk6End:
GFX_CrankyKong_Walk7:
	db "GFX_CrankyKong_Walk7.bin"
GFX_CrankyKong_Walk7End:
GFX_CrankyKong_Walk8:
	db "GFX_CrankyKong_Walk8.bin"
GFX_CrankyKong_Walk8End:
GFX_CrankyKong_Walk9:
	db "GFX_CrankyKong_Walk9.bin"
GFX_CrankyKong_Walk9End:
GFX_CrankyKong_Walk10:
	db "GFX_CrankyKong_Walk10.bin"
GFX_CrankyKong_Walk10End:
GFX_CrankyKong_Walk11:
	db "GFX_CrankyKong_Walk11.bin"
GFX_CrankyKong_Walk11End:
GFX_CrankyKong_Walk12:
	db "GFX_CrankyKong_Walk12.bin"
GFX_CrankyKong_Walk12End:
GFX_CrankyKong_Walk13:
	db "GFX_CrankyKong_Walk13.bin"
GFX_CrankyKong_Walk13End:
GFX_CrankyKong_Walk14:
	db "GFX_CrankyKong_Walk14.bin"
GFX_CrankyKong_Walk14End:
GFX_CrankyKong_Walk15:
	db "GFX_CrankyKong_Walk15.bin"
GFX_CrankyKong_Walk15End:
GFX_CrankyKong_Walk16:
	db "GFX_CrankyKong_Walk16.bin"
GFX_CrankyKong_Walk16End:
GFX_CheckpointStars_Pose1:
	db "GFX_CheckpointStars_Pose1.bin"
GFX_CheckpointStars_Pose1End:
GFX_CheckpointStars_Pose2:
	db "GFX_CheckpointStars_Pose2.bin"
GFX_CheckpointStars_Pose2End:
GFX_CheckpointStars_Pose3:
	db "GFX_CheckpointStars_Pose3.bin"
GFX_CheckpointStars_Pose3End:
GFX_CheckpointStars_Pose4:
	db "GFX_CheckpointStars_Pose4.bin"
GFX_CheckpointStars_Pose4End:
GFX_CheckpointStars_Pose5:
	db "GFX_CheckpointStars_Pose5.bin"
GFX_CheckpointStars_Pose5End:
GFX_CheckpointStars_Pose6:
	db "GFX_CheckpointStars_Pose6.bin"
GFX_CheckpointStars_Pose6End:
GFX_CheckpointStars_Pose7:
	db "GFX_CheckpointStars_Pose7.bin"
GFX_CheckpointStars_Pose7End:
GFX_CheckpointStars_Pose8:
	db "GFX_CheckpointStars_Pose8.bin"
GFX_CheckpointStars_Pose8End:
GFX_CheckpointStars_Pose9:
	db "GFX_CheckpointStars_Pose9.bin"
GFX_CheckpointStars_Pose9End:
GFX_CheckpointStars_Pose10:
	db "GFX_CheckpointStars_Pose10.bin"
GFX_CheckpointStars_Pose10End:
GFX_CheckpointStars_Pose11:
	db "GFX_CheckpointStars_Pose11.bin"
GFX_CheckpointStars_Pose11End:
GFX_CheckpointStars_Pose12:
	db "GFX_CheckpointStars_Pose12.bin"
GFX_CheckpointStars_Pose12End:
GFX_CheckpointStars_Pose13:
	db "GFX_CheckpointStars_Pose13.bin"
GFX_CheckpointStars_Pose13End:
GFX_CheckpointStars_Pose14:
	db "GFX_CheckpointStars_Pose14.bin"
GFX_CheckpointStars_Pose14End:
GFX_CheckpointStars_Pose15:
	db "GFX_CheckpointStars_Pose15.bin"
GFX_CheckpointStars_Pose15End:
GFX_HUDBalloon_Idle1:
	db "GFX_HUDBalloon_Idle1.bin"
GFX_HUDBalloon_Idle1End:
GFX_HUDBalloon_Idle2:
	db "GFX_HUDBalloon_Idle2.bin"
GFX_HUDBalloon_Idle2End:
GFX_HUDBalloon_Idle3:
	db "GFX_HUDBalloon_Idle3.bin"
GFX_HUDBalloon_Idle3End:
GFX_HUDBalloon_Idle4:
	db "GFX_HUDBalloon_Idle4.bin"
GFX_HUDBalloon_Idle4End:
GFX_HUDBalloon_Idle5:
	db "GFX_HUDBalloon_Idle5.bin"
GFX_HUDBalloon_Idle5End:
GFX_HUDBalloon_Idle6:
	db "GFX_HUDBalloon_Idle6.bin"
GFX_HUDBalloon_Idle6End:
GFX_HUDBalloon_Idle7:
	db "GFX_HUDBalloon_Idle7.bin"
GFX_HUDBalloon_Idle7End:
GFX_HUDBalloon_Idle8:
	db "GFX_HUDBalloon_Idle8.bin"
GFX_HUDBalloon_Idle8End:
GFX_EarlyLifeBalloon_Pose1:
	db "GFX_EarlyLifeBalloon_Pose1.bin"
GFX_EarlyLifeBalloon_Pose1End:
GFX_EarlyLifeBalloon_Pose2:
	db "GFX_EarlyLifeBalloon_Pose2.bin"
GFX_EarlyLifeBalloon_Pose2End:
GFX_EarlyLifeBalloon_Pose3:
	db "GFX_EarlyLifeBalloon_Pose3.bin"
GFX_EarlyLifeBalloon_Pose3End:
GFX_EarlyLifeBalloon_Pose4:
	db "GFX_EarlyLifeBalloon_Pose4.bin"
GFX_EarlyLifeBalloon_Pose4End:
GFX_EarlyLifeBalloon_Pose5:
	db "GFX_EarlyLifeBalloon_Pose5.bin"
GFX_EarlyLifeBalloon_Pose5End:
GFX_EarlyLifeBalloon_Pose6:
	db "GFX_EarlyLifeBalloon_Pose6.bin"
GFX_EarlyLifeBalloon_Pose6End:
GFX_EarlyLifeBalloon_Pose7:
	db "GFX_EarlyLifeBalloon_Pose7.bin"
GFX_EarlyLifeBalloon_Pose7End:
GFX_EarlyLifeBalloon_Pose8:
	db "GFX_EarlyLifeBalloon_Pose8.bin"
GFX_EarlyLifeBalloon_Pose8End:
GFX_Krash_Idle1:
	db "GFX_Krash_Idle1.bin"
GFX_Krash_Idle1End:
GFX_Krash_Idle2:
	db "GFX_Krash_Idle2.bin"
GFX_Krash_Idle2End:
GFX_Krash_Idle3:
	db "GFX_Krash_Idle3.bin"
GFX_Krash_Idle3End:
GFX_Diddy_ScratchHead1:
	db "GFX_Diddy_ScratchHead1.bin"
GFX_Diddy_ScratchHead1End:
GFX_Diddy_ScratchHead2:
	db "GFX_Diddy_ScratchHead2.bin"
GFX_Diddy_ScratchHead2End:
GFX_Diddy_ScratchHead3:
	db "GFX_Diddy_ScratchHead3.bin"
GFX_Diddy_ScratchHead3End:
GFX_Diddy_ScratchHead4:
	db "GFX_Diddy_ScratchHead4.bin"
GFX_Diddy_ScratchHead4End:
GFX_Diddy_ScratchHead5:
	db "GFX_Diddy_ScratchHead5.bin"
GFX_Diddy_ScratchHead5End:
GFX_Diddy_ScratchHead6:
	db "GFX_Diddy_ScratchHead6.bin"
GFX_Diddy_ScratchHead6End:
GFX_Diddy_ScratchHead7:
	db "GFX_Diddy_ScratchHead7.bin"
GFX_Diddy_ScratchHead7End:
GFX_Diddy_ScratchHead8:
	db "GFX_Diddy_ScratchHead8.bin"
GFX_Diddy_ScratchHead8End:
GFX_Diddy_ScratchHead9:
	db "GFX_Diddy_ScratchHead9.bin"
GFX_Diddy_ScratchHead9End:
GFX_Diddy_ScratchHead10:
	db "GFX_Diddy_ScratchHead10.bin"
GFX_Diddy_ScratchHead10End:
GFX_Diddy_ScratchHead11:
	db "GFX_Diddy_ScratchHead11.bin"
GFX_Diddy_ScratchHead11End:
GFX_Diddy_ScratchHead12:
	db "GFX_Diddy_ScratchHead12.bin"
GFX_Diddy_ScratchHead12End:
GFX_Diddy_ScratchHead13:
	db "GFX_Diddy_ScratchHead13.bin"
GFX_Diddy_ScratchHead13End:
GFX_Diddy_ScratchHead14:
	db "GFX_Diddy_ScratchHead14.bin"
GFX_Diddy_ScratchHead14End:
GFX_Diddy_ScratchHead15:
	db "GFX_Diddy_ScratchHead15.bin"
GFX_Diddy_ScratchHead15End:
GFX_Diddy_ScratchHead16:
	db "GFX_Diddy_ScratchHead16.bin"
GFX_Diddy_ScratchHead16End:
GFX_Diddy_ScratchHead17:
	db "GFX_Diddy_ScratchHead17.bin"
GFX_Diddy_ScratchHead17End:
GFX_Diddy_ScratchHead18:
	db "GFX_Diddy_ScratchHead18.bin"
GFX_Diddy_ScratchHead18End:
GFX_Kritter_Turn1:
	db "GFX_Kritter_Turn1.bin"
GFX_Kritter_Turn1End:
GFX_Kritter_Turn2:
	db "GFX_Kritter_Turn2.bin"
GFX_Kritter_Turn2End:
GFX_Kritter_Jump1:
	db "GFX_Kritter_Jump1.bin"
GFX_Kritter_Jump1End:
GFX_Kritter_Jump2:
	db "GFX_Kritter_Jump2.bin"
GFX_Kritter_Jump2End:
GFX_Kritter_Jump3:
	db "GFX_Kritter_Jump3.bin"
GFX_Kritter_Jump3End:
GFX_Kritter_Jump4:
	db "GFX_Kritter_Jump4.bin"
GFX_Kritter_Jump4End:
GFX_Kritter_Jump5:
	db "GFX_Kritter_Jump5.bin"
GFX_Kritter_Jump5End:
GFX_Kritter_Jump6:
	db "GFX_Kritter_Jump6.bin"
GFX_Kritter_Jump6End:
GFX_Kritter_Jump7:
	db "GFX_Kritter_Jump7.bin"
GFX_Kritter_Jump7End:
GFX_Kritter_Jump8:
	db "GFX_Kritter_Jump8.bin"
GFX_Kritter_Jump8End:
GFX_Kritter_Jump9:
	db "GFX_Kritter_Jump9.bin"
GFX_Kritter_Jump9End:
GFX_Kritter_Jump10:
	db "GFX_Kritter_Jump10.bin"
GFX_Kritter_Jump10End:
GFX_BoomBox_PlayMusic1:
	db "GFX_BoomBox_PlayMusic1.bin"
GFX_BoomBox_PlayMusic1End:
GFX_BoomBox_PlayMusic2:
	db "GFX_BoomBox_PlayMusic2.bin"
GFX_BoomBox_PlayMusic2End:
GFX_BoomBox_PlayMusic3:
	db "GFX_BoomBox_PlayMusic3.bin"
GFX_BoomBox_PlayMusic3End:
GFX_OilDrum_Pose:
	db "GFX_OilDrum_Pose.bin"
GFX_OilDrum_PoseEnd:
GFX_BlownKiss_Pose1:
	db "GFX_BlownKiss_Pose1.bin"
GFX_BlownKiss_Pose1End:
GFX_BlownKiss_Pose2:
	db "GFX_BlownKiss_Pose2.bin"
GFX_BlownKiss_Pose2End:
GFX_BlownKiss_Pose3:
	db "GFX_BlownKiss_Pose3.bin"
GFX_BlownKiss_Pose3End:
GFX_BlownKiss_Pose4:
	db "GFX_BlownKiss_Pose4.bin"
GFX_BlownKiss_Pose4End:
GFX_BlownKiss_Pose5:
	db "GFX_BlownKiss_Pose5.bin"
GFX_BlownKiss_Pose5End:
GFX_BlownKiss_Pose6:
	db "GFX_BlownKiss_Pose6.bin"
GFX_BlownKiss_Pose6End:
GFX_MapDiddy_Victory1:
	db "GFX_MapDiddy_Victory1.bin"
GFX_MapDiddy_Victory1End:
GFX_MapDiddy_Victory2:
	db "GFX_MapDiddy_Victory2.bin"
GFX_MapDiddy_Victory2End:
GFX_MapDiddy_Victory3:
	db "GFX_MapDiddy_Victory3.bin"
GFX_MapDiddy_Victory3End:
GFX_MapDiddy_Victory4:
	db "GFX_MapDiddy_Victory4.bin"
GFX_MapDiddy_Victory4End:
GFX_MapDiddy_Victory5:
	db "GFX_MapDiddy_Victory5.bin"
GFX_MapDiddy_Victory5End:
GFX_MapDiddy_Victory6:
	db "GFX_MapDiddy_Victory6.bin"
GFX_MapDiddy_Victory6End:
GFX_MapDiddy_Victory7:
	db "GFX_MapDiddy_Victory7.bin"
GFX_MapDiddy_Victory7End:
GFX_MapDiddy_Victory8:
	db "GFX_MapDiddy_Victory8.bin"
GFX_MapDiddy_Victory8End:
GFX_MapDiddy_Victory9:
	db "GFX_MapDiddy_Victory9.bin"
GFX_MapDiddy_Victory9End:
GFX_MapDiddy_Victory10:
	db "GFX_MapDiddy_Victory10.bin"
GFX_MapDiddy_Victory10End:
GFX_MapDiddy_Victory11:
	db "GFX_MapDiddy_Victory11.bin"
GFX_MapDiddy_Victory11End:
GFX_MapDonkeyKong_Victory1:
	db "GFX_MapDonkeyKong_Victory1.bin"
GFX_MapDonkeyKong_Victory1End:
GFX_MapDonkeyKong_Victory2:
	db "GFX_MapDonkeyKong_Victory2.bin"
GFX_MapDonkeyKong_Victory2End:
GFX_MapDonkeyKong_Victory3:
	db "GFX_MapDonkeyKong_Victory3.bin"
GFX_MapDonkeyKong_Victory3End:
GFX_MapDonkeyKong_Victory4:
	db "GFX_MapDonkeyKong_Victory4.bin"
GFX_MapDonkeyKong_Victory4End:
GFX_MapDonkeyKong_Victory5:
	db "GFX_MapDonkeyKong_Victory5.bin"
GFX_MapDonkeyKong_Victory5End:
GFX_MapDonkeyKong_Victory6:
	db "GFX_MapDonkeyKong_Victory6.bin"
GFX_MapDonkeyKong_Victory6End:
GFX_MapDonkeyKong_Victory7:
	db "GFX_MapDonkeyKong_Victory7.bin"
GFX_MapDonkeyKong_Victory7End:
GFX_MapDonkeyKong_Victory8:
	db "GFX_MapDonkeyKong_Victory8.bin"
GFX_MapDonkeyKong_Victory8End:
GFX_MapDonkeyKong_Victory9:
	db "GFX_MapDonkeyKong_Victory9.bin"
GFX_MapDonkeyKong_Victory9End:
GFX_MapDonkeyKong_Victory10:
	db "GFX_MapDonkeyKong_Victory10.bin"
GFX_MapDonkeyKong_Victory10End:
GFX_MapDonkeyKong_Victory11:
	db "GFX_MapDonkeyKong_Victory11.bin"
GFX_MapDonkeyKong_Victory11End:
GFX_MapDiddy_Walk1:
	db "GFX_MapDiddy_Walk1.bin"
GFX_MapDiddy_Walk1End:
GFX_MapDiddy_Walk2:
	db "GFX_MapDiddy_Walk2.bin"
GFX_MapDiddy_Walk2End:
GFX_MapDiddy_Walk3:
	db "GFX_MapDiddy_Walk3.bin"
GFX_MapDiddy_Walk3End:
GFX_MapDiddy_Walk4:
	db "GFX_MapDiddy_Walk4.bin"
GFX_MapDiddy_Walk4End:
GFX_MapDiddy_Walk5:
	db "GFX_MapDiddy_Walk5.bin"
GFX_MapDiddy_Walk5End:
GFX_MapDiddy_Walk6:
	db "GFX_MapDiddy_Walk6.bin"
GFX_MapDiddy_Walk6End:
GFX_MapDiddy_Walk7:
	db "GFX_MapDiddy_Walk7.bin"
GFX_MapDiddy_Walk7End:
GFX_MapDiddy_Walk8:
	db "GFX_MapDiddy_Walk8.bin"
GFX_MapDiddy_Walk8End:
GFX_MapDiddy_Jump1:
	db "GFX_MapDiddy_Jump1.bin"
GFX_MapDiddy_Jump1End:
GFX_MapDiddy_Jump2:
	db "GFX_MapDiddy_Jump2.bin"
GFX_MapDiddy_Jump2End:
GFX_MapDiddy_Jump3:
	db "GFX_MapDiddy_Jump3.bin"
GFX_MapDiddy_Jump3End:
GFX_MapDiddy_Jump4:
	db "GFX_MapDiddy_Jump4.bin"
GFX_MapDiddy_Jump4End:
GFX_MapDiddy_Jump5:
	db "GFX_MapDiddy_Jump5.bin"
GFX_MapDiddy_Jump5End:
GFX_MapDiddy_Jump6:
	db "GFX_MapDiddy_Jump6.bin"
GFX_MapDiddy_Jump6End:
GFX_MapDiddy_Jump7:
	db "GFX_MapDiddy_Jump7.bin"
GFX_MapDiddy_Jump7End:
GFX_MapDiddy_Jump8:
	db "GFX_MapDiddy_Jump8.bin"
GFX_MapDiddy_Jump8End:
GFX_MapDiddy_Jump9:
	db "GFX_MapDiddy_Jump9.bin"
GFX_MapDiddy_Jump9End:
GFX_MapDiddy_Jump10:
	db "GFX_MapDiddy_Jump10.bin"
GFX_MapDiddy_Jump10End:
GFX_MapDiddy_Jump11:
	db "GFX_MapDiddy_Jump11.bin"
GFX_MapDiddy_Jump11End:
GFX_MapDiddy_Jump12:
	db "GFX_MapDiddy_Jump12.bin"
GFX_MapDiddy_Jump12End:
GFX_CrankyKong_Startled1:
	db "GFX_CrankyKong_Startled1.bin"
GFX_CrankyKong_Startled1End:
GFX_CrankyKong_Startled2:
	db "GFX_CrankyKong_Startled2.bin"
GFX_CrankyKong_Startled2End:
GFX_CrankyKong_Startled3:
	db "GFX_CrankyKong_Startled3.bin"
GFX_CrankyKong_Startled3End:
GFX_CrankyKong_Startled4:
	db "GFX_CrankyKong_Startled4.bin"
GFX_CrankyKong_Startled4End:
GFX_CrankyKong_Startled5:
	db "GFX_CrankyKong_Startled5.bin"
GFX_CrankyKong_Startled5End:
GFX_CrankyKong_Startled6:
	db "GFX_CrankyKong_Startled6.bin"
GFX_CrankyKong_Startled6End:
GFX_CrankyKong_Startled7:
	db "GFX_CrankyKong_Startled7.bin"
GFX_CrankyKong_Startled7End:
GFX_CrankyKong_Startled8:
	db "GFX_CrankyKong_Startled8.bin"
GFX_CrankyKong_Startled8End:
GFX_CrankyKong_Startled9:
	db "GFX_CrankyKong_Startled9.bin"
GFX_CrankyKong_Startled9End:
GFX_CrankyKong_Startled10:
	db "GFX_CrankyKong_Startled10.bin"
GFX_CrankyKong_Startled10End:
GFX_CrankyKong_Startled11:
	db "GFX_CrankyKong_Startled11.bin"
GFX_CrankyKong_Startled11End:
GFX_CrankyKong_Startled12:
	db "GFX_CrankyKong_Startled12.bin"
GFX_CrankyKong_Startled12End:
GFX_CrankyKong_Startled13:
	db "GFX_CrankyKong_Startled13.bin"
GFX_CrankyKong_Startled13End:
GFX_CrankyKong_Startled14:
	db "GFX_CrankyKong_Startled14.bin"
GFX_CrankyKong_Startled14End:
GFX_CrankyKong_Startled15:
	db "GFX_CrankyKong_Startled15.bin"
GFX_CrankyKong_Startled15End:
GFX_CrankyKong_Startled16:
	db "GFX_CrankyKong_Startled16.bin"
GFX_CrankyKong_Startled16End:
GFX_CrankyKong_Startled17:
	db "GFX_CrankyKong_Startled17.bin"
GFX_CrankyKong_Startled17End:
GFX_CrankyKong_Startled18:
	db "GFX_CrankyKong_Startled18.bin"
GFX_CrankyKong_Startled18End:
GFX_CrankyKong_Startled19:
	db "GFX_CrankyKong_Startled19.bin"
GFX_CrankyKong_Startled19End:
GFX_CrankyKong_Startled20:
	db "GFX_CrankyKong_Startled20.bin"
GFX_CrankyKong_Startled20End:
GFX_CrankyKong_Startled21:
	db "GFX_CrankyKong_Startled21.bin"
GFX_CrankyKong_Startled21End:
GFX_CrankyKong_Startled22:
	db "GFX_CrankyKong_Startled22.bin"
GFX_CrankyKong_Startled22End:
GFX_CrankyKong_Startled23:
	db "GFX_CrankyKong_Startled23.bin"
GFX_CrankyKong_Startled23End:
GFX_CrankyKong_Startled24:
	db "GFX_CrankyKong_Startled24.bin"
GFX_CrankyKong_Startled24End:
GFX_FuelCan_FiveUnits:
	db "GFX_FuelCan_FiveUnits.bin"
GFX_FuelCan_FiveUnitsEnd:
GFX_FuelCan_FourUnits:
	db "GFX_FuelCan_FourUnits.bin"
GFX_FuelCan_FourUnitsEnd:
GFX_FuelCan_ThreeUnits:
	db "GFX_FuelCan_ThreeUnits.bin"
GFX_FuelCan_ThreeUnitsEnd:
GFX_FuelCan_TwoUnits:
	db "GFX_FuelCan_TwoUnits.bin"
GFX_FuelCan_TwoUnitsEnd:
GFX_FuelCan_OneUnit:
	db "GFX_FuelCan_OneUnit.bin"
GFX_FuelCan_OneUnitEnd:
GFX_AnimalBuddyBox_Enguarde:
	db "GFX_AnimalBuddyBox_Enguarde.bin"
GFX_AnimalBuddyBox_EnguardeEnd:
GFX_AnimalBuddyToken_Rambi:
	db "GFX_AnimalBuddyToken_Rambi.bin"
GFX_AnimalBuddyToken_RambiEnd:
GFX_AnimalBuddyToken_Expresso:
	db "GFX_AnimalBuddyToken_Expresso.bin"
GFX_AnimalBuddyToken_ExpressoEnd:
GFX_AnimalBuddyToken_Winky:
	db "GFX_AnimalBuddyToken_Winky.bin"
GFX_AnimalBuddyToken_WinkyEnd:
GFX_AnimalBuddyToken_Enguarde:
	db "GFX_AnimalBuddyToken_Enguarde.bin"
GFX_AnimalBuddyToken_EnguardeEnd:
GFX_CaveWallHole_RightWall:
	db "GFX_CaveWallHole_RightWall.bin"
GFX_CaveWallHole_RightWallEnd:
GFX_FloorHole_Pose:
	db "GFX_FloorHole_Pose.bin"
GFX_FloorHole_PoseEnd:
GFX_Diddy_RideSteelKeg1:
	db "GFX_Diddy_RideSteelKeg1.bin"
GFX_Diddy_RideSteelKeg1End:
GFX_Diddy_RideSteelKeg2:
	db "GFX_Diddy_RideSteelKeg2.bin"
GFX_Diddy_RideSteelKeg2End:
GFX_Diddy_RideSteelKeg3:
	db "GFX_Diddy_RideSteelKeg3.bin"
GFX_Diddy_RideSteelKeg3End:
GFX_Diddy_RideSteelKeg4:
	db "GFX_Diddy_RideSteelKeg4.bin"
GFX_Diddy_RideSteelKeg4End:
GFX_Diddy_RideSteelKeg5:
	db "GFX_Diddy_RideSteelKeg5.bin"
GFX_Diddy_RideSteelKeg5End:
GFX_Diddy_RideSteelKeg6:
	db "GFX_Diddy_RideSteelKeg6.bin"
GFX_Diddy_RideSteelKeg6End:
GFX_Diddy_RideSteelKeg7:
	db "GFX_Diddy_RideSteelKeg7.bin"
GFX_Diddy_RideSteelKeg7End:
GFX_Diddy_RideSteelKeg8:
	db "GFX_Diddy_RideSteelKeg8.bin"
GFX_Diddy_RideSteelKeg8End:
GFX_Diddy_RideSteelKeg9:
	db "GFX_Diddy_RideSteelKeg9.bin"
GFX_Diddy_RideSteelKeg9End:
GFX_Diddy_RideSteelKeg10:
	db "GFX_Diddy_RideSteelKeg10.bin"
GFX_Diddy_RideSteelKeg10End:
GFX_Diddy_RideSteelKeg11:
	db "GFX_Diddy_RideSteelKeg11.bin"
GFX_Diddy_RideSteelKeg11End:
GFX_Diddy_RideSteelKeg12:
	db "GFX_Diddy_RideSteelKeg12.bin"
GFX_Diddy_RideSteelKeg12End:
GFX_Phonograph_PlayMusic1:
	db "GFX_Phonograph_PlayMusic1.bin"
GFX_Phonograph_PlayMusic1End:
GFX_Phonograph_PlayMusic2:
	db "GFX_Phonograph_PlayMusic2.bin"
GFX_Phonograph_PlayMusic2End:
GFX_Phonograph_PlayMusic3:
	db "GFX_Phonograph_PlayMusic3.bin"
GFX_Phonograph_PlayMusic3End:
GFX_Phonograph_PlayMusic4:
	db "GFX_Phonograph_PlayMusic4.bin"
GFX_Phonograph_PlayMusic4End:
GFX_Phonograph_PlayMusic5:
	db "GFX_Phonograph_PlayMusic5.bin"
GFX_Phonograph_PlayMusic5End:
GFX_Phonograph_PlayMusic6:
	db "GFX_Phonograph_PlayMusic6.bin"
GFX_Phonograph_PlayMusic6End:
GFX_Phonograph_PlayMusic7:
	db "GFX_Phonograph_PlayMusic7.bin"
GFX_Phonograph_PlayMusic7End:
GFX_Phonograph_PlayMusic8:
	db "GFX_Phonograph_PlayMusic8.bin"
GFX_Phonograph_PlayMusic8End:
GFX_Phonograph_PlayMusic9:
	db "GFX_Phonograph_PlayMusic9.bin"
GFX_Phonograph_PlayMusic9End:
GFX_Phonograph_PlayMusic10:
	db "GFX_Phonograph_PlayMusic10.bin"
GFX_Phonograph_PlayMusic10End:
GFX_Phonograph_PlayMusic11:
	db "GFX_Phonograph_PlayMusic11.bin"
GFX_Phonograph_PlayMusic11End:
GFX_Phonograph_PlayMusic12:
	db "GFX_Phonograph_PlayMusic12.bin"
GFX_Phonograph_PlayMusic12End:
GFX_Slippa_UnusedDeath1:
	db "GFX_Slippa_UnusedDeath1.bin"
GFX_Slippa_UnusedDeath1End:
GFX_Slippa_UnusedDeath2:
	db "GFX_Slippa_UnusedDeath2.bin"
GFX_Slippa_UnusedDeath2End:
GFX_Slippa_UnusedDeath3:
	db "GFX_Slippa_UnusedDeath3.bin"
GFX_Slippa_UnusedDeath3End:
GFX_Slippa_UnusedDeath4:
	db "GFX_Slippa_UnusedDeath4.bin"
GFX_Slippa_UnusedDeath4End:
GFX_Slippa_UnusedDeath5:
	db "GFX_Slippa_UnusedDeath5.bin"
GFX_Slippa_UnusedDeath5End:
GFX_Minecart_OnSide:
	db "GFX_Minecart_OnSide.bin"
GFX_Minecart_OnSideEnd:
GFX_Enguarde_Turn1:
	db "GFX_Enguarde_Turn1.bin"
GFX_Enguarde_Turn1End:
GFX_Enguarde_Turn2:
	db "GFX_Enguarde_Turn2.bin"
GFX_Enguarde_Turn2End:
GFX_Enguarde_Turn3:
	db "GFX_Enguarde_Turn3.bin"
GFX_Enguarde_Turn3End:
GFX_Enguarde_Turn4:
	db "GFX_Enguarde_Turn4.bin"
GFX_Enguarde_Turn4End:
GFX_Rockkroc_CurlUp1:
	db "GFX_Rockkroc_CurlUp1.bin"
GFX_Rockkroc_CurlUp1End:
GFX_Rockkroc_CurlUp2:
	db "GFX_Rockkroc_CurlUp2.bin"
GFX_Rockkroc_CurlUp2End:
GFX_Rockkroc_CurlUp3:
	db "GFX_Rockkroc_CurlUp3.bin"
GFX_Rockkroc_CurlUp3End:
GFX_Rockkroc_CurlUp4:
	db "GFX_Rockkroc_CurlUp4.bin"
GFX_Rockkroc_CurlUp4End:
GFX_Rockkroc_CurlUp5:
	db "GFX_Rockkroc_CurlUp5.bin"
GFX_Rockkroc_CurlUp5End:
GFX_Rockkroc_CurlUp6:
	db "GFX_Rockkroc_CurlUp6.bin"
GFX_Rockkroc_CurlUp6End:
GFX_Rockkroc_CurlUp7:
	db "GFX_Rockkroc_CurlUp7.bin"
GFX_Rockkroc_CurlUp7End:
GFX_Rockkroc_CurlUp8:
	db "GFX_Rockkroc_CurlUp8.bin"
GFX_Rockkroc_CurlUp8End:
GFX_Rockkroc_CurlUp9:
	db "GFX_Rockkroc_CurlUp9.bin"
GFX_Rockkroc_CurlUp9End:
GFX_Rockkroc_CurlUp10:
	db "GFX_Rockkroc_CurlUp10.bin"
GFX_Rockkroc_CurlUp10End:
GFX_Rockkroc_CurlUp11:
	db "GFX_Rockkroc_CurlUp11.bin"
GFX_Rockkroc_CurlUp11End:
GFX_Rockkroc_CurlUp12:
	db "GFX_Rockkroc_CurlUp12.bin"
GFX_Rockkroc_CurlUp12End:
GFX_Rockkroc_CurlUp13:
	db "GFX_Rockkroc_CurlUp13.bin"
GFX_Rockkroc_CurlUp13End:
GFX_Rockkroc_Blink:
	db "GFX_Rockkroc_Blink.bin"
GFX_Rockkroc_BlinkEnd:
GFX_DiddysHat_ThrownOnGround1:
	db "GFX_DiddysHat_ThrownOnGround1.bin"
GFX_DiddysHat_ThrownOnGround1End:
GFX_DiddysHat_ThrownOnGround2:
	db "GFX_DiddysHat_ThrownOnGround2.bin"
GFX_DiddysHat_ThrownOnGround2End:
GFX_DiddysHat_ThrownOnGround3:
	db "GFX_DiddysHat_ThrownOnGround3.bin"
GFX_DiddysHat_ThrownOnGround3End:
GFX_DiddysHat_ThrownOnGround4:
	db "GFX_DiddysHat_ThrownOnGround4.bin"
GFX_DiddysHat_ThrownOnGround4End:
GFX_DiddysHat_ThrownOnGround5:
	db "GFX_DiddysHat_ThrownOnGround5.bin"
GFX_DiddysHat_ThrownOnGround5End:
GFX_DiddysHat_ThrownInAir1:
	db "GFX_DiddysHat_ThrownInAir1.bin"
GFX_DiddysHat_ThrownInAir1End:
GFX_DiddysHat_ThrownInAir2:
	db "GFX_DiddysHat_ThrownInAir2.bin"
GFX_DiddysHat_ThrownInAir2End:
GFX_DiddysHat_ThrownInAir3:
	db "GFX_DiddysHat_ThrownInAir3.bin"
GFX_DiddysHat_ThrownInAir3End:
GFX_DiddysHat_ThrownInAir4:
	db "GFX_DiddysHat_ThrownInAir4.bin"
GFX_DiddysHat_ThrownInAir4End:
GFX_DiddysHat_ThrownInAir5:
	db "GFX_DiddysHat_ThrownInAir5.bin"
GFX_DiddysHat_ThrownInAir5End:
GFX_DiddysHat_ThrownInAir6:
	db "GFX_DiddysHat_ThrownInAir6.bin"
GFX_DiddysHat_ThrownInAir6End:
GFX_TNTBarrel_Idle:
	db "GFX_TNTBarrel_Idle.bin"
GFX_TNTBarrel_IdleEnd:
GFX_TNTBarrel_Grabbed1:
	db "GFX_TNTBarrel_Grabbed1.bin"
GFX_TNTBarrel_Grabbed1End:
GFX_TNTBarrel_Grabbed2:
	db "GFX_TNTBarrel_Grabbed2.bin"
GFX_TNTBarrel_Grabbed2End:
GFX_TNTBarrel_Grabbed3:
	db "GFX_TNTBarrel_Grabbed3.bin"
GFX_TNTBarrel_Grabbed3End:
GFX_TNTBarrel_Grabbed4:
	db "GFX_TNTBarrel_Grabbed4.bin"
GFX_TNTBarrel_Grabbed4End:
GFX_MapAirplaneBarrel_Pose:
	db "GFX_MapAirplaneBarrel_Pose.bin"
GFX_MapAirplaneBarrel_PoseEnd:
GFX_FunkysSurfboard_LookTowardsCamera1:
	db "GFX_FunkysSurfboard_LookTowardsCamera1.bin"
GFX_FunkysSurfboard_LookTowardsCamera1End:
GFX_FunkysSurfboard_LookTowardsCamera2:
	db "GFX_FunkysSurfboard_LookTowardsCamera2.bin"
GFX_FunkysSurfboard_LookTowardsCamera2End:
GFX_FunkysSurfboard_LookTowardsCamera3:
	db "GFX_FunkysSurfboard_LookTowardsCamera3.bin"
GFX_FunkysSurfboard_LookTowardsCamera3End:
GFX_FunkysSurfboard_LookTowardsCamera4:
	db "GFX_FunkysSurfboard_LookTowardsCamera4.bin"
GFX_FunkysSurfboard_LookTowardsCamera4End:
GFX_FunkysSurfboard_LookTowardsCamera5:
	db "GFX_FunkysSurfboard_LookTowardsCamera5.bin"
GFX_FunkysSurfboard_LookTowardsCamera5End:
GFX_FunkysSurfboard_LookTowardsCamera6:
	db "GFX_FunkysSurfboard_LookTowardsCamera6.bin"
GFX_FunkysSurfboard_LookTowardsCamera6End:
GFX_FunkysSurfboard_LookTowardsCamera7:
	db "GFX_FunkysSurfboard_LookTowardsCamera7.bin"
GFX_FunkysSurfboard_LookTowardsCamera7End:
GFX_FunkysSurfboard_LookTowardsCamera8:
	db "GFX_FunkysSurfboard_LookTowardsCamera8.bin"
GFX_FunkysSurfboard_LookTowardsCamera8End:
GFX_FunkysSurfboard_LookTowardsCamera9:
	db "GFX_FunkysSurfboard_LookTowardsCamera9.bin"
GFX_FunkysSurfboard_LookTowardsCamera9End:
GFX_FunkysSurfboard_LookTowardsCamera10:
	db "GFX_FunkysSurfboard_LookTowardsCamera10.bin"
GFX_FunkysSurfboard_LookTowardsCamera10End:
GFX_Explosion_Pose1:
	db "GFX_Explosion_Pose1.bin"
GFX_Explosion_Pose1End:
GFX_Explosion_Pose2:
	db "GFX_Explosion_Pose2.bin"
GFX_Explosion_Pose2End:
GFX_Explosion_Pose3:
	db "GFX_Explosion_Pose3.bin"
GFX_Explosion_Pose3End:
GFX_Explosion_Pose4:
	db "GFX_Explosion_Pose4.bin"
GFX_Explosion_Pose4End:
GFX_Explosion_Pose5:
	db "GFX_Explosion_Pose5.bin"
GFX_Explosion_Pose5End:
GFX_Explosion_Pose6:
	db "GFX_Explosion_Pose6.bin"
GFX_Explosion_Pose6End:
GFX_Explosion_Pose7:
	db "GFX_Explosion_Pose7.bin"
GFX_Explosion_Pose7End:
GFX_Explosion_Pose8:
	db "GFX_Explosion_Pose8.bin"
GFX_Explosion_Pose8End:
GFX_Explosion_Pose9:
	db "GFX_Explosion_Pose9.bin"
GFX_Explosion_Pose9End:
GFX_Explosion_Pose10:
	db "GFX_Explosion_Pose10.bin"
GFX_Explosion_Pose10End:
GFX_Explosion_Pose11:
	db "GFX_Explosion_Pose11.bin"
GFX_Explosion_Pose11End:
GFX_Explosion_Pose12:
	db "GFX_Explosion_Pose12.bin"
GFX_Explosion_Pose12End:
GFX_VeryGnawty_Hop1:
	db "GFX_VeryGnawty_Hop1.bin"
GFX_VeryGnawty_Hop1End:
GFX_VeryGnawty_Hop2:
	db "GFX_VeryGnawty_Hop2.bin"
GFX_VeryGnawty_Hop2End:
GFX_VeryGnawty_Hop3:
	db "GFX_VeryGnawty_Hop3.bin"
GFX_VeryGnawty_Hop3End:
GFX_VeryGnawty_Hop4:
	db "GFX_VeryGnawty_Hop4.bin"
GFX_VeryGnawty_Hop4End:
GFX_VeryGnawty_Hop5:
	db "GFX_VeryGnawty_Hop5.bin"
GFX_VeryGnawty_Hop5End:
GFX_VeryGnawty_Hop6:
	db "GFX_VeryGnawty_Hop6.bin"
GFX_VeryGnawty_Hop6End:
GFX_VeryGnawty_Hop7:
	db "GFX_VeryGnawty_Hop7.bin"
GFX_VeryGnawty_Hop7End:
GFX_VeryGnawty_Dead1:
	db "GFX_VeryGnawty_Dead1.bin"
GFX_VeryGnawty_Dead1End:
GFX_VeryGnawty_Dead2:
	db "GFX_VeryGnawty_Dead2.bin"
GFX_VeryGnawty_Dead2End:
GFX_VeryGnawty_Dead3:
	db "GFX_VeryGnawty_Dead3.bin"
GFX_VeryGnawty_Dead3End:
GFX_VeryGnawty_Dead4:
	db "GFX_VeryGnawty_Dead4.bin"
GFX_VeryGnawty_Dead4End:
GFX_VeryGnawty_Dead5:
	db "GFX_VeryGnawty_Dead5.bin"
GFX_VeryGnawty_Dead5End:
GFX_VeryGnawty_Dead6:
	db "GFX_VeryGnawty_Dead6.bin"
GFX_VeryGnawty_Dead6End:
GFX_VeryGnawty_Dead7:
	db "GFX_VeryGnawty_Dead7.bin"
GFX_VeryGnawty_Dead7End:
GFX_VeryGnawty_Dead8:
	db "GFX_VeryGnawty_Dead8.bin"
GFX_VeryGnawty_Dead8End:
GFX_VeryGnawty_Dead9:
	db "GFX_VeryGnawty_Dead9.bin"
GFX_VeryGnawty_Dead9End:
GFX_VeryGnawty_Dead10:
	db "GFX_VeryGnawty_Dead10.bin"
GFX_VeryGnawty_Dead10End:
GFX_Squawks_Fly1:
	db "GFX_Squawks_Fly1.bin"
GFX_Squawks_Fly1End:
GFX_Squawks_Fly2:
	db "GFX_Squawks_Fly2.bin"
GFX_Squawks_Fly2End:
GFX_Squawks_Fly3:
	db "GFX_Squawks_Fly3.bin"
GFX_Squawks_Fly3End:
GFX_Squawks_Fly4:
	db "GFX_Squawks_Fly4.bin"
GFX_Squawks_Fly4End:
GFX_Squawks_Fly5:
	db "GFX_Squawks_Fly5.bin"
GFX_Squawks_Fly5End:
GFX_Squawks_Fly6:
	db "GFX_Squawks_Fly6.bin"
GFX_Squawks_Fly6End:
GFX_Squawks_Fly7:
	db "GFX_Squawks_Fly7.bin"
GFX_Squawks_Fly7End:
GFX_Squawks_Fly8:
	db "GFX_Squawks_Fly8.bin"
GFX_Squawks_Fly8End:
GFX_Squawks_Fly9:
	db "GFX_Squawks_Fly9.bin"
GFX_Squawks_Fly9End:
GFX_Squawks_Fly10:
	db "GFX_Squawks_Fly10.bin"
GFX_Squawks_Fly10End:
GFX_Squawks_Fly11:
	db "GFX_Squawks_Fly11.bin"
GFX_Squawks_Fly11End:
GFX_Squawks_Fly12:
	db "GFX_Squawks_Fly12.bin"
GFX_Squawks_Fly12End:
GFX_Squawks_Fly13:
	db "GFX_Squawks_Fly13.bin"
GFX_Squawks_Fly13End:
GFX_Squawks_Fly14:
	db "GFX_Squawks_Fly14.bin"
GFX_Squawks_Fly14End:
GFX_Squawks_Turn1:
	db "GFX_Squawks_Turn1.bin"
GFX_Squawks_Turn1End:
GFX_Squawks_Turn2:
	db "GFX_Squawks_Turn2.bin"
GFX_Squawks_Turn2End:
GFX_Squawks_Turn3:
	db "GFX_Squawks_Turn3.bin"
GFX_Squawks_Turn3End:
GFX_DonkeyKong_SwingIntoIntro1:
	db "GFX_DonkeyKong_SwingIntoIntro1.bin"
GFX_DonkeyKong_SwingIntoIntro1End:
GFX_DonkeyKong_SwingIntoIntro2:
	db "GFX_DonkeyKong_SwingIntoIntro2.bin"
GFX_DonkeyKong_SwingIntoIntro2End:
GFX_DonkeyKong_SwingIntoIntro3:
	db "GFX_DonkeyKong_SwingIntoIntro3.bin"
GFX_DonkeyKong_SwingIntoIntro3End:
GFX_DonkeyKong_SwingIntoIntro4:
	db "GFX_DonkeyKong_SwingIntoIntro4.bin"
GFX_DonkeyKong_SwingIntoIntro4End:
GFX_DonkeyKong_SwingIntoIntro5:
	db "GFX_DonkeyKong_SwingIntoIntro5.bin"
GFX_DonkeyKong_SwingIntoIntro5End:
GFX_DonkeyKong_SwingIntoIntro6:
	db "GFX_DonkeyKong_SwingIntoIntro6.bin"
GFX_DonkeyKong_SwingIntoIntro6End:
GFX_DonkeyKong_SwingIntoIntro7:
	db "GFX_DonkeyKong_SwingIntoIntro7.bin"
GFX_DonkeyKong_SwingIntoIntro7End:
GFX_DonkeyKong_SwingIntoIntro8:
	db "GFX_DonkeyKong_SwingIntoIntro8.bin"
GFX_DonkeyKong_SwingIntoIntro8End:
GFX_DonkeyKong_SwingIntoIntro9:
	db "GFX_DonkeyKong_SwingIntoIntro9.bin"
GFX_DonkeyKong_SwingIntoIntro9End:
GFX_DonkeyKong_SwingIntoIntro10:
	db "GFX_DonkeyKong_SwingIntoIntro10.bin"
GFX_DonkeyKong_SwingIntoIntro10End:
GFX_DonkeyKong_SwingIntoIntro11:
	db "GFX_DonkeyKong_SwingIntoIntro11.bin"
GFX_DonkeyKong_SwingIntoIntro11End:
GFX_DonkeyKong_SwingIntoIntro12:
	db "GFX_DonkeyKong_SwingIntoIntro12.bin"
GFX_DonkeyKong_SwingIntoIntro12End:
GFX_DonkeyKong_SwingIntoIntro13:
	db "GFX_DonkeyKong_SwingIntoIntro13.bin"
GFX_DonkeyKong_SwingIntoIntro13End:
GFX_DonkeyKong_SwingIntoIntro14:
	db "GFX_DonkeyKong_SwingIntoIntro14.bin"
GFX_DonkeyKong_SwingIntoIntro14End:
GFX_DonkeyKong_SwingIntoIntro15:
	db "GFX_DonkeyKong_SwingIntoIntro15.bin"
GFX_DonkeyKong_SwingIntoIntro15End:
GFX_DonkeyKong_SwingIntoIntro16:
	db "GFX_DonkeyKong_SwingIntoIntro16.bin"
GFX_DonkeyKong_SwingIntoIntro16End:
GFX_DonkeyKong_SwingIntoIntro17:
	db "GFX_DonkeyKong_SwingIntoIntro17.bin"
GFX_DonkeyKong_SwingIntoIntro17End:
GFX_DonkeyKong_SwingIntoIntro18:
	db "GFX_DonkeyKong_SwingIntoIntro18.bin"
GFX_DonkeyKong_SwingIntoIntro18End:
GFX_DonkeyKong_SwingIntoIntro19:
	db "GFX_DonkeyKong_SwingIntoIntro19.bin"
GFX_DonkeyKong_SwingIntoIntro19End:
GFX_DonkeyKong_SwingIntoIntro20:
	db "GFX_DonkeyKong_SwingIntoIntro20.bin"
GFX_DonkeyKong_SwingIntoIntro20End:
GFX_DonkeyKong_SwingIntoIntro21:
	db "GFX_DonkeyKong_SwingIntoIntro21.bin"
GFX_DonkeyKong_SwingIntoIntro21End:
GFX_DonkeyKong_SwingIntoIntro22:
	db "GFX_DonkeyKong_SwingIntoIntro22.bin"
GFX_DonkeyKong_SwingIntoIntro22End:
GFX_DonkeyKong_SwingIntoIntro23:
	db "GFX_DonkeyKong_SwingIntoIntro23.bin"
GFX_DonkeyKong_SwingIntoIntro23End:
GFX_DonkeyKong_SwingIntoIntro24:
	db "GFX_DonkeyKong_SwingIntoIntro24.bin"
GFX_DonkeyKong_SwingIntoIntro24End:
GFX_DonkeyKong_SwingIntoIntro25:
	db "GFX_DonkeyKong_SwingIntoIntro25.bin"
GFX_DonkeyKong_SwingIntoIntro25End:
GFX_DonkeyKong_SwingIntoIntro26:
	db "GFX_DonkeyKong_SwingIntoIntro26.bin"
GFX_DonkeyKong_SwingIntoIntro26End:
GFX_Diddy_HangOntoWinky1:
	db "GFX_Diddy_HangOntoWinky1.bin"
GFX_Diddy_HangOntoWinky1End:
GFX_Diddy_HangOntoWinky2:
	db "GFX_Diddy_HangOntoWinky2.bin"
GFX_Diddy_HangOntoWinky2End:
GFX_Diddy_HangOntoWinky3:
	db "GFX_Diddy_HangOntoWinky3.bin"
GFX_Diddy_HangOntoWinky3End:
GFX_Diddy_HangOntoWinky4:
	db "GFX_Diddy_HangOntoWinky4.bin"
GFX_Diddy_HangOntoWinky4End:
GFX_Diddy_HangOntoWinky5:
	db "GFX_Diddy_HangOntoWinky5.bin"
GFX_Diddy_HangOntoWinky5End:
GFX_BreakableWall_Unknown1:
	db "GFX_BreakableWall_Unknown1.bin"
GFX_BreakableWall_Unknown1End:
GFX_BreakableWall_Unknown2:
	db "GFX_BreakableWall_Unknown2.bin"
GFX_BreakableWall_Unknown2End:
GFX_QueenB_Attack1:
	db "GFX_QueenB_Attack1.bin"
GFX_QueenB_Attack1End:
GFX_QueenB_Attack2:
	db "GFX_QueenB_Attack2.bin"
GFX_QueenB_Attack2End:
GFX_QueenB_Attack3:
	db "GFX_QueenB_Attack3.bin"
GFX_QueenB_Attack3End:
GFX_QueenB_Attack4:
	db "GFX_QueenB_Attack4.bin"
GFX_QueenB_Attack4End:
GFX_ArrowPlatform_Down:
	db "GFX_ArrowPlatform_Down.bin"
GFX_ArrowPlatform_DownEnd:
GFX_ArrowPlatform_Side:
	db "GFX_ArrowPlatform_Side.bin"
GFX_ArrowPlatform_SideEnd:
GFX_ArrowPlatform_Up:
	db "GFX_ArrowPlatform_Up.bin"
GFX_ArrowPlatform_UpEnd:
GFX_QueenB_Hurt1:
	db "GFX_QueenB_Hurt1.bin"
GFX_QueenB_Hurt1End:
GFX_QueenB_Hurt2:
	db "GFX_QueenB_Hurt2.bin"
GFX_QueenB_Hurt2End:
GFX_QueenB_Hurt3:
	db "GFX_QueenB_Hurt3.bin"
GFX_QueenB_Hurt3End:
GFX_DonkeyKong_HeyWatchThis1:
	db "GFX_DonkeyKong_HeyWatchThis1.bin"
GFX_DonkeyKong_HeyWatchThis1End:
GFX_DonkeyKong_HeyWatchThis2:
	db "GFX_DonkeyKong_HeyWatchThis2.bin"
GFX_DonkeyKong_HeyWatchThis2End:
GFX_DonkeyKong_HeyWatchThis3:
	db "GFX_DonkeyKong_HeyWatchThis3.bin"
GFX_DonkeyKong_HeyWatchThis3End:
GFX_DonkeyKong_PrankDiddy1:
	db "GFX_DonkeyKong_PrankDiddy1.bin"
GFX_DonkeyKong_PrankDiddy1End:
GFX_DonkeyKong_PrankDiddy2:
	db "GFX_DonkeyKong_PrankDiddy2.bin"
GFX_DonkeyKong_PrankDiddy2End:
GFX_DonkeyKong_PrankDiddy3:
	db "GFX_DonkeyKong_PrankDiddy3.bin"
GFX_DonkeyKong_PrankDiddy3End:
GFX_DonkeyKong_PrankDiddy4:
	db "GFX_DonkeyKong_PrankDiddy4.bin"
GFX_DonkeyKong_PrankDiddy4End:
GFX_DonkeyKong_PrankDiddy5:
	db "GFX_DonkeyKong_PrankDiddy5.bin"
GFX_DonkeyKong_PrankDiddy5End:
GFX_DonkeyKong_PrankDiddy6:
	db "GFX_DonkeyKong_PrankDiddy6.bin"
GFX_DonkeyKong_PrankDiddy6End:
GFX_DonkeyKong_PrankDiddy7:
	db "GFX_DonkeyKong_PrankDiddy7.bin"
GFX_DonkeyKong_PrankDiddy7End:
GFX_DonkeyKong_PrankDiddy8:
	db "GFX_DonkeyKong_PrankDiddy8.bin"
GFX_DonkeyKong_PrankDiddy8End:
GFX_DonkeyKong_PrankDiddy9:
	db "GFX_DonkeyKong_PrankDiddy9.bin"
GFX_DonkeyKong_PrankDiddy9End:
GFX_DonkeyKong_PrankDiddy10:
	db "GFX_DonkeyKong_PrankDiddy10.bin"
GFX_DonkeyKong_PrankDiddy10End:
GFX_DonkeyKong_PrankDiddy11:
	db "GFX_DonkeyKong_PrankDiddy11.bin"
GFX_DonkeyKong_PrankDiddy11End:
GFX_DonkeyKong_PrankDiddy12:
	db "GFX_DonkeyKong_PrankDiddy12.bin"
GFX_DonkeyKong_PrankDiddy12End:
GFX_DonkeyKong_PrankDiddy13:
	db "GFX_DonkeyKong_PrankDiddy13.bin"
GFX_DonkeyKong_PrankDiddy13End:
GFX_DonkeyKong_PrankDiddy14:
	db "GFX_DonkeyKong_PrankDiddy14.bin"
GFX_DonkeyKong_PrankDiddy14End:
GFX_DonkeyKong_PrankDiddy15:
	db "GFX_DonkeyKong_PrankDiddy15.bin"
GFX_DonkeyKong_PrankDiddy15End:
GFX_DonkeyKong_PrankDiddy16:
	db "GFX_DonkeyKong_PrankDiddy16.bin"
GFX_DonkeyKong_PrankDiddy16End:
GFX_DonkeyKong_PrankDiddy17:
	db "GFX_DonkeyKong_PrankDiddy17.bin"
GFX_DonkeyKong_PrankDiddy17End:
GFX_DonkeyKong_PrankDiddy18:
	db "GFX_DonkeyKong_PrankDiddy18.bin"
GFX_DonkeyKong_PrankDiddy18End:
GFX_DonkeyKong_PrankDiddy19:
	db "GFX_DonkeyKong_PrankDiddy19.bin"
GFX_DonkeyKong_PrankDiddy19End:
GFX_DonkeyKong_PrankDiddy20:
	db "GFX_DonkeyKong_PrankDiddy20.bin"
GFX_DonkeyKong_PrankDiddy20End:
GFX_DonkeyKong_PrankDiddy21:
	db "GFX_DonkeyKong_PrankDiddy21.bin"
GFX_DonkeyKong_PrankDiddy21End:
GFX_DonkeyKong_PrankDiddy22:
	db "GFX_DonkeyKong_PrankDiddy22.bin"
GFX_DonkeyKong_PrankDiddy22End:
GFX_DonkeyKong_PrankDiddy23:
	db "GFX_DonkeyKong_PrankDiddy23.bin"
GFX_DonkeyKong_PrankDiddy23End:
GFX_DonkeyKong_PrankDiddy24:
	db "GFX_DonkeyKong_PrankDiddy24.bin"
GFX_DonkeyKong_PrankDiddy24End:
GFX_DonkeyKong_PrankDiddy25:
	db "GFX_DonkeyKong_PrankDiddy25.bin"
GFX_DonkeyKong_PrankDiddy25End:
GFX_DonkeyKong_PrankDiddy26:
	db "GFX_DonkeyKong_PrankDiddy26.bin"
GFX_DonkeyKong_PrankDiddy26End:
GFX_DonkeyKong_FingerBitten1:
	db "GFX_DonkeyKong_FingerBitten1.bin"
GFX_DonkeyKong_FingerBitten1End:
GFX_DonkeyKong_FingerBitten2:
	db "GFX_DonkeyKong_FingerBitten2.bin"
GFX_DonkeyKong_FingerBitten2End:
GFX_DonkeyKong_FingerBitten3:
	db "GFX_DonkeyKong_FingerBitten3.bin"
GFX_DonkeyKong_FingerBitten3End:
GFX_DonkeyKong_FingerBitten4:
	db "GFX_DonkeyKong_FingerBitten4.bin"
GFX_DonkeyKong_FingerBitten4End:
GFX_DonkeyKong_FingerBitten5:
	db "GFX_DonkeyKong_FingerBitten5.bin"
GFX_DonkeyKong_FingerBitten5End:
GFX_DonkeyKong_FingerBitten6:
	db "GFX_DonkeyKong_FingerBitten6.bin"
GFX_DonkeyKong_FingerBitten6End:
GFX_DonkeyKong_FingerBitten7:
	db "GFX_DonkeyKong_FingerBitten7.bin"
GFX_DonkeyKong_FingerBitten7End:
GFX_DonkeyKong_FingerBitten8:
	db "GFX_DonkeyKong_FingerBitten8.bin"
GFX_DonkeyKong_FingerBitten8End:
GFX_DonkeyKong_FingerBitten9:
	db "GFX_DonkeyKong_FingerBitten9.bin"
GFX_DonkeyKong_FingerBitten9End:
GFX_DonkeyKong_FingerBitten10:
	db "GFX_DonkeyKong_FingerBitten10.bin"
GFX_DonkeyKong_FingerBitten10End:
GFX_DonkeyKong_FingerBitten11:
	db "GFX_DonkeyKong_FingerBitten11.bin"
GFX_DonkeyKong_FingerBitten11End:
GFX_DonkeyKong_FingerBitten12:
	db "GFX_DonkeyKong_FingerBitten12.bin"
GFX_DonkeyKong_FingerBitten12End:
GFX_DonkeyKong_FingerBitten13:
	db "GFX_DonkeyKong_FingerBitten13.bin"
GFX_DonkeyKong_FingerBitten13End:
GFX_HUDBalloon_Pop1:
	db "GFX_HUDBalloon_Pop1.bin"
GFX_HUDBalloon_Pop1End:
GFX_HUDBalloon_Pop2:
	db "GFX_HUDBalloon_Pop2.bin"
GFX_HUDBalloon_Pop2End:
GFX_HUDBalloon_Pop3:
	db "GFX_HUDBalloon_Pop3.bin"
GFX_HUDBalloon_Pop3End:
GFX_HUDBalloon_Pop4:
	db "GFX_HUDBalloon_Pop4.bin"
GFX_HUDBalloon_Pop4End:
GFX_HUDBalloon_Pop5:
	db "GFX_HUDBalloon_Pop5.bin"
GFX_HUDBalloon_Pop5End:
GFX_HUDBalloon_Pop6:
	db "GFX_HUDBalloon_Pop6.bin"
GFX_HUDBalloon_Pop6End:
GFX_HUDBalloon_Pop7:
	db "GFX_HUDBalloon_Pop7.bin"
GFX_HUDBalloon_Pop7End:
GFX_DonkeyKong_HoldIdle1:
	db "GFX_DonkeyKong_HoldIdle1.bin"
GFX_DonkeyKong_HoldIdle1End:
GFX_DonkeyKong_HoldIdle2:
	db "GFX_DonkeyKong_HoldIdle2.bin"
GFX_DonkeyKong_HoldIdle2End:
GFX_DonkeyKong_HoldIdle3:
	db "GFX_DonkeyKong_HoldIdle3.bin"
GFX_DonkeyKong_HoldIdle3End:
GFX_Expresso_Run1:
	db "GFX_Expresso_Run1.bin"
GFX_Expresso_Run1End:
GFX_Expresso_Run2:
	db "GFX_Expresso_Run2.bin"
GFX_Expresso_Run2End:
GFX_Expresso_Run3:
	db "GFX_Expresso_Run3.bin"
GFX_Expresso_Run3End:
GFX_Expresso_Run4:
	db "GFX_Expresso_Run4.bin"
GFX_Expresso_Run4End:
GFX_Expresso_Run5:
	db "GFX_Expresso_Run5.bin"
GFX_Expresso_Run5End:
GFX_Expresso_Run6:
	db "GFX_Expresso_Run6.bin"
GFX_Expresso_Run6End:
GFX_Expresso_Run7:
	db "GFX_Expresso_Run7.bin"
GFX_Expresso_Run7End:
GFX_Expresso_Run8:
	db "GFX_Expresso_Run8.bin"
GFX_Expresso_Run8End:
GFX_Expresso_Run9:
	db "GFX_Expresso_Run9.bin"
GFX_Expresso_Run9End:
GFX_Expresso_Run10:
	db "GFX_Expresso_Run10.bin"
GFX_Expresso_Run10End:
GFX_Expresso_Run11:
	db "GFX_Expresso_Run11.bin"
GFX_Expresso_Run11End:
GFX_Expresso_Run12:
	db "GFX_Expresso_Run12.bin"
GFX_Expresso_Run12End:
GFX_Expresso_Run13:
	db "GFX_Expresso_Run13.bin"
GFX_Expresso_Run13End:
GFX_Expresso_Run14:
	db "GFX_Expresso_Run14.bin"
GFX_Expresso_Run14End:
GFX_Expresso_Run15:
	db "GFX_Expresso_Run15.bin"
GFX_Expresso_Run15End:
GFX_Expresso_Run16:
	db "GFX_Expresso_Run16.bin"
GFX_Expresso_Run16End:
GFX_Expresso_Run17:
	db "GFX_Expresso_Run17.bin"
GFX_Expresso_Run17End:
GFX_Expresso_Run18:
	db "GFX_Expresso_Run18.bin"
GFX_Expresso_Run18End:
GFX_QueenB_Dead1:
	db "GFX_QueenB_Dead1.bin"
GFX_QueenB_Dead1End:
GFX_QueenB_Dead2:
	db "GFX_QueenB_Dead2.bin"
GFX_QueenB_Dead2End:
GFX_QueenB_Dead3:
	db "GFX_QueenB_Dead3.bin"
GFX_QueenB_Dead3End:
GFX_QueenB_Dead4:
	db "GFX_QueenB_Dead4.bin"
GFX_QueenB_Dead4End:
GFX_QueenB_Dead5:
	db "GFX_QueenB_Dead5.bin"
GFX_QueenB_Dead5End:
GFX_QueenB_Dead6:
	db "GFX_QueenB_Dead6.bin"
GFX_QueenB_Dead6End:
GFX_QueenB_Dead7:
	db "GFX_QueenB_Dead7.bin"
GFX_QueenB_Dead7End:
GFX_QueenB_Dead8:
	db "GFX_QueenB_Dead8.bin"
GFX_QueenB_Dead8End:
GFX_QueenB_Dead9:
	db "GFX_QueenB_Dead9.bin"
GFX_QueenB_Dead9End:
GFX_Krocbot_Dead1:
	db "GFX_Krocbot_Dead1.bin"
GFX_Krocbot_Dead1End:
GFX_Krocbot_Dead2:
	db "GFX_Krocbot_Dead2.bin"
GFX_Krocbot_Dead2End:
GFX_UnknownEffect_Pose1:
	db "GFX_UnknownEffect_Pose1.bin"
GFX_UnknownEffect_Pose1End:
GFX_UnknownEffect_Pose2:
	db "GFX_UnknownEffect_Pose2.bin"
GFX_UnknownEffect_Pose2End:
GFX_UnknownEffect_Pose3:
	db "GFX_UnknownEffect_Pose3.bin"
GFX_UnknownEffect_Pose3End:
GFX_UnknownEffect_Pose4:
	db "GFX_UnknownEffect_Pose4.bin"
GFX_UnknownEffect_Pose4End:
GFX_UnknownEffect_Pose5:
	db "GFX_UnknownEffect_Pose5.bin"
GFX_UnknownEffect_Pose5End:
GFX_UnknownEffect_Pose6:
	db "GFX_UnknownEffect_Pose6.bin"
GFX_UnknownEffect_Pose6End:
GFX_UnknownEffect_Pose7:
	db "GFX_UnknownEffect_Pose7.bin"
GFX_UnknownEffect_Pose7End:
GFX_UnknownEffect_Pose8:
	db "GFX_UnknownEffect_Pose8.bin"
GFX_UnknownEffect_Pose8End:
GFX_Slippa_Slither1:
	db "GFX_Slippa_Slither1.bin"
GFX_Slippa_Slither1End:
GFX_Slippa_Slither2:
	db "GFX_Slippa_Slither2.bin"
GFX_Slippa_Slither2End:
GFX_Slippa_Slither3:
	db "GFX_Slippa_Slither3.bin"
GFX_Slippa_Slither3End:
GFX_Slippa_Slither4:
	db "GFX_Slippa_Slither4.bin"
GFX_Slippa_Slither4End:
GFX_Slippa_Slither5:
	db "GFX_Slippa_Slither5.bin"
GFX_Slippa_Slither5End:
GFX_Slippa_Slither6:
	db "GFX_Slippa_Slither6.bin"
GFX_Slippa_Slither6End:
GFX_Slippa_Slither7:
	db "GFX_Slippa_Slither7.bin"
GFX_Slippa_Slither7End:
GFX_Slippa_Slither8:
	db "GFX_Slippa_Slither8.bin"
GFX_Slippa_Slither8End:
GFX_Slippa_Slither9:
	db "GFX_Slippa_Slither9.bin"
GFX_Slippa_Slither9End:
GFX_Slippa_Slither10:
	db "GFX_Slippa_Slither10.bin"
GFX_Slippa_Slither10End:
GFX_Slippa_Slither11:
	db "GFX_Slippa_Slither11.bin"
GFX_Slippa_Slither11End:
GFX_Slippa_Slither12:
	db "GFX_Slippa_Slither12.bin"
GFX_Slippa_Slither12End:
GFX_DonkeyKong_Turn1:
	db "GFX_DonkeyKong_Turn1.bin"
GFX_DonkeyKong_Turn1End:
GFX_DonkeyKong_Turn2:
	db "GFX_DonkeyKong_Turn2.bin"
GFX_DonkeyKong_Turn2End:
GFX_TemplePlatform_Pose:
	db "GFX_TemplePlatform_Pose.bin"
GFX_TemplePlatform_PoseEnd:
GFX_BoomBox_DropDown1:
	db "GFX_BoomBox_DropDown1.bin"
GFX_BoomBox_DropDown1End:
GFX_BoomBox_DropDown2:
	db "GFX_BoomBox_DropDown2.bin"
GFX_BoomBox_DropDown2End:
GFX_BoomBox_DropDown3:
	db "GFX_BoomBox_DropDown3.bin"
GFX_BoomBox_DropDown3End:
GFX_BoomBox_DropDown4:
	db "GFX_BoomBox_DropDown4.bin"
GFX_BoomBox_DropDown4End:
GFX_Necky_ThrowNut1:
	db "GFX_Necky_ThrowNut1.bin"
GFX_Necky_ThrowNut1End:
GFX_Necky_ThrowNut2:
	db "GFX_Necky_ThrowNut2.bin"
GFX_Necky_ThrowNut2End:
GFX_Necky_ThrowNut3:
	db "GFX_Necky_ThrowNut3.bin"
GFX_Necky_ThrowNut3End:
GFX_Necky_ThrowNut4:
	db "GFX_Necky_ThrowNut4.bin"
GFX_Necky_ThrowNut4End:
GFX_Necky_ThrowNut5:
	db "GFX_Necky_ThrowNut5.bin"
GFX_Necky_ThrowNut5End:
GFX_Necky_ThrowNut6:
	db "GFX_Necky_ThrowNut6.bin"
GFX_Necky_ThrowNut6End:
GFX_Necky_ThrowNut7:
	db "GFX_Necky_ThrowNut7.bin"
GFX_Necky_ThrowNut7End:
GFX_Necky_ThrowNut8:
	db "GFX_Necky_ThrowNut8.bin"
GFX_Necky_ThrowNut8End:
GFX_Necky_ThrowNut9:
	db "GFX_Necky_ThrowNut9.bin"
GFX_Necky_ThrowNut9End:
GFX_Necky_ThrowNut10:
	db "GFX_Necky_ThrowNut10.bin"
GFX_Necky_ThrowNut10End:
GFX_Necky_Dead:
	db "GFX_Necky_Dead.bin"
GFX_Necky_DeadEnd:
GFX_DonkeyKong_TurnOnAnimalBuddy1:
	db "GFX_DonkeyKong_TurnOnAnimalBuddy1.bin"
GFX_DonkeyKong_TurnOnAnimalBuddy1End:
GFX_DonkeyKong_TurnOnAnimalBuddy2:
	db "GFX_DonkeyKong_TurnOnAnimalBuddy2.bin"
GFX_DonkeyKong_TurnOnAnimalBuddy2End:
GFX_Rambi_Turn1:
	db "GFX_Rambi_Turn1.bin"
GFX_Rambi_Turn1End:
GFX_Rambi_Turn2:
	db "GFX_Rambi_Turn2.bin"
GFX_Rambi_Turn2End:
GFX_Rambi_Idle1:
	db "GFX_Rambi_Idle1.bin"
GFX_Rambi_Idle1End:
GFX_Rambi_Idle2:
	db "GFX_Rambi_Idle2.bin"
GFX_Rambi_Idle2End:
GFX_Rambi_Idle3:
	db "GFX_Rambi_Idle3.bin"
GFX_Rambi_Idle3End:
GFX_Rambi_Idle4:
	db "GFX_Rambi_Idle4.bin"
GFX_Rambi_Idle4End:
GFX_Rambi_Idle5:
	db "GFX_Rambi_Idle5.bin"
GFX_Rambi_Idle5End:
GFX_Rambi_Idle6:
	db "GFX_Rambi_Idle6.bin"
GFX_Rambi_Idle6End:
GFX_Rambi_Panting1:
	db "GFX_Rambi_Panting1.bin"
GFX_Rambi_Panting1End:
GFX_Rambi_Panting2:
	db "GFX_Rambi_Panting2.bin"
GFX_Rambi_Panting2End:
GFX_Rambi_Panting3:
	db "GFX_Rambi_Panting3.bin"
GFX_Rambi_Panting3End:
GFX_Rambi_Panting4:
	db "GFX_Rambi_Panting4.bin"
GFX_Rambi_Panting4End:
GFX_Rambi_Panting5:
	db "GFX_Rambi_Panting5.bin"
GFX_Rambi_Panting5End:
GFX_Rambi_Panting6:
	db "GFX_Rambi_Panting6.bin"
GFX_Rambi_Panting6End:
GFX_Rambi_Panting7:
	db "GFX_Rambi_Panting7.bin"
GFX_Rambi_Panting7End:
GFX_Rambi_Panting8:
	db "GFX_Rambi_Panting8.bin"
GFX_Rambi_Panting8End:
GFX_Rambi_Panting9:
	db "GFX_Rambi_Panting9.bin"
GFX_Rambi_Panting9End:
GFX_Rambi_Panting10:
	db "GFX_Rambi_Panting10.bin"
GFX_Rambi_Panting10End:
GFX_Rambi_Panting11:
	db "GFX_Rambi_Panting11.bin"
GFX_Rambi_Panting11End:
GFX_Rambi_Panting12:
	db "GFX_Rambi_Panting12.bin"
GFX_Rambi_Panting12End:
GFX_Rambi_Panting13:
	db "GFX_Rambi_Panting13.bin"
GFX_Rambi_Panting13End:
GFX_Rambi_Panting14:
	db "GFX_Rambi_Panting14.bin"
GFX_Rambi_Panting14End:
GFX_Rambi_Panting15:
	db "GFX_Rambi_Panting15.bin"
GFX_Rambi_Panting15End:
GFX_Rambi_Panting16:
	db "GFX_Rambi_Panting16.bin"
GFX_Rambi_Panting16End:
GFX_DonkeyKong_Roll1:
	db "GFX_DonkeyKong_Roll1.bin"
GFX_DonkeyKong_Roll1End:
GFX_DonkeyKong_Roll2:
	db "GFX_DonkeyKong_Roll2.bin"
GFX_DonkeyKong_Roll2End:
GFX_DonkeyKong_Roll3:
	db "GFX_DonkeyKong_Roll3.bin"
GFX_DonkeyKong_Roll3End:
GFX_DonkeyKong_Roll4:
	db "GFX_DonkeyKong_Roll4.bin"
GFX_DonkeyKong_Roll4End:
GFX_DonkeyKong_Roll5:
	db "GFX_DonkeyKong_Roll5.bin"
GFX_DonkeyKong_Roll5End:
GFX_DonkeyKong_Roll6:
	db "GFX_DonkeyKong_Roll6.bin"
GFX_DonkeyKong_Roll6End:
GFX_DonkeyKong_Roll7:
	db "GFX_DonkeyKong_Roll7.bin"
GFX_DonkeyKong_Roll7End:
GFX_DonkeyKong_Roll8:
	db "GFX_DonkeyKong_Roll8.bin"
GFX_DonkeyKong_Roll8End:
GFX_DonkeyKong_Roll9:
	db "GFX_DonkeyKong_Roll9.bin"
GFX_DonkeyKong_Roll9End:
GFX_DonkeyKong_Roll10:
	db "GFX_DonkeyKong_Roll10.bin"
GFX_DonkeyKong_Roll10End:
GFX_DonkeyKong_Roll11:
	db "GFX_DonkeyKong_Roll11.bin"
GFX_DonkeyKong_Roll11End:
GFX_DonkeyKong_Roll12:
	db "GFX_DonkeyKong_Roll12.bin"
GFX_DonkeyKong_Roll12End:
GFX_DonkeyKong_Roll13:
	db "GFX_DonkeyKong_Roll13.bin"
GFX_DonkeyKong_Roll13End:
GFX_DonkeyKong_Roll14:
	db "GFX_DonkeyKong_Roll14.bin"
GFX_DonkeyKong_Roll14End:
GFX_Expresso_Hurt:
	db "GFX_Expresso_Hurt.bin"
GFX_Expresso_HurtEnd:
GFX_Winky_Hurt:
	db "GFX_Winky_Hurt.bin"
GFX_Winky_HurtEnd:
GFX_Diddy_Pickup1:
	db "GFX_Diddy_Pickup1.bin"
GFX_Diddy_Pickup1End:
GFX_Diddy_Pickup2:
	db "GFX_Diddy_Pickup2.bin"
GFX_Diddy_Pickup2End:
GFX_Diddy_Pickup3:
	db "GFX_Diddy_Pickup3.bin"
GFX_Diddy_Pickup3End:
GFX_Diddy_Pickup4:
	db "GFX_Diddy_Pickup4.bin"
GFX_Diddy_Pickup4End:
GFX_Diddy_Pickup5:
	db "GFX_Diddy_Pickup5.bin"
GFX_Diddy_Pickup5End:
GFX_DonkeyKong_RideAnimalBuddy1:
	db "GFX_DonkeyKong_RideAnimalBuddy1.bin"
GFX_DonkeyKong_RideAnimalBuddy1End:
GFX_DonkeyKong_RideAnimalBuddy2:
	db "GFX_DonkeyKong_RideAnimalBuddy2.bin"
GFX_DonkeyKong_RideAnimalBuddy2End:
GFX_DonkeyKong_RideAnimalBuddy3:
	db "GFX_DonkeyKong_RideAnimalBuddy3.bin"
GFX_DonkeyKong_RideAnimalBuddy3End:
GFX_DonkeyKong_RideAnimalBuddy4:
	db "GFX_DonkeyKong_RideAnimalBuddy4.bin"
GFX_DonkeyKong_RideAnimalBuddy4End:
GFX_DonkeyKong_RideAnimalBuddy5:
	db "GFX_DonkeyKong_RideAnimalBuddy5.bin"
GFX_DonkeyKong_RideAnimalBuddy5End:
GFX_DonkeyKong_RideAnimalBuddy6:
	db "GFX_DonkeyKong_RideAnimalBuddy6.bin"
GFX_DonkeyKong_RideAnimalBuddy6End:
GFX_DonkeyKong_RideAnimalBuddy7:
	db "GFX_DonkeyKong_RideAnimalBuddy7.bin"
GFX_DonkeyKong_RideAnimalBuddy7End:
GFX_DonkeyKong_RideAnimalBuddy8:
	db "GFX_DonkeyKong_RideAnimalBuddy8.bin"
GFX_DonkeyKong_RideAnimalBuddy8End:
GFX_DonkeyKong_RideAnimalBuddy9:
	db "GFX_DonkeyKong_RideAnimalBuddy9.bin"
GFX_DonkeyKong_RideAnimalBuddy9End:
GFX_GiantBanana_Pose:
	db "GFX_GiantBanana_Pose.bin"
GFX_GiantBanana_PoseEnd:
GFX_UnknownSmokeEffect_Pose1:
	db "GFX_UnknownSmokeEffect_Pose1.bin"
GFX_UnknownSmokeEffect_Pose1End:
GFX_UnknownSmokeEffect_Pose2:
	db "GFX_UnknownSmokeEffect_Pose2.bin"
GFX_UnknownSmokeEffect_Pose2End:
GFX_UnknownSmokeEffect_Pose3:
	db "GFX_UnknownSmokeEffect_Pose3.bin"
GFX_UnknownSmokeEffect_Pose3End:
GFX_UnknownSmokeEffect_Pose4:
	db "GFX_UnknownSmokeEffect_Pose4.bin"
GFX_UnknownSmokeEffect_Pose4End:
GFX_UnknownSmokeEffect_Pose5:
	db "GFX_UnknownSmokeEffect_Pose5.bin"
GFX_UnknownSmokeEffect_Pose5End:
GFX_UnknownSmokeEffect_Pose6:
	db "GFX_UnknownSmokeEffect_Pose6.bin"
GFX_UnknownSmokeEffect_Pose6End:
GFX_UnknownSmokeEffect_Pose7:
	db "GFX_UnknownSmokeEffect_Pose7.bin"
GFX_UnknownSmokeEffect_Pose7End:
GFX_UnknownSmokeEffect_Pose8:
	db "GFX_UnknownSmokeEffect_Pose8.bin"
GFX_UnknownSmokeEffect_Pose8End:
GFX_UnknownSmokeEffect_Pose9:
	db "GFX_UnknownSmokeEffect_Pose9.bin"
GFX_UnknownSmokeEffect_Pose9End:
GFX_UnknownSmokeEffect_Pose10:
	db "GFX_UnknownSmokeEffect_Pose10.bin"
GFX_UnknownSmokeEffect_Pose10End:
GFX_UnknownSmokeEffect_Pose11:
	db "GFX_UnknownSmokeEffect_Pose11.bin"
GFX_UnknownSmokeEffect_Pose11End:
GFX_UnknownSmokeEffect_Pose12:
	db "GFX_UnknownSmokeEffect_Pose12.bin"
GFX_UnknownSmokeEffect_Pose12End:
GFX_Diddy_HangOnVerticalRope1:
	db "GFX_Diddy_HangOnVerticalRope1.bin"
GFX_Diddy_HangOnVerticalRope1End:
GFX_Diddy_HangOnVerticalRope2:
	db "GFX_Diddy_HangOnVerticalRope2.bin"
GFX_Diddy_HangOnVerticalRope2End:
GFX_Diddy_HangOnVerticalRope3:
	db "GFX_Diddy_HangOnVerticalRope3.bin"
GFX_Diddy_HangOnVerticalRope3End:
GFX_Diddy_HangOnVerticalRope4:
	db "GFX_Diddy_HangOnVerticalRope4.bin"
GFX_Diddy_HangOnVerticalRope4End:
GFX_Diddy_TurnOnVerticalRope1:
	db "GFX_Diddy_TurnOnVerticalRope1.bin"
GFX_Diddy_TurnOnVerticalRope1End:
GFX_Diddy_TurnOnVerticalRope2:
	db "GFX_Diddy_TurnOnVerticalRope2.bin"
GFX_Diddy_TurnOnVerticalRope2End:
GFX_Slippa_Dead1:
	db "GFX_Slippa_Dead1.bin"
GFX_Slippa_Dead1End:
GFX_Slippa_Dead2:
	db "GFX_Slippa_Dead2.bin"
GFX_Slippa_Dead2End:
GFX_Slippa_Dead3:
	db "GFX_Slippa_Dead3.bin"
GFX_Slippa_Dead3End:
GFX_Slippa_Dead4:
	db "GFX_Slippa_Dead4.bin"
GFX_Slippa_Dead4End:
GFX_Slippa_Dead5:
	db "GFX_Slippa_Dead5.bin"
GFX_Slippa_Dead5End:
GFX_Slippa_Dead6:
	db "GFX_Slippa_Dead6.bin"
GFX_Slippa_Dead6End:
GFX_Zinger_Fly1:
	db "GFX_Zinger_Fly1.bin"
GFX_Zinger_Fly1End:
GFX_Zinger_Fly2:
	db "GFX_Zinger_Fly2.bin"
GFX_Zinger_Fly2End:
GFX_Zinger_Fly3:
	db "GFX_Zinger_Fly3.bin"
GFX_Zinger_Fly3End:
GFX_Zinger_Fly4:
	db "GFX_Zinger_Fly4.bin"
GFX_Zinger_Fly4End:
GFX_FunkyKong_Idle1:
	db "GFX_FunkyKong_Idle1.bin"
GFX_FunkyKong_Idle1End:
GFX_FunkyKong_Idle2:
	db "GFX_FunkyKong_Idle2.bin"
GFX_FunkyKong_Idle2End:
GFX_FunkyKong_Idle3:
	db "GFX_FunkyKong_Idle3.bin"
GFX_FunkyKong_Idle3End:
GFX_FunkyKong_Idle4:
	db "GFX_FunkyKong_Idle4.bin"
GFX_FunkyKong_Idle4End:
GFX_GoldenLetters_A:
	db "GFX_GoldenLetters_A.bin"
GFX_GoldenLetters_AEnd:
GFX_GoldenLetters_B:
	db "GFX_GoldenLetters_B.bin"
GFX_GoldenLetters_BEnd:
GFX_GoldenLetters_C:
	db "GFX_GoldenLetters_C.bin"
GFX_GoldenLetters_CEnd:
GFX_GoldenLetters_D:
	db "GFX_GoldenLetters_D.bin"
GFX_GoldenLetters_DEnd:
GFX_GoldenLetters_E:
	db "GFX_GoldenLetters_E.bin"
GFX_GoldenLetters_EEnd:
GFX_GoldenLetters_F:
	db "GFX_GoldenLetters_F.bin"
GFX_GoldenLetters_FEnd:
GFX_GoldenLetters_G:
	db "GFX_GoldenLetters_G.bin"
GFX_GoldenLetters_GEnd:
GFX_GoldenLetters_H:
	db "GFX_GoldenLetters_H.bin"
GFX_GoldenLetters_HEnd:
GFX_GoldenLetters_I:
	db "GFX_GoldenLetters_I.bin"
GFX_GoldenLetters_IEnd:
GFX_GoldenLetters_J:
	db "GFX_GoldenLetters_J.bin"
GFX_GoldenLetters_JEnd:
GFX_GoldenLetters_K:
	db "GFX_GoldenLetters_K.bin"
GFX_GoldenLetters_KEnd:
GFX_GoldenLetters_L:
	db "GFX_GoldenLetters_L.bin"
GFX_GoldenLetters_LEnd:
GFX_GoldenLetters_M:
	db "GFX_GoldenLetters_M.bin"
GFX_GoldenLetters_MEnd:
GFX_GoldenLetters_N:
	db "GFX_GoldenLetters_N.bin"
GFX_GoldenLetters_NEnd:
GFX_GoldenLetters_O:
	db "GFX_GoldenLetters_O.bin"
GFX_GoldenLetters_OEnd:
GFX_GoldenLetters_P:
	db "GFX_GoldenLetters_P.bin"
GFX_GoldenLetters_PEnd:
GFX_GoldenLetters_Q:
	db "GFX_GoldenLetters_Q.bin"
GFX_GoldenLetters_QEnd:
GFX_GoldenLetters_R:
	db "GFX_GoldenLetters_R.bin"
GFX_GoldenLetters_REnd:
GFX_GoldenLetters_S:
	db "GFX_GoldenLetters_S.bin"
GFX_GoldenLetters_SEnd:
GFX_GoldenLetters_T:
	db "GFX_GoldenLetters_T.bin"
GFX_GoldenLetters_TEnd:
GFX_GoldenLetters_U:
	db "GFX_GoldenLetters_U.bin"
GFX_GoldenLetters_UEnd:
GFX_GoldenLetters_V:
	db "GFX_GoldenLetters_V.bin"
GFX_GoldenLetters_VEnd:
GFX_GoldenLetters_W:
	db "GFX_GoldenLetters_W.bin"
GFX_GoldenLetters_WEnd:
GFX_GoldenLetters_X:
	db "GFX_GoldenLetters_X.bin"
GFX_GoldenLetters_XEnd:
GFX_GoldenLetters_Y:
	db "GFX_GoldenLetters_Y.bin"
GFX_GoldenLetters_YEnd:
GFX_GoldenLetters_Z:
	db "GFX_GoldenLetters_Z.bin"
GFX_GoldenLetters_ZEnd:
GFX_CrankyKong_Complain1:
	db "GFX_CrankyKong_Complain1.bin"
GFX_CrankyKong_Complain1End:
GFX_CrankyKong_Complain2:
	db "GFX_CrankyKong_Complain2.bin"
GFX_CrankyKong_Complain2End:
GFX_CrankyKong_Complain3:
	db "GFX_CrankyKong_Complain3.bin"
GFX_CrankyKong_Complain3End:
GFX_CrankyKong_Complain4:
	db "GFX_CrankyKong_Complain4.bin"
GFX_CrankyKong_Complain4End:
GFX_CrankyKong_Complain5:
	db "GFX_CrankyKong_Complain5.bin"
GFX_CrankyKong_Complain5End:
GFX_CrankyKong_ThrowTNT1:
	db "GFX_CrankyKong_ThrowTNT1.bin"
GFX_CrankyKong_ThrowTNT1End:
GFX_CrankyKong_ThrowTNT2:
	db "GFX_CrankyKong_ThrowTNT2.bin"
GFX_CrankyKong_ThrowTNT2End:
GFX_CrankyKong_ThrowTNT3:
	db "GFX_CrankyKong_ThrowTNT3.bin"
GFX_CrankyKong_ThrowTNT3End:
GFX_CrankyKong_ThrowTNT4:
	db "GFX_CrankyKong_ThrowTNT4.bin"
GFX_CrankyKong_ThrowTNT4End:
GFX_CrankyKong_ThrowTNT5:
	db "GFX_CrankyKong_ThrowTNT5.bin"
GFX_CrankyKong_ThrowTNT5End:
GFX_CrankyKong_ThrowTNT6:
	db "GFX_CrankyKong_ThrowTNT6.bin"
GFX_CrankyKong_ThrowTNT6End:
GFX_CrankyKong_ThrowTNT7:
	db "GFX_CrankyKong_ThrowTNT7.bin"
GFX_CrankyKong_ThrowTNT7End:
GFX_CrankyKong_ThrowTNT8:
	db "GFX_CrankyKong_ThrowTNT8.bin"
GFX_CrankyKong_ThrowTNT8End:
GFX_CrankyKong_ThrowTNT9:
	db "GFX_CrankyKong_ThrowTNT9.bin"
GFX_CrankyKong_ThrowTNT9End:
GFX_CrankyKong_ThrowTNT10:
	db "GFX_CrankyKong_ThrowTNT10.bin"
GFX_CrankyKong_ThrowTNT10End:
GFX_CrankyKong_ThrowTNT11:
	db "GFX_CrankyKong_ThrowTNT11.bin"
GFX_CrankyKong_ThrowTNT11End:
GFX_CrankyKong_ThrowTNT12:
	db "GFX_CrankyKong_ThrowTNT12.bin"
GFX_CrankyKong_ThrowTNT12End:
GFX_CrankyKong_ThrowTNT13:
	db "GFX_CrankyKong_ThrowTNT13.bin"
GFX_CrankyKong_ThrowTNT13End:
GFX_CrankyKong_ThrowTNT14:
	db "GFX_CrankyKong_ThrowTNT14.bin"
GFX_CrankyKong_ThrowTNT14End:
GFX_CrankyKong_ThrowTNT15:
	db "GFX_CrankyKong_ThrowTNT15.bin"
GFX_CrankyKong_ThrowTNT15End:
GFX_CrankyKong_InRockingChair1:
	db "GFX_CrankyKong_InRockingChair1.bin"
GFX_CrankyKong_InRockingChair1End:
GFX_CrankyKong_InRockingChair2:
	db "GFX_CrankyKong_InRockingChair2.bin"
GFX_CrankyKong_InRockingChair2End:
GFX_CrankyKong_InRockingChair3:
	db "GFX_CrankyKong_InRockingChair3.bin"
GFX_CrankyKong_InRockingChair3End:
GFX_CrankyKong_InRockingChair4:
	db "GFX_CrankyKong_InRockingChair4.bin"
GFX_CrankyKong_InRockingChair4End:
GFX_CrankyKong_InRockingChair5:
	db "GFX_CrankyKong_InRockingChair5.bin"
GFX_CrankyKong_InRockingChair5End:
GFX_CrankyKong_InRockingChair6:
	db "GFX_CrankyKong_InRockingChair6.bin"
GFX_CrankyKong_InRockingChair6End:
GFX_CrankyKong_InRockingChair7:
	db "GFX_CrankyKong_InRockingChair7.bin"
GFX_CrankyKong_InRockingChair7End:
GFX_CrankyKong_InRockingChair8:
	db "GFX_CrankyKong_InRockingChair8.bin"
GFX_CrankyKong_InRockingChair8End:
GFX_CrankyKong_InRockingChair9:
	db "GFX_CrankyKong_InRockingChair9.bin"
GFX_CrankyKong_InRockingChair9End:
GFX_CrankyKong_InRockingChair10:
	db "GFX_CrankyKong_InRockingChair10.bin"
GFX_CrankyKong_InRockingChair10End:
GFX_CrankyKong_InRockingChair11:
	db "GFX_CrankyKong_InRockingChair11.bin"
GFX_CrankyKong_InRockingChair11End:
GFX_CrankyKong_InRockingChair12:
	db "GFX_CrankyKong_InRockingChair12.bin"
GFX_CrankyKong_InRockingChair12End:
GFX_CrankyKong_InRockingChair13:
	db "GFX_CrankyKong_InRockingChair13.bin"
GFX_CrankyKong_InRockingChair13End:
GFX_CrankyKong_InRockingChair14:
	db "GFX_CrankyKong_InRockingChair14.bin"
GFX_CrankyKong_InRockingChair14End:
GFX_CrankyKong_InRockingChair15:
	db "GFX_CrankyKong_InRockingChair15.bin"
GFX_CrankyKong_InRockingChair15End:
GFX_CrankyKong_InRockingChair16:
	db "GFX_CrankyKong_InRockingChair16.bin"
GFX_CrankyKong_InRockingChair16End:
GFX_CrankyKong_InRockingChair17:
	db "GFX_CrankyKong_InRockingChair17.bin"
GFX_CrankyKong_InRockingChair17End:
GFX_CrankyKong_InRockingChair18:
	db "GFX_CrankyKong_InRockingChair18.bin"
GFX_CrankyKong_InRockingChair18End:
GFX_CrankyKong_InRockingChair19:
	db "GFX_CrankyKong_InRockingChair19.bin"
GFX_CrankyKong_InRockingChair19End:
GFX_CrankyKong_InRockingChair20:
	db "GFX_CrankyKong_InRockingChair20.bin"
GFX_CrankyKong_InRockingChair20End:
GFX_DonkeyKong_FreakOut1:
	db "GFX_DonkeyKong_FreakOut1.bin"
GFX_DonkeyKong_FreakOut1End:
GFX_DonkeyKong_FreakOut2:
	db "GFX_DonkeyKong_FreakOut2.bin"
GFX_DonkeyKong_FreakOut2End:
GFX_DonkeyKong_FreakOut3:
	db "GFX_DonkeyKong_FreakOut3.bin"
GFX_DonkeyKong_FreakOut3End:
GFX_DonkeyKong_FreakOut4:
	db "GFX_DonkeyKong_FreakOut4.bin"
GFX_DonkeyKong_FreakOut4End:
GFX_DonkeyKong_FreakOut5:
	db "GFX_DonkeyKong_FreakOut5.bin"
GFX_DonkeyKong_FreakOut5End:
GFX_DonkeyKong_FreakOut6:
	db "GFX_DonkeyKong_FreakOut6.bin"
GFX_DonkeyKong_FreakOut6End:
GFX_DonkeyKong_FreakOut7:
	db "GFX_DonkeyKong_FreakOut7.bin"
GFX_DonkeyKong_FreakOut7End:
GFX_DonkeyKong_FreakOut8:
	db "GFX_DonkeyKong_FreakOut8.bin"
GFX_DonkeyKong_FreakOut8End:
GFX_DonkeyKong_FreakOut9:
	db "GFX_DonkeyKong_FreakOut9.bin"
GFX_DonkeyKong_FreakOut9End:
GFX_DonkeyKong_FreakOut10:
	db "GFX_DonkeyKong_FreakOut10.bin"
GFX_DonkeyKong_FreakOut10End:
GFX_DonkeyKong_FreakOut11:
	db "GFX_DonkeyKong_FreakOut11.bin"
GFX_DonkeyKong_FreakOut11End:
GFX_DonkeyKong_FreakOut12:
	db "GFX_DonkeyKong_FreakOut12.bin"
GFX_DonkeyKong_FreakOut12End:
GFX_DonkeyKong_FreakOut13:
	db "GFX_DonkeyKong_FreakOut13.bin"
GFX_DonkeyKong_FreakOut13End:
GFX_DonkeyKong_FreakOut14:
	db "GFX_DonkeyKong_FreakOut14.bin"
GFX_DonkeyKong_FreakOut14End:
GFX_DonkeyKong_FreakOut15:
	db "GFX_DonkeyKong_FreakOut15.bin"
GFX_DonkeyKong_FreakOut15End:
GFX_DonkeyKong_FreakOut16:
	db "GFX_DonkeyKong_FreakOut16.bin"
GFX_DonkeyKong_FreakOut16End:
GFX_DonkeyKong_FreakOut17:
	db "GFX_DonkeyKong_FreakOut17.bin"
GFX_DonkeyKong_FreakOut17End:
GFX_DonkeyKong_FreakOut18:
	db "GFX_DonkeyKong_FreakOut18.bin"
GFX_DonkeyKong_FreakOut18End:
GFX_DonkeyKong_FreakOut19:
	db "GFX_DonkeyKong_FreakOut19.bin"
GFX_DonkeyKong_FreakOut19End:
GFX_DonkeyKong_FreakOut20:
	db "GFX_DonkeyKong_FreakOut20.bin"
GFX_DonkeyKong_FreakOut20End:
GFX_DonkeyKong_FreakOut21:
	db "GFX_DonkeyKong_FreakOut21.bin"
GFX_DonkeyKong_FreakOut21End:
GFX_DonkeyKong_FreakOut22:
	db "GFX_DonkeyKong_FreakOut22.bin"
GFX_DonkeyKong_FreakOut22End:
GFX_DonkeyKong_BeatChest1:
	db "GFX_DonkeyKong_BeatChest1.bin"
GFX_DonkeyKong_BeatChest1End:
GFX_DonkeyKong_BeatChest2:
	db "GFX_DonkeyKong_BeatChest2.bin"
GFX_DonkeyKong_BeatChest2End:
GFX_DonkeyKong_BeatChest3:
	db "GFX_DonkeyKong_BeatChest3.bin"
GFX_DonkeyKong_BeatChest3End:
GFX_DonkeyKong_BeatChest4:
	db "GFX_DonkeyKong_BeatChest4.bin"
GFX_DonkeyKong_BeatChest4End:
GFX_DonkeyKong_BeatChest5:
	db "GFX_DonkeyKong_BeatChest5.bin"
GFX_DonkeyKong_BeatChest5End:
GFX_DonkeyKong_BeatChest6:
	db "GFX_DonkeyKong_BeatChest6.bin"
GFX_DonkeyKong_BeatChest6End:
GFX_DonkeyKong_BeatChest7:
	db "GFX_DonkeyKong_BeatChest7.bin"
GFX_DonkeyKong_BeatChest7End:
GFX_DonkeyKong_BeatChest8:
	db "GFX_DonkeyKong_BeatChest8.bin"
GFX_DonkeyKong_BeatChest8End:
GFX_DonkeyKong_BeatChest9:
	db "GFX_DonkeyKong_BeatChest9.bin"
GFX_DonkeyKong_BeatChest9End:
GFX_DonkeyKong_BeatChest10:
	db "GFX_DonkeyKong_BeatChest10.bin"
GFX_DonkeyKong_BeatChest10End:
GFX_DonkeyKong_BeatChest11:
	db "GFX_DonkeyKong_BeatChest11.bin"
GFX_DonkeyKong_BeatChest11End:
GFX_DonkeyKong_BeatChest12:
	db "GFX_DonkeyKong_BeatChest12.bin"
GFX_DonkeyKong_BeatChest12End:
GFX_DonkeyKong_BeatChest13:
	db "GFX_DonkeyKong_BeatChest13.bin"
GFX_DonkeyKong_BeatChest13End:
GFX_DonkeyKong_BeatChest14:
	db "GFX_DonkeyKong_BeatChest14.bin"
GFX_DonkeyKong_BeatChest14End:
GFX_DonkeyKong_BeatChest15:
	db "GFX_DonkeyKong_BeatChest15.bin"
GFX_DonkeyKong_BeatChest15End:
GFX_DonkeyKong_BeatChest16:
	db "GFX_DonkeyKong_BeatChest16.bin"
GFX_DonkeyKong_BeatChest16End:
GFX_DonkeyKong_BeatChest17:
	db "GFX_DonkeyKong_BeatChest17.bin"
GFX_DonkeyKong_BeatChest17End:
GFX_DonkeyKong_BeatChest18:
	db "GFX_DonkeyKong_BeatChest18.bin"
GFX_DonkeyKong_BeatChest18End:
GFX_DonkeyKong_BeatChest19:
	db "GFX_DonkeyKong_BeatChest19.bin"
GFX_DonkeyKong_BeatChest19End:
GFX_DonkeyKong_BeatChest20:
	db "GFX_DonkeyKong_BeatChest20.bin"
GFX_DonkeyKong_BeatChest20End:
GFX_DonkeyKong_BeatChest21:
	db "GFX_DonkeyKong_BeatChest21.bin"
GFX_DonkeyKong_BeatChest21End:
GFX_DonkeyKong_BeatChest22:
	db "GFX_DonkeyKong_BeatChest22.bin"
GFX_DonkeyKong_BeatChest22End:
GFX_DonkeyKong_BeatChest23:
	db "GFX_DonkeyKong_BeatChest23.bin"
GFX_DonkeyKong_BeatChest23End:
GFX_DonkeyKong_BeatChest24:
	db "GFX_DonkeyKong_BeatChest24.bin"
GFX_DonkeyKong_BeatChest24End:
GFX_DonkeyKong_DropFromAbove1:
	db "GFX_DonkeyKong_DropFromAbove1.bin"
GFX_DonkeyKong_DropFromAbove1End:
GFX_DonkeyKong_DropFromAbove2:
	db "GFX_DonkeyKong_DropFromAbove2.bin"
GFX_DonkeyKong_DropFromAbove2End:
GFX_DonkeyKong_DropFromAbove3:
	db "GFX_DonkeyKong_DropFromAbove3.bin"
GFX_DonkeyKong_DropFromAbove3End:
GFX_DonkeyKong_DropFromAbove4:
	db "GFX_DonkeyKong_DropFromAbove4.bin"
GFX_DonkeyKong_DropFromAbove4End:
GFX_DonkeyKong_DropFromAbove5:
	db "GFX_DonkeyKong_DropFromAbove5.bin"
GFX_DonkeyKong_DropFromAbove5End:
GFX_DonkeyKong_DropFromAbove6:
	db "GFX_DonkeyKong_DropFromAbove6.bin"
GFX_DonkeyKong_DropFromAbove6End:
GFX_DonkeyKong_DropFromAbove7:
	db "GFX_DonkeyKong_DropFromAbove7.bin"
GFX_DonkeyKong_DropFromAbove7End:
GFX_DonkeyKong_DropFromAbove8:
	db "GFX_DonkeyKong_DropFromAbove8.bin"
GFX_DonkeyKong_DropFromAbove8End:
GFX_DonkeyKong_DropFromAbove9:
	db "GFX_DonkeyKong_DropFromAbove9.bin"
GFX_DonkeyKong_DropFromAbove9End:
GFX_DonkeyKong_DropFromAbove10:
	db "GFX_DonkeyKong_DropFromAbove10.bin"
GFX_DonkeyKong_DropFromAbove10End:
GFX_DonkeyKong_DropFromAbove11:
	db "GFX_DonkeyKong_DropFromAbove11.bin"
GFX_DonkeyKong_DropFromAbove11End:
GFX_DonkeyKong_DropFromAbove12:
	db "GFX_DonkeyKong_DropFromAbove12.bin"
GFX_DonkeyKong_DropFromAbove12End:
GFX_DonkeyKong_DropFromAbove13:
	db "GFX_DonkeyKong_DropFromAbove13.bin"
GFX_DonkeyKong_DropFromAbove13End:
GFX_DonkeyKong_DropFromAbove14:
	db "GFX_DonkeyKong_DropFromAbove14.bin"
GFX_DonkeyKong_DropFromAbove14End:
GFX_DonkeyKong_DropFromAbove15:
	db "GFX_DonkeyKong_DropFromAbove15.bin"
GFX_DonkeyKong_DropFromAbove15End:
GFX_DonkeyKong_DropFromAbove16:
	db "GFX_DonkeyKong_DropFromAbove16.bin"
GFX_DonkeyKong_DropFromAbove16End:
GFX_DonkeyKong_DropFromAbove17:
	db "GFX_DonkeyKong_DropFromAbove17.bin"
GFX_DonkeyKong_DropFromAbove17End:
GFX_DonkeyKong_DropFromAbove18:
	db "GFX_DonkeyKong_DropFromAbove18.bin"
GFX_DonkeyKong_DropFromAbove18End:
GFX_CrankyKong_ShakeCane1:
	db "GFX_CrankyKong_ShakeCane1.bin"
GFX_CrankyKong_ShakeCane1End:
GFX_CrankyKong_ShakeCane2:
	db "GFX_CrankyKong_ShakeCane2.bin"
GFX_CrankyKong_ShakeCane2End:
GFX_CrankyKong_ShakeCane3:
	db "GFX_CrankyKong_ShakeCane3.bin"
GFX_CrankyKong_ShakeCane3End:
GFX_CrankyKong_ShakeCane4:
	db "GFX_CrankyKong_ShakeCane4.bin"
GFX_CrankyKong_ShakeCane4End:
GFX_CrankyKong_ShakeCane5:
	db "GFX_CrankyKong_ShakeCane5.bin"
GFX_CrankyKong_ShakeCane5End:
GFX_CrankyKong_ShakeCane6:
	db "GFX_CrankyKong_ShakeCane6.bin"
GFX_CrankyKong_ShakeCane6End:
GFX_CrankyKong_ShakeCane7:
	db "GFX_CrankyKong_ShakeCane7.bin"
GFX_CrankyKong_ShakeCane7End:
GFX_CrankyKong_ShakeCane8:
	db "GFX_CrankyKong_ShakeCane8.bin"
GFX_CrankyKong_ShakeCane8End:
GFX_CrankyKong_ShakeCane9:
	db "GFX_CrankyKong_ShakeCane9.bin"
GFX_CrankyKong_ShakeCane9End:
GFX_CrankyKong_ShakeCane10:
	db "GFX_CrankyKong_ShakeCane10.bin"
GFX_CrankyKong_ShakeCane10End:
GFX_CrankyKong_ShakeCane11:
	db "GFX_CrankyKong_ShakeCane11.bin"
GFX_CrankyKong_ShakeCane11End:
GFX_CrankyKong_ShakeCane12:
	db "GFX_CrankyKong_ShakeCane12.bin"
GFX_CrankyKong_ShakeCane12End:
GFX_CrankyKong_HitWithCane1:
	db "GFX_CrankyKong_HitWithCane1.bin"
GFX_CrankyKong_HitWithCane1End:
GFX_CrankyKong_HitWithCane2:
	db "GFX_CrankyKong_HitWithCane2.bin"
GFX_CrankyKong_HitWithCane2End:
GFX_CrankyKong_HitWithCane3:
	db "GFX_CrankyKong_HitWithCane3.bin"
GFX_CrankyKong_HitWithCane3End:
GFX_CrankyKong_HitWithCane4:
	db "GFX_CrankyKong_HitWithCane4.bin"
GFX_CrankyKong_HitWithCane4End:
GFX_CrankyKong_HitWithCane5:
	db "GFX_CrankyKong_HitWithCane5.bin"
GFX_CrankyKong_HitWithCane5End:
GFX_CrankyKong_HitWithCane6:
	db "GFX_CrankyKong_HitWithCane6.bin"
GFX_CrankyKong_HitWithCane6End:
GFX_CrankyKong_HitWithCane7:
	db "GFX_CrankyKong_HitWithCane7.bin"
GFX_CrankyKong_HitWithCane7End:
GFX_KRoolsShip_AfterWorld6:
	db "GFX_KRoolsShip_AfterWorld6.bin"
GFX_KRoolsShip_AfterWorld6End:
GFX_KRoolsShip_AfterWorld5:
	db "GFX_KRoolsShip_AfterWorld5.bin"
GFX_KRoolsShip_AfterWorld5End:
GFX_KRoolsShip_AfterWorld4:
	db "GFX_KRoolsShip_AfterWorld4.bin"
GFX_KRoolsShip_AfterWorld4End:
GFX_KRoolsShip_AfterWorld3:
	db "GFX_KRoolsShip_AfterWorld3.bin"
GFX_KRoolsShip_AfterWorld3End:
GFX_KRoolsShip_AfterWorld2:
	db "GFX_KRoolsShip_AfterWorld2.bin"
GFX_KRoolsShip_AfterWorld2End:
GFX_KRoolsShip_AfterWorld1:
	db "GFX_KRoolsShip_AfterWorld1.bin"
GFX_KRoolsShip_AfterWorld1End:
GFX_BreakableWall_LeftFactoryWall:
	db "GFX_BreakableWall_LeftFactoryWall.bin"
GFX_BreakableWall_LeftFactoryWallEnd:
GFX_BreakableWall_Unknown3:
	db "GFX_BreakableWall_Unknown3.bin"
GFX_BreakableWall_Unknown3End:
GFX_BreakableWall_RightTempleWall:
	db "GFX_BreakableWall_RightTempleWall.bin"
GFX_BreakableWall_RightTempleWallEnd:
GFX_GroundCover_TempleLevel:
	db "GFX_GroundCover_TempleLevel.bin"
GFX_GroundCover_TempleLevelEnd:
GFX_GroundCover_FactoryLevel:
	db "GFX_GroundCover_FactoryLevel.bin"
GFX_GroundCover_FactoryLevelEnd:
GFX_OnBarrel_Pose:
	db "GFX_OnBarrel_Pose.bin"
GFX_OnBarrel_PoseEnd:
GFX_OffBarrel_Pose:
	db "GFX_OffBarrel_Pose.bin"
GFX_OffBarrel_PoseEnd:
GFX_EnemySpawnBarrel_Normal:
	db "GFX_EnemySpawnBarrel_Normal.bin"
GFX_EnemySpawnBarrel_NormalEnd:
GFX_EnemySpawnBarrel_Broken:
	db "GFX_EnemySpawnBarrel_Broken.bin"
GFX_EnemySpawnBarrel_BrokenEnd:
GFX_StopBarrel_Pose:
	db "GFX_StopBarrel_Pose.bin"
GFX_StopBarrel_PoseEnd:
GFX_DonkeyKong_Jump1:
	db "GFX_DonkeyKong_Jump1.bin"
GFX_DonkeyKong_Jump1End:
GFX_DonkeyKong_Jump2:
	db "GFX_DonkeyKong_Jump2.bin"
GFX_DonkeyKong_Jump2End:
GFX_DonkeyKong_Jump3:
	db "GFX_DonkeyKong_Jump3.bin"
GFX_DonkeyKong_Jump3End:
GFX_DonkeyKong_Jump4:
	db "GFX_DonkeyKong_Jump4.bin"
GFX_DonkeyKong_Jump4End:
GFX_DonkeyKong_Jump5:
	db "GFX_DonkeyKong_Jump5.bin"
GFX_DonkeyKong_Jump5End:
GFX_DonkeyKong_Jump6:
	db "GFX_DonkeyKong_Jump6.bin"
GFX_DonkeyKong_Jump6End:
GFX_DonkeyKong_Jump7:
	db "GFX_DonkeyKong_Jump7.bin"
GFX_DonkeyKong_Jump7End:
GFX_DonkeyKong_Jump8:
	db "GFX_DonkeyKong_Jump8.bin"
GFX_DonkeyKong_Jump8End:
GFX_DonkeyKong_Jump9:
	db "GFX_DonkeyKong_Jump9.bin"
GFX_DonkeyKong_Jump9End:
GFX_DonkeyKong_Jump10:
	db "GFX_DonkeyKong_Jump10.bin"
GFX_DonkeyKong_Jump10End:
GFX_DonkeyKong_Jump11:
	db "GFX_DonkeyKong_Jump11.bin"
GFX_DonkeyKong_Jump11End:
GFX_DonkeyKong_Land1:
	db "GFX_DonkeyKong_Land1.bin"
GFX_DonkeyKong_Land1End:
GFX_DonkeyKong_Land2:
	db "GFX_DonkeyKong_Land2.bin"
GFX_DonkeyKong_Land2End:
GFX_DonkeyKong_Land3:
	db "GFX_DonkeyKong_Land3.bin"
GFX_DonkeyKong_Land3End:
GFX_DonkeyKong_Land4:
	db "GFX_DonkeyKong_Land4.bin"
GFX_DonkeyKong_Land4End:
GFX_DonkeyKong_Land5:
	db "GFX_DonkeyKong_Land5.bin"
GFX_DonkeyKong_Land5End:
GFX_DonkeyKong_Land6:
	db "GFX_DonkeyKong_Land6.bin"
GFX_DonkeyKong_Land6End:
GFX_DonkeyKong_Land7:
	db "GFX_DonkeyKong_Land7.bin"
GFX_DonkeyKong_Land7End:
GFX_DonkeyKong_Land8:
	db "GFX_DonkeyKong_Land8.bin"
GFX_DonkeyKong_Land8End:
GFX_DonkeyKong_Land9:
	db "GFX_DonkeyKong_Land9.bin"
GFX_DonkeyKong_Land9End:
GFX_OilFire_Idle1:
	db "GFX_OilFire_Idle1.bin"
GFX_OilFire_Idle1End:
GFX_OilFire_Idle2:
	db "GFX_OilFire_Idle2.bin"
GFX_OilFire_Idle2End:
GFX_OilFire_Idle3:
	db "GFX_OilFire_Idle3.bin"
GFX_OilFire_Idle3End:
GFX_OilFire_Idle4:
	db "GFX_OilFire_Idle4.bin"
GFX_OilFire_Idle4End:
GFX_OilFire_Idle5:
	db "GFX_OilFire_Idle5.bin"
GFX_OilFire_Idle5End:
GFX_OilFire_Idle6:
	db "GFX_OilFire_Idle6.bin"
GFX_OilFire_Idle6End:
GFX_OilFire_Idle7:
	db "GFX_OilFire_Idle7.bin"
GFX_OilFire_Idle7End:
GFX_OilFire_Idle8:
	db "GFX_OilFire_Idle8.bin"
GFX_OilFire_Idle8End:
GFX_OilFire_Idle9:
	db "GFX_OilFire_Idle9.bin"
GFX_OilFire_Idle9End:
GFX_OilFire_Idle10:
	db "GFX_OilFire_Idle10.bin"
GFX_OilFire_Idle10End:
GFX_OilFire_Idle11:
	db "GFX_OilFire_Idle11.bin"
GFX_OilFire_Idle11End:
GFX_OilFire_Idle12:
	db "GFX_OilFire_Idle12.bin"
GFX_OilFire_Idle12End:
GFX_OilFire_Idle13:
	db "GFX_OilFire_Idle13.bin"
GFX_OilFire_Idle13End:
GFX_OilFire_Idle14:
	db "GFX_OilFire_Idle14.bin"
GFX_OilFire_Idle14End:
GFX_OilFire_Idle15:
	db "GFX_OilFire_Idle15.bin"
GFX_OilFire_Idle15End:
GFX_OilFire_Idle16:
	db "GFX_OilFire_Idle16.bin"
GFX_OilFire_Idle16End:
GFX_Rockkroc_Run1:
	db "GFX_Rockkroc_Run1.bin"
GFX_Rockkroc_Run1End:
GFX_Rockkroc_Run2:
	db "GFX_Rockkroc_Run2.bin"
GFX_Rockkroc_Run2End:
GFX_Rockkroc_Run3:
	db "GFX_Rockkroc_Run3.bin"
GFX_Rockkroc_Run3End:
GFX_Rockkroc_Run4:
	db "GFX_Rockkroc_Run4.bin"
GFX_Rockkroc_Run4End:
GFX_Rockkroc_Run5:
	db "GFX_Rockkroc_Run5.bin"
GFX_Rockkroc_Run5End:
GFX_Rockkroc_Run6:
	db "GFX_Rockkroc_Run6.bin"
GFX_Rockkroc_Run6End:
GFX_Rockkroc_Run7:
	db "GFX_Rockkroc_Run7.bin"
GFX_Rockkroc_Run7End:
GFX_Rockkroc_Run8:
	db "GFX_Rockkroc_Run8.bin"
GFX_Rockkroc_Run8End:
GFX_FueledPlatform_ZeroLights:
	db "GFX_FueledPlatform_ZeroLights.bin"
GFX_FueledPlatform_ZeroLightsEnd:
GFX_FueledPlatform_OneLight:
	db "GFX_FueledPlatform_OneLight.bin"
GFX_FueledPlatform_OneLightEnd:
GFX_FueledPlatform_TwoLights:
	db "GFX_FueledPlatform_TwoLights.bin"
GFX_FueledPlatform_TwoLightsEnd:
GFX_FueledPlatform_ThreeLights:
	db "GFX_FueledPlatform_ThreeLights.bin"
GFX_FueledPlatform_ThreeLightsEnd:
GFX_FueledPlatform_FourLights:
	db "GFX_FueledPlatform_FourLights.bin"
GFX_FueledPlatform_FourLightsEnd:
GFX_FueledPlatform_FiveLights:
	db "GFX_FueledPlatform_FiveLights.bin"
GFX_FueledPlatform_FiveLightsEnd:
GFX_Clambo_SpitPearl1:
	db "GFX_Clambo_SpitPearl1.bin"
GFX_Clambo_SpitPearl1End:
GFX_Clambo_SpitPearl2:
	db "GFX_Clambo_SpitPearl2.bin"
GFX_Clambo_SpitPearl2End:
GFX_Clambo_SpitPearl3:
	db "GFX_Clambo_SpitPearl3.bin"
GFX_Clambo_SpitPearl3End:
GFX_Clambo_SpitPearl4:
	db "GFX_Clambo_SpitPearl4.bin"
GFX_Clambo_SpitPearl4End:
GFX_Clambo_SpitPearl5:
	db "GFX_Clambo_SpitPearl5.bin"
GFX_Clambo_SpitPearl5End:
GFX_Clambo_SpitPearl6:
	db "GFX_Clambo_SpitPearl6.bin"
GFX_Clambo_SpitPearl6End:
GFX_Clambo_SpitPearl7:
	db "GFX_Clambo_SpitPearl7.bin"
GFX_Clambo_SpitPearl7End:
GFX_Clambo_SpitPearl8:
	db "GFX_Clambo_SpitPearl8.bin"
GFX_Clambo_SpitPearl8End:
GFX_Clambo_SpitPearl9:
	db "GFX_Clambo_SpitPearl9.bin"
GFX_Clambo_SpitPearl9End:
GFX_Clambo_SpitPearl10:
	db "GFX_Clambo_SpitPearl10.bin"
GFX_Clambo_SpitPearl10End:
GFX_Clambo_SpitPearl11:
	db "GFX_Clambo_SpitPearl11.bin"
GFX_Clambo_SpitPearl11End:
GFX_Tire_Roll1:
	db "GFX_Tire_Roll1.bin"
GFX_Tire_Roll1End:
GFX_Tire_Roll2:
	db "GFX_Tire_Roll2.bin"
GFX_Tire_Roll2End:
GFX_Tire_Roll3:
	db "GFX_Tire_Roll3.bin"
GFX_Tire_Roll3End:
GFX_Tire_Roll4:
	db "GFX_Tire_Roll4.bin"
GFX_Tire_Roll4End:
GFX_Tire_Roll5:
	db "GFX_Tire_Roll5.bin"
GFX_Tire_Roll5End:
GFX_Tire_Roll6:
	db "GFX_Tire_Roll6.bin"
GFX_Tire_Roll6End:
GFX_Tire_Roll7:
	db "GFX_Tire_Roll7.bin"
GFX_Tire_Roll7End:
GFX_Tire_Roll8:
	db "GFX_Tire_Roll8.bin"
GFX_Tire_Roll8End:
GFX_CandyKong_Swoon1:
	db "GFX_CandyKong_Swoon1.bin"
GFX_CandyKong_Swoon1End:
GFX_CandyKong_Swoon2:
	db "GFX_CandyKong_Swoon2.bin"
GFX_CandyKong_Swoon2End:
GFX_CandyKong_Swoon3:
	db "GFX_CandyKong_Swoon3.bin"
GFX_CandyKong_Swoon3End:
GFX_CandyKong_Swoon4:
	db "GFX_CandyKong_Swoon4.bin"
GFX_CandyKong_Swoon4End:
GFX_CandyKong_Swoon5:
	db "GFX_CandyKong_Swoon5.bin"
GFX_CandyKong_Swoon5End:
GFX_CandyKong_Swoon6:
	db "GFX_CandyKong_Swoon6.bin"
GFX_CandyKong_Swoon6End:
GFX_CandyKong_Swoon7:
	db "GFX_CandyKong_Swoon7.bin"
GFX_CandyKong_Swoon7End:
GFX_CandyKong_Swoon8:
	db "GFX_CandyKong_Swoon8.bin"
GFX_CandyKong_Swoon8End:
GFX_CandyKong_Swoon9:
	db "GFX_CandyKong_Swoon9.bin"
GFX_CandyKong_Swoon9End:
GFX_CandyKong_Swoon10:
	db "GFX_CandyKong_Swoon10.bin"
GFX_CandyKong_Swoon10End:
GFX_CandyKong_Swoon11:
	db "GFX_CandyKong_Swoon11.bin"
GFX_CandyKong_Swoon11End:
GFX_Diddy_Hurt17:
	db "GFX_Diddy_Hurt17.bin"
GFX_Diddy_Hurt17End:
GFX_DonkeyKong_Failure1:
	db "GFX_DonkeyKong_Failure1.bin"
GFX_DonkeyKong_Failure1End:
GFX_DonkeyKong_Failure2:
	db "GFX_DonkeyKong_Failure2.bin"
GFX_DonkeyKong_Failure2End:
GFX_DonkeyKong_Failure3:
	db "GFX_DonkeyKong_Failure3.bin"
GFX_DonkeyKong_Failure3End:
GFX_DonkeyKong_Failure4:
	db "GFX_DonkeyKong_Failure4.bin"
GFX_DonkeyKong_Failure4End:
GFX_DonkeyKong_Failure5:
	db "GFX_DonkeyKong_Failure5.bin"
GFX_DonkeyKong_Failure5End:
GFX_DonkeyKong_Failure6:
	db "GFX_DonkeyKong_Failure6.bin"
GFX_DonkeyKong_Failure6End:
GFX_DonkeyKong_Failure7:
	db "GFX_DonkeyKong_Failure7.bin"
GFX_DonkeyKong_Failure7End:
GFX_DonkeyKong_Failure8:
	db "GFX_DonkeyKong_Failure8.bin"
GFX_DonkeyKong_Failure8End:
GFX_DonkeyKong_Failure9:
	db "GFX_DonkeyKong_Failure9.bin"
GFX_DonkeyKong_Failure9End:
GFX_DonkeyKong_Failure10:
	db "GFX_DonkeyKong_Failure10.bin"
GFX_DonkeyKong_Failure10End:
GFX_DonkeyKong_Failure11:
	db "GFX_DonkeyKong_Failure11.bin"
GFX_DonkeyKong_Failure11End:
GFX_DonkeyKong_Failure12:
	db "GFX_DonkeyKong_Failure12.bin"
GFX_DonkeyKong_Failure12End:
GFX_DonkeyKong_Failure13:
	db "GFX_DonkeyKong_Failure13.bin"
GFX_DonkeyKong_Failure13End:
GFX_Diddy_Bounce1:
	db "GFX_Diddy_Bounce1.bin"
GFX_Diddy_Bounce1End:
GFX_Diddy_Bounce2:
	db "GFX_Diddy_Bounce2.bin"
GFX_Diddy_Bounce2End:
GFX_Diddy_Bounce3:
	db "GFX_Diddy_Bounce3.bin"
GFX_Diddy_Bounce3End:
GFX_Diddy_Bounce4:
	db "GFX_Diddy_Bounce4.bin"
GFX_Diddy_Bounce4End:
GFX_Diddy_Bounce5:
	db "GFX_Diddy_Bounce5.bin"
GFX_Diddy_Bounce5End:
GFX_Diddy_Bounce6:
	db "GFX_Diddy_Bounce6.bin"
GFX_Diddy_Bounce6End:
GFX_Diddy_Bounce7:
	db "GFX_Diddy_Bounce7.bin"
GFX_Diddy_Bounce7End:
GFX_Diddy_Bounce8:
	db "GFX_Diddy_Bounce8.bin"
GFX_Diddy_Bounce8End:
GFX_Diddy_Bounce9:
	db "GFX_Diddy_Bounce9.bin"
GFX_Diddy_Bounce9End:
GFX_Diddy_Bounce10:
	db "GFX_Diddy_Bounce10.bin"
GFX_Diddy_Bounce10End:
GFX_Diddy_Bounce11:
	db "GFX_Diddy_Bounce11.bin"
GFX_Diddy_Bounce11End:
GFX_Diddy_Bounce12:
	db "GFX_Diddy_Bounce12.bin"
GFX_Diddy_Bounce12End:
GFX_Diddy_Bounce13:
	db "GFX_Diddy_Bounce13.bin"
GFX_Diddy_Bounce13End:
GFX_Diddy_Bounce14:
	db "GFX_Diddy_Bounce14.bin"
GFX_Diddy_Bounce14End:
GFX_Diddy_Bounce15:
	db "GFX_Diddy_Bounce15.bin"
GFX_Diddy_Bounce15End:
GFX_Diddy_Bounce16:
	db "GFX_Diddy_Bounce16.bin"
GFX_Diddy_Bounce16End:
GFX_Diddy_Bounce17:
	db "GFX_Diddy_Bounce17.bin"
GFX_Diddy_Bounce17End:
GFX_Diddy_Bounce18:
	db "GFX_Diddy_Bounce18.bin"
GFX_Diddy_Bounce18End:
GFX_BrokenPhonographBoard_Pose1:
	db "GFX_BrokenPhonographBoard_Pose1.bin"
GFX_BrokenPhonographBoard_Pose1End:
GFX_BrokenPhonographBoard_Pose2:
	db "GFX_BrokenPhonographBoard_Pose2.bin"
GFX_BrokenPhonographBoard_Pose2End:
GFX_BrokenPhonographBoard_Pose3:
	db "GFX_BrokenPhonographBoard_Pose3.bin"
GFX_BrokenPhonographBoard_Pose3End:
GFX_BrokenPhonographBoard_Pose4:
	db "GFX_BrokenPhonographBoard_Pose4.bin"
GFX_BrokenPhonographBoard_Pose4End:
GFX_BrokenPhonographBoard_Pose5:
	db "GFX_BrokenPhonographBoard_Pose5.bin"
GFX_BrokenPhonographBoard_Pose5End:
GFX_BrokenPhonographBoard_Pose6:
	db "GFX_BrokenPhonographBoard_Pose6.bin"
GFX_BrokenPhonographBoard_Pose6End:
GFX_BrokenPhonographBoard_Pose7:
	db "GFX_BrokenPhonographBoard_Pose7.bin"
GFX_BrokenPhonographBoard_Pose7End:
GFX_BrokenPhonographBoard_Pose8:
	db "GFX_BrokenPhonographBoard_Pose8.bin"
GFX_BrokenPhonographBoard_Pose8End:
GFX_CavePlatform_Pose:
	db "GFX_CavePlatform_Pose.bin"
GFX_CavePlatform_PoseEnd:
GFX_MinePlatform_Pose:
	db "GFX_MinePlatform_Pose.bin"
GFX_MinePlatform_PoseEnd:
GFX_Diddy_RideAnimalBuddy1:
	db "GFX_Diddy_RideAnimalBuddy1.bin"
GFX_Diddy_RideAnimalBuddy1End:
GFX_Diddy_RideAnimalBuddy2:
	db "GFX_Diddy_RideAnimalBuddy2.bin"
GFX_Diddy_RideAnimalBuddy2End:
GFX_Diddy_RideAnimalBuddy3:
	db "GFX_Diddy_RideAnimalBuddy3.bin"
GFX_Diddy_RideAnimalBuddy3End:
GFX_Diddy_RideAnimalBuddy4:
	db "GFX_Diddy_RideAnimalBuddy4.bin"
GFX_Diddy_RideAnimalBuddy4End:
GFX_Diddy_RideAnimalBuddy5:
	db "GFX_Diddy_RideAnimalBuddy5.bin"
GFX_Diddy_RideAnimalBuddy5End:
GFX_Diddy_Unknown1Pose1:
	db "GFX_Diddy_Unknown1Pose1.bin"
GFX_Diddy_Unknown1Pose1End:
GFX_Diddy_Unknown1Pose2:
	db "GFX_Diddy_Unknown1Pose2.bin"
GFX_Diddy_Unknown1Pose2End:
GFX_Diddy_Unknown1Pose3:
	db "GFX_Diddy_Unknown1Pose3.bin"
GFX_Diddy_Unknown1Pose3End:
GFX_Diddy_Unknown1Pose4:
	db "GFX_Diddy_Unknown1Pose4.bin"
GFX_Diddy_Unknown1Pose4End:
GFX_DonkeyKong_Unknown4Pose1:
	db "GFX_DonkeyKong_Unknown4Pose1.bin"
GFX_DonkeyKong_Unknown4Pose1End:
GFX_DonkeyKong_Unknown4Pose2:
	db "GFX_DonkeyKong_Unknown4Pose2.bin"
GFX_DonkeyKong_Unknown4Pose2End:
GFX_DonkeyKong_HoldWalk1:
	db "GFX_DonkeyKong_HoldWalk1.bin"
GFX_DonkeyKong_HoldWalk1End:
GFX_DonkeyKong_HoldWalk2:
	db "GFX_DonkeyKong_HoldWalk2.bin"
GFX_DonkeyKong_HoldWalk2End:
GFX_DonkeyKong_HoldWalk3:
	db "GFX_DonkeyKong_HoldWalk3.bin"
GFX_DonkeyKong_HoldWalk3End:
GFX_DonkeyKong_HoldWalk4:
	db "GFX_DonkeyKong_HoldWalk4.bin"
GFX_DonkeyKong_HoldWalk4End:
GFX_DonkeyKong_HoldWalk5:
	db "GFX_DonkeyKong_HoldWalk5.bin"
GFX_DonkeyKong_HoldWalk5End:
GFX_DonkeyKong_HoldWalk6:
	db "GFX_DonkeyKong_HoldWalk6.bin"
GFX_DonkeyKong_HoldWalk6End:
GFX_DonkeyKong_HoldWalk7:
	db "GFX_DonkeyKong_HoldWalk7.bin"
GFX_DonkeyKong_HoldWalk7End:
GFX_DonkeyKong_HoldWalk8:
	db "GFX_DonkeyKong_HoldWalk8.bin"
GFX_DonkeyKong_HoldWalk8End:
GFX_DonkeyKong_HoldWalk9:
	db "GFX_DonkeyKong_HoldWalk9.bin"
GFX_DonkeyKong_HoldWalk9End:
GFX_DonkeyKong_HoldWalk10:
	db "GFX_DonkeyKong_HoldWalk10.bin"
GFX_DonkeyKong_HoldWalk10End:
GFX_DonkeyKong_HoldWalk11:
	db "GFX_DonkeyKong_HoldWalk11.bin"
GFX_DonkeyKong_HoldWalk11End:
GFX_DonkeyKong_HoldWalk12:
	db "GFX_DonkeyKong_HoldWalk12.bin"
GFX_DonkeyKong_HoldWalk12End:
GFX_DonkeyKong_HoldWalk13:
	db "GFX_DonkeyKong_HoldWalk13.bin"
GFX_DonkeyKong_HoldWalk13End:
GFX_LifeBalloon_Unknown:
	db "GFX_LifeBalloon_Unknown.bin"
GFX_LifeBalloon_UnknownEnd:
GFX_KRool_Jump1:
	db "GFX_KRool_Jump1.bin"
GFX_KRool_Jump1End:
GFX_KRool_Jump2:
	db "GFX_KRool_Jump2.bin"
GFX_KRool_Jump2End:
GFX_KRool_Jump3:
	db "GFX_KRool_Jump3.bin"
GFX_KRool_Jump3End:
GFX_KRool_Jump4:
	db "GFX_KRool_Jump4.bin"
GFX_KRool_Jump4End:
GFX_KRool_Jump5:
	db "GFX_KRool_Jump5.bin"
GFX_KRool_Jump5End:
GFX_KRool_Jump6:
	db "GFX_KRool_Jump6.bin"
GFX_KRool_Jump6End:
GFX_DonkeyKong_EnterCrawlSpace1:
	db "GFX_DonkeyKong_EnterCrawlSpace1.bin"
GFX_DonkeyKong_EnterCrawlSpace1End:
GFX_DonkeyKong_EnterCrawlSpace2:
	db "GFX_DonkeyKong_EnterCrawlSpace2.bin"
GFX_DonkeyKong_EnterCrawlSpace2End:
GFX_DonkeyKong_EnterCrawlSpace3:
	db "GFX_DonkeyKong_EnterCrawlSpace3.bin"
GFX_DonkeyKong_EnterCrawlSpace3End:
GFX_DonkeyKong_EnterCrawlSpace4:
	db "GFX_DonkeyKong_EnterCrawlSpace4.bin"
GFX_DonkeyKong_EnterCrawlSpace4End:
GFX_DonkeyKong_Crawling1:
	db "GFX_DonkeyKong_Crawling1.bin"
GFX_DonkeyKong_Crawling1End:
GFX_DonkeyKong_Crawling2:
	db "GFX_DonkeyKong_Crawling2.bin"
GFX_DonkeyKong_Crawling2End:
GFX_DonkeyKong_Crawling3:
	db "GFX_DonkeyKong_Crawling3.bin"
GFX_DonkeyKong_Crawling3End:
GFX_DonkeyKong_Crawling4:
	db "GFX_DonkeyKong_Crawling4.bin"
GFX_DonkeyKong_Crawling4End:
GFX_DonkeyKong_Crawling5:
	db "GFX_DonkeyKong_Crawling5.bin"
GFX_DonkeyKong_Crawling5End:
GFX_DonkeyKong_Crawling6:
	db "GFX_DonkeyKong_Crawling6.bin"
GFX_DonkeyKong_Crawling6End:
GFX_DonkeyKong_Crawling7:
	db "GFX_DonkeyKong_Crawling7.bin"
GFX_DonkeyKong_Crawling7End:
GFX_DonkeyKong_Crawling8:
	db "GFX_DonkeyKong_Crawling8.bin"
GFX_DonkeyKong_Crawling8End:
GFX_DonkeyKong_Crawling9:
	db "GFX_DonkeyKong_Crawling9.bin"
GFX_DonkeyKong_Crawling9End:
GFX_DonkeyKong_Crawling10:
	db "GFX_DonkeyKong_Crawling10.bin"
GFX_DonkeyKong_Crawling10End:
GFX_DonkeyKong_Crawling11:
	db "GFX_DonkeyKong_Crawling11.bin"
GFX_DonkeyKong_Crawling11End:
GFX_DonkeyKong_Crawling12:
	db "GFX_DonkeyKong_Crawling12.bin"
GFX_DonkeyKong_Crawling12End:
GFX_DonkeyKong_Crawling13:
	db "GFX_DonkeyKong_Crawling13.bin"
GFX_DonkeyKong_Crawling13End:
GFX_DonkeyKong_Crawling14:
	db "GFX_DonkeyKong_Crawling14.bin"
GFX_DonkeyKong_Crawling14End:
GFX_DonkeyKong_Crawling15:
	db "GFX_DonkeyKong_Crawling15.bin"
GFX_DonkeyKong_Crawling15End:
GFX_DonkeyKong_Crawling16:
	db "GFX_DonkeyKong_Crawling16.bin"
GFX_DonkeyKong_Crawling16End:
GFX_DonkeyKong_Crawling17:
	db "GFX_DonkeyKong_Crawling17.bin"
GFX_DonkeyKong_Crawling17End:
GFX_DonkeyKong_Crawling18:
	db "GFX_DonkeyKong_Crawling18.bin"
GFX_DonkeyKong_Crawling18End:
GFX_DonkeyKong_Crawling19:
	db "GFX_DonkeyKong_Crawling19.bin"
GFX_DonkeyKong_Crawling19End:
GFX_DonkeyKong_Crawling20:
	db "GFX_DonkeyKong_Crawling20.bin"
GFX_DonkeyKong_Crawling20End:
GFX_MasterNeckysNut_Pose1:
	db "GFX_MasterNeckysNut_Pose1.bin"
GFX_MasterNeckysNut_Pose1End:
GFX_MasterNeckysNut_Pose2:
	db "GFX_MasterNeckysNut_Pose2.bin"
GFX_MasterNeckysNut_Pose2End:
GFX_MasterNeckysNut_Pose3:
	db "GFX_MasterNeckysNut_Pose3.bin"
GFX_MasterNeckysNut_Pose3End:
GFX_MasterNeckysNut_Pose4:
	db "GFX_MasterNeckysNut_Pose4.bin"
GFX_MasterNeckysNut_Pose4End:
GFX_MasterNeckysNut_Pose5:
	db "GFX_MasterNeckysNut_Pose5.bin"
GFX_MasterNeckysNut_Pose5End:
GFX_Diddy_BePranked1:
	db "GFX_Diddy_BePranked1.bin"
GFX_Diddy_BePranked1End:
GFX_Diddy_BePranked2:
	db "GFX_Diddy_BePranked2.bin"
GFX_Diddy_BePranked2End:
GFX_Diddy_BePranked3:
	db "GFX_Diddy_BePranked3.bin"
GFX_Diddy_BePranked3End:
GFX_Diddy_BePranked4:
	db "GFX_Diddy_BePranked4.bin"
GFX_Diddy_BePranked4End:
GFX_Diddy_BePranked5:
	db "GFX_Diddy_BePranked5.bin"
GFX_Diddy_BePranked5End:
GFX_Diddy_BePranked6:
	db "GFX_Diddy_BePranked6.bin"
GFX_Diddy_BePranked6End:
GFX_Diddy_BePranked7:
	db "GFX_Diddy_BePranked7.bin"
GFX_Diddy_BePranked7End:
GFX_Diddy_BePranked8:
	db "GFX_Diddy_BePranked8.bin"
GFX_Diddy_BePranked8End:
GFX_Diddy_BePranked9:
	db "GFX_Diddy_BePranked9.bin"
GFX_Diddy_BePranked9End:
GFX_Diddy_BePranked10:
	db "GFX_Diddy_BePranked10.bin"
GFX_Diddy_BePranked10End:
GFX_Diddy_BePranked11:
	db "GFX_Diddy_BePranked11.bin"
GFX_Diddy_BePranked11End:
GFX_Diddy_BePranked12:
	db "GFX_Diddy_BePranked12.bin"
GFX_Diddy_BePranked12End:
GFX_Diddy_BePranked13:
	db "GFX_Diddy_BePranked13.bin"
GFX_Diddy_BePranked13End:
GFX_Diddy_BePranked14:
	db "GFX_Diddy_BePranked14.bin"
GFX_Diddy_BePranked14End:
GFX_Diddy_BePranked15:
	db "GFX_Diddy_BePranked15.bin"
GFX_Diddy_BePranked15End:
GFX_Diddy_BePranked16:
	db "GFX_Diddy_BePranked16.bin"
GFX_Diddy_BePranked16End:
GFX_Diddy_BePranked17:
	db "GFX_Diddy_BePranked17.bin"
GFX_Diddy_BePranked17End:
GFX_Diddy_BePranked18:
	db "GFX_Diddy_BePranked18.bin"
GFX_Diddy_BePranked18End:
GFX_Diddy_BePranked19:
	db "GFX_Diddy_BePranked19.bin"
GFX_Diddy_BePranked19End:
GFX_Diddy_BePranked20:
	db "GFX_Diddy_BePranked20.bin"
GFX_Diddy_BePranked20End:
GFX_Diddy_BePranked21:
	db "GFX_Diddy_BePranked21.bin"
GFX_Diddy_BePranked21End:
GFX_Diddy_BePranked22:
	db "GFX_Diddy_BePranked22.bin"
GFX_Diddy_BePranked22End:
GFX_Diddy_BePranked23:
	db "GFX_Diddy_BePranked23.bin"
GFX_Diddy_BePranked23End:
GFX_Diddy_BePranked24:
	db "GFX_Diddy_BePranked24.bin"
GFX_Diddy_BePranked24End:
GFX_Diddy_BePranked25:
	db "GFX_Diddy_BePranked25.bin"
GFX_Diddy_BePranked25End:
GFX_Diddy_BiteDKsFinger1:
	db "GFX_Diddy_BiteDKsFinger1.bin"
GFX_Diddy_BiteDKsFinger1End:
GFX_Diddy_BiteDKsFinger2:
	db "GFX_Diddy_BiteDKsFinger2.bin"
GFX_Diddy_BiteDKsFinger2End:
GFX_Diddy_BiteDKsFinger3:
	db "GFX_Diddy_BiteDKsFinger3.bin"
GFX_Diddy_BiteDKsFinger3End:
GFX_Diddy_BiteDKsFinger4:
	db "GFX_Diddy_BiteDKsFinger4.bin"
GFX_Diddy_BiteDKsFinger4End:
GFX_Diddy_BiteDKsFinger5:
	db "GFX_Diddy_BiteDKsFinger5.bin"
GFX_Diddy_BiteDKsFinger5End:
GFX_Diddy_BiteDKsFinger6:
	db "GFX_Diddy_BiteDKsFinger6.bin"
GFX_Diddy_BiteDKsFinger6End:
GFX_Diddy_BiteDKsFinger7:
	db "GFX_Diddy_BiteDKsFinger7.bin"
GFX_Diddy_BiteDKsFinger7End:
GFX_Diddy_BiteDKsFinger8:
	db "GFX_Diddy_BiteDKsFinger8.bin"
GFX_Diddy_BiteDKsFinger8End:
GFX_Diddy_BiteDKsFinger9:
	db "GFX_Diddy_BiteDKsFinger9.bin"
GFX_Diddy_BiteDKsFinger9End:
GFX_Diddy_BiteDKsFinger10:
	db "GFX_Diddy_BiteDKsFinger10.bin"
GFX_Diddy_BiteDKsFinger10End:
GFX_Diddy_BiteDKsFinger11:
	db "GFX_Diddy_BiteDKsFinger11.bin"
GFX_Diddy_BiteDKsFinger11End:
GFX_Diddy_BiteDKsFinger12:
	db "GFX_Diddy_BiteDKsFinger12.bin"
GFX_Diddy_BiteDKsFinger12End:
GFX_Diddy_BiteDKsFinger13:
	db "GFX_Diddy_BiteDKsFinger13.bin"
GFX_Diddy_BiteDKsFinger13End:
GFX_Diddy_BiteDKsFinger14:
	db "GFX_Diddy_BiteDKsFinger14.bin"
GFX_Diddy_BiteDKsFinger14End:
GFX_Diddy_BiteDKsFinger15:
	db "GFX_Diddy_BiteDKsFinger15.bin"
GFX_Diddy_BiteDKsFinger15End:
GFX_Diddy_BiteDKsFinger16:
	db "GFX_Diddy_BiteDKsFinger16.bin"
GFX_Diddy_BiteDKsFinger16End:
GFX_Diddy_BiteDKsFinger17:
	db "GFX_Diddy_BiteDKsFinger17.bin"
GFX_Diddy_BiteDKsFinger17End:
GFX_Diddy_BiteDKsFinger18:
	db "GFX_Diddy_BiteDKsFinger18.bin"
GFX_Diddy_BiteDKsFinger18End:
GFX_Diddy_BiteDKsFinger19:
	db "GFX_Diddy_BiteDKsFinger19.bin"
GFX_Diddy_BiteDKsFinger19End:
GFX_Diddy_BiteDKsFinger20:
	db "GFX_Diddy_BiteDKsFinger20.bin"
GFX_Diddy_BiteDKsFinger20End:
GFX_Diddy_BiteDKsFinger21:
	db "GFX_Diddy_BiteDKsFinger21.bin"
GFX_Diddy_BiteDKsFinger21End:
GFX_Diddy_BiteDKsFinger22:
	db "GFX_Diddy_BiteDKsFinger22.bin"
GFX_Diddy_BiteDKsFinger22End:
GFX_Diddy_BiteDKsFinger23:
	db "GFX_Diddy_BiteDKsFinger23.bin"
GFX_Diddy_BiteDKsFinger23End:
GFX_Diddy_BiteDKsFinger24:
	db "GFX_Diddy_BiteDKsFinger24.bin"
GFX_Diddy_BiteDKsFinger24End:
GFX_Diddy_BiteDKsFinger25:
	db "GFX_Diddy_BiteDKsFinger25.bin"
GFX_Diddy_BiteDKsFinger25End:
GFX_Diddy_BiteDKsFinger26:
	db "GFX_Diddy_BiteDKsFinger26.bin"
GFX_Diddy_BiteDKsFinger26End:
GFX_Diddy_BiteDKsFinger27:
	db "GFX_Diddy_BiteDKsFinger27.bin"
GFX_Diddy_BiteDKsFinger27End:
GFX_Diddy_BiteDKsFinger28:
	db "GFX_Diddy_BiteDKsFinger28.bin"
GFX_Diddy_BiteDKsFinger28End:
GFX_MapDonkeyKong_Jump1:
	db "GFX_MapDonkeyKong_Jump1.bin"
GFX_MapDonkeyKong_Jump1End:
GFX_MapDonkeyKong_Jump2:
	db "GFX_MapDonkeyKong_Jump2.bin"
GFX_MapDonkeyKong_Jump2End:
GFX_MapDonkeyKong_Jump3:
	db "GFX_MapDonkeyKong_Jump3.bin"
GFX_MapDonkeyKong_Jump3End:
GFX_MapDonkeyKong_Jump4:
	db "GFX_MapDonkeyKong_Jump4.bin"
GFX_MapDonkeyKong_Jump4End:
GFX_MapDonkeyKong_Jump5:
	db "GFX_MapDonkeyKong_Jump5.bin"
GFX_MapDonkeyKong_Jump5End:
GFX_MapDonkeyKong_Jump6:
	db "GFX_MapDonkeyKong_Jump6.bin"
GFX_MapDonkeyKong_Jump6End:
GFX_MapDonkeyKong_Jump7:
	db "GFX_MapDonkeyKong_Jump7.bin"
GFX_MapDonkeyKong_Jump7End:
GFX_MapDonkeyKong_Jump8:
	db "GFX_MapDonkeyKong_Jump8.bin"
GFX_MapDonkeyKong_Jump8End:
GFX_MapDonkeyKong_Jump9:
	db "GFX_MapDonkeyKong_Jump9.bin"
GFX_MapDonkeyKong_Jump9End:
GFX_MapDonkeyKong_Jump10:
	db "GFX_MapDonkeyKong_Jump10.bin"
GFX_MapDonkeyKong_Jump10End:
GFX_MapDonkeyKong_Jump11:
	db "GFX_MapDonkeyKong_Jump11.bin"
GFX_MapDonkeyKong_Jump11End:
GFX_MapDonkeyKong_Jump12:
	db "GFX_MapDonkeyKong_Jump12.bin"
GFX_MapDonkeyKong_Jump12End:
GFX_MapDonkeyKong_Jump13:
	db "GFX_MapDonkeyKong_Jump13.bin"
GFX_MapDonkeyKong_Jump13End:
GFX_MapDonkeyKong_Jump14:
	db "GFX_MapDonkeyKong_Jump14.bin"
GFX_MapDonkeyKong_Jump14End:
GFX_MapDonkeyKong_Jump15:
	db "GFX_MapDonkeyKong_Jump15.bin"
GFX_MapDonkeyKong_Jump15End:

;--------------------------------------------------------------------

GFX_FGBG_BananaHoard:
	db "GFX_FGBG_BananaHoard.bin"
GFX_FGBG_BananaHoardEnd:
GFX_FGBG_JungleLevels:
	db "GFX_FGBG_JungleLevels.bin"
GFX_FGBG_JungleLevelsEnd:
GFX_FGBG_CrystalCaveLevels:
	db "GFX_FGBG_CrystalCaveLevels.bin"
GFX_FGBG_CrystalCaveLevelsEnd:
GFX_FGBG_CaveLevels:
	db "GFX_FGBG_CaveLevels.bin"
GFX_FGBG_CaveLevelsEnd:
GFX_Layer1_MineCartCarnage:
	db "GFX_Layer1_MineCartCarnage.bin"
GFX_Layer1_MineCartCarnageEnd:
GFX_FGBG_ForestLevels:
	db "GFX_FGBG_ForestLevels.bin"
GFX_FGBG_ForestLevelsEnd:
GFX_Layer1_WalkwayLevels:
	db "GFX_Layer1_WalkwayLevels.bin"
GFX_Layer1_WalkwayLevelsEnd:
GFX_Layer1_MineLevels:
	db "GFX_Layer1_MineLevels.bin"
GFX_Layer1_MineLevelsEnd:
GFX_Layer1_TempleLevels:
	db "GFX_Layer1_TempleLevels.bin"
GFX_Layer1_TempleLevelsEnd:
GFX_FGBG_FactoryLevels:
	db "GFX_FGBG_FactoryLevels.bin"
GFX_FGBG_FactoryLevelsEnd:
GFX_Layer1_TreehouseLevels:
	db "GFX_Layer1_TreehouseLevels.bin"
GFX_Layer1_TreehouseLevelsEnd:
GFX_FGBG_SnowLevels:
	db "GFX_FGBG_SnowLevels.bin"
GFX_FGBG_SnowLevelsEnd:
GFX_Layer1_UnderwaterLevels:
	db "GFX_Layer1_UnderwaterLevels.bin"
GFX_Layer1_UnderwaterLevelsEnd:

;--------------------------------------------------------------------

TM_Layer1_CandysSavePoint:
	db "Layer1_CandysSavePoint.bin"
TM_Layer1_CandysSavePointEnd:
TM_Layer1_WorldMap:
	db "Layer1_WorldMap.bin"
TM_Layer1_WorldMapEnd:
TM_Layer1_GorillaGlacierMap1:
	db "Layer1_GorillaGlacierMap1.bin"
TM_Layer1_GorillaGlacierMap1End:
TM_Layer3_HangingLampLight:
	db "Layer3_HangingLampLight.bin"
TM_Layer3_HangingLampLightEnd:
TM_Layer1_KongoJungleMap1:
	db "Layer1_KongoJungleMap1.bin"
TM_Layer1_KongoJungleMap1End:
TM_Layer1_KongoJungleMap2:
	db "Layer1_KongoJungleMap2.bin"
TM_Layer1_KongoJungleMap2End:
TM_Layer1_MonkeyMinesMap1:
	db "Layer1_MonkeyMinesMap1.bin"
TM_Layer1_MonkeyMinesMap1End:
TM_Layer1_VineValleyMap2:
	db "Layer1_VineValleyMap2.bin"
TM_Layer1_VineValleyMap2End:
TM_Layer1_VineValleyMap1:
	db "Layer1_VineValleyMap1.bin"
TM_Layer1_VineValleyMap1End:
TM_Layer2_TreehouseLevels:
	db "Layer2_TreehouseLevels.bin"
TM_Layer2_TreehouseLevelsEnd:
TM_Layer2_KongsBananaHoardCave:
	db "Layer2_KongsBananaHoardCave.bin"
TM_Layer2_KongsBananaHoardCaveEnd:
TM_Layer1_MonkeyMinesMap2:
	db "Layer1_MonkeyMinesMap2.bin"
TM_Layer1_MonkeyMinesMap2End:
TM_Layer3_JungleLevels:
	db "Layer3_JungleLevels.bin"
TM_Layer3_JungleLevelsEnd:
TM_Layer1_DKsHouse:
	db "Layer1_DKsHouse.bin"
TM_Layer1_DKsHouseEnd:
TM_Layer1_ChimpCavernsMap1:
	db "Layer1_ChimpCavernsMap1.bin"
TM_Layer1_ChimpCavernsMap1End:
TM_Layer1_ChimpCavernsMap2:
	db "Layer1_ChimpCavernsMap2.bin"
TM_Layer1_ChimpCavernsMap2End:
TM_Layer1_SmallRareLogo:
	db "Layer1_SmallRareLogo.bin"
TM_Layer1_SmallRareLogoEnd:
TM_Layer2_Fog:
	db "Layer2_Fog.bin"
TM_Layer2_FogEnd:
TM_Layer3_TempleLevels:
	db "Layer3_TempleLevels.bin"
TM_Layer3_TempleLevelsEnd:
TM_Layer3_Rain:
	db "Layer3_Rain.bin"
TM_Layer3_RainEnd:
TM_Layer3_Snow:
	db "Layer3_Snow.bin"
TM_Layer3_SnowEnd:
TM_Layer3_SnowLevels:
	db "Layer3_SnowLevels.bin"
TM_Layer3_SnowLevelsEnd:
TM_Layer1_WireframeRareLogo:
	db "Layer1_WireframeRareLogo.bin"
TM_Layer1_WireframeRareLogoEnd:
TM_Layer3_Fog:
	db "Layer3_Fog.bin"
TM_Layer3_FogEnd:
TM_Layer3_FactoryLevels:
	db "Layer3_FactoryLevels.bin"
TM_Layer3_FactoryLevelsEnd:
TM_Layer3_ForestLevels:
	db "Layer3_ForestLevels.bin"
TM_Layer3_ForestLevelsEnd:
TM_Layer1_CopyrightScreen:
	db "Layer1_CopyrightScreen.bin"
TM_Layer1_CopyrightScreenEnd:
TM_Layer1_RegionLockoutScreenText:
	db "Layer1_RegionLockoutScreenText.bin"
TM_Layer1_RegionLockoutScreenTextEnd:
TM_Layer1_CopyDetectionScreenText:
	db "Layer1_CopyDetectionScreenText.bin"
TM_Layer1_CopyDetectionScreenTextEnd:
TM_Layer1_AntiCheatScreenText:
	db "Layer1_AntiCheatScreenText.bin"
TM_Layer1_AntiCheatScreenTextEnd:
TM_Layer1_NintendoLogo:
	db "Layer1_NintendoLogo.bin"
TM_Layer1_NintendoLogoEnd:
TM_Layer2_IntroScreen:
	db "Layer2_IntroScreen.bin"
TM_Layer2_IntroScreenEnd:
TM_Layer3_CaveLevels:
	db "Layer3_CaveLevels.bin"
TM_Layer3_CaveLevelsEnd:
TM_Layer1_LanguageSelectText:
	db "Layer1_LanguageSelectText.bin"
TM_Layer1_LanguageSelectTextEnd:
TM_UnknownTreetops:
	db "UnknownTreetops.bin"
TM_UnknownTreetopsEnd:
TM_Layer2_WalkwayLevelsLeftHalf:
	db "Layer2_WalkwayLevelsLeftHalf.bin"
TM_Layer2_WalkwayLevelsLeftHalfEnd:
TM_Layer2_WalkwayLevelsRightHalf:
	db "Layer2_WalkwayLevelsRightHalf.bin"
TM_Layer2_WalkwayLevelsRightHalfEnd:
TM_Mode7_RareLogo:
	db "Mode7_RareLogo.bin"
TM_Mode7_RareLogoEnd:
TM_Layer3_NintendoLogoShine:
	db "Layer3_NintendoLogoShine.bin"
TM_Layer3_NintendoLogoShineEnd:
TM_Layer2_LargeRareLogo:
	db "Layer2_LargeRareLogo.bin"
TM_Layer2_LargeRareLogoEnd:
TM_Layer3_GangplankGalleon:
	db "Layer3_GangplankGalleon.bin"
TM_Layer3_GangplankGalleonEnd:
TM_Layer2_IntroSky:
	db "Layer2_IntroSky.bin"
TM_Layer2_IntroSkyEnd:
TM_Layer1_TitleScreen:
	db "Layer1_TitleScreen.bin"
TM_Layer1_TitleScreenEnd:
TM_Layer3_FileSelectScreen:
	db "Layer3_FileSelectScreen.bin"
TM_Layer3_FileSelectScreenEnd:
TM_Layer1_PlayerSelectScreen:
	db "Layer1_PlayerSelectScreen.bin"
TM_Layer1_PlayerSelectScreenEnd:
TM_Layer2_PlayerSelectScreen:
	db "Layer2_PlayerSelectScreen.bin"
TM_Layer2_PlayerSelectScreenEnd:
TM_Layer1_IntroScreen:
	db "Layer1_IntroScreen.bin"
TM_Layer1_IntroScreenEnd:
TM_Layer3_TreehouseLevels:
	db "Layer3_TreehouseLevels.bin"
TM_Layer3_TreehouseLevelsEnd:
TM_Layer1_SelectAGame:
	db "Layer1_SelectAGame.bin"
TM_Layer1_SelectAGameEnd:
TM_Layer1_FileSelectScreen:
	db "Layer1_FileSelectScreen.bin"
TM_Layer1_FileSelectScreenEnd:
TM_Layer1_CandysGameSave:
	db "Layer1_CandysGameSave.bin"
TM_Layer1_CandysGameSaveEnd:
TM_Layer1_FileSelectOnePlayerHeadIcon:
	db "Layer1_FileSelectOnePlayerHeadIcon.bin"
TM_Layer1_FileSelectOnePlayerHeadIconEnd:
TM_Layer1_FileSelectTwoPlayerTeamHeadIcon:
	db "Layer1_FileSelectTwoPlayerTeamHeadIcon.bin"
TM_Layer1_FileSelectTwoPlayerTeamHeadIconEnd:
TM_Layer1_FileSelectTwoPlayerContestHeadIcon:
	db "Layer1_FileSelectTwoPlayerContestHeadIcon.bin"
TM_Layer1_FileSelectTwoPlayerContestHeadIconEnd:
TM_Layer1_KremkrocIndustriesIncMap1:
	db "Layer1_KremkrocIndustriesIncMap1.bin"
TM_Layer1_KremkrocIndustriesIncMap1End:
TM_Layer1_CrankysCabin:
	db "Layer1_CrankysCabin.bin"
TM_Layer1_CrankysCabinEnd:
TM_Layer1_GorillaGlacierMap2:
	db "Layer1_GorillaGlacierMap2.bin"
TM_Layer1_GorillaGlacierMap2End:
TM_Layer3_MineLevels:
	db "Layer3_MineLevels.bin"
TM_Layer3_MineLevelsEnd:
TM_Layer1_FunkysFlights:
	db "Layer1_FunkysFlights.bin"
TM_Layer1_FunkysFlightsEnd:
TM_Layer2_Millstone:
	db "Layer2_Millstone.bin"
TM_Layer2_MillstoneEnd:
TM_Layer1_GameOverScreen:
	db "Layer1_GameOverScreen.bin"
TM_Layer1_GameOverScreenEnd:
TM_Layer2_UnderwaterLevels:
	db "Layer2_UnderwaterLevels.bin"
TM_Layer2_UnderwaterLevelsEnd:
TM_Layer1_KremkrocIndustriesIncMap2:
	db "Layer1_KremkrocIndustriesIncMap2.bin"
TM_Layer1_KremkrocIndustriesIncMap2End:

;--------------------------------------------------------------------

;Compressed tilemaps

;--------------------------------------------------------------------

M32_TreehouseLevels:
	db "TreehouseLevels.bin"
M32_TreehouseLevelsEnd:
M32_ForestLevels:
	db "ForestLevels.bin"
M32_ForestLevelsEnd:
M32_BananaHoardCave:
	db "BananaHoardCave.bin"
M32_BananaHoardCaveEnd:
M32_WalkwayLevels:
	db "WalkwayLevels.bin"
M32_WalkwayLevelsEnd:
M32_UnderwaterLevels:
	db "UnderwaterLevels.bin"
M32_UnderwaterLevelsEnd:
M32_JungleLevels:
	db "JungleLevels.bin"
M32_JungleLevelsEnd:
M32_CaveLevels:
	db "CaveLevels.bin"
M32_CaveLevelsEnd:
M32_MineLevels:
	db "MineLevels.bin"
M32_MineLevelsEnd:
M32_SnowLevels:
	db "SnowLevels.bin"
M32_SnowLevelsEnd:
M32_CrystalCaveLevels:
	db "CrystalCaveLevels.bin"
M32_CrystalCaveLevelsEnd:
M32_FactoryLevels:
	db "FactoryLevels.bin"
M32_FactoryLevelsEnd:
M32_DKsHouse:
	db "DKsHouse.bin"
M32_DKsHouseEnd:
M32_MineCartCarnage:
	db "MineCartCarnage.bin"
M32_MineCartCarnageEnd:
M32_TempleLevels:
	db "TempleLevels.bin"
M32_TempleLevelsEnd:

;--------------------------------------------------------------------

TreehouseLevels:
	db "TreehouseLevels.bin"
TreehouseLevelsEnd:
ForestLevels:
	db "ForestLevels.bin"
ForestLevelsEnd:
BananaHoardCave:
	db "BananaHoardCave.bin"
BananaHoardCaveEnd:
WalkwayLevels:
	db "WalkwayLevels.bin"
WalkwayLevelsEnd:
JungleLevels:
	db "JungleLevels.bin"
JungleLevelsEnd:
CaveLevels:
	db "CaveLevels.bin"
CaveLevelsEnd:
MineLevels:
	db "MineLevels.bin"
MineLevelsEnd:
SnowLevels:
	db "SnowLevels.bin"
SnowLevelsEnd:
CrystalCaveLevels:
	db "CrystalCaveLevels.bin"
CrystalCaveLevelsEnd:
FactoryLevels:
	db "FactoryLevels.bin"
FactoryLevelsEnd:
DKsHouse:
	db "DKsHouse.bin"
DKsHouseEnd:
MineCartCarnage:
	db "MineCartCarnage.bin"
MineCartCarnageEnd:
UnderwaterLevels:
	db "UnderwaterLevels.bin"
UnderwaterLevelsEnd:
TempleLevels:
	db "TempleLevels.bin"
TempleLevelsEnd:

;--------------------------------------------------------------------

SPR_ReptileRumble_Main:
	db "ReptileRumble_Main.bin"
SPR_ReptileRumble_MainEnd:
SPR_ReptileRumble_Bonus1:
	db "ReptileRumble_Bonus1.bin"
SPR_ReptileRumble_Bonus1End:
SPR_BouncyBonanza_WinkyRoom:
	db "BouncyBonanza_WinkyRoom.bin"
SPR_BouncyBonanza_WinkyRoomEnd:
SPR_ReptileRumble_Bonus3:
	db "ReptileRumble_Bonus3.bin"
SPR_ReptileRumble_Bonus3End:
SPR_ManicMincers_Bonus1:
	db "ManicMincers_Bonus1.bin"
SPR_ManicMincers_Bonus1End:
SPR_JungleHijinxs_Bonus1:
	db "JungleHijinxs_Bonus1.bin"
SPR_JungleHijinxs_Bonus1End:
SPR_BouncyBonanza_Main:
	db "BouncyBonanza_Main.bin"
SPR_BouncyBonanza_MainEnd:
SPR_MistyMine_Main:
	db "MistyMine_Main.bin"
SPR_MistyMine_MainEnd:
SPR_RopeyRampage_Main:
	db "RopeyRampage_Main.bin"
SPR_RopeyRampage_MainEnd:
SPR_OrangutanGang_Main:
	db "OrangutanGang_Main.bin"
SPR_OrangutanGang_MainEnd:
SPR_BouncyBonanza_Bonus2:
	db "BouncyBonanza_Bonus2.bin"
SPR_BouncyBonanza_Bonus2End:
SPR_ManicMincers_Main:
	db "ManicMincers_Main.bin"
SPR_ManicMincers_MainEnd:
SPR_TorchlightTrouble_Main:
	db "TorchlightTrouble_Main.bin"
SPR_TorchlightTrouble_MainEnd:
SPR_JungleHijinxs_Main:
	db "JungleHijinxs_Main.bin"
SPR_JungleHijinxs_MainEnd:
SPR_BarrelCannonCanyon_Main:
	db "BarrelCannonCanyon_Main.bin"
SPR_BarrelCannonCanyon_MainEnd:
SPR_ElevatorAntics_Main:
	db "ElevatorAntics_Main.bin"
SPR_ElevatorAntics_MainEnd:
SPR_JungleHijinxs_Bonus2:
	db "JungleHijinxs_Bonus2.bin"
SPR_JungleHijinxs_Bonus2End:
SPR_RopeyRampage_Bonus2:
	db "RopeyRampage_Bonus2.bin"
SPR_RopeyRampage_Bonus2End:
SPR_RopeyRampage_Bonus1:
	db "RopeyRampage_Bonus1.bin"
SPR_RopeyRampage_Bonus1End:
SPR_OrangutanGang_Bonus3:
	db "OrangutanGang_Bonus3.bin"
SPR_OrangutanGang_Bonus3End:
SPR_OrangutanGang_Bonus2:
	db "OrangutanGang_Bonus2.bin"
SPR_OrangutanGang_Bonus2End:
SPR_OrangutanGang_Bonus1:
	db "OrangutanGang_Bonus1.bin"
SPR_OrangutanGang_Bonus1End:
SPR_PoisonPond_Main:
	db "PoisonPond_Main.bin"
SPR_PoisonPond_MainEnd:
SPR_CroctopusChase_Main:
	db "CroctopusChase_Main.bin"
SPR_CroctopusChase_MainEnd:
SPR_SnowBarrelBlast_Main:
	db "SnowBarrelBlast_Main.bin"
SPR_SnowBarrelBlast_MainEnd:
SPR_MinecartMadness_Main:
	db "MinecartMadness_Main.bin"
SPR_MinecartMadness_MainEnd:
SPR_PlatformPerils_Main:
	db "PlatformPerils_Main.bin"
SPR_PlatformPerils_MainEnd:
SPR_MineCartCarnage_Main:
	db "MineCartCarnage_Main.bin"
SPR_MineCartCarnage_MainEnd:
SPR_TrickTrackTrek_Main:
	db "TrickTrackTrek_Main.bin"
SPR_TrickTrackTrek_MainEnd:
SPR_TankedUpTrouble_Main:
	db "TankedUpTrouble_Main.bin"
SPR_TankedUpTrouble_MainEnd:
SPR_StopAndGoStation_Main:
	db "StopAndGoStation_Main.bin"
SPR_StopAndGoStation_MainEnd:
SPR_MistyMine_Bonus2:
	db "MistyMine_Bonus2.bin"
SPR_MistyMine_Bonus2End:
SPR_MistyMine_Bonus1:
	db "MistyMine_Bonus1.bin"
SPR_MistyMine_Bonus1End:
SPR_AnimalTokenTest_Main:
	db "AnimalTokenTest_Main.bin"
SPR_AnimalTokenTest_MainEnd:
SPR_LoopyLights_Main:
	db "LoopyLights_Main.bin"
SPR_LoopyLights_MainEnd:
SPR_LoopyLights_Bonus2:
	db "LoopyLights_Bonus2.bin"
SPR_LoopyLights_Bonus2End:
SPR_OilDrumAlley_Main:
	db "OilDrumAlley_Main.bin"
SPR_OilDrumAlley_MainEnd:
SPR_BlackoutBasement_Main:
	db "BlackoutBasement_Main.bin"
SPR_BlackoutBasement_MainEnd:
SPR_MillstoneMayhem_Main:
	db "MillstoneMayhem_Main.bin"
SPR_MillstoneMayhem_MainEnd:
SPR_TempleTempest_Main:
	db "TempleTempest_Main.bin"
SPR_TempleTempest_MainEnd:
SPR_BarrelCannonCanyon_Bonus1:
	db "BarrelCannonCanyon_Bonus1.bin"
SPR_BarrelCannonCanyon_Bonus1End:
SPR_JungleHijinxs_EmptyKongsBananaHoard:
	db "JungleHijinxs_EmptyKongsBananaHoard.bin"
SPR_JungleHijinxs_EmptyKongsBananaHoardEnd:
SPR_ReptileRumble_Bonus2:
	db "ReptileRumble_Bonus2.bin"
SPR_ReptileRumble_Bonus2End:
SPR_LoopyLights_Bonus1:
	db "LoopyLights_Bonus1.bin"
SPR_LoopyLights_Bonus1End:
SPR_StopAndGoStation_Bonus2:
	db "StopAndGoStation_Bonus2.bin"
SPR_StopAndGoStation_Bonus2End:
SPR_StopAndGoStation_Bonus1:
	db "StopAndGoStation_Bonus1.bin"
SPR_StopAndGoStation_Bonus1End:
SPR_JungleHijinxs_FullKongsBananaHoard:
	db "JungleHijinxs_FullKongsBananaHoard.bin"
SPR_JungleHijinxs_FullKongsBananaHoardEnd:
SPR_MinecartMadness_Bonus1:
	db "MinecartMadness_Bonus1.bin"
SPR_MinecartMadness_Bonus1End:
SPR_PlatformPerils_Bonus1:
	db "PlatformPerils_Bonus1.bin"
SPR_PlatformPerils_Bonus1End:
SPR_WinkysWalkway_Bonus1:
	db "WinkysWalkway_Bonus1.bin"
SPR_WinkysWalkway_Bonus1End:
SPR_PlatformPerils_Bonus2:
	db "PlatformPerils_Bonus2.bin"
SPR_PlatformPerils_Bonus2End:
SPR_TempleTempest_Bonus1:
	db "TempleTempest_Bonus1.bin"
SPR_TempleTempest_Bonus1End:
SPR_TempleTempest_Bonus2:
	db "TempleTempest_Bonus2.bin"
SPR_TempleTempest_Bonus2End:
SPR_MillstoneMayhem_Bonus1:
	db "MillstoneMayhem_Bonus1.bin"
SPR_MillstoneMayhem_Bonus1End:
SPR_MillstoneMayhem_Bonus2:
	db "MillstoneMayhem_Bonus2.bin"
SPR_MillstoneMayhem_Bonus2End:
SPR_MillstoneMayhem_Bonus3:
	db "MillstoneMayhem_Bonus3.bin"
SPR_MillstoneMayhem_Bonus3End:
SPR_OrangutanGang_Bonus5:
	db "OrangutanGang_Bonus5.bin"
SPR_OrangutanGang_Bonus5End:
SPR_OrangutanGang_Bonus4:
	db "OrangutanGang_Bonus4.bin"
SPR_OrangutanGang_Bonus4End:
SPR_JungleHijinxs_DKsHouse:
	db "JungleHijinxs_DKsHouse.bin"
SPR_JungleHijinxs_DKsHouseEnd:
SPR_BarrelCannonCanyon_Bonus2:
	db "BarrelCannonCanyon_Bonus2.bin"
SPR_BarrelCannonCanyon_Bonus2End:
SPR_Credits:
	db "Credits.bin"
SPR_CreditsEnd:
SPR_OilDrumAlley_Bonus4:
	db "OilDrumAlley_Bonus4.bin"
SPR_OilDrumAlley_Bonus4End:
SPR_OilDrumAlley_Bonus2:
	db "OilDrumAlley_Bonus2.bin"
SPR_OilDrumAlley_Bonus2End:
SPR_OilDrumAlley_Bonus1:
	db "OilDrumAlley_Bonus1.bin"
SPR_OilDrumAlley_Bonus1End:
SPR_BlackoutBasement_Bonus1:
	db "BlackoutBasement_Bonus1.bin"
SPR_BlackoutBasement_Bonus1End:
SPR_SnowBarrelBlast_Bonus3:
	db "SnowBarrelBlast_Bonus3.bin"
SPR_SnowBarrelBlast_Bonus3End:
SPR_SnowBarrelBlast_Bonus1:
	db "SnowBarrelBlast_Bonus1.bin"
SPR_SnowBarrelBlast_Bonus1End:
SPR_GangplankGalleon_Main:
	db "GangplankGalleon_Main.bin"
SPR_GangplankGalleon_MainEnd:
SPR_SnowBarrelBlast_Bonus2:
	db "SnowBarrelBlast_Bonus2.bin"
SPR_SnowBarrelBlast_Bonus2End:
SPR_IceAgeAlley_Bonus1:
	db "IceAgeAlley_Bonus1.bin"
SPR_IceAgeAlley_Bonus1End:
SPR_IceAgeAlley_Bonus2:
	db "IceAgeAlley_Bonus2.bin"
SPR_IceAgeAlley_Bonus2End:
SPR_ExpressoBonus:
	db "ExpressoBonus.bin"
SPR_ExpressoBonusEnd:
SPR_SlipSlideRide_Main:
	db "SlipSlideRide_Main.bin"
SPR_SlipSlideRide_MainEnd:
SPR_BouncyBonanza_Bonus1:
	db "BouncyBonanza_Bonus1.bin"
SPR_BouncyBonanza_Bonus1End:
SPR_ManicMincers_Bonus2:
	db "ManicMincers_Bonus2.bin"
SPR_ManicMincers_Bonus2End:
SPR_ManicMincers_MincerRoom:
	db "ManicMincers_MincerRoom.bin"
SPR_ManicMincers_MincerRoomEnd:
SPR_ElevatorAntics_Bonus1:
	db "ElevatorAntics_Bonus1.bin"
SPR_ElevatorAntics_Bonus1End:
SPR_ElevatorAntics_Bonus2:
	db "ElevatorAntics_Bonus2.bin"
SPR_ElevatorAntics_Bonus2End:
SPR_ElevatorAntics_Bonus3:
	db "ElevatorAntics_Bonus3.bin"
SPR_ElevatorAntics_Bonus3End:
SPR_TrickTrackTrek_Bonus3:
	db "TrickTrackTrek_Bonus3.bin"
SPR_TrickTrackTrek_Bonus3End:
SPR_TrickTrackTrek_Bonus2:
	db "TrickTrackTrek_Bonus2.bin"
SPR_TrickTrackTrek_Bonus2End:
SPR_TankedUpTrouble_Bonus1:
	db "TankedUpTrouble_Bonus1.bin"
SPR_TankedUpTrouble_Bonus1End:
SPR_MinecartMadness_Bonus2:
	db "MinecartMadness_Bonus2.bin"
SPR_MinecartMadness_Bonus2End:
SPR_TrickTrackTrek_Bonus1:
	db "TrickTrackTrek_Bonus1.bin"
SPR_TrickTrackTrek_Bonus1End:
SPR_MinecartMadness_Bonus3:
	db "MinecartMadness_Bonus3.bin"
SPR_MinecartMadness_Bonus3End:
SPR_BlackoutBasement_Bonus2:
	db "BlackoutBasement_Bonus2.bin"
SPR_BlackoutBasement_Bonus2End:
SPR_TreeTopTown_Main:
	db "TreeTopTown_Main.bin"
SPR_TreeTopTown_MainEnd:
SPR_VultureCulture_Main:
	db "VultureCulture_Main.bin"
SPR_VultureCulture_MainEnd:
SPR_EnguardeBonus:
	db "EnguardeBonus.bin"
SPR_EnguardeBonusEnd:
SPR_IceAgeAlley_Main:
	db "IceAgeAlley_Main.bin"
SPR_IceAgeAlley_MainEnd:
SPR_TreeTopTown_Bonus2:
	db "TreeTopTown_Bonus2.bin"
SPR_TreeTopTown_Bonus2End:
SPR_TreeTopTown_Bonus1:
	db "TreeTopTown_Bonus1.bin"
SPR_TreeTopTown_Bonus1End:
SPR_VultureCulture_Bonus1:
	db "VultureCulture_Bonus1.bin"
SPR_VultureCulture_Bonus1End:
SPR_VultureCulture_Bonus2:
	db "VultureCulture_Bonus2.bin"
SPR_VultureCulture_Bonus2End:
SPR_VultureCulture_Bonus3:
	db "VultureCulture_Bonus3.bin"
SPR_VultureCulture_Bonus3End:
SPR_OilDrumAlley_Bonus3:
	db "OilDrumAlley_Bonus3.bin"
SPR_OilDrumAlley_Bonus3End:
SPR_CoralCapers_Main:
	db "CoralCapers_Main.bin"
SPR_CoralCapers_MainEnd:
SPR_TorchlightTrouble_Bonus1:
	db "TorchlightTrouble_Bonus1.bin"
SPR_TorchlightTrouble_Bonus1End:
SPR_TorchlightTrouble_Bonus2:
	db "TorchlightTrouble_Bonus2.bin"
SPR_TorchlightTrouble_Bonus2End:
SPR_SlipSlideRide_Bonus2:
	db "SlipSlideRide_Bonus2.bin"
SPR_SlipSlideRide_Bonus2End:
SPR_SlipSlideRide_Bonus3:
	db "SlipSlideRide_Bonus3.bin"
SPR_SlipSlideRide_Bonus3End:
SPR_SlipSlideRide_Bonus1:
	db "SlipSlideRide_Bonus1.bin"
SPR_SlipSlideRide_Bonus1End:
SPR_RopeBridgeRumble_Main:
	db "RopeBridgeRumble_Main.bin"
SPR_RopeBridgeRumble_MainEnd:
SPR_ForestFrenzy_Main:
	db "ForestFrenzy_Main.bin"
SPR_ForestFrenzy_MainEnd:
SPR_RambiBonus:
	db "RambiBonus.bin"
SPR_RambiBonusEnd:
SPR_WinkyBonus:
	db "WinkyBonus.bin"
SPR_WinkyBonusEnd:
SPR_ForestFrenzy_Bonus2:
	db "ForestFrenzy_Bonus2.bin"
SPR_ForestFrenzy_Bonus2End:
SPR_RopeBridgeRumble_Bonus1:
	db "RopeBridgeRumble_Bonus1.bin"
SPR_RopeBridgeRumble_Bonus1End:
SPR_RopeBridgeRumble_Bonus2:
	db "RopeBridgeRumble_Bonus2.bin"
SPR_RopeBridgeRumble_Bonus2End:
SPR_WinkysWalkway_Main:
	db "WinkysWalkway_Main.bin"
SPR_WinkysWalkway_MainEnd:
SPR_ForestFrenzy_Bonus1:
	db "ForestFrenzy_Bonus1.bin"
SPR_ForestFrenzy_Bonus1End:
SPR_ClamCity_Main:
	db "ClamCity_Main.bin"
SPR_ClamCity_MainEnd:
SPR_VeryGnawtysLair_Main:
	db "VeryGnawtysLair_Main.bin"
SPR_VeryGnawtysLair_MainEnd:
SPR_NeckysNuts_Main:
	db "NeckysNuts_Main.bin"
SPR_NeckysNuts_MainEnd:
SPR_ReallyGnawtyRampage_Main:
	db "ReallyGnawtyRampage_Main.bin"
SPR_ReallyGnawtyRampage_MainEnd:
SPR_BossDumbDrum_Main:
	db "BossDumbDrum_Main.bin"
SPR_BossDumbDrum_MainEnd:
SPR_NeckysRevenge_Main:
	db "NeckysRevenge_Main.bin"
SPR_NeckysRevenge_MainEnd:
SPR_BumbleBRumble_Main:
	db "BumbleBRumble_Main.bin"
SPR_BumbleBRumble_MainEnd:

;--------------------------------------------------------------------

BFD_JungleHijinx_Main:
	db "JungleHijinx_Main.bin"
BFD_JungleHijinx_MainEnd:
BFD_ReptileRumble_Main:
	db "ReptileRumble_Main.bin"
BFD_ReptileRumble_MainEnd:
BFD_BouncyBonanza_Main:
	db "BouncyBonanza_Main.bin"
BFD_BouncyBonanza_MainEnd:
BFD_MistyMine_Main:
	db "MistyMine_Main.bin"
BFD_MistyMine_MainEnd:
BFD_RopeyRampage_Main:
	db "RopeyRampage_Main.bin"
BFD_RopeyRampage_MainEnd:
BFD_OrangutanGang_Main:
	db "OrangutanGang_Main.bin"
BFD_OrangutanGang_MainEnd:
BFD_BarrelCannonCanyon_Main:
	db "BarrelCannonCanyon_Main.bin"
BFD_BarrelCannonCanyon_MainEnd:
BFD_ReptileRumble_Bonus1:
	db "ReptileRumble_Bonus1.bin"
BFD_ReptileRumble_Bonus1End:
BFD_ReptileRumble_Bonus3:
	db "ReptileRumble_Bonus3.bin"
BFD_ReptileRumble_Bonus3End:
BFD_JungleHijinx_Bonus1:
	db "JungleHijinx_Bonus1.bin"
BFD_JungleHijinx_Bonus1End:
BFD_UnknownLevelID000A:
	db "UnknownLevelID000A.bin"
BFD_UnknownLevelID000AEnd:
BFD_BouncyBonanza_Bonus2:
	db "BouncyBonanza_Bonus2.bin"
BFD_BouncyBonanza_Bonus2End:
BFD_ManicMincers_Main:
	db "ManicMincers_Main.bin"
BFD_ManicMincers_MainEnd:
BFD_UnknownLevelID000D:
	db "UnknownLevelID000D.bin"
BFD_UnknownLevelID000DEnd:
BFD_TorchlightTrouble_Main:
	db "TorchlightTrouble_Main.bin"
BFD_TorchlightTrouble_MainEnd:
BFD_ElevatorAntics_Main:
	db "ElevatorAntics_Main.bin"
BFD_ElevatorAntics_MainEnd:
BFD_JungleHijinx_Bonus2:
	db "JungleHijinx_Bonus2.bin"
BFD_JungleHijinx_Bonus2End:
BFD_RopeyRampage_Bonus2:
	db "RopeyRampage_Bonus2.bin"
BFD_RopeyRampage_Bonus2End:
BFD_RopeyRampage_Bonus1:
	db "RopeyRampage_Bonus1.bin"
BFD_RopeyRampage_Bonus1End:
BFD_OrangutanGang_Bonus3:
	db "OrangutanGang_Bonus3.bin"
BFD_OrangutanGang_Bonus3End:
BFD_OrangutanGang_Bonus2:
	db "OrangutanGang_Bonus2.bin"
BFD_OrangutanGang_Bonus2End:
BFD_UnknownLevelID0015:
	db "UnknownLevelID0015.bin"
BFD_UnknownLevelID0015End:
BFD_UnusedRoom:
	db "UnusedRoom.bin"
BFD_UnusedRoomEnd:
BFD_PoisonPond_Main:
	db "PoisonPond_Main.bin"
BFD_PoisonPond_MainEnd:
BFD_SnowBarrelBlast_Main:
	db "SnowBarrelBlast_Main.bin"
BFD_SnowBarrelBlast_MainEnd:
BFD_MinecartMadness_Main:
	db "MinecartMadness_Main.bin"
BFD_MinecartMadness_MainEnd:
BFD_PlatformPerils_Main:
	db "PlatformPerils_Main.bin"
BFD_PlatformPerils_MainEnd:
BFD_MinecartCarnage_Main:
	db "MinecartCarnage_Main.bin"
BFD_MinecartCarnage_MainEnd:
BFD_TrickTrackTrek_Main:
	db "TrickTrackTrek_Main.bin"
BFD_TrickTrackTrek_MainEnd:
BFD_TankedUpTrouble_Main:
	db "TankedUpTrouble_Main.bin"
BFD_TankedUpTrouble_MainEnd:
BFD_StopAndGoStation_Main:
	db "StopAndGoStation_Main.bin"
BFD_StopAndGoStation_MainEnd:
BFD_MistyMine_Bonus2:
	db "MistyMine_Bonus2.bin"
BFD_MistyMine_Bonus2End:
BFD_MistyMine_Bonus1:
	db "MistyMine_Bonus1.bin"
BFD_MistyMine_Bonus1End:
BFD_AnimalTokenTest:
	db "AnimalTokenTest.bin"
BFD_AnimalTokenTestEnd:
BFD_UnknownLevelID0022:
	db "UnknownLevelID0022.bin"
BFD_UnknownLevelID0022End:
BFD_LoopyLights_Main:
	db "LoopyLights_Main.bin"
BFD_LoopyLights_MainEnd:
BFD_LoopyLights_Bonus2:
	db "LoopyLights_Bonus2.bin"
BFD_LoopyLights_Bonus2End:
BFD_CroctopusChase_Main:
	db "CroctopusChase_Main.bin"
BFD_CroctopusChase_MainEnd:
BFD_OilDrumAlley_Main:
	db "OilDrumAlley_Main.bin"
BFD_OilDrumAlley_MainEnd:
BFD_BlackoutBasement_Main:
	db "BlackoutBasement_Main.bin"
BFD_BlackoutBasement_MainEnd:
BFD_MillstoneMayhem_Main:
	db "MillstoneMayhem_Main.bin"
BFD_MillstoneMayhem_MainEnd:
BFD_TempleTempest_Main:
	db "TempleTempest_Main.bin"
BFD_TempleTempest_MainEnd:
BFD_BouncyBonanza_Bonus1:
	db "BouncyBonanza_Bonus1.bin"
BFD_BouncyBonanza_Bonus1End:
BFD_UnknownLevelID002B:
	db "UnknownLevelID002B.bin"
BFD_UnknownLevelID002BEnd:
BFD_BarrelCannonCanyon_Bonus1:
	db "BarrelCannonCanyon_Bonus1.bin"
BFD_BarrelCannonCanyon_Bonus1End:
BFD_JungleHijinx_EmptyKongsBananaHoard:
	db "JungleHijinx_EmptyKongsBananaHoard.bin"
BFD_JungleHijinx_EmptyKongsBananaHoardEnd:
BFD_ReptileRumble_Bonus2:
	db "ReptileRumble_Bonus2.bin"
BFD_ReptileRumble_Bonus2End:
BFD_LoopyLights_Bonus1:
	db "LoopyLights_Bonus1.bin"
BFD_LoopyLights_Bonus1End:
BFD_UnknownLevelID0030:
	db "UnknownLevelID0030.bin"
BFD_UnknownLevelID0030End:
BFD_UnknownLevelID0031:
	db "UnknownLevelID0031.bin"
BFD_UnknownLevelID0031End:
BFD_JungleHijinx_FullKongsBananaHoard:
	db "JungleHijinx_FullKongsBananaHoard.bin"
BFD_JungleHijinx_FullKongsBananaHoardEnd:
BFD_MinecartMadness_Bonus1:
	db "MinecartMadness_Bonus1.bin"
BFD_MinecartMadness_Bonus1End:
BFD_TrickTrackTrek_Bonus2:
	db "TrickTrackTrek_Bonus2.bin"
BFD_TrickTrackTrek_Bonus2End:
BFD_WinkysWalkway_Bonus1:
	db "WinkysWalkway_Bonus1.bin"
BFD_WinkysWalkway_Bonus1End:
BFD_UnknownLevelID0036:
	db "UnknownLevelID0036.bin"
BFD_UnknownLevelID0036End:
BFD_UnknownLevelID0037:
	db "UnknownLevelID0037.bin"
BFD_UnknownLevelID0037End:
BFD_TempleTempest_Bonus1:
	db "TempleTempest_Bonus1.bin"
BFD_TempleTempest_Bonus1End:
BFD_TempleTempest_Bonus2:
	db "TempleTempest_Bonus2.bin"
BFD_TempleTempest_Bonus2End:
BFD_UnknownLevelID003A:
	db "UnknownLevelID003A.bin"
BFD_UnknownLevelID003AEnd:
BFD_UnknownLevelID003B:
	db "UnknownLevelID003B.bin"
BFD_UnknownLevelID003BEnd:
BFD_MillstoneMayhem_Bonus2:
	db "MillstoneMayhem_Bonus2.bin"
BFD_MillstoneMayhem_Bonus2End:
BFD_MillstoneMayhem_Bonus3:
	db "MillstoneMayhem_Bonus3.bin"
BFD_MillstoneMayhem_Bonus3End:
BFD_OrangutanGang_Bonus5:
	db "OrangutanGang_Bonus5.bin"
BFD_OrangutanGang_Bonus5End:
BFD_OrangutanGang_Bonus4:
	db "OrangutanGang_Bonus4.bin"
BFD_OrangutanGang_Bonus4End:
BFD_JungleHijinx_DKsHouse:
	db "JungleHijinx_DKsHouse.bin"
BFD_JungleHijinx_DKsHouseEnd:
BFD_StopAndGoStation_Bonus2:
	db "StopAndGoStation_Bonus2.bin"
BFD_StopAndGoStation_Bonus2End:
BFD_Credits:
	db "Credits.bin"
BFD_CreditsEnd:
BFD_UnknownLevelID0043:
	db "UnknownLevelID0043.bin"
BFD_UnknownLevelID0043End:
BFD_OilDrumAlley_Bonus4:
	db "OilDrumAlley_Bonus4.bin"
BFD_OilDrumAlley_Bonus4End:
BFD_OilDrumAlley_Bonus2:
	db "OilDrumAlley_Bonus2.bin"
BFD_OilDrumAlley_Bonus2End:
BFD_UnknownLevelID0046:
	db "UnknownLevelID0046.bin"
BFD_UnknownLevelID0046End:
BFD_UnknownLevelID0047:
	db "UnknownLevelID0047.bin"
BFD_UnknownLevelID0047End:
BFD_IceAgeAlley_Bonus1:
	db "IceAgeAlley_Bonus1.bin"
BFD_IceAgeAlley_Bonus1End:
BFD_StopAndGoStation_Bonus1:
	db "StopAndGoStation_Bonus1.bin"
BFD_StopAndGoStation_Bonus1End:
BFD_SnowBarrelBlast_Bonus3:
	db "SnowBarrelBlast_Bonus3.bin"
BFD_SnowBarrelBlast_Bonus3End:
BFD_SnowBarrelBlast_Bonus1:
	db "SnowBarrelBlast_Bonus1.bin"
BFD_SnowBarrelBlast_Bonus1End:
BFD_GangplankGalleon_Main:
	db "GangplankGalleon_Main.bin"
BFD_GangplankGalleon_MainEnd:
BFD_TreeTopTown_Bonus2:
	db "TreeTopTown_Bonus2.bin"
BFD_TreeTopTown_Bonus2End:
BFD_UnknownLevelID004E:
	db "UnknownLevelID004E.bin"
BFD_UnknownLevelID004EEnd:
BFD_IceAgeAlley_Bonus2:
	db "IceAgeAlley_Bonus2.bin"
BFD_IceAgeAlley_Bonus2End:
BFD_ExpressoBonus:
	db "ExpressoBonus.bin"
BFD_ExpressoBonusEnd:
BFD_SlipSlideRide_Main:
	db "SlipSlideRide_Main.bin"
BFD_SlipSlideRide_MainEnd:
BFD_ManicMincers_MincerRoom:
	db "ManicMincers_MincerRoom.bin"
BFD_ManicMincers_MincerRoomEnd:
BFD_ElevatorAntics_Bonus2:
	db "ElevatorAntics_Bonus2.bin"
BFD_ElevatorAntics_Bonus2End:
BFD_ElevatorAntics_Bonus3:
	db "ElevatorAntics_Bonus3.bin"
BFD_ElevatorAntics_Bonus3End:
BFD_UnknownLevelID0055:
	db "UnknownLevelID0055.bin"
BFD_UnknownLevelID0055End:
BFD_TrickTrackTrek_Bonus1:
	db "TrickTrackTrek_Bonus1.bin"
BFD_TrickTrackTrek_Bonus1End:
BFD_MinecartMadness_Bonus3:
	db "MinecartMadness_Bonus3.bin"
BFD_MinecartMadness_Bonus3End:
BFD_TreeTopTown_Main:
	db "TreeTopTown_Main.bin"
BFD_TreeTopTown_MainEnd:
BFD_VultureCulture_Main:
	db "VultureCulture_Main.bin"
BFD_VultureCulture_MainEnd:
BFD_EnguardeBonus:
	db "EnguardeBonus.bin"
BFD_EnguardeBonusEnd:
BFD_IceAgeAlley_Main:
	db "IceAgeAlley_Main.bin"
BFD_IceAgeAlley_MainEnd:
BFD_UnknownLevelID005C:
	db "UnknownLevelID005C.bin"
BFD_UnknownLevelID005CEnd:
BFD_TreeTopTown_Bonus1:
	db "TreeTopTown_Bonus1.bin"
BFD_TreeTopTown_Bonus1End:
BFD_VultureCulture_Bonus1:
	db "VultureCulture_Bonus1.bin"
BFD_VultureCulture_Bonus1End:
BFD_VultureCulture_Bonus3:
	db "VultureCulture_Bonus3.bin"
BFD_VultureCulture_Bonus3End:
BFD_UnknownLevelID0060:
	db "UnknownLevelID0060.bin"
BFD_UnknownLevelID0060End:
BFD_CoralCapers_Main:
	db "CoralCapers_Main.bin"
BFD_CoralCapers_MainEnd:
BFD_UnknownLevelID0062:
	db "UnknownLevelID0062.bin"
BFD_UnknownLevelID0062End:
BFD_SlipSlideRide_Bonus3:
	db "SlipSlideRide_Bonus3.bin"
BFD_SlipSlideRide_Bonus3End:
BFD_RopeBridgeRumble_Main:
	db "RopeBridgeRumble_Main.bin"
BFD_RopeBridgeRumble_MainEnd:
BFD_ForestFrenzy_Main:
	db "ForestFrenzy_Main.bin"
BFD_ForestFrenzy_MainEnd:
BFD_RambiBonus:
	db "RambiBonus.bin"
BFD_RambiBonusEnd:
BFD_WinkyBonus:
	db "WinkyBonus.bin"
BFD_WinkyBonusEnd:
BFD_ForestFrenzy_Bonus2:
	db "ForestFrenzy_Bonus2.bin"
BFD_ForestFrenzy_Bonus2End:
BFD_RopeBridgeRumble_Bonus1:
	db "RopeBridgeRumble_Bonus1.bin"
BFD_RopeBridgeRumble_Bonus1End:
BFD_WinkysWalkway_Main:
	db "WinkysWalkway_Main.bin"
BFD_WinkysWalkway_MainEnd:
BFD_ClamCity_Main:
	db "ClamCity_Main.bin"
BFD_ClamCity_MainEnd:
BFD_VeryGnawrtysLair_Main:
	db "VeryGnawrtysLair_Main.bin"
BFD_VeryGnawrtysLair_MainEnd:
BFD_UnknownLevelID006D:
	db "UnknownLevelID006D.bin"
BFD_UnknownLevelID006DEnd:
BFD_UnknownLevelID006E:
	db "UnknownLevelID006E.bin"
BFD_UnknownLevelID006EEnd:
BFD_UnknownLevelID006F:
	db "UnknownLevelID006F.bin"
BFD_UnknownLevelID006FEnd:

;--------------------------------------------------------------------

PAL_FGBG_MinecartMadness:
	db "FGBG_MinecartMadness.bin"
PAL_FGBG_MinecartMadnessEnd:
PAL_Layer3_Snow:
	db "Layer3_Snow.bin"
PAL_Layer3_SnowEnd:
PAL_FGBG_SnowLevels:
	db "FGBG_SnowLevels.bin"
PAL_FGBG_SnowLevelsEnd:
PAL_FGBG_CoralCapers:
	db "FGBG_CoralCapers.bin"
PAL_FGBG_CoralCapersEnd:
PAL_FGBG_CroctopusChase:
	db "FGBG_CroctopusChase.bin"
PAL_FGBG_CroctopusChaseEnd:
PAL_FGBG_EnguardeBonus:
	db "FGBG_EnguardeBonus.bin"
PAL_FGBG_EnguardeBonusEnd:
PAL_FGBG_PoisonPond:
	db "FGBG_PoisonPond.bin"
PAL_FGBG_PoisonPondEnd:
PAL_FGBG_ReptileRumble:
	db "FGBG_ReptileRumble.bin"
PAL_FGBG_ReptileRumbleEnd:
PAL_FGBG_UnknownPalette1:
	db "FGBG_UnknownPalette1.bin"
PAL_FGBG_UnknownPalette1End:
PAL_FGBG_UnknownPalette2:
	db "FGBG_UnknownPalette2.bin"
PAL_FGBG_UnknownPalette2End:
PAL_FGBG_JungleLevels:
	db "FGBG_JungleLevels.bin"
PAL_FGBG_JungleLevelsEnd:
PAL_FGBG_WalkwayLevels:
	db "FGBG_WalkwayLevels.bin"
PAL_FGBG_WalkwayLevelsEnd:
PAL_FGBG_UnknownPalette3:
	db "FGBG_UnknownPalette3.bin"
PAL_FGBG_UnknownPalette3End:
PAL_FGBG_MineLevels:
	db "FGBG_MineLevels.bin"
PAL_FGBG_MineLevelsEnd:
PAL_FGBG_BouncyBonanza:
	db "FGBG_BouncyBonanza.bin"
PAL_FGBG_BouncyBonanzaEnd:
PAL_FGBG_ManicMincers:
	db "FGBG_ManicMincers.bin"
PAL_FGBG_ManicMincersEnd:
PAL_FGBG_PurpleCaveLevels:
	db "FGBG_PurpleCaveLevels.bin"
PAL_FGBG_PurpleCaveLevelsEnd:
PAL_FGBG_UnknownPalette4:
	db "FGBG_UnknownPalette4.bin"
PAL_FGBG_UnknownPalette4End:
PAL_FGBG_UnknownPalette5:
	db "FGBG_UnknownPalette5.bin"
PAL_FGBG_UnknownPalette5End:
PAL_FGBG_FactoryLevels:
	db "FGBG_FactoryLevels.bin"
PAL_FGBG_FactoryLevelsEnd:
PAL_FGBG_RopeBridgeRumble:
	db "FGBG_RopeBridgeRumble.bin"
PAL_FGBG_RopeBridgeRumbleEnd:
PAL_FGBG_TreeTopTown:
	db "FGBG_TreeTopTown.bin"
PAL_FGBG_TreeTopTownEnd:
PAL_FGBG_TempleLevels:
	db "FGBG_TempleLevels.bin"
PAL_FGBG_TempleLevelsEnd:
PAL_FGBG_TitleScreen:
	db "FGBG_TitleScreen.bin"
PAL_FGBG_TitleScreenEnd:
PAL_FGBG_IntroScreen:
	db "FGBG_IntroScreen.bin"
PAL_FGBG_IntroScreenEnd:
PAL_Sprite_IntroScreen:
	db "Sprite_IntroScreen.bin"
PAL_Sprite_IntroScreenEnd:
PAL_Layer1_GameOverScreen:
	db "Layer1_GameOverScreen.bin"
PAL_Layer1_GameOverScreenEnd:
PAL_Sprite_FunkysFlights:
	db "Sprite_FunkysFlights.bin"
PAL_Sprite_FunkysFlightsEnd:
PAL_Layer1_FunkysFlights:
	db "Layer1_FunkysFlights.bin"
PAL_Layer1_FunkysFlightsEnd:
PAL_FGBG_UnknownPalette6:
	db "FGBG_UnknownPalette6.bin"
PAL_FGBG_UnknownPalette6End:
PAL_Layer1_CandysSavePoint:
	db "Layer1_CandysSavePoint.bin"
PAL_Layer1_CandysSavePointEnd:
PAL_FGBG_UnknownPalette7:
	db "FGBG_UnknownPalette7.bin"
PAL_FGBG_UnknownPalette7End:
PAL_Sprite_CandysSavePoint:
	db "Sprite_CandysSavePoint.bin"
PAL_Sprite_CandysSavePointEnd:
PAL_FGBG_CrankysCabin:
	db "FGBG_CrankysCabin.bin"
PAL_FGBG_CrankysCabinEnd:
PAL_Sprite_CrankysCabin:
	db "Sprite_CrankysCabin.bin"
PAL_Sprite_CrankysCabinEnd:
PAL_FGBG_WorldMap:
	db "FGBG_WorldMap.bin"
PAL_FGBG_WorldMapEnd:
PAL_Sprite_MapScreen:
	db "Sprite_MapScreen.bin"
PAL_Sprite_MapScreenEnd:
PAL_Layer1_KongoJungleMap2:
	db "Layer1_KongoJungleMap2.bin"
PAL_Layer1_KongoJungleMap2End:
PAL_Layer1_KongoJungleMap1:
	db "Layer1_KongoJungleMap1.bin"
PAL_Layer1_KongoJungleMap1End:
PAL_Layer1_CopyrightScreen:
	db "Layer1_CopyrightScreen.bin"
PAL_Layer1_CopyrightScreenEnd:
PAL_Layer1_GorillaGlacierMap2:
	db "Layer1_GorillaGlacierMap2.bin"
PAL_Layer1_GorillaGlacierMap2End:
PAL_Layer1_GorillaGlacierMap1:
	db "Layer1_GorillaGlacierMap1.bin"
PAL_Layer1_GorillaGlacierMap1End:
PAL_Layer1_MonkeyMinesMap2:
	db "Layer1_MonkeyMinesMap2.bin"
PAL_Layer1_MonkeyMinesMap2End:
PAL_Layer1_MonkeyMinesMap1:
	db "Layer1_MonkeyMinesMap1.bin"
PAL_Layer1_MonkeyMinesMap1End:
PAL_FGBG_ForestLevels:
	db "FGBG_ForestLevels.bin"
PAL_FGBG_ForestLevelsEnd:
PAL_FGBG_SlipSlideRide:
	db "FGBG_SlipSlideRide.bin"
PAL_FGBG_SlipSlideRideEnd:
PAL_Layer1_KremkrocIndustriesIncMap1:
	db "Layer1_KremkrocIndustriesIncMap1.bin"
PAL_Layer1_KremkrocIndustriesIncMap1End:
PAL_Layer1_KremkrocIndustriesIncMap2:
	db "Layer1_KremkrocIndustriesIncMap2.bin"
PAL_Layer1_KremkrocIndustriesIncMap2End:
PAL_FGBG_BananaHoardCave:
	db "FGBG_BananaHoardCave.bin"
PAL_FGBG_BananaHoardCaveEnd:
PAL_Layer1_VineValleyMap1:
	db "Layer1_VineValleyMap1.bin"
PAL_Layer1_VineValleyMap1End:
PAL_Layer1_VineValleyMap2:
	db "Layer1_VineValleyMap2.bin"
PAL_Layer1_VineValleyMap2End:
PAL_Layer1_ChimpCavernsMap1:
	db "Layer1_ChimpCavernsMap1.bin"
PAL_Layer1_ChimpCavernsMap1End:
PAL_Layer1_ChimpCavernsMap2:
	db "Layer1_ChimpCavernsMap2.bin"
PAL_Layer1_ChimpCavernsMap2End:
PAL_Layer2_KongsBananaHoardCave:
	db "Layer2_KongsBananaHoardCave.bin"
PAL_Layer2_KongsBananaHoardCaveEnd:
PAL_FGBG_UnknownPalette8:
	db "FGBG_UnknownPalette8.bin"
PAL_FGBG_UnknownPalette8End:
PAL_FGBG_PlayerSelectScreen:
	db "FGBG_PlayerSelectScreen.bin"
PAL_FGBG_PlayerSelectScreenEnd:
PAL_FGBG_FileSelectScreen:
	db "FGBG_FileSelectScreen.bin"
PAL_FGBG_FileSelectScreenEnd:
PAL_Sprite_FileSelectScreen:
	db "Sprite_FileSelectScreen.bin"
PAL_Sprite_FileSelectScreenEnd:
PAL_FGBG_DKsHouse:
	db "FGBG_DKsHouse.bin"
PAL_FGBG_DKsHouseEnd:
PAL_Layer1_ErrorMessageScreen:
	db "Layer1_ErrorMessageScreen.bin"
PAL_Layer1_ErrorMessageScreenEnd:
PAL_FGBG_UnknownPalette9:
	db "FGBG_UnknownPalette9.bin"
PAL_FGBG_UnknownPalette9End:
PAL_Sprite_UnknownPalette1:
	db "Sprite_UnknownPalette1.bin"
PAL_Sprite_UnknownPalette1End:
PAL_Sprite_CaveWallHole:
	db "Sprite_CaveWallHole.bin"
PAL_Sprite_CaveWallHoleEnd:
PAL_Sprite_UnknownPalette2:
	db "Sprite_UnknownPalette2.bin"
PAL_Sprite_UnknownPalette2End:
PAL_Sprite_GroundCover_JungleLevel:
	db "Sprite_GroundCover_JungleLevel.bin"
PAL_Sprite_GroundCover_JungleLevelEnd:
PAL_Sprite_JunglePlant:
	db "Sprite_JunglePlant.bin"
PAL_Sprite_JunglePlantEnd:
PAL_Sprite_DKIslandInFinalBattle:
	db "Sprite_DKIslandInFinalBattle.bin"
PAL_Sprite_DKIslandInFinalBattleEnd:
PAL_Sprite_UnknownPalette3:
	db "Sprite_UnknownPalette3.bin"
PAL_Sprite_UnknownPalette3End:
PAL_Sprite_Cannonball:
	db "Sprite_Cannonball.bin"
PAL_Sprite_CannonballEnd:
PAL_Sprite_MasterNeckysNut:
	db "Sprite_MasterNeckysNut.bin"
PAL_Sprite_MasterNeckysNutEnd:
PAL_Sprite_MasterNecky:
	db "Sprite_MasterNecky.bin"
PAL_Sprite_MasterNeckyEnd:
PAL_Sprite_MasterNeckySnr:
	db "Sprite_MasterNeckySnr.bin"
PAL_Sprite_MasterNeckySnrEnd:
PAL_Sprite_KRool:
	db "Sprite_KRool.bin"
PAL_Sprite_KRoolEnd:
PAL_Sprite_UnknownPalette4:
	db "Sprite_UnknownPalette4.bin"
PAL_Sprite_UnknownPalette4End:
PAL_Sprite_Sign:
	db "Sprite_Sign.bin"
PAL_Sprite_SignEnd:
PAL_Sprite_YellowQueenB:
	db "Sprite_YellowQueenB.bin"
PAL_Sprite_YellowQueenBEnd:
PAL_Sprite_RedQueenB:
	db "Sprite_RedQueenB.bin"
PAL_Sprite_RedQueenBEnd:
PAL_Sprite_RedGnawty:
	db "Sprite_RedGnawty.bin"
PAL_Sprite_RedGnawtyEnd:
PAL_Sprite_DumbDrum:
	db "Sprite_DumbDrum.bin"
PAL_Sprite_DumbDrumEnd:
PAL_Sprite_UnknownPalette5:
	db "Sprite_UnknownPalette5.bin"
PAL_Sprite_UnknownPalette5End:
PAL_Sprite_SteelKeg:
	db "Sprite_SteelKeg.bin"
PAL_Sprite_SteelKegEnd:
PAL_Sprite_Diddy_Active:
	db "Sprite_Diddy_Active.bin"
PAL_Sprite_Diddy_ActiveEnd:
PAL_Sprite_Diddy_Inactive:
	db "Sprite_Diddy_Inactive.bin"
PAL_Sprite_Diddy_InactiveEnd:
PAL_Sprite_Diddy_P2Active:
	db "Sprite_Diddy_P2Active.bin"
PAL_Sprite_Diddy_P2ActiveEnd:
PAL_Sprite_Diddy_P2Inactive:
	db "Sprite_Diddy_P2Inactive.bin"
PAL_Sprite_Diddy_P2InactiveEnd:
PAL_Sprite_DonkeyKong_Active:
	db "Sprite_DonkeyKong_Active.bin"
PAL_Sprite_DonkeyKong_ActiveEnd:
PAL_Sprite_DonkeyKong_Inactive:
	db "Sprite_DonkeyKong_Inactive.bin"
PAL_Sprite_DonkeyKong_InactiveEnd:
PAL_Sprite_DonkeyKong_P2Active:
	db "Sprite_DonkeyKong_P2Active.bin"
PAL_Sprite_DonkeyKong_P2ActiveEnd:
PAL_Sprite_DonkeyKong_P2Inactive:
	db "Sprite_DonkeyKong_P2Inactive.bin"
PAL_Sprite_DonkeyKong_P2InactiveEnd:
PAL_Sprite_GreenKritter:
	db "Sprite_GreenKritter.bin"
PAL_Sprite_GreenKritterEnd:
PAL_Sprite_VioletKritter:
	db "Sprite_VioletKritter.bin"
PAL_Sprite_VioletKritterEnd:
PAL_Sprite_BrownKritter:
	db "Sprite_BrownKritter.bin"
PAL_Sprite_BrownKritterEnd:
PAL_Sprite_BlueKritter:
	db "Sprite_BlueKritter.bin"
PAL_Sprite_BlueKritterEnd:
PAL_Sprite_YellowKritter:
	db "Sprite_YellowKritter.bin"
PAL_Sprite_YellowKritterEnd:
PAL_Sprite_GreyKritter:
	db "Sprite_GreyKritter.bin"
PAL_Sprite_GreyKritterEnd:
PAL_Sprite_Klump:
	db "Sprite_Klump.bin"
PAL_Sprite_KlumpEnd:
PAL_Sprite_Expresso:
	db "Sprite_Expresso.bin"
PAL_Sprite_ExpressoEnd:
PAL_Sprite_Slippa:
	db "Sprite_Slippa.bin"
PAL_Sprite_SlippaEnd:
PAL_Sprite_UnknownPalette6:
	db "Sprite_UnknownPalette6.bin"
PAL_Sprite_UnknownPalette6End:
PAL_Sprite_Winky:
	db "Sprite_Winky.bin"
PAL_Sprite_WinkyEnd:
PAL_Sprite_BrownRope:
	db "Sprite_BrownRope.bin"
PAL_Sprite_BrownRopeEnd:
PAL_Sprite_Minecart:
	db "Sprite_Minecart.bin"
PAL_Sprite_MinecartEnd:
PAL_Sprite_Squidge:
	db "Sprite_Squidge.bin"
PAL_Sprite_SquidgeEnd:
PAL_Sprite_UnknownPalette7:
	db "Sprite_UnknownPalette7.bin"
PAL_Sprite_UnknownPalette7End:
PAL_Sprite_Necky:
	db "Sprite_Necky.bin"
PAL_Sprite_NeckyEnd:
PAL_Sprite_Global:
	db "Sprite_Global.bin"
PAL_Sprite_GlobalEnd:
PAL_Sprite_AnimalBuddyBox:
	db "Sprite_AnimalBuddyBox.bin"
PAL_Sprite_AnimalBuddyBoxEnd:
PAL_Sprite_Barrel:
	db "Sprite_Barrel.bin"
PAL_Sprite_BarrelEnd:
PAL_Sprite_MinecartSparks:
	db "Sprite_MinecartSparks.bin"
PAL_Sprite_MinecartSparksEnd:
PAL_Sprite_BlueKlaptrap:
	db "Sprite_BlueKlaptrap.bin"
PAL_Sprite_BlueKlaptrapEnd:
PAL_Sprite_GreenKlaptrap:
	db "Sprite_GreenKlaptrap.bin"
PAL_Sprite_GreenKlaptrapEnd:
PAL_Sprite_PurpleKlaptrap:
	db "Sprite_PurpleKlaptrap.bin"
PAL_Sprite_PurpleKlaptrapEnd:
PAL_Sprite_RedKlaptrap:
	db "Sprite_RedKlaptrap.bin"
PAL_Sprite_RedKlaptrapEnd:
PAL_Sprite_GreyKlaptrap:
	db "Sprite_GreyKlaptrap.bin"
PAL_Sprite_GreyKlaptrapEnd:
PAL_Sprite_UnknownPalette8:
	db "Sprite_UnknownPalette8.bin"
PAL_Sprite_UnknownPalette8End:
PAL_Sprite_Tire:
	db "Sprite_Tire.bin"
PAL_Sprite_TireEnd:
PAL_Sprite_LoopyLightsTire:
	db "Sprite_LoopyLightsTire.bin"
PAL_Sprite_LoopyLightsTireEnd:
PAL_Sprite_GiantBanana:
	db "Sprite_GiantBanana.bin"
PAL_Sprite_GiantBananaEnd:
PAL_Sprite_RedExtraLifeBalloon:
	db "Sprite_RedExtraLifeBalloon.bin"
PAL_Sprite_RedExtraLifeBalloonEnd:
PAL_Sprite_GreenExtraLifeBalloon:
	db "Sprite_GreenExtraLifeBalloon.bin"
PAL_Sprite_GreenExtraLifeBalloonEnd:
PAL_Sprite_BlueExtraLifeBalloon:
	db "Sprite_BlueExtraLifeBalloon.bin"
PAL_Sprite_BlueExtraLifeBalloonEnd:
PAL_Sprite_CavePlatform:
	db "Sprite_CavePlatform.bin"
PAL_Sprite_CavePlatformEnd:
PAL_Sprite_MinePlatform:
	db "Sprite_MinePlatform.bin"
PAL_Sprite_MinePlatformEnd:
PAL_Sprite_LoopyLightsMinePlatform:
	db "Sprite_LoopyLightsMinePlatform.bin"
PAL_Sprite_LoopyLightsMinePlatformEnd:
PAL_Sprite_PurpleButterfly:
	db "Sprite_PurpleButterfly.bin"
PAL_Sprite_PurpleButterflyEnd:
PAL_Sprite_PinkButterfly:
	db "Sprite_PinkButterfly.bin"
PAL_Sprite_PinkButterflyEnd:
PAL_Sprite_YellowButterfly:
	db "Sprite_YellowButterfly.bin"
PAL_Sprite_YellowButterflyEnd:
PAL_Sprite_DarkRedButterfly:
	db "Sprite_DarkRedButterfly.bin"
PAL_Sprite_DarkRedButterflyEnd:
PAL_Sprite_AnimalBuddyToken:
	db "Sprite_AnimalBuddyToken.bin"
PAL_Sprite_AnimalBuddyTokenEnd:
PAL_Sprite_BlueKrusha:
	db "Sprite_BlueKrusha.bin"
PAL_Sprite_BlueKrushaEnd:
PAL_Sprite_GreyKrusha:
	db "Sprite_GreyKrusha.bin"
PAL_Sprite_GreyKrushaEnd:
PAL_Sprite_ElevatorLift:
	db "Sprite_ElevatorLift.bin"
PAL_Sprite_ElevatorLiftEnd:
PAL_Sprite_GreenGnawty:
	db "Sprite_GreenGnawty.bin"
PAL_Sprite_GreenGnawtyEnd:
PAL_Sprite_ArrowPlatform:
	db "Sprite_ArrowPlatform.bin"
PAL_Sprite_ArrowPlatformEnd:
PAL_Sprite_MankyKong:
	db "Sprite_MankyKong.bin"
PAL_Sprite_MankyKongEnd:
PAL_Sprite_MiniNecky:
	db "Sprite_MiniNecky.bin"
PAL_Sprite_MiniNeckyEnd:
PAL_Sprite_UnknownPalette9:
	db "Sprite_UnknownPalette9.bin"
PAL_Sprite_UnknownPalette9End:
PAL_Sprite_Chomps:
	db "Sprite_Chomps.bin"
PAL_Sprite_ChompsEnd:
PAL_Sprite_ChompsJr:
	db "Sprite_ChompsJr.bin"
PAL_Sprite_ChompsJrEnd:
PAL_Sprite_Bitesize:
	db "Sprite_Bitesize.bin"
PAL_Sprite_BitesizeEnd:
PAL_Sprite_Puftup:
	db "Sprite_Puftup.bin"
PAL_Sprite_PuftupEnd:
PAL_Sprite_BlueCroctopus:
	db "Sprite_BlueCroctopus.bin"
PAL_Sprite_BlueCroctopusEnd:
PAL_Sprite_PurpleCroctopus:
	db "Sprite_PurpleCroctopus.bin"
PAL_Sprite_PurpleCroctopusEnd:
PAL_Sprite_BrownCroctopus:
	db "Sprite_BrownCroctopus.bin"
PAL_Sprite_BrownCroctopusEnd:
PAL_Sprite_Enguarde:
	db "Sprite_Enguarde.bin"
PAL_Sprite_EnguardeEnd:
PAL_Sprite_GreenFueledPlatform:
	db "Sprite_GreenFueledPlatform.bin"
PAL_Sprite_GreenFueledPlatformEnd:
PAL_Sprite_OrangeFueledPlatform:
	db "Sprite_OrangeFueledPlatform.bin"
PAL_Sprite_OrangeFueledPlatformEnd:
PAL_Sprite_RedFueledPlatform:
	db "Sprite_RedFueledPlatform.bin"
PAL_Sprite_RedFueledPlatformEnd:
PAL_Sprite_CeilingLight:
	db "Sprite_CeilingLight.bin"
PAL_Sprite_CeilingLightEnd:
PAL_Sprite_TrickTrackTrekPlatform:
	db "Sprite_TrickTrackTrekPlatform.bin"
PAL_Sprite_TrickTrackTrekPlatformEnd:
PAL_Sprite_FuelCan:
	db "Sprite_FuelCan.bin"
PAL_Sprite_FuelCanEnd:
PAL_Sprite_UnknownPalette10:
	db "Sprite_UnknownPalette10.bin"
PAL_Sprite_UnknownPalette10End:
PAL_Sprite_FishInDKHousePicture:
	db "Sprite_FishInDKHousePicture.bin"
PAL_Sprite_FishInDKHousePictureEnd:
PAL_Sprite_Clambo:
	db "Sprite_Clambo.bin"
PAL_Sprite_ClamboEnd:
PAL_Sprite_OffBarrel:
	db "Sprite_OffBarrel.bin"
PAL_Sprite_OffBarrelEnd:
PAL_Sprite_OnBarrel:
	db "Sprite_OnBarrel.bin"
PAL_Sprite_OnBarrelEnd:
PAL_Sprite_GoBarrel:
	db "Sprite_GoBarrel.bin"
PAL_Sprite_GoBarrelEnd:
PAL_Sprite_StopBarrel:
	db "Sprite_StopBarrel.bin"
PAL_Sprite_StopBarrelEnd:
PAL_Sprite_FactoryPlatform:
	db "Sprite_FactoryPlatform.bin"
PAL_Sprite_FactoryPlatformEnd:
PAL_Sprite_GroundCover_TempleLevel:
	db "Sprite_GroundCover_TempleLevel.bin"
PAL_Sprite_GroundCover_TempleLevelEnd:
PAL_Sprite_Rockkroc:
	db "Sprite_Rockkroc.bin"
PAL_Sprite_RockkrocEnd:
PAL_Sprite_YellowZinger:
	db "Sprite_YellowZinger.bin"
PAL_Sprite_YellowZingerEnd:
PAL_Sprite_PinkZinger:
	db "Sprite_PinkZinger.bin"
PAL_Sprite_PinkZingerEnd:
PAL_Sprite_OrangeZinger:
	db "Sprite_OrangeZinger.bin"
PAL_Sprite_OrangeZingerEnd:
PAL_Sprite_GreyPurpleZinger:
	db "Sprite_GreyPurpleZinger.bin"
PAL_Sprite_GreyPurpleZingerEnd:
PAL_Sprite_BlueZinger:
	db "Sprite_BlueZinger.bin"
PAL_Sprite_BlueZingerEnd:
PAL_Sprite_GreenZinger:
	db "Sprite_GreenZinger.bin"
PAL_Sprite_GreenZingerEnd:
PAL_Sprite_UnknownPalette11:
	db "Sprite_UnknownPalette11.bin"
PAL_Sprite_UnknownPalette11End:
PAL_Sprite_BreakableWall_RightTempleWall:
	db "Sprite_BreakableWall_RightTempleWall.bin"
PAL_Sprite_BreakableWall_RightTempleWallEnd:
PAL_Sprite_DarkenedLetter:
	db "Sprite_DarkenedLetter.bin"
PAL_Sprite_DarkenedLetterEnd:
PAL_Sprite_GroundCover_FactoryLevel:
	db "Sprite_GroundCover_FactoryLevel.bin"
PAL_Sprite_GroundCover_FactoryLevelEnd:
PAL_Sprite_UnknownPalette12:
	db "Sprite_UnknownPalette12.bin"
PAL_Sprite_UnknownPalette12End:
PAL_Sprite_GroundCover_ForestLevel:
	db "Sprite_GroundCover_ForestLevel.bin"
PAL_Sprite_GroundCover_ForestLevelEnd:
PAL_Sprite_BlueRope:
	db "Sprite_BlueRope.bin"
PAL_Sprite_BlueRopeEnd:
PAL_Sprite_BreakableWall_LeftCrystalCaveWall:
	db "Sprite_BreakableWall_LeftCrystalCaveWall.bin"
PAL_Sprite_BreakableWall_LeftCrystalCaveWallEnd:
PAL_Sprite_PurpleRope:
	db "Sprite_PurpleRope.bin"
PAL_Sprite_PurpleRopeEnd:
PAL_Sprite_OilDrumAndFire:
	db "Sprite_OilDrumAndFire.bin"
PAL_Sprite_OilDrumAndFireEnd:
PAL_Sprite_CheckpointStars:
	db "Sprite_CheckpointStars.bin"
PAL_Sprite_CheckpointStarsEnd:
PAL_Sprite_Squawks:
	db "Sprite_Squawks.bin"
PAL_Sprite_SquawksEnd:
PAL_Sprite_SlipSlideRideWarpBarrel:
	db "Sprite_SlipSlideRideWarpBarrel.bin"
PAL_Sprite_SlipSlideRideWarpBarrelEnd:
PAL_Sprite_FunkyKong:
	db "Sprite_FunkyKong.bin"
PAL_Sprite_FunkyKongEnd:
PAL_Sprite_FunkysSurfboard:
	db "Sprite_FunkysSurfboard.bin"
PAL_Sprite_FunkysSurfboardEnd:
PAL_Sprite_CandyKong:
	db "Sprite_CandyKong.bin"
PAL_Sprite_CandyKongEnd:
PAL_Sprite_CrankyKong:
	db "Sprite_CrankyKong.bin"
PAL_Sprite_CrankyKongEnd:
PAL_Sprite_Kredits:
	db "Sprite_Kredits.bin"
PAL_Sprite_KreditsEnd:

;--------------------------------------------------------------------

DATA_C07A21:
	db "DATA_C07A21.bin"
DATA_C07A21End:
DATA_C174BA:
	db "DATA_C174BA.bin"
DATA_C174BAEnd:
DATA_81F3E8:
	db "DATA_81F3E8.bin"
DATA_81F3E8End:
DATA_C2F7ED:
	db "DATA_C2F7ED.bin"
DATA_C2F7EDEnd:
DATA_C4FDB2:
	db "DATA_C4FDB2.bin"
DATA_C4FDB2End:
DATA_C5FEB2:
	db "DATA_C5FEB2.bin"
DATA_C5FEB2End:
DATA_C6FEF7:
	db "DATA_C6FEF7.bin"
DATA_C6FEF7End:
DATA_C9F905:
	db "DATA_C9F905.bin"
DATA_C9F905End:
DATA_CAF86C:
	db "DATA_CAF86C.bin"
DATA_CAF86CEnd:
DATA_CDFD8B:
	db "DATA_CDFD8B.bin"
DATA_CDFD8BEnd:
DATA_CFFF5C:
	db "DATA_CFFF5C.bin"
DATA_CFFF5CEnd:
GFX_KRoolCrown_Unknown:
	db "GFX_KRoolCrown_Unknown.bin"
GFX_KRoolCrown_UnknownEnd:
DATA_DBFE39:
	db "DATA_DBFE39.bin"
DATA_DBFE39End:
GFX_UnknownGraphics:
	db "GFX_UnknownGraphics.bin"
GFX_UnknownGraphicsEnd:
GFX_VeryGnawty_Unknown:
	db "GFX_VeryGnawty_Unknown.bin"
GFX_VeryGnawty_UnknownEnd:
DATA_E7FFA9:
	db "DATA_E7FFA9.bin"
DATA_E7FFA9End:
DATA_E9F400:
	db "DATA_E9F400.bin"
DATA_E9F400End:
DATA_EEFE9D:
	db "DATA_EEFE9D.bin"
DATA_EEFE9DEnd:
DATA_EFFD48:
	db "DATA_EFFD48.bin"
DATA_EFFD48End:
DATA_F0FD00:
	db "DATA_F0FD00.bin"
DATA_F0FD00End:
DATA_F1EAE5:
	db "DATA_F1EAE5.bin"
DATA_F1EAE5End:
DATA_F4FE9E:
	db "DATA_F4FE9E.bin"
DATA_F4FE9EEnd:
DATA_F57D92:
	db "DATA_F57D92.bin"
DATA_F57D92End:
DATA_B6FCB4:
	db "DATA_B6FCB4.bin"
DATA_B6FCB4End:
DATA_F7FF0A:
	db "DATA_F7FF0A.bin"
DATA_F7FF0AEnd:
DATA_B8DD8A:
	db "DATA_B8DD8A.bin"
DATA_B8DD8AEnd:
DATA_B9FF65:
	db "DATA_B9FF65.bin"
DATA_B9FF65End:
DATA_FB7EB8:
	db "DATA_FB7EB8.bin"
DATA_FB7EB8End:
DATA_BCFF1B:
	db "DATA_BCFF1B.bin"
DATA_BCFF1BEnd:
DATA_FD7DB5:
	db "DATA_FD7DB5.bin"
DATA_FD7DB5End:
GFX_BreakableWall_Unknown:
	db "GFX_BreakableWall_Unknown.bin"
GFX_BreakableWall_UnknownEnd:
DATA_BEF15A:
	db "DATA_BEF15A.bin"
DATA_BEF15AEnd:
GFX_FF6261:
	db "GFX_FF6261.bin"
GFX_FF6261End:
DATA_FFFF2C:
	db "DATA_FFFF2C.bin"
DATA_FFFF2CEnd:

;--------------------------------------------------------------------

Music_SimianSegue:
	db "SimianSegue.bin"
Music_SimianSegueEnd:
Music_GangplankGalleon:
	db "GangplankGalleon.bin"
Music_GangplankGalleonEnd:
Music_ForestFrenzy:
	db "ForestFrenzy.bin"
Music_ForestFrenzyEnd:
Music_TreetopRock:
	db "TreetopRock.bin"
Music_TreetopRockEnd:
Music_FunkysFugue:
	db "FunkysFugue.bin"
Music_FunkysFugueEnd:
Music_CaveDwellerConcert:
	db "CaveDwellerConcert.bin"
Music_CaveDwellerConcertEnd:
Music_MistyMenance:
	db "MistyMenance.bin"
Music_MistyMenanceEnd:
Music_FearFactory:
	db "FearFactory.bin"
Music_FearFactoryEnd:
Music_NorthernHemispheres:
	db "NorthernHemispheres.bin"
Music_NorthernHemispheresEnd:
Music_MineCartMadness:
	db "MineCartMadness.bin"
Music_MineCartMadnessEnd:
Music_AquaticAmbience:
	db "AquaticAmbience.bin"
Music_AquaticAmbienceEnd:
Music_CrankysTheme:
	db "CrankysTheme.bin"
Music_CrankysThemeEnd:
Music_DKIslandSwing:
	db "DKIslandSwing.bin"
Music_DKIslandSwingEnd:
Music_TitleTheme:
	db "TitleTheme.bin"
Music_TitleThemeEnd:
Music_Failure:
	db "Failure.bin"
Music_FailureEnd:
Music_EarlyTitleTheme:
	db "EarlyTitleTheme.bin"
Music_EarlyTitleThemeEnd:
Music_BonusRoomBlitz:
	db "BonusRoomBlitz.bin"
Music_BonusRoomBlitzEnd:
Music_VoicesOfTheTemple:
	db "VoicesOfTheTemple.bin"
Music_VoicesOfTheTempleEnd:
Music_CreditsConcerto:
	db "CreditsConcerto.bin"
Music_CreditsConcertoEnd:
Music_EarlyCreditsConcerto:
	db "EarlyCreditsConcerto.bin"
Music_EarlyCreditsConcertoEnd:
Music_DeathMusic:
	db "DeathMusic.bin"
Music_DeathMusicEnd:
Music_LifeInTheMines:
	db "LifeInTheMines.bin"
Music_LifeInTheMinesEnd:
Music_BadBossBoogie:
	db "BadBossBoogie.bin"
Music_BadBossBoogieEnd:
Music_EarlyBadBossBoogie:
	db "EarlyBadBossBoogie.bin"
Music_EarlyBadBossBoogieEnd:
Music_SplashScreenFanfare:
	db "SplashScreenFanfare.bin"
Music_SplashScreenFanfareEnd:
Music_Victory:
	db "Victory.bin"
Music_VictoryEnd:
Music_IceCaveChant:
	db "IceCaveChant.bin"
Music_IceCaveChantEnd:
Music_CandysLoveSong:
	db "CandysLoveSong.bin"
Music_CandysLoveSongEnd:
Music_GameOver:
	db "GameOver.bin"
Music_GameOverEnd:
Music_BeatLevel:
	db "BeatLevel.bin"
Music_BeatLevelEnd:

;--------------------------------------------------------------------

GlobalSoundEffects:
	db "GlobalSoundEffects.bin"
GlobalSoundEffectsEnd:

;--------------------------------------------------------------------

BRRFile00:
	db "00.brr"
BRRFile00End:
BRRFile01:
	db "01.brr"
BRRFile01End:
BRRFile02:
	db "02.brr"
BRRFile02End:
BRRFile03:
	db "03.brr"
BRRFile03End:
BRRFile04:
	db "04.brr"
BRRFile04End:
BRRFile05:
	db "05.brr"
BRRFile05End:
BRRFile06:
	db "06.brr"
BRRFile06End:
BRRFile07:
	db "07.brr"
BRRFile07End:
BRRFile08:
	db "08.brr"
BRRFile08End:
BRRFile09:
	db "09.brr"
BRRFile09End:
BRRFile0A:
	db "0A.brr"
BRRFile0AEnd:
BRRFile0B:
	db "0B.brr"
BRRFile0BEnd:
BRRFile0C:
	db "0C.brr"
BRRFile0CEnd:
BRRFile0D:
	db "0D.brr"
BRRFile0DEnd:
BRRFile0E:
	db "0E.brr"
BRRFile0EEnd:
BRRFile0F:
	db "0F.brr"
BRRFile0FEnd:
BRRFile10:
	db "10.brr"
BRRFile10End:
BRRFile11:
	db "11.brr"
BRRFile11End:
BRRFile12:
	db "12.brr"
BRRFile12End:
BRRFile13:
	db "13.brr"
BRRFile13End:
BRRFile14:
	db "14.brr"
BRRFile14End:
BRRFile15:
	db "15.brr"
BRRFile15End:
BRRFile16:
	db "16.brr"
BRRFile16End:
BRRFile17:
	db "17.brr"
BRRFile17End:
BRRFile18:
	db "18.brr"
BRRFile18End:
BRRFile19:
	db "19.brr"
BRRFile19End:
BRRFile1A:
	db "1A.brr"
BRRFile1AEnd:
BRRFile1B:
	db "1B.brr"
BRRFile1BEnd:
BRRFile1C:
	db "1C.brr"
BRRFile1CEnd:
BRRFile1D:
	db "1D.brr"
BRRFile1DEnd:
BRRFile1E:
	db "1E.brr"
BRRFile1EEnd:
BRRFile1F:
	db "1F.brr"
BRRFile1FEnd:
BRRFile20:
	db "20.brr"
BRRFile20End:
BRRFile21:
	db "21.brr"
BRRFile21End:
BRRFile22:
	db "22.brr"
BRRFile22End:
BRRFile23:
	db "23.brr"
BRRFile23End:
BRRFile24:
	db "24.brr"
BRRFile24End:
BRRFile25:
	db "25.brr"
BRRFile25End:
BRRFile26:
	db "26.brr"
BRRFile26End:
BRRFile27:
	db "27.brr"
BRRFile27End:
BRRFile28:
	db "28.brr"
BRRFile28End:
BRRFile29:
	db "29.brr"
BRRFile29End:
BRRFile2A:
	db "2A.brr"
BRRFile2AEnd:
BRRFile2B:
	db "2B.brr"
BRRFile2BEnd:
BRRFile2C:
	db "2C.brr"
BRRFile2CEnd:
BRRFile2D:
	db "2D.brr"
BRRFile2DEnd:
BRRFile2E:
	db "2E.brr"
BRRFile2EEnd:
BRRFile2F:
	db "2F.brr"
BRRFile2FEnd:
BRRFile30:
	db "30.brr"
BRRFile30End:
BRRFile31:
	db "31.brr"
BRRFile31End:
BRRFile32:
	db "32.brr"
BRRFile32End:
BRRFile33:
	db "33.brr"
BRRFile33End:
BRRFile34:
	db "34.brr"
BRRFile34End:
BRRFile35:
	db "35.brr"
BRRFile35End:
BRRFile36:
	db "36.brr"
BRRFile36End:
BRRFile37:
	db "37.brr"
BRRFile37End:
BRRFile38:
	db "38.brr"
BRRFile38End:
BRRFile39:
	db "39.brr"
BRRFile39End:
BRRFile3A:
	db "3A.brr"
BRRFile3AEnd:
BRRFile3B:
	db "3B.brr"
BRRFile3BEnd:
BRRFile3C:
	db "3C.brr"
BRRFile3CEnd:
BRRFile3D:
	db "3D.brr"
BRRFile3DEnd:
BRRFile3E:
	db "3E.brr"
BRRFile3EEnd:
BRRFile3F:
	db "3F.brr"
BRRFile3FEnd:
BRRFile40:
	db "40.brr"
BRRFile40End:
BRRFile41:
	db "41.brr"
BRRFile41End:
BRRFile42:
	db "42.brr"
BRRFile42End:
BRRFile43:
	db "43.brr"
BRRFile43End:
BRRFile44:
	db "44.brr"
BRRFile44End:
BRRFile45:
	db "45.brr"
BRRFile45End:

;--------------------------------------------------------------------
