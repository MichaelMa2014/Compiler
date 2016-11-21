global _GetRDTSC

section .text

_GetRDTSC:
    mov  dword  [message], 10d
    mov  eax, [message]
    ret

section .bss
message:
    resd    1
