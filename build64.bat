@echo off
rem NOTE: You needs 64-bit Visual Studio Command Prompt.

if exist smalldll64.obj del smalldll64.obj
if exist smalldll64.dll del smalldll64.dll
ml64 /c /Fosmalldll64.obj smalldll64.asm
link /machine:X64 /SUBSYSTEM:WINDOWS /DLL /merge:.rdata=.text /DEF:smalldll64.def smalldll64.obj
dumpbin /imports /exports /headers smalldll64.dll > smalldll64.dll.txt

if exist loadtest64.exe del loadtest64.exe
cl /Feloadtest64.exe loadtest.c
dumpbin /imports /exports /headers loadtest64.exe > loadtest64.exe.txt

pause
