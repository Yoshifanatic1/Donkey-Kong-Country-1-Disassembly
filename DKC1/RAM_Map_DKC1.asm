
; $000030 = Level ID?

!RAM_DKC1_Global_EntranceIDLo = $00003E
!RAM_DKC1_Global_EntranceIDHi = !RAM_DKC1_Global_EntranceIDLo+$01

!RAM_DKC1_NorSpr_CurrentIndexLo = $000082
!RAM_DKC1_NorSpr_CurrentIndexHi = !RAM_DKC1_NorSpr_CurrentIndexLo+$01

!RAM_DKC1_Global_OAMIndexLo = $00008E
!RAM_DKC1_Global_OAMIndexHi = !RAM_DKC1_Global_OAMIndexLo+$01

; $0000D3 = 24-bit Map32/Level Data pointer

!RAM_DKC1_Global_OAMBuffer = $000200

!RAM_DKC1_Global_HeldButtonsLoP1 = $000500
!RAM_DKC1_Global_HeldButtonsHiP1 = !RAM_DKC1_Global_HeldButtonsLoP1+$01
!RAM_DKC1_Global_HeldButtonsLoP2 = $000502
!RAM_DKC1_Global_HeldButtonsHiP2 = !RAM_DKC1_Global_HeldButtonsLoP2+$01
!RAM_DKC1_Global_PressedButtonsLoP1 = $000504
!RAM_DKC1_Global_PressedButtonsHiP1 = !RAM_DKC1_Global_PressedButtonsLoP1+$01
!RAM_DKC1_Global_PressedButtonsLoP2 = $000506
!RAM_DKC1_Global_PressedButtonsHiP2 = !RAM_DKC1_Global_PressedButtonsLoP2+$01

!RAM_DKC1_Global_HeldButtonsLo = $00050E
!RAM_DKC1_Global_HeldButtonsHi = !RAM_DKC1_Global_HeldButtonsLo+$01
!RAM_DKC1_Global_PressedButtonsLo = $000510
!RAM_DKC1_Global_PressedButtonsHi = !RAM_DKC1_Global_PressedButtonsLo+$01

!RAM_DKC1_Global_ScreenDisplayRegister = $00051A

!RAM_DKC1_Player_DisplayedBananaCountLo = $000529
!RAM_DKC1_Player_DisplayedBananaCountHi = !RAM_DKC1_Player_DisplayedBananaCountLo+$01
!RAM_DKC1_Player_BananaCountOnesDigit = $00052B
!RAM_DKC1_Player_BananaCountTensDigit = $00052C
!RAM_DKC1_Player_BananaCountHundredsDigit = $00052D

!RAM_DKC1_Level_ShowBananaCountTimerLo = $00052F
!RAM_DKC1_Level_ShowBananaCountTimerHi = !RAM_DKC1_Level_ShowBananaCountTimerLo+$01

!RAM_DKC1_Level_FreeMovementDebugFlagLo = $000535
!RAM_DKC1_Level_FreeMovementDebugFlagHi = !RAM_DKC1_Level_FreeMovementDebugFlagLo+$01

!RAM_DKC1_Level_GiveBackAnimalBuddyFlagLo = $00055D
!RAM_DKC1_Level_GiveBackAnimalBuddyFlagHi = !RAM_DKC1_Level_GiveBackAnimalBuddyFlagLo+$01

!RAM_DKC1_Global_CurrentLanguageLo = $000567
!RAM_DKC1_Global_CurrentLanguageHi = !RAM_DKC1_Global_CurrentLanguageLo+$01

!RAM_DKC1_Global_CheatCodeFlagsLo = $00056B
!RAM_DKC1_Global_CheatCodeFlagsHi = !RAM_DKC1_Global_CheatCodeFlagsLo+$01
!RAM_DKC1_FileSelect_WaitToFadeBackToIntroTimerLo = $00056D
!RAM_DKC1_FileSelect_WaitToFadeBackToIntroTimerHi = !RAM_DKC1_FileSelect_WaitToFadeBackToIntroTimerLo+$01
!RAM_DKC1_Player_CurrentKongLo = $00056F
!RAM_DKC1_Player_CurrentKongHi = !RAM_DKC1_Player_CurrentKongLo+$01
!RAM_DKC1_Player_WinkyTokenCount = $000571
!RAM_DKC1_Player_ExpressoTokenCount = !RAM_DKC1_Player_WinkyTokenCount+$01
!RAM_DKC1_Player_RambiTokenCount = !RAM_DKC1_Player_WinkyTokenCount+$02
!RAM_DKC1_Player_EnguardeTokenCount = !RAM_DKC1_Player_WinkyTokenCount+$03
!RAM_DKC1_Player_CurrentLifeCountLo = $000575
!RAM_DKC1_Player_CurrentLifeCountHi = !RAM_DKC1_Player_CurrentLifeCountLo+$01
!RAM_DKC1_Player_DisplayedLifeCountLo = $000577
!RAM_DKC1_Player_DisplayedLifeCountHi = !RAM_DKC1_Player_DisplayedLifeCountLo+$01

