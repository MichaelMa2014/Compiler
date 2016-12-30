global _test
extern _printf
extern _scanf

section .text
mov dword [label0], 1
mov dword [label1], 97
mov dword [label2], 98

_test:
push ebp
mov ebp, esp

sub esp, 4 
mov dword [ebp - 4], 5
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
mov dword [ebp - 72], 0
mov dword [ebp - 72], 0
mov dword edx, label4
add edx, [ebp - 72]
add edx, [ebp - 72]
add edx, [ebp - 72]
add edx, [ebp - 72]
mov dword ecx, [ebp - 72]
mov dword [edx], ecx
sub esp, 4 
mov dword [ebp - 76], 1
mov dword [ebp - 72], 0
mov dword edx, label4
add edx, [ebp - 76]
add edx, [ebp - 76]
add edx, [ebp - 76]
add edx, [ebp - 76]
mov dword ecx, [ebp - 72]
mov dword [edx], ecx
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
push dword 0
push dword label9
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
mov dword edx, label3
push dword edx
push dword scan_int
call _scanf
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
push dword [label3]
push dword print_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
mov dword edx, label7
push dword edx
push dword scan_char
call _scanf
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
push dword [label7]
push dword print_char
call _printf
add esp, 8
add esp, ebx
mov dword [ebp - 72], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz code_label0
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label12
call _printf
add esp, 8
add esp, ebx
code_label0: nop
mov edx, ebp
sub edx, esp
mov ecx, 76
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jz code_label1
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label13
call _printf
add esp, 8
add esp, ebx
code_label1: nop
mov edx, ebp
sub edx, esp
mov ecx, 76
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jng code_label2
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label14
call _printf
add esp, 8
add esp, ebx
code_label2: nop
mov edx, ebp
sub edx, esp
mov ecx, 76
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnl code_label3
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label15
call _printf
add esp, 8
add esp, ebx
code_label3: nop
mov edx, ebp
sub edx, esp
mov ecx, 76
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnge code_label4
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label16
call _printf
add esp, 8
add esp, ebx
code_label4: nop
mov edx, ebp
sub edx, esp
mov ecx, 76
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnle code_label5
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label17
call _printf
add esp, 8
add esp, ebx
code_label5: nop
mov edx, ebp
sub edx, esp
mov ecx, 76
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jz code_label6
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label18
call _printf
add esp, 8
add esp, ebx
code_label6: nop
mov edx, ebp
sub edx, esp
mov ecx, 76
sub ecx, edx
sub esp, ecx
while_label7: nop
mov dword [ebp - 4], 5
mov dword edx, [label3]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnl while_label8
mov dword [ebp - 76], 1
sub esp, 4 
mov dword ecx, [label3]
add ecx, [ebp - 76]
mov dword [ebp - 80], ecx
mov dword ecx, [ebp - 80]
mov dword [label3], ecx
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
push dword [label3]
push dword print_int
call _printf
add esp, 8
add esp, ebx
add esp, 4 
jmp while_label7
while_label8: nop
sub esp, 4 
mov dword [ebp - 72], 0
sub esp, 4 
mov dword edx, label4
add edx, [ebp - 72]
add edx, [ebp - 72]
add edx, [ebp - 72]
add edx, [ebp - 72]
mov dword ecx, [edx]
mov dword [ebp - 84], ecx
mov dword [ebp - 72], 0
mov dword edx, [ebp - 84]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz case_label10
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label20
call _printf
add esp, 8
add esp, ebx
jmp switch_label9
case_label10: nop
mov edx, ebp
sub edx, esp
mov ecx, 84
sub ecx, edx
sub esp, ecx
switch_label9: nop
mov edx, ebp
sub edx, esp
mov ecx, 84
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
sub esp, 4 
mov dword edx, label4
add edx, [ebp - 72]
add edx, [ebp - 72]
add edx, [ebp - 72]
add edx, [ebp - 72]
mov dword ecx, [edx]
mov dword [ebp - 88], ecx
mov dword [ebp - 72], 0
mov dword edx, [ebp - 88]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz case_label12
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label21
call _printf
add esp, 8
add esp, ebx
jmp switch_label11
case_label12: nop
mov edx, ebp
sub edx, esp
mov ecx, 88
sub ecx, edx
sub esp, ecx
mov dword [ebp - 76], 1
mov dword edx, [ebp - 88]
mov dword ecx, [ebp - 76]
cmp edx, ecx
jnz case_label13
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label22
call _printf
add esp, 8
add esp, ebx
jmp switch_label11
case_label13: nop
mov edx, ebp
sub edx, esp
mov ecx, 88
sub ecx, edx
sub esp, ecx
switch_label11: nop
mov edx, ebp
sub edx, esp
mov ecx, 88
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
sub esp, 4 
mov dword edx, label4
add edx, [ebp - 72]
add edx, [ebp - 72]
add edx, [ebp - 72]
add edx, [ebp - 72]
mov dword ecx, [edx]
mov dword [ebp - 92], ecx
mov dword [ebp - 72], 0
mov dword edx, [ebp - 92]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz case_label15
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label23
call _printf
add esp, 8
add esp, ebx
jmp switch_label14
case_label15: nop
mov edx, ebp
sub edx, esp
mov ecx, 92
sub ecx, edx
sub esp, ecx
mov dword [ebp - 76], 1
mov dword edx, [ebp - 92]
mov dword ecx, [ebp - 76]
cmp edx, ecx
jnz case_label16
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label24
call _printf
add esp, 8
add esp, ebx
jmp switch_label14
case_label16: nop
mov edx, ebp
sub edx, esp
mov ecx, 92
sub ecx, edx
sub esp, ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label25
call _printf
add esp, 8
add esp, ebx
jmp switch_label14
switch_label14: nop
mov edx, ebp
sub edx, esp
mov ecx, 92
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword ecx, [ebp - 72]
mov dword [ebp - 8], ecx
mov dword [ebp - 72], 0
mov dword ecx, [ebp - 72]
mov dword [ebp - 36], ecx
while_label17: nop
sub esp, 4 
mov dword [ebp - 96], 6
mov dword edx, [ebp - 8]
mov dword ecx, [ebp - 96]
cmp edx, ecx
jnl while_label18
sub esp, 4 
mov dword eax, [ebp - 8]
cdq
imul dword [ebp - 8]
mov dword [ebp - 100], eax
mov dword edx, ebp
sub edx, 12
sub edx, [ebp - 8]
sub edx, [ebp - 8]
sub edx, [ebp - 8]
sub edx, [ebp - 8]
mov dword ecx, [ebp - 100]
mov dword [edx], ecx
sub esp, 4 
mov dword edx, ebp
sub edx, 12
sub edx, [ebp - 8]
sub edx, [ebp - 8]
sub edx, [ebp - 8]
sub edx, [ebp - 8]
mov dword ecx, [edx]
mov dword [ebp - 104], ecx
sub esp, 4 
mov dword ecx, [ebp - 36]
add ecx, [ebp - 104]
mov dword [ebp - 108], ecx
mov dword ecx, [ebp - 108]
mov dword [ebp - 36], ecx
mov dword [ebp - 76], 1
sub esp, 4 
mov dword ecx, [ebp - 8]
add ecx, [ebp - 76]
mov dword [ebp - 112], ecx
mov dword ecx, [ebp - 112]
mov dword [ebp - 8], ecx
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
jmp while_label17
while_label18: nop
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label26
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 36]
push dword print_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label27
call _printf
add esp, 8
add esp, ebx
mov dword [ebp - 72], 0
mov dword [ebp - 72], 0
sub esp, 4 
mov dword [ebp - 76], 1
mov dword [ebp - 76], 1
sub esp, 4 
sub esp, 4 
sub esp, 4 
mov dword [ebp - 128], 2
mov dword [ebp - 128], 2
sub esp, 4 
sub esp, 4 
sub esp, 4 
mov dword [ebp - 140], 3
mov dword [ebp - 140], 3
sub esp, 4 
sub esp, 4 
sub esp, 4 
mov dword [ebp - 152], 4
mov dword [ebp - 152], 4
sub esp, 4 
sub esp, 4 
mov dword [ebp - 4], 5
mov dword [ebp - 4], 5
sub esp, 4 
sub esp, 4 
mov dword eax, [ebp - 72]
cdq
imul dword [ebp - 72]
mov dword [ebp - 116], eax
mov dword eax, [ebp - 76]
cdq
imul dword [ebp - 76]
mov dword [ebp - 120], eax
mov dword ecx, [ebp - 116]
add ecx, [ebp - 120]
mov dword [ebp - 124], ecx
mov dword eax, [ebp - 128]
cdq
imul dword [ebp - 128]
mov dword [ebp - 132], eax
mov dword ecx, [ebp - 124]
add ecx, [ebp - 132]
mov dword [ebp - 136], ecx
mov dword eax, [ebp - 140]
cdq
imul dword [ebp - 140]
mov dword [ebp - 144], eax
mov dword ecx, [ebp - 136]
add ecx, [ebp - 144]
mov dword [ebp - 148], ecx
mov dword eax, [ebp - 152]
cdq
imul dword [ebp - 152]
mov dword [ebp - 156], eax
mov dword ecx, [ebp - 148]
add ecx, [ebp - 156]
mov dword [ebp - 160], ecx
mov dword eax, [ebp - 4]
cdq
imul dword [ebp - 4]
mov dword [ebp - 164], eax
mov dword ecx, [ebp - 160]
add ecx, [ebp - 164]
mov dword [ebp - 168], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 168]
push dword print_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
mov dword edx, ebp
sub edx, 40
push dword edx
push dword scan_int
call _scanf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
mov dword edx, ebp
sub edx, 44
push dword edx
push dword scan_int
call _scanf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label28
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword ecx, [ebp - 40]
add ecx, [ebp - 44]
mov dword [ebp - 172], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 172]
push dword print_int
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
push dword scan_int
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
push dword scan_int
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
push dword scan_int
call _scanf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label29
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
sub esp, 4 
mov dword eax, [ebp - 44]
cdq
imul dword [ebp - 48]
mov dword [ebp - 176], eax
mov dword eax, [ebp - 176]
cdq
imul dword [ebp - 52]
mov dword [ebp - 180], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 180]
push dword print_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
mov dword edx, ebp
sub edx, 56
push dword edx
push dword scan_int
call _scanf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
mov dword edx, ebp
sub edx, 60
push dword edx
push dword scan_int
call _scanf
add esp, 8
add esp, ebx
mov dword [ebp - 72], 0
mov dword [ebp - 72], 0
sub esp, 4 
mov dword ecx, [ebp - 72]
add ecx, [ebp - 72]
mov dword [ebp - 184], ecx
mov dword edx, label4
add edx, [ebp - 184]
add edx, [ebp - 184]
add edx, [ebp - 184]
add edx, [ebp - 184]
mov dword ecx, [ebp - 56]
mov dword [edx], ecx
mov dword [ebp - 76], 1
mov dword [ebp - 76], 1
sub esp, 4 
mov dword eax, [ebp - 76]
cdq
imul dword [ebp - 76]
mov dword [ebp - 188], eax
mov dword edx, label4
add edx, [ebp - 188]
add edx, [ebp - 188]
add edx, [ebp - 188]
add edx, [ebp - 188]
mov dword ecx, [ebp - 60]
mov dword [edx], ecx
mov dword [ebp - 72], 0
mov dword [ebp - 72], 0
mov dword edx, [ebp - 72]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz code_label19
mov dword [ebp - 72], 0
mov dword [ebp - 76], 1
mov dword edx, [ebp - 72]
mov dword ecx, [ebp - 76]
cmp edx, ecx
jz code_label20
mov dword [ebp - 128], 2
mov dword [ebp - 76], 1
mov dword edx, [ebp - 128]
mov dword ecx, [ebp - 76]
cmp edx, ecx
jng code_label21
mov dword [ebp - 140], 3
mov dword [ebp - 152], 4
mov dword edx, [ebp - 140]
mov dword ecx, [ebp - 152]
cmp edx, ecx
jnl code_label22
mov dword [ebp - 4], 5
mov dword [ebp - 4], 5
mov dword edx, [ebp - 4]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnge code_label23
mov dword [ebp - 96], 6
mov dword [ebp - 96], 6
mov dword edx, [ebp - 96]
mov dword ecx, [ebp - 96]
cmp edx, ecx
jnle code_label24
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label30
call _printf
add esp, 8
add esp, ebx
code_label24: nop
mov edx, ebp
sub edx, esp
mov ecx, 188
sub ecx, edx
sub esp, ecx
code_label23: nop
mov edx, ebp
sub edx, esp
mov ecx, 188
sub ecx, edx
sub esp, ecx
code_label22: nop
mov edx, ebp
sub edx, esp
mov ecx, 188
sub ecx, edx
sub esp, ecx
code_label21: nop
mov edx, ebp
sub edx, esp
mov ecx, 188
sub ecx, edx
sub esp, ecx
code_label20: nop
mov edx, ebp
sub edx, esp
mov ecx, 188
sub ecx, edx
sub esp, ecx
code_label19: nop
mov edx, ebp
sub edx, esp
mov ecx, 188
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword ecx, [ebp - 72]
mov dword [ebp - 64], ecx
while_label25: nop
mov dword [ebp - 4], 5
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnl while_label26
mov dword [ebp - 4], 5
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnl code_label27
mov dword [ebp - 76], 1
sub esp, 4 
mov dword ecx, [ebp - 64]
add ecx, [ebp - 76]
mov dword [ebp - 192], ecx
mov dword ecx, [ebp - 192]
mov dword [ebp - 64], ecx
code_label27: nop
mov edx, ebp
sub edx, esp
mov ecx, 192
sub ecx, edx
sub esp, ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label31
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 64]
push dword print_int
call _printf
add esp, 8
add esp, ebx
add esp, 4 
jmp while_label25
while_label26: nop
sub esp, 4 
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label32
call _printf
add esp, 8
add esp, ebx
mov dword [ebp - 72], 0
mov dword ecx, [ebp - 72]
mov dword [ebp - 64], ecx
mov dword [ebp - 4], 5
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnl code_label28
while_label29: nop
mov dword [ebp - 4], 5
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnl while_label30
mov dword [ebp - 76], 1
sub esp, 4 
mov dword ecx, [ebp - 64]
add ecx, [ebp - 76]
mov dword [ebp - 196], ecx
mov dword ecx, [ebp - 196]
mov dword [ebp - 64], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label33
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 64]
push dword print_int
call _printf
add esp, 8
add esp, ebx
add esp, 4 
jmp while_label29
while_label30: nop
sub esp, 4 
code_label28: nop
mov edx, ebp
sub edx, esp
mov ecx, 196
sub ecx, edx
sub esp, ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label34
call _printf
add esp, 8
add esp, ebx
mov dword [ebp - 72], 0
mov dword ecx, [ebp - 72]
mov dword [ebp - 64], ecx
while_label31: nop
mov dword [ebp - 128], 2
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 128]
cmp edx, ecx
jnl while_label32
mov dword [ebp - 72], 0
mov dword ecx, [ebp - 72]
mov dword [ebp - 68], ecx
while_label33: nop
mov dword [ebp - 128], 2
mov dword edx, [ebp - 68]
mov dword ecx, [ebp - 128]
cmp edx, ecx
jnl while_label34
mov dword [ebp - 76], 1
sub esp, 4 
mov dword ecx, [ebp - 68]
add ecx, [ebp - 76]
mov dword [ebp - 200], ecx
mov dword ecx, [ebp - 200]
mov dword [ebp - 68], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label35
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 68]
push dword print_int
call _printf
add esp, 8
add esp, ebx
add esp, 4 
jmp while_label33
while_label34: nop
sub esp, 4 
mov dword [ebp - 76], 1
sub esp, 4 
mov dword ecx, [ebp - 64]
add ecx, [ebp - 76]
mov dword [ebp - 204], ecx
mov dword ecx, [ebp - 204]
mov dword [ebp - 64], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label36
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 64]
push dword print_int
call _printf
add esp, 8
add esp, ebx
add esp, 4 
add esp, 4 
jmp while_label31
while_label32: nop
sub esp, 4 
sub esp, 4 
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label37
call _printf
add esp, 8
add esp, ebx
mov dword [ebp - 72], 0
mov dword ecx, [ebp - 72]
mov dword [ebp - 64], ecx
mov dword [ebp - 72], 0
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz case_label36
mov dword [ebp - 72], 0
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz code_label37
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label38
call _printf
add esp, 8
add esp, ebx
code_label37: nop
mov edx, ebp
sub edx, esp
mov ecx, 204
sub ecx, edx
sub esp, ecx
jmp switch_label35
case_label36: nop
mov edx, ebp
sub edx, esp
mov ecx, 204
sub ecx, edx
sub esp, ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label39
call _printf
add esp, 8
add esp, ebx
jmp switch_label35
switch_label35: nop
mov edx, ebp
sub edx, esp
mov ecx, 204
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword ecx, [ebp - 72]
mov dword [ebp - 64], ecx
while_label38: nop
mov dword [ebp - 4], 5
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnl while_label39
mov dword [ebp - 72], 0
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz case_label41
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label40
call _printf
add esp, 8
add esp, ebx
jmp switch_label40
case_label41: nop
mov edx, ebp
sub edx, esp
mov ecx, 204
sub ecx, edx
sub esp, ecx
mov dword [ebp - 76], 1
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 76]
cmp edx, ecx
jnz case_label42
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label41
call _printf
add esp, 8
add esp, ebx
jmp switch_label40
case_label42: nop
mov edx, ebp
sub edx, esp
mov ecx, 204
sub ecx, edx
sub esp, ecx
mov dword [ebp - 128], 2
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 128]
cmp edx, ecx
jnz case_label43
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label42
call _printf
add esp, 8
add esp, ebx
jmp switch_label40
case_label43: nop
mov edx, ebp
sub edx, esp
mov ecx, 204
sub ecx, edx
sub esp, ecx
mov dword [ebp - 140], 3
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 140]
cmp edx, ecx
jnz case_label44
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label43
call _printf
add esp, 8
add esp, ebx
jmp switch_label40
case_label44: nop
mov edx, ebp
sub edx, esp
mov ecx, 204
sub ecx, edx
sub esp, ecx
mov dword [ebp - 152], 4
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 152]
cmp edx, ecx
jnz case_label45
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label44
call _printf
add esp, 8
add esp, ebx
jmp switch_label40
case_label45: nop
mov edx, ebp
sub edx, esp
mov ecx, 204
sub ecx, edx
sub esp, ecx
mov dword [ebp - 4], 5
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnz case_label46
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label45
call _printf
add esp, 8
add esp, ebx
jmp switch_label40
case_label46: nop
mov edx, ebp
sub edx, esp
mov ecx, 204
sub ecx, edx
sub esp, ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label46
call _printf
add esp, 8
add esp, ebx
jmp switch_label40
switch_label40: nop
mov edx, ebp
sub edx, esp
mov ecx, 204
sub ecx, edx
sub esp, ecx
mov dword [ebp - 76], 1
sub esp, 4 
mov dword ecx, [ebp - 64]
add ecx, [ebp - 76]
mov dword [ebp - 208], ecx
mov dword ecx, [ebp - 208]
mov dword [ebp - 64], ecx
add esp, 4 
jmp while_label38
while_label39: nop
sub esp, 4 
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label47
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label48
call _printf
add esp, 8
add esp, ebx
mov esp, ebp
pop ebp 
ret 

