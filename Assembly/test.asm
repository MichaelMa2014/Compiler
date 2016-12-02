global _test
extern _printf
extern _scanf

section .text
code_label0iFunc1:
nop
push ebp 
mov ebp, esp 
sub esp, 4 
mov dword [ebp - 4], 1
mov dword eax, [ebp - 4]
add esp, 4 
mov esp, ebp
pop ebp 
ret 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label1iFunc2:
nop
push ebp 
mov ebp, esp 
call code_label0iFunc1
sub esp, 4 
mov dword [ebp - 4], eax
mov dword eax, [ebp - 4]
add esp, 4 
mov esp, ebp
pop ebp 
ret 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label3cFunc1:
nop
push ebp 
mov ebp, esp 
sub esp, 4 
mov dword [ebp - 4], 97
mov dword eax, [ebp - 4]
add esp, 4 
mov esp, ebp
pop ebp 
ret 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label4iFunc3:
nop
push ebp 
mov ebp, esp 
mov dword eax, [label0]
mov esp, ebp
pop ebp 
ret 
mov esp, ebp
pop ebp 
ret 
code_label5iFunc4:
nop
push ebp 
mov ebp, esp 
sub esp, 4 
mov dword [ebp - 4], 0
sub esp, 4 
mov dword edx, label4
add edx, [ebp - 4]
mov dword ecx, [edx]
mov dword [ebp - 8], ecx
mov dword eax, [ebp - 8]
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label6iFunc5:
nop
push ebp 
mov ebp, esp 
sub esp, 4 
mov dword [ebp - 4], 0
mov dword eax, [ebp - 4]
add esp, 4 
mov esp, ebp
pop ebp 
ret 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label7iFunc6:
nop
push ebp 
mov ebp, esp 
sub esp, 4 
mov dword [ebp - 4], 1
sub esp, 4 
mov dword [ebp - 8], 2
sub esp, 4 
mov dword eax, [ebp - 4]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 8]
mov dword [ebp - 12], eax
mov dword eax, [ebp - 12]
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label8iFunc7:
nop
push ebp 
mov ebp, esp 
sub esp, 4 
mov dword [ebp - 4], 1
sub esp, 4 
mov dword [ebp - 8], 2
sub esp, 4 
mov dword eax, [ebp - 4]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 8]
mov dword [ebp - 12], eax
sub esp, 4 
mov dword [ebp - 16], 1
sub esp, 4 
sub esp, 4 
mov dword [ebp - 20], 0
mov dword ecx, [ebp - 20]
sub ecx, [ebp - 16]
mov dword [ebp - 24], ecx
sub esp, 4 
mov dword eax, [ebp - 12]
mov edx, eax
and edx, 0x80000000
sar edx, 31
idiv dword [ebp - 24]
mov dword [ebp - 28], eax
mov dword eax, [ebp - 28]
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
mov esp, ebp
pop ebp 
ret 
code_label9iFunc8:
nop
push ebp 
mov ebp, esp 
sub esp, 4 
mov dword [ebp - 4], 1
mov dword eax, [ebp - 4]
add esp, 4 
mov esp, ebp
pop ebp 
ret 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label10iFunc9:
nop
push ebp 
mov ebp, esp 
sub esp, 4 
mov dword [ebp - 4], 1
sub esp, 4 
sub esp, 4 
mov dword [ebp - 8], 0
mov dword ecx, [ebp - 8]
sub ecx, [ebp - 4]
mov dword [ebp - 12], ecx
mov dword eax, [ebp - 12]
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label11iFunc10:
nop
push ebp 
mov ebp, esp 
call code_label9iFunc8
sub esp, 4 
mov dword [ebp - 4], eax
call code_label10iFunc9
sub esp, 4 
mov dword [ebp - 8], eax
sub esp, 4 
mov dword ecx, [ebp - 4]
add ecx, [ebp - 8]
mov dword [ebp - 12], ecx
mov dword eax, [ebp - 12]
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label14iFunc11:
nop
push ebp 
mov ebp, esp 
call code_label9iFunc8
sub esp, 4 
mov dword [ebp - 4], eax
call code_label10iFunc9
sub esp, 4 
mov dword [ebp - 8], eax
sub esp, 4 
mov dword ecx, [ebp - 4]
add ecx, [ebp - 8]
mov dword [ebp - 12], ecx
call code_label11iFunc10
sub esp, 4 
mov dword [ebp - 16], eax
sub esp, 4 
mov dword ecx, [ebp - 12]
add ecx, [ebp - 16]
mov dword [ebp - 20], ecx
mov dword eax, [ebp - 20]
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
mov esp, ebp
pop ebp 
ret 
code_label18iFunc12:
nop
push ebp 
mov ebp, esp 
call code_label9iFunc8
sub esp, 4 
mov dword [ebp - 4], eax
call code_label10iFunc9
sub esp, 4 
mov dword [ebp - 8], eax
sub esp, 4 
mov dword eax, [ebp - 4]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 8]
mov dword [ebp - 12], eax
mov dword eax, [ebp - 12]
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label21iFunc13:
nop
push ebp 
mov ebp, esp 
call code_label9iFunc8
sub esp, 4 
mov dword [ebp - 4], eax
call code_label10iFunc9
sub esp, 4 
mov dword [ebp - 8], eax
sub esp, 4 
mov dword eax, [ebp - 4]
mov edx, eax
and edx, 0x80000000
sar edx, 31
idiv dword [ebp - 8]
mov dword [ebp - 12], eax
call code_label18iFunc12
sub esp, 4 
mov dword [ebp - 16], eax
sub esp, 4 
mov dword eax, [ebp - 12]
mov edx, eax
and edx, 0x80000000
sar edx, 31
idiv dword [ebp - 16]
mov dword [ebp - 20], eax
mov dword eax, [ebp - 20]
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
mov esp, ebp
pop ebp 
ret 
code_label25vFunc1:
nop
push ebp 
mov ebp, esp 
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label6
call _printf
add esp, 8
add esp, ebx
mov esp, ebp
pop ebp 
ret 
code_label26vFunc2:
nop
push ebp 
mov ebp, esp 
sub esp, 4 
sub esp, 4 
mov dword [ebp - 8], 2
mov dword ecx, [ebp - 8]
mov dword [ebp - 4], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label7
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label8
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp + 8]
push dword command_int
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
push dword [ebp - 4]
push dword command_int
call _printf
add esp, 8
add esp, ebx
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label27vFunc3:
nop
push ebp 
mov ebp, esp 
sub esp, 4 
sub esp, 4 
mov dword ecx, [ebp + 8]
add ecx, [ebp + 12]
mov dword [ebp - 8], ecx
mov dword ecx, [ebp - 8]
mov dword [ebp - 4], ecx
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
push dword 0
push dword label11
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp + 8]
push dword command_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label12
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
push dword label13
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 4]
push dword command_int
call _printf
add esp, 8
add esp, ebx
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label28vFunc4:
nop
push ebp 
mov ebp, esp 
sub esp, 4 
sub esp, 4 
mov dword [ebp - 8], 99
mov dword ecx, [ebp - 8]
mov dword [ebp - 4], ecx
sub esp, 4 
sub esp, 4 
mov dword [ebp - 16], 100
mov dword ecx, [ebp - 16]
mov dword [ebp - 12], ecx
sub esp, 4 
sub esp, 4 
mov dword [ebp - 24], 4
mov dword ecx, [ebp - 24]
mov dword [ebp - 20], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label14
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
push dword [ebp - 4]
push dword command_char
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
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 12]
push dword command_char
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label17
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 20]
push dword command_int
call _printf
add esp, 8
add esp, ebx
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label29gcd:
nop
push ebp 
mov ebp, esp 
mov dword edx, [ebp + 8]
mov dword ecx, [ebp + 12]
cmp edx, ecx
jnz code_label30
mov dword eax, [ebp + 8]
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label30:
nop
mov edx, ebp
sub edx, esp
mov ecx, 0
sub ecx, edx
sub esp, ecx
mov dword edx, [ebp + 8]
mov dword ecx, [ebp + 12]
cmp edx, ecx
jng code_label31
sub esp, 4 
mov dword ecx, [ebp + 8]
sub ecx, [ebp + 12]
mov dword [ebp - 4], ecx
sub esp, 4 
mov dword ecx, [ebp - 4]
mov dword [ebp - 8], ecx
sub esp, 4 
mov dword ecx, [ebp + 12]
mov dword [ebp - 12], ecx
call code_label29gcd
sub esp, 4 
mov dword [ebp - 16], eax
mov dword eax, [ebp - 16]
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label31:
nop
mov edx, ebp
sub edx, esp
mov ecx, 16
sub ecx, edx
sub esp, ecx
mov dword edx, [ebp + 8]
mov dword ecx, [ebp + 12]
cmp edx, ecx
jnl code_label33
sub esp, 4 
mov dword ecx, [ebp + 12]
sub ecx, [ebp + 8]
mov dword [ebp - 20], ecx
sub esp, 4 
mov dword ecx, [ebp + 8]
mov dword [ebp - 24], ecx
sub esp, 4 
mov dword ecx, [ebp - 20]
mov dword [ebp - 28], ecx
call code_label29gcd
sub esp, 4 
mov dword [ebp - 32], eax
mov dword eax, [ebp - 32]
add esp, 4 
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
code_label33:
nop
mov edx, ebp
sub edx, esp
mov ecx, 32
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
mov esp, ebp
pop ebp 
ret 

