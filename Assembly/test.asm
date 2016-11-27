global _GetRDTSC


section .text

_GetRDTSC:
    push dword 4
    push dword message
    push dword 1
    mov eax, 4
    sub esp, 4
    int 0x80

    call codelabel1
    add eax, 1
    ret

codelabel1:
    push ebp
    mov ebp, esp
    pusha
    popa
    mov eax, 1
    pop ebp
    ret


section .data
message:
    dd "This is a message certainly longer than double words, which is 32 byte. Because if one character takes one byte, only 32 characters can take double words"
integer1:
    dd 1