section .data
scan_int: dd ` %d\0`
scan_char: dd ` %c\0`
print_int: dd `%d\n\0`
print_char: dd `%c\n\0`
label0:
dd 1
label1:
dd 97
label2:
dd 98
label8:
dd `%%d\n\0`
label9:
dd `\\\\\n\0`
label10:
dd `You entered \n\0`
label11:
dd `You entered \n\0`
label12:
dd `intV1 == 0\n\0`
label13:
dd `intV1 != 0\n\0`
label14:
dd `intV1 >  0\n\0`
label15:
dd `intV1 <  0\n\0`
label16:
dd `intV1 >= 0\n\0`
label17:
dd `intV1 <= 0\n\0`
label18:
dd `intV1 is true\n\0`
label19:
dd `intV1 becomes \n\0`
label20:
dd `intV2[0] is 0\n\0`
label21:
dd `intV2[0] is 0\n\0`
label22:
dd `intV2[0] is 1\n\0`
label23:
dd `intV2[0] is 0\n\0`
label24:
dd `intV2[0] is 1\n\0`
label25:
dd `intV2[0] is neither 0 nor 1\n\0`
label26:
dd `0*0+1*1+2*2+3*3+4*4+5*5 = \n\0`
label27:
dd `0*0+1*1+2*2+3*3+4*4+5*5 = \n\0`
label28:
dd `The sum of the 2 numbers you entered is \n\0`
label29:
dd `The product of the 3 numbers you entered is \n\0`
label30:
dd `If-If test passed.\n\0`
label31:
dd `intV30 becomes \n\0`
label32:
dd `While-If test passed\n\0`
label33:
dd `intV30 becomes \n\0`
label34:
dd `If-While test passed\n\0`
label35:
dd `intV31 becomes\n\0`
label36:
dd `intV30 becomes \n\0`
label37:
dd `While-While test passed\n\0`
label38:
dd `Switch-If test passed\n\0`
label39:
dd `Switch-If test failed\n\0`
label40:
dd `intV30 is 0\n\0`
label41:
dd `intV30 is 1\n\0`
label42:
dd `intV30 is 2\n\0`
label43:
dd `intV30 is 3\n\0`
label44:
dd `intV30 is 4\n\0`
label45:
dd `While-Switch test failed\n\0`
label46:
dd `While-Switch test failed\n\0`
label47:
dd `While-Switch test passed\n\0`
label48:
dd `Blank statement test passed\n\0`

section .bss
label3:
resd 4
label4:
resd 8
label5:
resd 4
label6:
resd 4
label7:
resd 4
