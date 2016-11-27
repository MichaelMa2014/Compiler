global _GetRDTSC

section .text

_GetRDTSC:
    sub esp, 4
    mov eax, [message + 1]
    ret 2

section .data
message:
    dd "This is a message certainly longer than double words, which is 32 byte. Because if one character takes one byte, only 32 characters can take double words"
