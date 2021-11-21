@echo off

set PATH="../../Global"
set Input1=
set ROMName=
set ROMName0=DKC1_USA1.sfc
set ROMName1=DKC1_USA2.sfc
set ROMName2=DKC1_USA3.sfc
set ROMName3=DKC1_PAL1.sfc
set ROMName4=DKC1_PAL2.sfc
set ROMName5=DKC1_JAPAN1.sfc
set ROMName6=DKC1_JAPAN2.sfc
set MemMap=hirom

setlocal EnableDelayedExpansion

echo To fully extract all files for supported ROMs, you'll need one of the following ROMs in each group:
echo - Graphics: DKC1 (USA V1.0)
echo - Tilemaps: DKC1 (USA V1.0)
echo - Palettes: DKC1 (USA V1.0)
echo - Level Data: DKC1 (USA V1.0)
echo - Samples: DKC1 (USA V1.0)
echo - Music: DKC1 (USA V1.0)
echo.

:Start
echo Place a headerless DKC1 ROM with one of the following names in this folder, then type the number representing what ROM to extract from.
echo 0 = "%ROMName0%" (USA V1.0)
echo 1 = "%ROMName1%" (USA V1.1)
echo 2 = "%ROMName2%" (USA V1.2)
echo 3 = "%ROMName3%" (PAL V1.0)
echo 4 = "%ROMName4%" (PAL V1.1)
echo 5 = "%ROMName5%"  (Japan V1.0)
echo 6 = "%ROMName6%"  (Japan V1.1)

:Mode
set /p Input1=""

if "%Input1%" equ "0" goto :USA1
if "%Input1%" equ "1" goto :USA2
if "%Input1%" equ "2" goto :USA3
if "%Input1%" equ "3" goto :PAL1
if "%Input1%" equ "4" goto :PAL2
if "%Input1%" equ "5" goto :Japan1
if "%Input1%" equ "6" goto :Japan2

echo %Input1% is not a valid mode.
goto :Mode

:ROMNotFound
echo %ROMName% is not in the folder or is not named correctly^^!
goto :Mode

:USA1
set ROMName=%ROMName0%
if not exist %ROMName0% goto :ROMNotFound

set UGFXLoc="../Graphics"
set DynamicSpriteLoc="../Graphics/DynamicSprites"
set CGFXLoc="../Graphics/Compressed"
set UTilemapsLoc="../Tilemaps"
set CTilemapsLoc="../Tilemaps/Compressed"
set Map32Loc="../Tilemaps/Map32"
set LevelDataLoc="../LevelData"
set SpriteDataLoc="../LevelData/SpriteData"
set BananaDataLoc="../LevelData/BananaFormations"
set PaletteLoc="../Palettes"
set GarbageDatLoc="../GarbageData"
set MusicLoc="../SPC700/Music"
set SoundEffectLoc="../SPC700/SoundEffects"
set BrrLoc="../SPC700/Samples"
set ROMBit=$0001
goto :BeginExtract

:USA2
echo The USA V1.1 ROM is not supported by the disassembly.
goto :Mode

set ROMName=%ROMName1%
if not exist %ROMName1% goto :ROMNotFound

set UGFXLoc="../Graphics"
set DynamicSpriteLoc="../Graphics/DynamicSprites"
set CGFXLoc="../Graphics/Compressed"
set UTilemapsLoc="../Tilemaps"
set CTilemapsLoc="../Tilemaps/Compressed"
set Map32Loc="../Tilemaps/Map32"
set LevelDataLoc="../LevelData"
set SpriteDataLoc="../LevelData/SpriteData"
set BananaDataLoc="../LevelData/BananaFormations"
set PaletteLoc="../Palettes"
set GarbageDatLoc="../GarbageData"
set MusicLoc="../SPC700/Music"
set SoundEffectLoc="../SPC700/SoundEffects"
set BrrLoc="../SPC700/Samples"
set ROMBit=$0002
goto :BeginExtract

:USA3
echo The USA V1.2 ROM is not supported by the disassembly.
goto :Mode

set ROMName=%ROMName2%
if not exist %ROMName2% goto :ROMNotFound