!RAM_DKC1_Player_CurrentBananaCountLo = $00057B
!RAM_DKC1_Player_CurrentBananaCountHi = !RAM_DKC1_Player_CurrentBananaCountLo+$01

!RAM_DKC1_Player_CollectedKONGLettersLo = $00057F
!RAM_DKC1_Player_CollectedKONGLettersHi = !RAM_DKC1_Player_CollectedKONGLettersLo+$01
!RAM_DKC1_FileSelect_CurrentSelectionLo = $000581
!RAM_DKC1_FileSelect_CurrentSelectionHi = !RAM_DKC1_FileSelect_CurrentSelectionLo+$01

!RAM_DKC1_Global_Layer1XPosLo = $00088B
!RAM_DKC1_Global_Layer1XPosHi = !RAM_DKC1_Global_Layer1XPosLo+$01

!RAM_DKC1_Global_Layer1YPosLo = $000895
!RAM_DKC1_Global_Layer1YPosHi = !RAM_DKC1_Global_Layer1YPosLo+$01

!RAM_DKC1_NorSpr_CurrentOAMZPosLo = $000A7D
!RAM_DKC1_NorSpr_CurrentOAMZPosHi = !RAM_DKC1_NorSpr_CurrentOAMZPosLo+$01
!RAM_DKC1_NorSpr_DrawOrderIndexLo = $000AB1
!RAM_DKC1_NorSpr_DrawOrderIndexHi = !RAM_DKC1_NorSpr_DrawOrderIndexLo+$01
!RAM_DKC1_NorSpr_DisplayedPoseLo = $000AE5
!RAM_DKC1_NorSpr_DisplayedPoseHi = !RAM_DKC1_NorSpr_DisplayedPoseLo+$01
!RAM_DKC1_NorSpr_XPosLo = $000B19
!RAM_DKC1_NorSpr_XPosHi = !RAM_DKC1_NorSpr_XPosLo+$01
;$000B4D-$000B8C
!RAM_DKC1_NorSpr_OAMZPosLo = $000B8D
!RAM_DKC1_NorSpr_OAMZPosHi = !RAM_DKC1_NorSpr_OAMZPosLo+$01
!RAM_DKC1_NorSpr_YPosLo = $000BC1
!RAM_DKC1_NorSpr_YPosHi = !RAM_DKC1_NorSpr_YPosLo+$01
;$000BF5-$000C34
!RAM_DKC1_NorSpr_RAMTable0C35Lo = $000C35
!RAM_DKC1_NorSpr_RAMTable0C35Hi = !RAM_DKC1_NorSpr_RAMTable0C35Lo+$01
!RAM_DKC1_NorSpr_YXPPCCCTLo = $000C69									; Note: Low byte = VRAM index of graphics. High byte = YXPPCCCT (T bit also used for the VRAM index).
!RAM_DKC1_NorSpr_YXPPCCCTHi = !RAM_DKC1_NorSpr_YXPPCCCTLo+$01
;$000C9D-$000CDC
!RAM_DKC1_NorSpr_RAMTable0CDDLo = $000CDD
!RAM_DKC1_NorSpr_RAMTable0CDDHi = !RAM_DKC1_NorSpr_RAMTable0CDDLo+$01
!RAM_DKC1_NorSpr_CurrentPoseLo = $000D11
!RAM_DKC1_NorSpr_CurrentPoseHi = !RAM_DKC1_NorSpr_CurrentPoseLo+$01
!RAM_DKC1_NorSpr_SpriteIDLo = $000D45
!RAM_DKC1_NorSpr_SpriteIDHi = !RAM_DKC1_NorSpr_SpriteIDLo+$01
;$000D79-$000DB8
!RAM_DKC1_NorSpr_RAMTable0DB9Lo = $000DB9
!RAM_DKC1_NorSpr_RAMTable0DB9Hi = !RAM_DKC1_NorSpr_RAMTable0DB9Lo+$01
!RAM_DKC1_NorSpr_RAMTable0DEDLo = $000DED
!RAM_DKC1_NorSpr_RAMTable0DEDHi = !RAM_DKC1_NorSpr_RAMTable0DEDLo+$01
!RAM_DKC1_NorSpr_RAMTable0E21Lo = $000E21
!RAM_DKC1_NorSpr_RAMTable0E21Hi = !RAM_DKC1_NorSpr_RAMTable0E21Lo+$01
!RAM_DKC1_NorSpr_RAMTable0E55Lo = $000E55
!RAM_DKC1_NorSpr_RAMTable0E55Hi = !RAM_DKC1_NorSpr_RAMTable0E55Lo+$01
!RAM_DKC1_NorSpr_XSpeedLo = $000E89
!RAM_DKC1_NorSpr_XSpeedHi = !RAM_DKC1_NorSpr_XSpeedLo+$01
!RAM_DKC1_NorSpr_RAMTable0EBDLo = $000EBD
!RAM_DKC1_NorSpr_RAMTable0EBDHi = !RAM_DKC1_NorSpr_RAMTable0EBDLo+$01
!RAM_DKC1_NorSpr_YSpeedLo = $000EF1
!RAM_DKC1_NorSpr_YSpeedHi = !RAM_DKC1_NorSpr_YSpeedLo+$01
!RAM_DKC1_NorSpr_RAMTable0F25Lo = $000F25
!RAM_DKC1_NorSpr_RAMTable0F25Hi = !RAM_DKC1_NorSpr_RAMTable0F25Lo+$01
!RAM_DKC1_NorSpr_RAMTable0F59Lo = $000F59
!RAM_DKC1_NorSpr_RAMTable0F59Hi = !RAM_DKC1_NorSpr_RAMTable0F59Lo+$01
!RAM_DKC1_NorSpr_RAMTable0F8DLo = $000F8D
!RAM_DKC1_NorSpr_RAMTable0F8DHi = !RAM_DKC1_NorSpr_RAMTable0F8DLo+$01
!RAM_DKC1_NorSpr_RAMTable0FC1Lo = $000FC1
!RAM_DKC1_NorSpr_RAMTable0FC1Hi = !RAM_DKC1_NorSpr_RAMTable0FC1Lo+$01
!RAM_DKC1_NorSpr_RAMTable0FF5Lo = $000FF5
!RAM_DKC1_NorSpr_RAMTable0FF5Hi = !RAM_DKC1_NorSpr_RAMTable0FF5Lo+$01
!RAM_DKC1_NorSpr_RAMTable1029Lo = $001029
!RAM_DKC1_NorSpr_RAMTable1029Hi = !RAM_DKC1_NorSpr_RAMTable1029Lo+$01
;$00105D-$00109C
!RAM_DKC1_NorSpr_RAMTable109DLo = $00109D
!RAM_DKC1_NorSpr_RAMTable109DHi = !RAM_DKC1_NorSpr_RAMTable109DLo+$01
!RAM_DKC1_NorSpr_AnimationIDLo = $0010D1
!RAM_DKC1_NorSpr_AnimationIDHi = !RAM_DKC1_NorSpr_AnimationIDLo+$01
!RAM_DKC1_NorSpr_DisplayCurrentPoseTimerLo = $001105
!RAM_DKC1_NorSpr_DisplayCurrentPoseTimerHi = !RAM_DKC1_NorSpr_DisplayCurrentPoseTimerLo+$01
!RAM_DKC1_NorSpr_AnimationSpeedLo = $001139
!RAM_DKC1_NorSpr_AnimationSpeedHi = !RAM_DKC1_NorSpr_AnimationSpeedLo+$01
!RAM_DKC1_NorSpr_AnimationScriptIndexLo = $00116D
!RAM_DKC1_NorSpr_AnimationScriptIndexHi = !RAM_DKC1_NorSpr_AnimationScriptIndexLo+$01
!RAM_DKC1_NorSpr_RAMTable11A1Lo = $0011A1
!RAM_DKC1_NorSpr_RAMTable11A1Hi = !RAM_DKC1_NorSpr_RAMTable11A1Lo+$01
!RAM_DKC1_NorSpr_RAMTable11D5Lo = $0011D5
!RAM_DKC1_NorSpr_RAMTable11D5Hi = !RAM_DKC1_NorSpr_RAMTable11D5Lo+$01
!RAM_DKC1_NorSpr_RAMTable1209Lo = $001209
!RAM_DKC1_NorSpr_RAMTable1209Hi = !RAM_DKC1_NorSpr_RAMTable1209Lo+$01
!RAM_DKC1_NorSpr_RAMTable123DLo = $00123D
!RAM_DKC1_NorSpr_RAMTable123DHi = !RAM_DKC1_NorSpr_RAMTable123DLo+$01
!RAM_DKC1_NorSpr_RAMTable1271Lo = $001271
!RAM_DKC1_NorSpr_RAMTable1271Hi = !RAM_DKC1_NorSpr_RAMTable1271Lo+$01
!RAM_DKC1_NorSpr_RAMTable12A5Lo = $0012A5
!RAM_DKC1_NorSpr_RAMTable12A5Hi = !RAM_DKC1_NorSpr_RAMTable12A5Lo+$01
!RAM_DKC1_NorSpr_RAMTable12D9Lo = $0012D9
!RAM_DKC1_NorSpr_RAMTable12D9Hi = !RAM_DKC1_NorSpr_RAMTable12D9Lo+$01
!RAM_DKC1_NorSpr_RAMTable130DLo = $00130D
!RAM_DKC1_NorSpr_RAMTable130DHi = !RAM_DKC1_NorSpr_RAMTable130DLo+$01
!RAM_DKC1_NorSpr_RAMTable1341Lo = $001341
!RAM_DKC1_NorSpr_RAMTable1341Hi = !RAM_DKC1_NorSpr_RAMTable1341Lo+$01
!RAM_DKC1_NorSpr_RAMTable1375Lo = $001375
!RAM_DKC1_NorSpr_RAMTable1375Hi = !RAM_DKC1_NorSpr_RAMTable1375Lo+$01
;$0013A9-$0013E8
!RAM_DKC1_NorSpr_RAMTable13E9Lo = $0013E9
!RAM_DKC1_NorSpr_RAMTable13E9Hi = !RAM_DKC1_NorSpr_RAMTable13E9Lo+$01
;$00141D-$00145C
!RAM_DKC1_NorSpr_RAMTable145DLo = $00145D
!RAM_DKC1_NorSpr_RAMTable145DHi = !RAM_DKC1_NorSpr_RAMTable145DLo+$01
!RAM_DKC1_NorSpr_RAMTable1491Lo = $001491
!RAM_DKC1_NorSpr_RAMTable1491Hi = !RAM_DKC1_NorSpr_RAMTable1491Lo+$01
!RAM_DKC1_NorSpr_RAMTable14C5Lo = $0014C5
!RAM_DKC1_NorSpr_RAMTable14C5Hi = !RAM_DKC1_NorSpr_RAMTable14C5Lo+$01
!RAM_DKC1_NorSpr_RAMTable14F9Lo = $0014F9
!RAM_DKC1_NorSpr_RAMTable14F9Hi = !RAM_DKC1_NorSpr_RAMTable14F9Lo+$01
!RAM_DKC1_NorSpr_RAMTable152DLo = $00152D
!RAM_DKC1_NorSpr_RAMTable152DHi = !RAM_DKC1_NorSpr_RAMTable152DLo+$01
!RAM_DKC1_NorSpr_RAMTable1561Lo = $001561
!RAM_DKC1_NorSpr_RAMTable1561Hi = !RAM_DKC1_NorSpr_RAMTable1561Lo+$01
!RAM_DKC1_NorSpr_RAMTable1595Lo = $001595
!RAM_DKC1_NorSpr_RAMTable1595Hi = !RAM_DKC1_NorSpr_RAMTable1595Lo+$01
!RAM_DKC1_NorSpr_RAMTable15C9Lo = $0015C9
!RAM_DKC1_NorSpr_RAMTable15C9Hi = !RAM_DKC1_NorSpr_RAMTable15C9Lo+$01
!RAM_DKC1_NorSpr_RAMTable15FDLo = $0015FD
!RAM_DKC1_NorSpr_RAMTable15FDHi = !RAM_DKC1_NorSpr_RAMTable15FDLo+$01
!RAM_DKC1_NorSpr_RAMTable1631Lo = $001631
!RAM_DKC1_NorSpr_RAMTable1631Hi = !RAM_DKC1_NorSpr_RAMTable1631Lo+$01
!RAM_DKC1_NorSpr_RAMTable1665Lo = $001665
!RAM_DKC1_NorSpr_RAMTable1665Hi = !RAM_DKC1_NorSpr_RAMTable1665Lo+$01

