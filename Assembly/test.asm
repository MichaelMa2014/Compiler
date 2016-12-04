global _test
extern _printf
extern _scanf

section .text
code_label0emptyfunc:
nop
push ebp 
mov ebp, esp 
mov esp, ebp
pop ebp 
ret 
code_label1emptyfunc2:
nop
push ebp 
mov ebp, esp 
mov esp, ebp
pop ebp 
ret 
code_label2testchar:
nop
push ebp 
mov ebp, esp 
sub esp, 4 
mov dword [ebp - 4], 48
mov dword eax, [ebp - 4]
add esp, 4 
mov esp, ebp
pop ebp 
ret 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label3fibonacci:
nop
push ebp 
mov ebp, esp 
sub esp, 4 
sub esp, 4 
mov dword [ebp - 8], -1
mov dword ecx, [ebp - 8]
mov dword [ebp - 4], ecx
sub esp, 4 
sub esp, 4 
mov dword [ebp - 16], 1
mov dword edx, [ebp + 8]
mov dword ecx, [ebp - 16]
cmp edx, ecx
jnz code_label4
sub esp, 4 
mov dword [ebp - 20], 1
mov dword eax, [ebp - 20]
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label4:
nop
mov edx, ebp
sub edx, esp
mov ecx, 20
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 24], 2
mov dword edx, [ebp + 8]
mov dword ecx, [ebp - 24]
cmp edx, ecx
jz code_label5
sub esp, 4 
mov dword [ebp - 28], -1
sub esp, 4 
mov dword ecx, [ebp + 8]
add ecx, [ebp - 28]
mov dword [ebp - 32], ecx
sub esp, 4 
mov dword ecx, [ebp - 32]
mov dword [ebp - 36], ecx
call code_label3fibonacci
sub esp, 4 
mov dword [ebp - 40], eax
sub esp, 4 
mov dword [ebp - 44], 2
sub esp, 4 
mov dword ecx, [ebp + 8]
sub ecx, [ebp - 44]
mov dword [ebp - 48], ecx
sub esp, 4 
mov dword ecx, [ebp - 48]
mov dword [ebp - 52], ecx
call code_label3fibonacci
sub esp, 4 
mov dword [ebp - 56], eax
sub esp, 4 
mov dword ecx, [ebp - 40]
add ecx, [ebp - 56]
mov dword [ebp - 60], ecx
sub esp, 4 
mov dword [ebp - 64], 0
sub esp, 4 
mov dword ecx, [ebp - 60]
add ecx, [ebp - 64]
mov dword [ebp - 68], ecx
mov dword eax, [ebp - 68]
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label5:
nop
mov edx, ebp
sub edx, esp
mov ecx, 68
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 72], 1
mov dword eax, [ebp - 72]
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label8move:
nop
push ebp 
mov ebp, esp 
sub esp, 4 
sub esp, 4 
mov dword [ebp - 8], 1
mov dword ecx, [ebp - 8]
mov dword [ebp - 4], ecx
sub esp, 4 
sub esp, 4 
mov dword [ebp - 16], 49
mov dword ecx, [ebp - 16]
mov dword [ebp - 12], ecx
sub esp, 4 
mov dword [ebp - 20], 77
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 20]
push dword command_char
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label9
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp + 8]
push dword command_char
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label10
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp + 12]
push dword command_char
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label11
call _printf
add esp, 8
add esp, ebx
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label9hanoi:
nop
push ebp 
mov ebp, esp 
sub esp, 4 
mov dword [ebp - 4], 2
mov dword edx, [ebp - 4]
mov dword ecx, [ebp + 8]
cmp edx, ecx
jng code_label10
sub esp, 4 
mov dword ecx, [ebp + 20]
mov dword [ebp - 8], ecx
sub esp, 4 
mov dword ecx, [ebp + 12]
mov dword [ebp - 12], ecx
call code_label8move
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label12
call _printf
add esp, 8
add esp, ebx
code_label10:
nop
mov edx, ebp
sub edx, esp
mov ecx, 12
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 16], 1
sub esp, 4 
mov dword ecx, [ebp + 8]
sub ecx, [ebp - 16]
mov dword [ebp - 20], ecx
sub esp, 4 
mov dword ecx, [ebp + 16]
mov dword [ebp - 24], ecx
sub esp, 4 
mov dword ecx, [ebp + 20]
mov dword [ebp - 28], ecx
sub esp, 4 
mov dword ecx, [ebp + 12]
mov dword [ebp - 32], ecx
sub esp, 4 
mov dword ecx, [ebp - 20]
mov dword [ebp - 36], ecx
call code_label9hanoi
sub esp, 4 
mov dword ecx, [ebp + 20]
mov dword [ebp - 40], ecx
sub esp, 4 
mov dword ecx, [ebp + 12]
mov dword [ebp - 44], ecx
call code_label8move
sub esp, 4 
mov dword [ebp - 48], 1
sub esp, 4 
mov dword ecx, [ebp + 8]
sub ecx, [ebp - 48]
mov dword [ebp - 52], ecx
sub esp, 4 
mov dword ecx, [ebp + 20]
mov dword [ebp - 56], ecx
sub esp, 4 
mov dword ecx, [ebp + 12]
mov dword [ebp - 60], ecx
sub esp, 4 
mov dword ecx, [ebp + 16]
mov dword [ebp - 64], ecx
sub esp, 4 
mov dword ecx, [ebp - 52]
mov dword [ebp - 68], ecx
call code_label9hanoi
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label11getpower:
nop
push ebp 
mov ebp, esp 
sub esp, 4 
sub esp, 4 
mov dword [ebp - 8], 2
mov dword edx, [ebp + 12]
mov dword ecx, [ebp - 8]
cmp edx, ecx
jnge code_label12
sub esp, 4 
mov dword [ebp - 12], 1
sub esp, 4 
mov dword ecx, [ebp + 12]
sub ecx, [ebp - 12]
mov dword [ebp - 16], ecx
sub esp, 4 
mov dword ecx, [ebp - 16]
mov dword [ebp - 20], ecx
sub esp, 4 
mov dword ecx, [ebp + 8]
mov dword [ebp - 24], ecx
call code_label11getpower
sub esp, 4 
mov dword [ebp - 28], eax
mov dword ecx, [ebp - 28]
mov dword [ebp - 4], ecx
sub esp, 4 
mov dword [ebp - 32], 1
sub esp, 4 
mov dword ecx, [ebp + 12]
sub ecx, [ebp - 32]
mov dword [ebp - 36], ecx
sub esp, 4 
mov dword eax, [ebp - 4]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp + 8]
mov dword [ebp - 40], eax
mov dword edx, label7
add edx, [ebp - 36]
add edx, [ebp - 36]
add edx, [ebp - 36]
add edx, [ebp - 36]
mov dword ecx, [ebp - 40]
mov dword [edx], ecx
sub esp, 4 
mov dword eax, [ebp + 8]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 4]
mov dword [ebp - 44], eax
mov dword eax, [ebp - 44]
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label12:
nop
mov edx, ebp
sub edx, esp
mov ecx, 44
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 48], 1
mov dword edx, [ebp - 48]
mov dword ecx, [ebp + 12]
cmp edx, ecx
jnle code_label14
sub esp, 4 
mov dword [ebp - 52], 1
sub esp, 4 
mov dword ecx, [ebp + 12]
sub ecx, [ebp - 52]
mov dword [ebp - 56], ecx
mov dword edx, label7
add edx, [ebp - 56]
add edx, [ebp - 56]
add edx, [ebp - 56]
add edx, [ebp - 56]
mov dword ecx, [ebp + 8]
mov dword [edx], ecx
mov dword eax, [ebp + 8]
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label14:
nop
mov edx, ebp
sub edx, esp
mov ecx, 56
sub ecx, edx
sub esp, ecx
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label15getsqr:
nop
push ebp 
mov ebp, esp 
sub esp, 4 
sub esp, 4 
mov dword [ebp - 8], 1
mov dword ecx, [ebp - 8]
mov dword [ebp - 4], ecx
while_label16:
nop
sub esp, 4 
mov dword eax, [ebp + 8]
mov edx, eax
and edx, 0x80000000
sar edx, 31
idiv dword [ebp - 4]
mov dword [ebp - 12], eax
mov dword edx, [ebp - 4]
mov dword ecx, [ebp - 12]
cmp edx, ecx
jnl while_label17
sub esp, 4 
mov dword [ebp - 16], 1
sub esp, 4 
mov dword ecx, [ebp - 16]
add ecx, [ebp - 4]
mov dword [ebp - 20], ecx
mov dword ecx, [ebp - 20]
mov dword [ebp - 4], ecx
add esp, 4 
add esp, 4 
add esp, 4 
jmp while_label16
while_label17:
nop
sub esp, 4 
sub esp, 4 
sub esp, 4 
mov dword eax, [ebp - 4]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 4]
mov dword [ebp - 24], eax
sub esp, 4 
mov dword ecx, [ebp + 8]
add ecx, [ebp - 24]
mov dword [ebp - 28], ecx
sub esp, 4 
mov dword [ebp - 32], 0
sub esp, 4 
mov dword ecx, [ebp - 32]
sub ecx, [ebp - 28]
mov dword [ebp - 36], ecx
sub esp, 4 
mov dword [ebp - 40], 1
sub esp, 4 
mov dword ecx, [ebp - 40]
add ecx, [ebp - 4]
mov dword [ebp - 44], ecx
sub esp, 4 
mov dword [ebp - 48], 0
sub esp, 4 
mov dword ecx, [ebp - 48]
sub ecx, [ebp - 44]
mov dword [ebp - 52], ecx
sub esp, 4 
mov dword [ebp - 56], 1
sub esp, 4 
mov dword ecx, [ebp - 4]
sub ecx, [ebp - 56]
mov dword [ebp - 60], ecx
sub esp, 4 
mov dword eax, [ebp - 52]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 60]
mov dword [ebp - 64], eax
sub esp, 4 
mov dword ecx, [ebp + 8]
sub ecx, [ebp - 64]
mov dword [ebp - 68], ecx
mov dword edx, [ebp - 36]
mov dword ecx, [ebp - 68]
cmp edx, ecx
jnl code_label18
mov dword eax, [ebp - 4]
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label18:
nop
mov edx, ebp
sub edx, esp
mov ecx, 68
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 72], 1
sub esp, 4 
mov dword ecx, [ebp - 4]
sub ecx, [ebp - 72]
mov dword [ebp - 76], ecx
mov dword eax, [ebp - 76]
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 