set UGFXLoc="../Graphics"
set DynamicSpriteLoc="../Graphics/DynamicSprites"
set CGFXLoc="../Graphics/Compressed"
set UTilemapsLoc="../Tilemaps"
set CTilemapsLoc="../Tilemaps/Compressed"
set Map32Loc="../Tilemaps/Map32"
set LevelDataLoc="../LevelData"
set SpriteDataLoc="../LevelData/SpriteData"
set BananaDataLoc="../LevelData/BananaFormations"
set PaletteLoc="../Palettes"
set GarbageDatLoc="../GarbageData"
set MusicLoc="../SPC700/Music"
set SoundEffectLoc="../SPC700/SoundEffects"
set BrrLoc="../SPC700/Samples"
set ROMBit=$0004
goto :BeginExtract

:PAL1
echo The PAL V1.0 ROM is not supported by the disassembly.
goto :Mode

set ROMName=%ROMName3%
if not exist %ROMName3% goto :ROMNotFound

set UGFXLoc="../Graphics"
set DynamicSpriteLoc="../Graphics/DynamicSprites"
set CGFXLoc="../Graphics/Compressed"
set UTilemapsLoc="../Tilemaps"
set CTilemapsLoc="../Tilemaps/Compressed"
set Map32Loc="../Tilemaps/Map32"
set LevelDataLoc="../LevelData"
set SpriteDataLoc="../LevelData/SpriteData"
set BananaDataLoc="../LevelData/BananaFormations"
set PaletteLoc="../Palettes"
set GarbageDatLoc="../GarbageData"
set MusicLoc="../SPC700/Music"
set SoundEffectLoc="../SPC700/SoundEffects"
set BrrLoc="../SPC700/Samples"
set ROMBit=$0008
goto :BeginExtract

:PAL2
echo The PAL V1.1 ROM is not supported by the disassembly.
goto :Mode

set ROMName=%ROMName4%
if not exist %ROMName4% goto :ROMNotFound

set UGFXLoc="../Graphics"
set DynamicSpriteLoc="../Graphics/DynamicSprites"
set CGFXLoc="../Graphics/Compressed"
set UTilemapsLoc="../Tilemaps"
set CTilemapsLoc="../Tilemaps/Compressed"
set Map32Loc="../Tilemaps/Map32"
set LevelDataLoc="../LevelData"
set SpriteDataLoc="../LevelData/SpriteData"
set BananaDataLoc="../LevelData/BananaFormations"
set PaletteLoc="../Palettes"
set GarbageDatLoc="../GarbageData"
set MusicLoc="../SPC700/Music"
set SoundEffectLoc="../SPC700/SoundEffects"
set BrrLoc="../SPC700/Samples"
set ROMBit=$0010
goto :BeginExtract

:Japan1
echo The Japanese V1.0 ROM is not supported by the disassembly.
goto :Mode

set ROMName=%ROMName5%
if not exist %ROMName5% goto :ROMNotFound

set UGFXLoc="../Graphics"
set DynamicSpriteLoc="../Graphics/DynamicSprites"
set CGFXLoc="../Graphics/Compressed"
set UTilemapsLoc="../Tilemaps"
set CTilemapsLoc="../Tilemaps/Compressed"
set Map32Loc="../Tilemaps/Map32"
set LevelDataLoc="../LevelData"
set SpriteDataLoc="../LevelData/SpriteData"
set BananaDataLoc="../LevelData/BananaFormations"
set PaletteLoc="../Palettes"
set GarbageDatLoc="../GarbageData"
set MusicLoc="../SPC700/Music"
set SoundEffectLoc="../SPC700/SoundEffects"
set BrrLoc="../SPC700/Samples"
set ROMBit=$0020
goto :BeginExtract

:Japan2
echo The Japanese V1.1 ROM is not supported by the disassembly.
goto :Mode

set ROMName=%ROMName6%
if not exist %ROMName6% goto :ROMNotFound

