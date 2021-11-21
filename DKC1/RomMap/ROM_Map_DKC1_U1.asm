
macro DKC1_GameSpecificAssemblySettings()
	!ROM_DKC1_U1 = $0001							;\ These defines assign each ROM version with a different bit so version difference checks will work. Do not touch them!
	!ROM_DKC1_U2 = $0002							;|
	!ROM_DKC1_U3 = $0004							;|
	!ROM_DKC1_E1 = $0008							;|
	!ROM_DKC1_E2 = $0010							;|
	!ROM_DKC1_J1 = $0020							;|
	!ROM_DKC1_J2 = $0040							;/

!Define_DKC1_Global_DisableCopyDetection = !FALSE
!Define_DKC1_Global_UseExternalLevelSpriteDataFiles = !TRUE

	%SetROMToAssembleForHack(DKC1_U1, !ROMID)
endmacro

macro DKC1_LoadGameSpecificMainSNESFiles()
	incsrc ../Misc_Defines_DKC1.asm
	incsrc ../RAM_Map_DKC1.asm
	incsrc ../Routine_Macros_DKC1.asm
	incsrc ../SNES_Macros_DKC1.asm
	%LoadExtraRAMFile("SRAM_Map_DKC1.asm", !GameID, DKC1)
endmacro

macro DKC1_LoadGameSpecificMainSPC700Files()
	incsrc ../SPC700/ARAM_Map_DKC1.asm
	incsrc ../Misc_Defines_DKC1.asm
	incsrc ../SPC700/SPC700_Macros_DKC1.asm
endmacro

macro DKC1_LoadGameSpecificMainExtraHardwareFiles()
endmacro

macro DKC1_LoadGameSpecificMSU1Files()
endmacro

macro DKC1_GlobalAssemblySettings()
	!Define_Global_ApplyAsarPatches = !FALSE
	!Define_Global_ApplyDefaultPatches = !TRUE
	!Define_Global_InsertRATSTags = !TRUE
	!Define_Global_IgnoreCodeAlignments = !FALSE
	!Define_Global_IgnoreOriginalFreespace = !FALSE
	!Define_Global_CompatibleControllers = !Controller_StandardJoypad
	!Define_Global_DisableROMMirroring = !FALSE
	!Define_Global_CartridgeHeaderVersion = $02
	!Define_Global_FixIncorrectChecksumHack = !FALSE
	!Define_Global_ROMFrameworkVer = 1
	!Define_Global_ROMFrameworkSubVer = 2
	!Define_Global_ROMFrameworkSubSubVer = 0
	!Define_Global_AsarChecksum = $0000
	!Define_Global_LicenseeName = "Nintendo"
	!Define_Global_DeveloperName = "Rare"
	!Define_Global_ReleaseDate = "November 21, 1994"
	!Define_Global_BaseROMMD5Hash = "30c5f292ff4cbbfcc00fd8fa96c2de3b"

	!Define_Global_MakerCode = "01"
	!Define_Global_GameCode = "8X  "
	!Define_Global_ReservedSpace = $00,$00,$00,$00,$00,$00
	!Define_Global_ExpansionFlashSize = !ExpansionMemorySize_0KB
	!Define_Global_ExpansionRAMSize = !ExpansionMemorySize_0KB
	!Define_Global_IsSpecialVersion = $00
	!Define_Global_InternalName = "DONKEY KONG COUNTRY  "
	!Define_Global_ROMLayout = !ROMLayout_HiROM_FastROM
	!Define_Global_ROMType = !ROMType_ROM_RAM_SRAM
	!Define_Global_CustomChip = !Chip_None
	!Define_Global_ROMSize1 = !ROMSize_4MB
	!Define_Global_ROMSize2 = !ROMSize_0KB
	!Define_Global_SRAMSize = !SRAMSize_2KB
	!Define_Global_Region = !Region_NorthAmerica
	!Define_Global_LicenseeID = $33
	!Define_Global_VersionNumber = $00
	!Define_Global_ChecksumCompliment = !Define_Global_Checksum^$FFFF
	!Define_Global_Checksum = $EF80
	!UnusedNativeModeVector1 = $4944				;\ Note: "DIDDY " in ASCII
	!UnusedNativeModeVector2 = $4444				;|
	!NativeModeCOPVector = $2059						;/
	!NativeModeBRKVector = $7003
	!NativeModeAbortVector = $0000
	!NativeModeNMIVector = CODE_80A968
	!NativeModeResetVector = $0000
	!NativeModeIRQVector = CODE_80A990
	!UnusedEmulationModeVector1 = $4F44				;\ Note: "DONKEYKONG"  in ASCII
	!UnusedEmulationModeVector2 = $4B4E				;|
	!EmulationModeCOPVector = $5945					;|
	!EmulationModeBRKVector = $4F4B					;|
	!EmulationModeAbortVector = $474E				;/
	!EmulationModeNMIVector = $F800
	!EmulationModeResetVector = CODE_808000
	!EmulationModeIRQVector = $7000
