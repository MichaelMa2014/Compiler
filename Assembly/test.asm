global _test
extern _printf

section .text
code_label0iFunc1:
nop
push ebp
mov ebp, esp
sub esp, 4
mov dword [ebp - 8], 1
mov dword eax, [ebp - 8]
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
mov dword [ebp - 8], eax
mov dword eax, [ebp - 8]
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
mov dword [ebp - 8], 97
mov dword eax, [ebp - 8]
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
mov dword [ebp - 8], 0
sub esp, 4
mov ebx, label4
add ebx, [ebp - 8]
mov ecx, [ebx]
mov [ebp - 12], ecx
mov dword eax, [ebp - 12]
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
mov dword [ebp - 8], 0
mov dword eax, [ebp - 8]
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
mov dword [ebp - 8], 1
sub esp, 4
mov dword [ebp - 12], 2
sub esp, 4
mov eax, [ebp - 8]
mul dword [ebp - 12]
mov [ebp - 16], eax
mov dword eax, [ebp - 16]
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
mov dword [ebp - 8], 1
sub esp, 4
mov dword [ebp - 12], 2
sub esp, 4
mov eax, [ebp - 8]
mul dword [ebp - 12]
mov [ebp - 16], eax
sub esp, 4
mov dword [ebp - 20], 1
sub esp, 4
sub esp, 4
mov dword [ebp - 24], 0
mov ecx, [ebp - 24]
sub ecx, [ebp - 20]
mov [ebp - 28], ecx
sub esp, 4
mov eax, [ebp - 16]
div dword [ebp - 28]
mov [ebp - 32], eax
mov dword eax, [ebp - 32]
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
mov dword [ebp - 8], 1
mov dword eax, [ebp - 8]
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
mov dword [ebp - 8], 1
sub esp, 4
sub esp, 4
mov dword [ebp - 12], 0
mov ecx, [ebp - 12]
sub ecx, [ebp - 8]
mov [ebp - 16], ecx
mov dword eax, [ebp - 16]
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
mov dword [ebp - 8], eax
call code_label10iFunc9
sub esp, 4
mov dword [ebp - 12], eax
sub esp, 4
mov ecx, [ebp - 8]
add ecx, [ebp - 12]
mov [ebp - 16], ecx
mov dword eax, [ebp - 16]
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
mov dword [ebp - 8], eax
call code_label10iFunc9
sub esp, 4
mov dword [ebp - 12], eax
sub esp, 4
mov ecx, [ebp - 8]
add ecx, [ebp - 12]
mov [ebp - 16], ecx
call code_label11iFunc10
sub esp, 4
mov dword [ebp - 20], eax
sub esp, 4
mov ecx, [ebp - 16]
add ecx, [ebp - 20]
mov [ebp - 24], ecx
mov dword eax, [ebp - 24]
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
code_label18vFunc1:
nop
push ebp
mov ebp, esp
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label6
call _printf
mov esp, ebp
pop ebp
ret
code_label19vFunc2:
nop
push ebp
mov ebp, esp
sub esp, 4
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label7
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label8
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [ebp + 8]
push dword command_int
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label9
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [ebp - 4]
push dword command_int
call _printf
add esp, 4
add esp, 4
mov esp, ebp
pop ebp
ret
code_label20vFunc3:
nop
push ebp
mov ebp, esp
sub esp, 4
sub esp, 4
mov ecx, [ebp + 8]
add ecx, [ebp + 12]
mov [ebp - 12], ecx
mov ecx, [ebp - 12]
mov [ebp - 8], ecx
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label10
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label11
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [ebp + 8]
push dword command_int
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label12
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [ebp + 12]
push dword command_char
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label13
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [ebp - 8]
push dword command_int
call _printf
add esp, 4
add esp, 4
add esp, 4
add esp, 4
mov esp, ebp
pop ebp
ret
code_label21vFunc4:
nop
push ebp
mov ebp, esp
sub esp, 4
sub esp, 4
sub esp, 4
sub esp, 4
mov dword [ebp - 20], 4
mov ecx, [ebp - 20]
mov [ebp - 16], ecx
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label14
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label15
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [ebp - 4]
push dword command_char
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label16
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [ebp - 8]
push dword command_char
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label17
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [ebp - 16]
push dword command_int
call _printf
add esp, 4
add esp, 4
add esp, 4
add esp, 4
mov esp, ebp
pop ebp
ret
code_label22gcd:
nop
push ebp
mov ebp, esp
mov ebx, [ebp + 8]
mov ecx, [ebp + 12]
cmp ebx, ecx
jnz code_label23
mov dword eax, [ebp + 8]
add esp, 4
add esp, 4
mov esp, ebp
pop ebp
ret
code_label23:
nop
mov ebx, [ebp + 8]
mov ecx, [ebp + 12]
cmp ebx, ecx
jng code_label24
sub esp, 4
mov ecx, [ebp + 8]
sub ecx, [ebp + 12]
mov [ebp - 8], ecx
sub esp, 4
mov ecx, [ebp - 8]
mov [ebp - 12], ecx
sub esp, 4
mov ecx, [ebp + 12]
mov [ebp - 16], ecx
call code_label22gcd
sub esp, 4
mov dword [ebp - 20], eax
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
code_label24:
nop
mov ebx, [ebp + 8]
mov ecx, [ebp + 12]
cmp ebx, ecx
jnl code_label26
sub esp, 4
mov ecx, [ebp + 12]
sub ecx, [ebp + 8]
mov [ebp - 24], ecx
sub esp, 4
mov ecx, [ebp + 8]
mov [ebp - 28], ecx
sub esp, 4
mov ecx, [ebp - 24]
mov [ebp - 32], ecx
call code_label22gcd
sub esp, 4
mov dword [ebp - 36], eax
mov dword eax, [ebp - 36]
add esp, 4
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
code_label26:
nop
add esp, 4
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
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label18
call _printf
call code_label0iFunc1
sub esp, 4
mov dword [ebp - 60], eax
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [ebp - 60]
push dword command_int
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label19
call _printf
call code_label1iFunc2
sub esp, 4
mov dword [ebp - 64], eax
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [ebp - 64]
push dword command_int
call _printf
call code_label3cFunc1
sub esp, 4
mov dword [ebp - 68], eax
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [ebp - 68]
push dword command_char
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label20
call _printf
call code_label4iFunc3
sub esp, 4
mov dword [ebp - 72], eax
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [ebp - 72]
push dword command_int
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label21
call _printf
call code_label5iFunc4
sub esp, 4
mov dword [ebp - 76], eax
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [ebp - 76]
push dword command_int
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label22
call _printf
call code_label6iFunc5
sub esp, 4
mov dword [ebp - 80], eax
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [ebp - 80]
push dword command_int
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label23
call _printf
call code_label7iFunc6
sub esp, 4
mov dword [ebp - 84], eax
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [ebp - 84]
push dword command_int
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label24
call _printf
call code_label8iFunc7
sub esp, 4
mov dword [ebp - 88], eax
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [ebp - 88]
push dword command_int
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label25
call _printf
call code_label9iFunc8
sub esp, 4
mov dword [ebp - 92], eax
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [ebp - 92]
push dword command_int
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label26
call _printf
call code_label10iFunc9
sub esp, 4
mov dword [ebp - 96], eax
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [ebp - 96]
push dword command_int
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label27
call _printf
call code_label11iFunc10
sub esp, 4
mov dword [ebp - 100], eax
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [ebp - 100]
push dword command_int
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label28
call _printf
call code_label14iFunc11
sub esp, 4
mov dword [ebp - 104], eax
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [ebp - 104]
push dword command_int
call _printf
call code_label18vFunc1
sub esp, 4
mov dword [ebp - 108], 2
sub esp, 4
mov ecx, [ebp - 108]
mov [ebp - 112], ecx
call code_label19vFunc2
sub esp, 4
mov dword [ebp - 116], 3
sub esp, 4
mov dword [ebp - 120], 99
sub esp, 4
mov ecx, [ebp - 120]
mov [ebp - 124], ecx
sub esp, 4
mov ecx, [ebp - 116]
mov [ebp - 128], ecx
call code_label20vFunc3
call code_label21vFunc4
sub esp, 4
mov dword [ebp - 132], 0
mov ebx, [label3]
mov ecx, [ebp - 132]
cmp ebx, ecx
jnz code_label40
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label29
call _printf
code_label40:
nop
sub esp, 4
mov dword [ebp - 136], 0
mov ebx, [label3]
mov ecx, [ebp - 136]
cmp ebx, ecx
jz code_label41
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label30
call _printf
code_label41:
nop
sub esp, 4
mov dword [ebp - 140], 0
mov ebx, [label3]
mov ecx, [ebp - 140]
cmp ebx, ecx
jng code_label42
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label31
call _printf
code_label42:
nop
sub esp, 4
mov dword [ebp - 144], 0
mov ebx, [label3]
mov ecx, [ebp - 144]
cmp ebx, ecx
jnl code_label43
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label32
call _printf
code_label43:
nop
sub esp, 4
mov dword [ebp - 148], 0
mov ebx, [label3]
mov ecx, [ebp - 148]
cmp ebx, ecx
jnge code_label44
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label33
call _printf
code_label44:
nop
sub esp, 4
mov dword [ebp - 152], 0
mov ebx, [label3]
mov ecx, [ebp - 152]
cmp ebx, ecx
jnle code_label45
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label34
call _printf
code_label45:
nop
sub esp, 4
mov dword [ebp - 156], 0
mov ebx, [label3]
mov ecx, [ebp - 156]
cmp ebx, ecx
jz code_label46
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label35
call _printf
code_label46:
nop
while_label47:
nop
sub esp, 4
mov dword [ebp - 160], 5
mov ebx, [label3]
mov ecx, [ebp - 160]
cmp ebx, ecx
jnl while_label48
sub esp, 4
mov dword [ebp - 164], 1
sub esp, 4
mov ecx, [label3]
add ecx, [ebp - 164]
mov [ebp - 168], ecx
mov ecx, [ebp - 168]
mov [label3], ecx
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label36
call _printf
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [label3]
push dword command_int
call _printf
add esp, 4
add esp, 4
add esp, 4
jmp while_label47
while_label48:
nop
sub esp, 4
sub esp, 4
sub esp, 4
sub esp, 4
mov dword [ebp - 172], 0
sub esp, 4
mov ebx, label4
add ebx, [ebp - 172]
mov ecx, [ebx]
mov [ebp - 176], ecx
sub esp, 4
mov dword [ebp - 180], 0
mov ebx, [ebp - 176]
mov ecx, [ebp - 180]
cmp ebx, ecx
jnz case_label50
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label37
call _printf
jmp switch_label49
case_label50:
nop
switch_label49:
nop
sub esp, 4
mov dword [ebp - 184], 0
sub esp, 4
mov ebx, label4
add ebx, [ebp - 184]
mov ecx, [ebx]
mov [ebp - 188], ecx
sub esp, 4
mov dword [ebp - 192], 0
mov ebx, [ebp - 188]
mov ecx, [ebp - 192]
cmp ebx, ecx
jnz case_label52
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label38
call _printf
jmp switch_label51
case_label52:
nop
sub esp, 4
mov dword [ebp - 196], 1
mov ebx, [ebp - 188]
mov ecx, [ebp - 196]
cmp ebx, ecx
jnz case_label53
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label39
call _printf
jmp switch_label51
case_label53:
nop
switch_label51:
nop
sub esp, 4
mov dword [ebp - 200], 0
sub esp, 4
mov ebx, label4
add ebx, [ebp - 200]
mov ecx, [ebx]
mov [ebp - 204], ecx
sub esp, 4
mov dword [ebp - 208], 0
mov ebx, [ebp - 204]
mov ecx, [ebp - 208]
cmp ebx, ecx
jnz case_label55
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label40
call _printf
jmp switch_label54
case_label55:
nop
sub esp, 4
mov dword [ebp - 212], 1
mov ebx, [ebp - 204]
mov ecx, [ebp - 212]
cmp ebx, ecx
jnz case_label56
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label41
call _printf
jmp switch_label54
case_label56:
nop
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword 0
push dword label42
call _printf
jmp switch_label54
switch_label54:
nop
mov ecx, [ebp - 4]
mov [ebp - 12], ecx
sub esp, 4
mov dword [ebp - 216], 0
mov ebx, ebp
sub ebx, 36
sub ebx, [ebp - 216]
mov ecx, [ebp - 12]
mov [ebx], ecx
sub esp, 4
mov dword [ebp - 220], 0
sub esp, 4
mov ebx, label4
add ebx, [ebp - 220]
mov ecx, [ebx]
mov [ebp - 224], ecx
sub esp, 4
mov dword [ebp - 228], 1
sub esp, 4
mov ebx, label4
add ebx, [ebp - 228]
mov ecx, [ebx]
mov [ebp - 232], ecx
sub esp, 4
mov ecx, [ebp - 232]
mov [ebp - 236], ecx
sub esp, 4
mov ecx, [ebp - 224]
mov [ebp - 240], ecx
call code_label22gcd
sub esp, 4
mov dword [ebp - 244], eax
mov eax, esp
and eax, 0xf
add eax, 0x8
sub esp, eax
push dword [ebp - 244]
push dword command_int
call _printf
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
dd `iFunc1() = \n\0`
label19:
dd `iFunc2()= \n\0`
label20:
dd `iFunc3()= \n\0`
label21:
dd `iFunc4()= \n\0`
label22:
dd `iFunc5()= \n\0`
label23:
dd `iFunc6()= \n\0`
label24:
dd `iFunc7()= \n\0`
label25:
dd `iFunc8()= \n\0`
label26:
dd `iFunc9()= \n\0`
label27:
dd `iFunc10()= \n\0`
label28:
dd `iFunc11()= \n\0`
label29:
dd `intV1 == 0\n\0`
label30:
dd `intV1 != 0\n\0`
label31:
dd `intV1 >  0\n\0`
label32:
dd `intV1 <  0\n\0`
label33:
dd `intV1 >= 0\n\0`
label34:
dd `intV1 <= 0\n\0`
label35:
dd `intV1 is true\n\0`
label36:
dd `intV1 becomes \n\0`
label37:
dd `intV2[0] is 0\n\0`
label38:
dd `intV2[0] is 0\n\0`
label39:
dd `intV2[0] is 1\n\0`
label40:
dd `intV2[0] is 0\n\0`
label41:
dd `intV2[0] is 1\n\0`
label42:
dd `intV2[0] is neither 0 nor 1\n\0`

section .bss
label3:
resd 0
label4:
resd 0
label5:
resd 0