set UGFXLoc="../Graphics"
set DynamicSpriteLoc="../Graphics/DynamicSprites"
set CGFXLoc="../Graphics/Compressed"
set UTilemapsLoc="../Tilemaps"
set CTilemapsLoc="../Tilemaps/Compressed"
set Map32Loc="../Tilemaps/Map32"
set LevelDataLoc="../LevelData"
set SpriteDataLoc="../LevelData/SpriteData"
set BananaDataLoc="../LevelData/BananaFormations"
set PaletteLoc="../Palettes"
set GarbageDatLoc="../GarbageData"
set MusicLoc="../SPC700/Music"
set SoundEffectLoc="../SPC700/SoundEffects"
set BrrLoc="../SPC700/Samples"
set ROMBit=$0040
goto :BeginExtract

:BeginExtract
set i=0
set PointerSet=0

echo Generating temporary ROM
asar --fix-checksum=off --no-title-check --define ROMVer="%ROMBit%" "AssetPointersAndFiles.asm" TEMP.sfc

CALL :GetLoopIndex
set MaxFileTypes=%Length%
set PointerSet=6

:GetNewLoopIndex
CALL :GetLoopIndex

:ExtractLoop
if %i% equ %Length% goto :NewFileType

CALL :GetGFXFileName
CALL :ExtractFile
set /a i = %i%+1
if exist TEMP1.asm del TEMP1.asm
if exist TEMP2.asm del TEMP2.asm
if exist TEMP3.txt del TEMP3.txt
goto :ExtractLoop

:NewFileType
echo Moving extracted files to appropriate locations
if %PointerSet% equ 6 goto :MoveUGFX
if %PointerSet% equ 12 goto :MoveDynamicSprite
if %PointerSet% equ 18 goto :MoveCGFX
if %PointerSet% equ 24 goto :MoveUTilemaps
if %PointerSet% equ 30 goto :MoveCTilemaps
if %PointerSet% equ 36 goto :MoveMap32
if %PointerSet% equ 42 goto :MoveLevelData
if %PointerSet% equ 48 goto :MoveSpriteData
if %PointerSet% equ 54 goto :MoveBananaData
if %PointerSet% equ 60 goto :MovePalettes
if %PointerSet% equ 66 goto :MoveGarbageData
if %PointerSet% equ 72 goto :MoveMusic
if %PointerSet% equ 78 goto :MoveSoundEffects
if %PointerSet% equ 84 goto :MoveBRR
goto :MoveNothing

:MoveUGFX
move "*.bin" %UGFXLoc%
goto :MoveNothing

:MoveDynamicSprite
move "*.bin" %DynamicSpriteLoc%
goto :MoveNothing

:MoveCGFX
move "*.bin" %CGFXLoc%
goto :MoveNothing

:MoveUTilemaps
move "*.bin" %UTilemapsLoc%
goto :MoveNothing

:MoveCTilemaps
move "*.bin" %CTilemapsLoc%
goto :MoveNothing

:MoveMap32
move "*.bin" %Map32Loc%
goto :MoveNothing

:MoveLevelData
move "*.bin" %LevelDataLoc%
goto :MoveNothing

:MoveSpriteData
move "*.bin" %SpriteDataLoc%
goto :MoveNothing

:MoveBananaData
move "*.bin" %BananaDataLoc%
goto :MoveNothing

:MovePalettes
move "*.bin" %PaletteLoc%
goto :MoveNothing

:MoveGarbageData
move "*.bin" %GarbageDatLoc%
goto :MoveNothing

:MoveMusic
move "*.bin" %MusicLoc%
goto :MoveNothing

:MoveSoundEffects
move "*.bin" %SoundEffectLoc%
goto :MoveNothing

:MoveBRR
move "*.brr" %BrrLoc%
goto :MoveNothing

:MoveNothing
set i=0
set /a PointerSet = %PointerSet%+6
if %PointerSet% neq %MaxFileTypes% goto :GetNewLoopIndex
if exist TEMP.sfc del TEMP.sfc

echo Done^^!
goto :Start

EXIT /B %ERRORLEVEL% 

:ExtractFile
echo:%MemMap% >> TEMP1.asm
echo:org $C00000 >> TEMP1.asm
echo:check bankcross off >> TEMP1.asm
echo:^^!OffsetStart #= snestopc(readfile3("TEMP.sfc", snestopc(readfile3("TEMP.sfc", snestopc($C00000+%PointerSet%))+$00+(%i%*$0C)))) >> TEMP1.asm
echo:^^!OffsetEnd #= snestopc(readfile3("TEMP.sfc", snestopc(readfile3("TEMP.sfc", snestopc($C00000+%PointerSet%))+$03+(%i%*$0C)))) >> TEMP1.asm
echo:incbin %ROMName%:(^^!OffsetStart)-(^^!OffsetEnd) >> TEMP1.asm