_test:
push ebp
mov ebp, esp

sub esp, 4 
sub esp, 4 
mov dword [ebp - 8], 5
mov dword ecx, [ebp - 8]
mov dword [ebp - 4], ecx
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
mov dword [ebp - 68], 1
mov dword ecx, [ebp - 68]
mov dword [ebp - 12], ecx
sub esp, 4 
mov dword [ebp - 72], 0
mov dword ecx, [ebp - 72]
mov dword [ebp - 40], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label18
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 40]
push dword command_int
call _printf
add esp, 8
add esp, ebx
while_label35:
nop
sub esp, 4 
mov dword [ebp - 76], 6
mov dword edx, [ebp - 12]
mov dword ecx, [ebp - 76]
cmp edx, ecx
jnl while_label36
sub esp, 4 
mov dword eax, [ebp - 12]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 12]
mov dword [ebp - 80], eax
mov dword edx, ebp
sub edx, 16
sub edx, [ebp - 12]
sub edx, [ebp - 12]
sub edx, [ebp - 12]
sub edx, [ebp - 12]
mov dword ecx, [ebp - 80]
mov dword [edx], ecx
sub esp, 4 
mov dword edx, ebp
sub edx, 16
sub edx, [ebp - 12]
sub edx, [ebp - 12]
sub edx, [ebp - 12]
sub edx, [ebp - 12]
mov dword ecx, [edx]
mov dword [ebp - 84], ecx
sub esp, 4 
mov dword ecx, [ebp - 40]
add ecx, [ebp - 84]
mov dword [ebp - 88], ecx
mov dword ecx, [ebp - 88]
mov dword [ebp - 40], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label19
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 40]
push dword command_int
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword [ebp - 92], 1
sub esp, 4 
mov dword ecx, [ebp - 12]
add ecx, [ebp - 92]
mov dword [ebp - 96], ecx
mov dword ecx, [ebp - 96]
mov dword [ebp - 12], ecx
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
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label20
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 40]
push dword command_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label21
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword [ebp - 100], 0
sub esp, 4 
mov dword [ebp - 104], 0
sub esp, 4 
mov dword eax, [ebp - 100]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 104]
mov dword [ebp - 108], eax
sub esp, 4 
mov dword [ebp - 112], 1
sub esp, 4 
mov dword [ebp - 116], 1
sub esp, 4 
mov dword eax, [ebp - 112]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 116]
mov dword [ebp - 120], eax
sub esp, 4 
mov dword ecx, [ebp - 108]
add ecx, [ebp - 120]
mov dword [ebp - 124], ecx
sub esp, 4 
mov dword [ebp - 128], 2
sub esp, 4 
mov dword [ebp - 132], 2
sub esp, 4 
mov dword eax, [ebp - 128]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 132]
mov dword [ebp - 136], eax
sub esp, 4 
mov dword ecx, [ebp - 124]
add ecx, [ebp - 136]
mov dword [ebp - 140], ecx
sub esp, 4 
mov dword [ebp - 144], 3
sub esp, 4 
mov dword [ebp - 148], 3
sub esp, 4 
mov dword eax, [ebp - 144]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 148]
mov dword [ebp - 152], eax
sub esp, 4 
mov dword ecx, [ebp - 140]
add ecx, [ebp - 152]
mov dword [ebp - 156], ecx
sub esp, 4 
mov dword [ebp - 160], 4
sub esp, 4 
mov dword [ebp - 164], 4
sub esp, 4 
mov dword eax, [ebp - 160]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 164]
mov dword [ebp - 168], eax
sub esp, 4 
mov dword ecx, [ebp - 156]
add ecx, [ebp - 168]
mov dword [ebp - 172], ecx
sub esp, 4 
mov dword [ebp - 176], 5
sub esp, 4 
mov dword [ebp - 180], 5
sub esp, 4 
mov dword eax, [ebp - 176]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 180]
mov dword [ebp - 184], eax
sub esp, 4 
mov dword ecx, [ebp - 172]
add ecx, [ebp - 184]
mov dword [ebp - 188], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 188]
push dword command_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
mov dword edx, ebp
sub edx, 44
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
sub edx, 48
push dword edx
push dword command_int
call _scanf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label22
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword ecx, [ebp - 44]
add ecx, [ebp - 48]
mov dword [ebp - 192], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 192]
push dword command_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
mov dword edx, ebp
sub edx, 48
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
sub edx, 52
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
sub edx, 56
push dword edx
push dword command_int
call _scanf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label23
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword eax, [ebp - 48]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 52]
mov dword [ebp - 196], eax
sub esp, 4 
mov dword eax, [ebp - 196]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 56]
mov dword [ebp - 200], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 200]
push dword command_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
mov dword edx, ebp
sub edx, 60
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
sub edx, 64
push dword edx
push dword command_int
call _scanf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword [ebp - 204], 0
sub esp, 4 
mov dword [ebp - 208], 0
sub esp, 4 
mov dword ecx, [ebp - 204]
add ecx, [ebp - 208]
mov dword [ebp - 212], ecx
mov dword edx, label4
add edx, [ebp - 212]
mov dword ecx, [ebp - 60]
mov dword [edx], ecx
sub esp, 4 
mov dword [ebp - 216], 1
sub esp, 4 
mov dword [ebp - 220], 1
sub esp, 4 
mov dword eax, [ebp - 216]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 220]
mov dword [ebp - 224], eax
mov dword edx, label4
add edx, [ebp - 224]
mov dword ecx, [ebp - 64]
mov dword [edx], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label24
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword [ebp - 228], 0
sub esp, 4 
mov dword [ebp - 232], 0
sub esp, 4 
mov dword ecx, [ebp - 228]
add ecx, [ebp - 232]
mov dword [ebp - 236], ecx
sub esp, 4 
mov dword [ebp - 240], 0
sub esp, 4 
mov dword ecx, [ebp - 236]
add ecx, [ebp - 240]
mov dword [ebp - 244], ecx
sub esp, 4 
mov dword edx, label4
add edx, [ebp - 244]
mov dword ecx, [edx]
mov dword [ebp - 248], ecx
sub esp, 4 
mov dword [ebp - 252], 1
sub esp, 4 
mov dword [ebp - 256], 1
sub esp, 4 
mov dword eax, [ebp - 252]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 256]
mov dword [ebp - 260], eax
sub esp, 4 
mov dword [ebp - 264], 1
sub esp, 4 
mov dword eax, [ebp - 260]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 264]
mov dword [ebp - 268], eax
sub esp, 4 
mov dword edx, label4
add edx, [ebp - 268]
mov dword ecx, [edx]
mov dword [ebp - 272], ecx
sub esp, 4 
mov dword ecx, [ebp - 272]
mov dword [ebp - 276], ecx
sub esp, 4 
mov dword ecx, [ebp - 248]
mov dword [ebp - 280], ecx
call code_label29gcd
sub esp, 4 
mov dword [ebp - 284], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 284]
push dword command_int
call _printf
add esp, 8
add esp, ebx
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
dd 97
label2:
dd 98
label6:
dd `vFunc1() called\n\0`
label7:
dd `vFunc2() called\n\0`
label8:
dd `param1 is \n\0`
label9:
dd `intC2 is \n\0`
label10:
dd `vFunc3() called\n\0`
label11:
dd `param1 is \n\0`
label12:
dd `param2 is \n\0`
label13:
dd `param1 + param2 is \n\0`
label14:
dd `vFunc4() called\n\0`
label15:
dd `charC3 is \n\0`
label16:
dd `charC4 is \n\0`
label17:
dd `intV4 is \n\0`
label18:
dd `_intV7 originally is \n\0`
label19:
dd `_intV7 becomes \n\0`
label20:
dd `0*0+1*1+2*2+3*3+4*4+5*5 = \n\0`
label21:
dd `0*0+1*1+2*2+3*3+4*4+5*5 = \n\0`
label22:
dd `The sum of the 2 numbers you entered is \n\0`
label23:
dd `The product of the 3 numbers you entered is \n\0`
label24:
dd `The gcd of the 2 numbers you entered is \n\0`

section .bss
label3:
resd 4
label4:
resd 8
label5:
resd 4
