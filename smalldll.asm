; smalldll.asm

.386
.model flat, stdcall

.code
_DllMainCRTStartup proc h:DWORD, r:DWORD, u:DWORD
	mov eax, 1
	ret
_DllMainCRTStartup endp

dummy proc
	ret
dummy endp
end
