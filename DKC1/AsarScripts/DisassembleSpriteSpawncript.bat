@echo off
setlocal EnableDelayedExpansion

set PATH="../../Global"

asar.exe DisassembleSpriteSpawnScript.asm DKC1.sfc > output1.asm

pause
exit