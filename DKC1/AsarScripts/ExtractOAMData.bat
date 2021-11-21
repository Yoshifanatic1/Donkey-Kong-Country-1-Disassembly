@echo off
setlocal EnableDelayedExpansion

set PATH="../../Global"

asar.exe ExtractOAMData.asm DKC1.sfc > output1.asm

pause
asar.exe output1.asm DKC1.sfc > output2.asm

pause
exit