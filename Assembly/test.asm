global _GetRDTSC

section .text

_GetRDTSC:
    rdtsc
    shl   edx, 32
    mov   EAX, edx
    mov   eax, 'a'
    ret
