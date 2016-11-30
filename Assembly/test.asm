global _test

extern _printf

section .text

_test:
    push ebp
    mov ebp, esp
    push dword [integer]
    push dword message
    
    call _printf
    add esp, 8
    mov eax, 0
    pop ebp
    ret



section .data
message: dd "This is a %x message certainly longer than double words, which is 32 byte. Because if one character takes one byte, only 32 characters can take double words."
.len: equ $ - message

integer: dd 0
.len: equ $ - integer