_test:
push ebp
mov ebp, esp

sub esp, 4 
sub esp, 4 
mov dword [ebp - 8], 65
mov dword ecx, [ebp - 8]
mov dword [ebp - 4], ecx
sub esp, 4 
sub esp, 4 
mov dword [ebp - 16], 66
mov dword ecx, [ebp - 16]
mov dword [ebp - 12], ecx
sub esp, 4 
sub esp, 4 
mov dword [ebp - 24], 67
mov dword ecx, [ebp - 24]
mov dword [ebp - 20], ecx
sub esp, 4 
sub esp, 4 
mov dword [ebp - 32], 43
mov dword ecx, [ebp - 32]
mov dword [ebp - 28], ecx
sub esp, 4 
sub esp, 4 
mov dword [ebp - 40], 45
mov dword ecx, [ebp - 40]
mov dword [ebp - 36], ecx
sub esp, 4 
sub esp, 4 
mov dword [ebp - 48], 42
mov dword ecx, [ebp - 48]
mov dword [ebp - 44], ecx
sub esp, 4 
sub esp, 4 
mov dword [ebp - 56], 47
mov dword ecx, [ebp - 56]
mov dword [ebp - 52], ecx
sub esp, 4 
sub esp, 4 
mov dword [ebp - 64], 100
mov dword ecx, [ebp - 64]
mov dword [ebp - 60], ecx
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
mov dword [ebp - 592], 123456789
mov dword ecx, [ebp - 592]
mov dword [ebp - 532], ecx
mov dword ecx, [ebp - 4]
mov dword [ebp - 528], ecx
sub esp, 4 
mov dword [ebp - 596], 0
sub esp, 4 
mov dword [ebp - 600], 5
mov dword edx, ebp
sub edx, 128
sub edx, [ebp - 596]
sub edx, [ebp - 596]
sub edx, [ebp - 596]
sub edx, [ebp - 596]
mov dword ecx, [ebp - 600]
mov dword [edx], ecx
sub esp, 4 
mov dword [ebp - 604], 0
sub esp, 4 
mov dword edx, ebp
sub edx, 128
sub edx, [ebp - 604]
sub edx, [ebp - 604]
sub edx, [ebp - 604]
sub edx, [ebp - 604]
mov dword ecx, [edx]
mov dword [ebp - 608], ecx
sub esp, 4 
mov dword [ebp - 612], 1
mov dword edx, ebp
sub edx, 128
sub edx, [ebp - 608]
sub edx, [ebp - 608]
sub edx, [ebp - 608]
sub edx, [ebp - 608]
mov dword ecx, [ebp - 612]
mov dword [edx], ecx
sub esp, 4 
mov dword [ebp - 616], 2
mov dword edx, ebp
sub edx, 128
sub edx, [ebp - 28]
sub edx, [ebp - 28]
sub edx, [ebp - 28]
sub edx, [ebp - 28]
mov dword ecx, [ebp - 616]
mov dword [edx], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
mov dword edx, ebp
sub edx, 68
push dword edx
push dword command_int
call _scanf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
mov dword edx, ebp
sub edx, 72
push dword edx
push dword command_int
call _scanf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword [ebp - 620], 1
mov dword edx, [ebp - 68]
mov dword ecx, [ebp - 620]
cmp edx, ecx
jnz case_label20
sub esp, 4 
mov dword [ebp - 624], 10
sub esp, 4 
mov dword ecx, [ebp - 624]
mov dword [ebp - 628], ecx
sub esp, 4 
mov dword ecx, [ebp - 72]
mov dword [ebp - 632], ecx
call code_label11getpower
sub esp, 4 
mov dword [ebp - 636], 0
mov dword ecx, [ebp - 636]
mov dword [ebp - 76], ecx
while_label21:
nop
sub esp, 4 
mov dword [ebp - 640], 10
mov dword edx, [ebp - 76]
mov dword ecx, [ebp - 640]
cmp edx, ecx
jnl while_label22
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label13
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword [ebp - 644], 1
sub esp, 4 
mov dword ecx, [ebp - 76]
add ecx, [ebp - 644]
mov dword [ebp - 648], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 648]
push dword command_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label14
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword edx, label7
add edx, [ebp - 76]
add edx, [ebp - 76]
add edx, [ebp - 76]
add edx, [ebp - 76]
mov dword ecx, [edx]
mov dword [ebp - 652], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 652]
push dword command_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label15
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label16
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword [ebp - 656], 1
sub esp, 4 
mov dword [ebp - 660], 0
mov dword edx, [ebp - 656]
mov dword ecx, [ebp - 660]
cmp edx, ecx
jz code_label23
sub esp, 4 
mov dword [ebp - 664], 1
sub esp, 4 
mov dword ecx, [ebp - 76]
add ecx, [ebp - 664]
mov dword [ebp - 668], ecx
mov dword ecx, [ebp - 668]
mov dword [ebp - 76], ecx
code_label23:
nop
mov edx, ebp
sub edx, esp
mov ecx, 668
sub ecx, edx
sub esp, ecx
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
jmp while_label21
while_label22:
nop
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
jmp switch_label19
case_label20:
nop
mov edx, ebp
sub edx, esp
mov ecx, 668
sub ecx, edx
sub esp, ecx
switch_label19:
nop
mov edx, ebp
sub edx, esp
mov ecx, 668
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 672], 2
mov dword edx, [ebp - 68]
mov dword ecx, [ebp - 672]
cmp edx, ecx
jnz case_label25
sub esp, 4 
mov dword ecx, [ebp - 20]
mov dword [ebp - 676], ecx
sub esp, 4 
mov dword ecx, [ebp - 12]
mov dword [ebp - 680], ecx
sub esp, 4 
mov dword ecx, [ebp - 4]
mov dword [ebp - 684], ecx
sub esp, 4 
mov dword ecx, [ebp - 72]
mov dword [ebp - 688], ecx
call code_label9hanoi
jmp switch_label24
case_label25:
nop
mov edx, ebp
sub edx, esp
mov ecx, 688
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 692], 3
mov dword edx, [ebp - 68]
mov dword ecx, [ebp - 692]
cmp edx, ecx
jnz case_label26
sub esp, 4 
mov dword ecx, [ebp - 72]
mov dword [ebp - 696], ecx
call code_label3fibonacci
sub esp, 4 
mov dword [ebp - 700], eax
mov dword ecx, [ebp - 700]
mov dword [ebp - 80], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 80]
push dword command_int
call _printf
add esp, 8
add esp, ebx
jmp switch_label24
case_label26:
nop
mov edx, ebp
sub edx, esp
mov ecx, 700
sub ecx, edx
sub esp, ecx
switch_label24:
nop
mov edx, ebp
sub edx, esp
mov ecx, 700
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 704], 4
mov dword edx, [ebp - 68]
mov dword ecx, [ebp - 704]
cmp edx, ecx
jnz case_label29
sub esp, 4 
mov dword ecx, [ebp - 72]
mov dword [ebp - 708], ecx
call code_label15getsqr
sub esp, 4 
mov dword [ebp - 712], eax
mov dword ecx, [ebp - 712]
mov dword [ebp - 124], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 124]
push dword command_int
call _printf
add esp, 8
add esp, ebx
jmp switch_label28
case_label29:
nop
mov edx, ebp
sub edx, esp
mov ecx, 712
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 716], 5
mov dword edx, [ebp - 68]
mov dword ecx, [ebp - 716]
cmp edx, ecx
jnz case_label31
call code_label2testchar
sub esp, 4 
mov dword [ebp - 720], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 720]
push dword command_char
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword [ebp - 724], 3
sub esp, 4 
mov dword [ebp - 728], 2
sub esp, 4 
mov dword eax, [ebp - 724]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 728]
mov dword [ebp - 732], eax
sub esp, 4 
mov dword [ebp - 736], 6
sub esp, 4 
mov dword eax, [ebp - 732]
mov edx, eax
and edx, 0x80000000
sar edx, 31
idiv dword [ebp - 736]
mov dword [ebp - 740], eax
sub esp, 4 
mov dword [ebp - 744], 0
sub esp, 4 
mov dword edx, ebp
sub edx, 128
sub edx, [ebp - 744]
sub edx, [ebp - 744]
sub edx, [ebp - 744]
sub edx, [ebp - 744]
mov dword ecx, [edx]
mov dword [ebp - 748], ecx
sub esp, 4 
mov dword eax, [ebp - 740]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 748]
mov dword [ebp - 752], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 752]
push dword command_int
call _printf
add esp, 8
add esp, ebx
jmp switch_label28
case_label31:
nop
mov edx, ebp
sub edx, esp
mov ecx, 752
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 756], 6
mov dword edx, [ebp - 68]
mov dword ecx, [ebp - 756]
cmp edx, ecx
jnz case_label33
sub esp, 4 
mov dword [ebp - 760], 0
sub esp, 4 
mov dword edx, ebp
sub edx, 128
sub edx, [ebp - 760]
sub edx, [ebp - 760]
sub edx, [ebp - 760]
sub edx, [ebp - 760]
mov dword ecx, [edx]
mov dword [ebp - 764], ecx
sub esp, 4 
mov dword [ebp - 768], 0
mov dword edx, [ebp - 764]
mov dword ecx, [ebp - 768]
cmp edx, ecx
jz code_label34
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label17
call _printf
add esp, 8
add esp, ebx
code_label34:
nop
mov edx, ebp
sub edx, esp
mov ecx, 768
sub ecx, edx
sub esp, ecx
while_label35:
nop
sub esp, 4 
mov dword [ebp - 772], 0
sub esp, 4 
mov dword edx, ebp
sub edx, 128
sub edx, [ebp - 772]
sub edx, [ebp - 772]
sub edx, [ebp - 772]
sub edx, [ebp - 772]
mov dword ecx, [edx]
mov dword [ebp - 776], ecx
sub esp, 4 
mov dword [ebp - 780], 0
mov dword edx, [ebp - 776]
mov dword ecx, [ebp - 780]
cmp edx, ecx
jz while_label36
sub esp, 4 
mov dword [ebp - 784], 0
sub esp, 4 
mov dword edx, ebp
sub edx, 128
sub edx, [ebp - 784]
sub edx, [ebp - 784]
sub edx, [ebp - 784]
sub edx, [ebp - 784]
mov dword ecx, [edx]
mov dword [ebp - 788], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 788]
push dword command_int
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword [ebp - 792], 0
sub esp, 4 
mov dword [ebp - 796], 0
sub esp, 4 
mov dword edx, ebp
sub edx, 128
sub edx, [ebp - 796]
sub edx, [ebp - 796]
sub edx, [ebp - 796]
sub edx, [ebp - 796]
mov dword ecx, [edx]
mov dword [ebp - 800], ecx
sub esp, 4 
mov dword [ebp - 804], 1
sub esp, 4 
mov dword ecx, [ebp - 800]
sub ecx, [ebp - 804]
mov dword [ebp - 808], ecx
mov dword edx, ebp
sub edx, 128
sub edx, [ebp - 792]
sub edx, [ebp - 792]
sub edx, [ebp - 792]
sub edx, [ebp - 792]
mov dword ecx, [ebp - 808]
mov dword [edx], ecx
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
jmp while_label35
while_label36:
nop
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
jmp switch_label28
case_label33:
nop
mov edx, ebp
sub edx, esp
mov ecx, 808
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 812], -7
mov dword edx, [ebp - 68]
mov dword ecx, [ebp - 812]
cmp edx, ecx
jnz case_label37
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
mov dword edx, ebp
sub edx, 544
push dword edx
push dword command_int
call _scanf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
mov dword edx, ebp
sub edx, 548
push dword edx
push dword command_int
call _scanf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
mov dword edx, ebp
sub edx, 552
push dword edx
push dword command_int
call _scanf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
mov dword edx, ebp
sub edx, 556
push dword edx
push dword command_int
call _scanf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
mov dword edx, ebp
sub edx, 560
push dword edx
push dword command_int
call _scanf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
mov dword edx, ebp
sub edx, 564
push dword edx
push dword command_int
call _scanf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 544]
push dword command_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 548]
push dword command_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 552]
push dword command_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 556]
push dword command_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 560]
push dword command_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 564]
push dword command_int
call _printf
add esp, 8
add esp, ebx
jmp switch_label28
case_label37:
nop
mov edx, ebp
sub edx, esp
mov ecx, 812
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 816], 0
mov dword edx, [ebp - 68]
mov dword ecx, [ebp - 816]
cmp edx, ecx
jnz case_label38
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
mov dword edx, ebp
sub edx, 568
push dword edx
push dword command_char
call _scanf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword [ebp - 820], 97
mov dword edx, [ebp - 568]
mov dword ecx, [ebp - 820]
cmp edx, ecx
jnz case_label40
sub esp, 4 
mov dword [ebp - 824], 1
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 824]
push dword command_int
call _printf
add esp, 8
add esp, ebx
jmp switch_label39
case_label40:
nop
mov edx, ebp
sub edx, esp
mov ecx, 824
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 828], 98
mov dword edx, [ebp - 568]
mov dword ecx, [ebp - 828]
cmp edx, ecx
jnz case_label41
sub esp, 4 
mov dword [ebp - 832], 2
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 832]
push dword command_int
call _printf
add esp, 8
add esp, ebx
jmp switch_label39
case_label41:
nop
mov edx, ebp
sub edx, esp
mov ecx, 832
sub ecx, edx
sub esp, ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label18
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword [ebp - 836], 3
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 836]
push dword command_int
call _printf
add esp, 8
add esp, ebx
jmp switch_label39
switch_label39:
nop
mov edx, ebp
sub edx, esp
mov ecx, 836
sub ecx, edx
sub esp, ecx
jmp switch_label28
case_label38:
nop
mov edx, ebp
sub edx, esp
mov ecx, 836
sub ecx, edx
sub esp, ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label19
call _printf
add esp, 8
add esp, ebx
jmp switch_label28
switch_label28:
nop
mov edx, ebp
sub edx, esp
mov ecx, 836
sub ecx, edx
sub esp, ecx
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
mov esp, ebp
pop ebp 
ret 

section .data
command_int:
dd `%d\n\0`
command_char:
dd `%c\n\0`
label0:
dd 1
label1:
dd 2
label2:
dd 3
label3:
dd 4
label4:
dd 5
label5:
dd 6
label6:
dd 7
label9:
dd `OVE \n\0`
label10:
dd ` TO \n\0`
label11:
dd ` \n\0`
label12:
dd `RETURN ERROR\n\0`
label13:
dd `NO\n\0`
label14:
dd `:\n\0`
label15:
dd ` \n\0`
label16:
dd `\n\0`
label17:
dd `IFCORRECT\n\0`
label18:
dd `>=\n\0`
label19:
dd `ERROR\n\0`

section .bss
label7:
resd 40
label8:
resd 4