!RAM_DKC1_NorSpr_GraphicsDMATable = $00170F

!RAM_DKC1_Level_CameraYPosLo = $001A4C
!RAM_DKC1_Level_CameraYPosHi = !RAM_DKC1_Level_CameraYPosLo+$01

!RAM_DKC1_Level_CameraXPosLo = $001A62
!RAM_DKC1_Level_CameraXPosHi = !RAM_DKC1_Level_CameraXPosLo+$01

!RAM_DKC1_Global_SpritePaletteUploadTable = $001A8F

!RAM_DKC1_Global_CurrentlyLoadedSpritePalettePtrsLo = $001AD3
!RAM_DKC1_Global_CurrentlyLoadedSpritePalettePtrsHi = !RAM_DKC1_Global_CurrentlyLoadedSpritePalettePtrsLo+$01

;$001DF1-$001DF3 = Related to the jungle weather effects

!RAM_DKC1_Global_DecompressionBuffer = $7E79FC

!RAM_DKC1_Level_SpritePaletteBuffer = $7F2779

struct DKC1_Global_OAMBuffer !RAM_DKC1_Global_OAMBuffer
	.XDisp: skip $01
	.YDisp: skip $01
	.Tile: skip $01
	.Prop: skip $01
endstruct align $04

struct DKC1_Global_UpperOAMBuffer !RAM_DKC1_Global_OAMBuffer+$0200
	.Slot: skip $01
