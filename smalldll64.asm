; smalldll64.asm
.code

_DllMainCRTStartup proc h:QWORD, r:DWORD, u:QWORD
	mov rax, 1
	ret
_DllMainCRTStartup endp

dummy proc
	ret
dummy endp

end
