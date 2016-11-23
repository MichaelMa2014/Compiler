global _GetRDTSC

section .text

_GetRDTSC:
    mov  dword  [message], 0x9
    mov  dword  [message + 4], 0xa
    mov  eax, [message + 4]
    ret

section .bss
message:
    resd 2