echo Extracting %FileName%
asar --fix-checksum=off --no-title-check "TEMP1.asm" %FileName%
EXIT /B 0

:GetGFXFileName
echo:%MemMap% >> TEMP2.asm
echo:org $C00000 >> TEMP2.asm
echo:^^!FileNameStart #= snestopc(readfile3("TEMP.sfc", snestopc(readfile3("TEMP.sfc", snestopc($C00000+%PointerSet%))+$06+(%i%*$0C)))) >> TEMP2.asm
echo:^^!FileNameEnd #= snestopc(readfile3("TEMP.sfc", snestopc(readfile3("TEMP.sfc", snestopc($C00000+%PointerSet%))+$09+(%i%*$0C)))) >> TEMP2.asm
echo:incbin TEMP.sfc:(^^!FileNameStart)-(^^!FileNameEnd) >> TEMP2.asm
asar --fix-checksum=off --no-title-check "TEMP2.asm" TEMP3.txt

for /f "delims=" %%x in (TEMP3.txt) do set FileName=%%x

EXIT /B 0

:GetLoopIndex
echo:%MemMap% >> TEMP4.asm
echo:org $C00000 >> TEMP4.asm
echo:^^!OnesDigit = 0 >> TEMP4.asm
echo:^^!TensDigit = 0 >> TEMP4.asm
echo:^^!HundredsDigit = 0 >> TEMP4.asm
echo:^^!ThousandsDigit = 0 >> TEMP4.asm
echo:^^!TensDigitSet = 0 >> TEMP4.asm
echo:^^!HundredsDigitSet = 0 >> TEMP4.asm
echo:^^!ThousandsDigitSet = 0 >> TEMP4.asm
echo:^^!Offset #= readfile3("TEMP.sfc", snestopc($C00000+%PointerSet%+$03)) >> TEMP4.asm
echo:while ^^!Offset ^> 0 >> TEMP4.asm
::echo:print hex(^^!Offset) >> TEMP4.asm
echo:^^!OnesDigit #= ^^!OnesDigit+1 >> TEMP4.asm
echo:if ^^!OnesDigit == 10 >> TEMP4.asm
echo:^^!OnesDigit #= 0 >> TEMP4.asm
echo:^^!TensDigit #= ^^!TensDigit+1 >> TEMP4.asm
echo:^^!TensDigitSet #= 1 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:if ^^!TensDigit == 10 >> TEMP4.asm
echo:^^!TensDigit #= 0 >> TEMP4.asm
echo:^^!HundredsDigit #= ^^!HundredsDigit+1 >> TEMP4.asm
echo:^^!HundredsDigitSet #= 1 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:if ^^!HundredsDigit == 10 >> TEMP4.asm
echo:^^!HundredsDigit #= 0 >> TEMP4.asm
echo:^^!ThousandsDigit #= ^^!ThousandsDigit+1 >> TEMP4.asm
echo:^^!ThousandsDigitSet #= 1 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:^^!Offset #= ^^!Offset-1 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:if ^^!ThousandsDigitSet == 1 >> TEMP4.asm
echo:db ^^!ThousandsDigit+$30 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:if ^^!HundredsDigitSet == 1 >> TEMP4.asm
echo:db ^^!HundredsDigit+$30 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:if ^^!TensDigitSet == 1 >> TEMP4.asm
echo:db ^^!TensDigit+$30 >> TEMP4.asm
echo:endif >> TEMP4.asm
echo:db ^^!OnesDigit+$30 >> TEMP4.asm
asar --fix-checksum=off --no-title-check "TEMP4.asm" TEMP5.txt

for /f "delims=" %%x in (TEMP5.txt) do set Length=%%x

if exist TEMP4.asm del TEMP4.asm
if exist TEMP5.txt del TEMP5.txt

EXIT /B 0