endstruct align $01

struct DKC1_NorSpr_GraphicsDMATable !RAM_DKC1_NorSpr_GraphicsDMATable
	.SizeLo: skip $01
	.SizeHi: skip $01
	.VRAMAddressLo: skip $01
	.VRAMAddressHi: skip $01
	.SourceLo: skip $01
	.SourceHi: skip $01
	.SourceBank: skip $01
	.Unused: skip $01
endstruct

struct DKC1_NorSpr_SpritePaletteUploadTable !RAM_DKC1_Global_SpritePaletteUploadTable
	.PtrLo: skip $01
	.PtrHi: skip $01
	.PtrBank: skip $01
	.Index: skip $01
endstruct

;---------------------------------------------------------------------------

!RAM_DKC1_NorSpr19_Zinger_CurrentState = !RAM_DKC1_NorSpr_RAMTable1029Lo

;---------------------------------------------------------------------------

!RAM_DKC1_NorSpr25_OilDrum_CurrentState = !RAM_DKC1_NorSpr_RAMTable1029Lo

;---------------------------------------------------------------------------

!RAM_DKC1_NorSprXX_ThrownBarrel_CurrentState = !RAM_DKC1_NorSpr_RAMTable1029Lo
!RAM_DKC1_NorSpr27_TNTBarrel_WaitToExplodeTimerLo = !RAM_DKC1_NorSpr_RAMTable1491Lo

