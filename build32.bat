@echo off
rem NOTE: You needs 32-bit Visual Studio Command Prompt.

if exist smalldll.obj del smalldll.obj
if exist smalldll.dll del smalldll.dll
ml /c /Fosmalldll.obj smalldll.asm
link /machine:X86 /SUBSYSTEM:WINDOWS /DLL /merge:.rdata=.text /DEF:smalldll.def /ALIGN:16 smalldll.obj
dumpbin /imports /exports /headers smalldll.dll > smalldll.dll.txt

if exist loadtest.exe del loadtest.exe
cl /Feloadtest.exe loadtest.c
dumpbin /imports /exports /headers loadtest.exe > loadtest.exe.txt

pause