endmacro

macro DKC1_LoadROMMap()
	%DKC1BankC0Macros(!BANK_00, !BANK_00)
	%DKC1BankC1Macros(!BANK_01, !BANK_01)
	%DKC1BankC2Macros(!BANK_02, !BANK_02)
	%DKC1BankC3Macros(!BANK_03, !BANK_03)
	%DKC1BankC4Macros(!BANK_04, !BANK_04)
	%DKC1BankC5Macros(!BANK_05, !BANK_05)
	%DKC1BankC6Macros(!BANK_06, !BANK_06)
	%DKC1BankC7Macros(!BANK_07, !BANK_07)
	%DKC1BankC8Macros(!BANK_08, !BANK_08)
	%DKC1BankC9Macros(!BANK_09, !BANK_09)
	%DKC1BankCAMacros(!BANK_0A, !BANK_0A)
	%DKC1BankCBMacros(!BANK_0B, !BANK_0B)
	%DKC1BankCCMacros(!BANK_0C, !BANK_0C)
	%DKC1BankCDMacros(!BANK_0D, !BANK_0D)
	%DKC1BankCEMacros(!BANK_0E, !BANK_0E)
	%DKC1BankCFMacros(!BANK_0F, !BANK_0F)
	%DKC1BankD0Macros(!BANK_10, !BANK_10)
	%DKC1BankD1Macros(!BANK_11, !BANK_11)
	%DKC1BankD2Macros(!BANK_12, !BANK_12)
	%DKC1BankD3Macros(!BANK_13, !BANK_13)
	%DKC1BankD4Macros(!BANK_14, !BANK_14)
	%DKC1BankD5Macros(!BANK_15, !BANK_15)
	%DKC1BankD6Macros(!BANK_16, !BANK_16)
	%DKC1BankD7Macros(!BANK_17, !BANK_17)
	%DKC1BankD8Macros(!BANK_18, !BANK_18)
	%DKC1BankD9Macros(!BANK_19, !BANK_19)
	%DKC1BankDAMacros(!BANK_1A, !BANK_1A)
	%DKC1BankDBMacros(!BANK_1B, !BANK_1B)
	%DKC1BankDCMacros(!BANK_1C, !BANK_1C)
	%DKC1BankDDMacros(!BANK_1D, !BANK_1D)
	%DKC1BankDEMacros(!BANK_1E, !BANK_1E)
	%DKC1BankDFMacros(!BANK_1F, !BANK_1F)
	%DKC1BankE0Macros(!BANK_20, !BANK_20)
	%DKC1BankE1Macros(!BANK_21, !BANK_21)
	%DKC1BankE2Macros(!BANK_22, !BANK_22)
	%DKC1BankE3Macros(!BANK_23, !BANK_23)
	%DKC1BankE4Macros(!BANK_24, !BANK_24)
	%DKC1BankE5Macros(!BANK_25, !BANK_25)
	%DKC1BankE6Macros(!BANK_26, !BANK_26)
	%DKC1BankE7Macros(!BANK_27, !BANK_27)
	%DKC1BankE8Macros(!BANK_28, !BANK_28)
	%DKC1BankE9Macros(!BANK_29, !BANK_29)
	%DKC1BankEAMacros(!BANK_2A, !BANK_2A)
	%DKC1BankEBMacros(!BANK_2B, !BANK_2B)
	%DKC1BankECMacros(!BANK_2C, !BANK_2C)
	%DKC1BankEDMacros(!BANK_2D, !BANK_2D)
	%DKC1BankEEMacros(!BANK_2E, !BANK_2E)
	%DKC1BankEFMacros(!BANK_2F, !BANK_2F)
	%DKC1BankF0Macros(!BANK_30, !BANK_30)
	%DKC1BankF1Macros(!BANK_31, !BANK_31)
	%DKC1BankF2Macros(!BANK_32, !BANK_32)
	%DKC1BankF3Macros(!BANK_33, !BANK_33)
	%DKC1BankF4Macros(!BANK_34, !BANK_34)
	%DKC1BankF5Macros(!BANK_35, !BANK_35)
	%DKC1BankF6Macros(!BANK_36, !BANK_36)
	%DKC1BankF7Macros(!BANK_37, !BANK_37)
	%DKC1BankF8Macros(!BANK_38, !BANK_38)
	%DKC1BankF9Macros(!BANK_39, !BANK_39)
	%DKC1BankFAMacros(!BANK_3A, !BANK_3A)
	%DKC1BankFBMacros(!BANK_3B, !BANK_3B)
	%DKC1BankFCMacros(!BANK_3C, !BANK_3C)
	%DKC1BankFDMacros(!BANK_3D, !BANK_3D)
	%DKC1BankFEMacros(!BANK_3E, !BANK_3E)
	%DKC1BankFFMacros(!BANK_3F, !BANK_3F)
endmacro
