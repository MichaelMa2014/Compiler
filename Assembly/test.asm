global _GetRDTSC

section .text

_GetRDTSC:
    mov   eax, message
    ret

section .bss
message:
    resd    1