;---------------------------------------------------------------------------

!RAM_DKC1_NorSpr38_BarrelCannon_CurrentState = !RAM_DKC1_NorSpr_RAMTable1029Lo
!RAM_DKC1_NorSpr38_BarrelCannon_Properties = !RAM_DKC1_NorSpr_RAMTable145DLo
	; $0001 = ???
	; $0002 = ???
	; $0004 = Barrel type (Set = Regular, Unset = Auto fire)
	; $0008 = ???
	; $0010 = ???
	; $0020 = ???
	; $0040 = Move around flag?
	; $0080 = Warp barrel flag
!RAM_DKC1_NorSpr38_BarrelCannon_CurrentAngle = !RAM_DKC1_NorSpr_RAMTable1491Lo
!RAM_DKC1_NorSpr38_BarrelCannon_EntranceAndExitID = !RAM_DKC1_NorSpr_RAMTable1561Lo

;---------------------------------------------------------------------------

!RAM_DKC1_NorSpr45_AnimalBuddyToken_CurrentState = !RAM_DKC1_NorSpr_RAMTable1029Lo
!RAM_DKC1_NorSpr45_AnimalBuddyToken_NumberOfTokensToDisplay = !RAM_DKC1_NorSpr_RAMTable14F9Lo

;---------------------------------------------------------------------------
