global _test
extern _printf
extern _scanf

section .text
mov dword [label0], 1
mov dword [label1], 97
mov dword [label2], 98
code_label0iFunc1: nop
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
code_label1iFunc2: nop
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
code_label3cFunc1: nop
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
code_label4iFunc3: nop
push ebp 
mov ebp, esp 
sub esp, 4 
sub esp, 4 
mov dword [ebp - 8], 8888
mov dword ecx, [ebp - 8]
mov dword [ebp - 4], ecx
mov dword eax, [ebp - 4]
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
code_label5iFunc4: nop
push ebp 
mov ebp, esp 
sub esp, 4 
mov dword [ebp - 4], 0
sub esp, 4 
mov dword edx, label4
add edx, [ebp - 4]
add edx, [ebp - 4]
add edx, [ebp - 4]
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
code_label6iFunc5: nop
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
code_label7iFunc6: nop
push ebp 
mov ebp, esp 
sub esp, 4 
mov dword [ebp - 4], 1
sub esp, 4 
mov dword [ebp - 8], 2
sub esp, 4 
mov dword eax, [ebp - 4]
cdq
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
code_label8iFunc7: nop
push ebp 
mov ebp, esp 
sub esp, 4 
mov dword [ebp - 4], 1
sub esp, 4 
mov dword [ebp - 8], 2
sub esp, 4 
mov dword [ebp - 4], 1
sub esp, 4 
mov dword [ebp - 16], 0
sub esp, 4 
sub esp, 4 
mov dword eax, [ebp - 4]
cdq
imul dword [ebp - 8]
mov dword [ebp - 12], eax
mov dword ecx, [ebp - 16]
sub ecx, [ebp - 4]
mov dword [ebp - 20], ecx
mov dword eax, [ebp - 12]
cdq
idiv dword [ebp - 20]
mov dword [ebp - 24], eax
mov dword eax, [ebp - 24]
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
mov esp, ebp
pop ebp 
ret 
code_label9iFunc8: nop
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
code_label10iFunc9: nop
push ebp 
mov ebp, esp 
sub esp, 4 
mov dword [ebp - 4], 1
sub esp, 4 
mov dword [ebp - 8], 0
sub esp, 4 
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
code_label11iFunc10: nop
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
code_label14iFunc11: nop
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
code_label18iFunc12: nop
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
cdq
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
code_label21iFunc13: nop
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
cdq
idiv dword [ebp - 8]
mov dword [ebp - 12], eax
call code_label18iFunc12
sub esp, 4 
mov dword [ebp - 16], eax
sub esp, 4 
mov dword eax, [ebp - 12]
cdq
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
code_label25iFunc14: nop
push ebp 
mov ebp, esp 
sub esp, 4 
mov dword ecx, [ebp + 8]
add ecx, [ebp + 12]
mov dword [ebp - 4], ecx
mov dword eax, [ebp - 4]
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
code_label26vFunc1: nop
push ebp 
mov ebp, esp 
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label8
call _printf
add esp, 8
add esp, ebx
mov esp, ebp
pop ebp 
ret 
code_label27vFunc2: nop
push ebp 
mov ebp, esp 
sub esp, 4 
mov dword [ebp - 4], 2
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
push dword 0
push dword label10
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp + 8]
push dword print_int
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
push dword [ebp - 4]
push dword print_int
call _printf
add esp, 8
add esp, ebx
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label28vFunc3: nop
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
push dword label12
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
push dword [ebp + 8]
push dword print_int
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
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp + 12]
push dword print_char
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
push dword print_int
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
code_label29vFunc4: nop
push ebp 
mov ebp, esp 
sub esp, 4 
mov dword [ebp - 4], 99
sub esp, 4 
mov dword [ebp - 8], 100
sub esp, 4 
sub esp, 4 
mov dword [ebp - 16], 4
mov dword ecx, [ebp - 16]
mov dword [ebp - 12], ecx
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
push dword 0
push dword label17
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 4]
push dword print_char
call _printf
add esp, 8
add esp, ebx
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
push dword [ebp - 8]
push dword print_char
call _printf
add esp, 8
add esp, ebx
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
push dword [ebp - 12]
push dword print_int
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
code_label30gcd: nop
push ebp 
mov ebp, esp 
mov dword edx, [ebp + 8]
mov dword ecx, [ebp + 12]
cmp edx, ecx
jnz code_label31
mov dword eax, [ebp + 8]
add esp, 4 
add esp, 4 
mov esp, ebp
pop ebp 
ret 
code_label31: nop
mov edx, ebp
sub edx, esp
mov ecx, 0
sub ecx, edx
sub esp, ecx
mov dword edx, [ebp + 8]
mov dword ecx, [ebp + 12]
cmp edx, ecx
jng code_label32
sub esp, 4 
sub esp, 4 
mov dword ecx, [ebp + 8]
sub ecx, [ebp + 12]
mov dword [ebp - 4], ecx
mov dword ecx, [ebp - 4]
mov dword [ebp - 8], ecx
sub esp, 4 
mov dword ecx, [ebp + 12]
mov dword [ebp - 12], ecx
call code_label30gcd
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
code_label32: nop
mov edx, ebp
sub edx, esp
mov ecx, 16
sub ecx, edx
sub esp, ecx
mov dword edx, [ebp + 8]
mov dword ecx, [ebp + 12]
cmp edx, ecx
jnl code_label34
sub esp, 4 
sub esp, 4 
mov dword ecx, [ebp + 12]
sub ecx, [ebp + 8]
mov dword [ebp - 20], ecx
mov dword ecx, [ebp + 8]
mov dword [ebp - 24], ecx
sub esp, 4 
mov dword ecx, [ebp - 20]
mov dword [ebp - 28], ecx
call code_label30gcd
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
code_label34: nop
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
push dword label20
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
push dword label22
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
push dword label23
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
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label24
call _printf
add esp, 8
add esp, ebx
call code_label0iFunc1
sub esp, 4 
mov dword [ebp - 80], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 80]
push dword print_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label25
call _printf
add esp, 8
add esp, ebx
call code_label1iFunc2
sub esp, 4 
mov dword [ebp - 84], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 84]
push dword print_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label26
call _printf
add esp, 8
add esp, ebx
call code_label4iFunc3
sub esp, 4 
mov dword [ebp - 88], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 88]
push dword print_int
call _printf
add esp, 8
add esp, ebx
call code_label3cFunc1
sub esp, 4 
mov dword [ebp - 92], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 92]
push dword print_char
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
call code_label5iFunc4
sub esp, 4 
mov dword [ebp - 96], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 96]
push dword print_int
call _printf
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
call code_label6iFunc5
sub esp, 4 
mov dword [ebp - 100], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 100]
push dword print_int
call _printf
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
call code_label7iFunc6
sub esp, 4 
mov dword [ebp - 104], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 104]
push dword print_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label30
call _printf
add esp, 8
add esp, ebx
call code_label8iFunc7
sub esp, 4 
mov dword [ebp - 108], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 108]
push dword print_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label31
call _printf
add esp, 8
add esp, ebx
call code_label9iFunc8
sub esp, 4 
mov dword [ebp - 112], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 112]
push dword print_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label32
call _printf
add esp, 8
add esp, ebx
call code_label10iFunc9
sub esp, 4 
mov dword [ebp - 116], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 116]
push dword print_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label33
call _printf
add esp, 8
add esp, ebx
call code_label11iFunc10
sub esp, 4 
mov dword [ebp - 120], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 120]
push dword print_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label34
call _printf
add esp, 8
add esp, ebx
call code_label14iFunc11
sub esp, 4 
mov dword [ebp - 124], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 124]
push dword print_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label35
call _printf
add esp, 8
add esp, ebx
call code_label18iFunc12
sub esp, 4 
mov dword [ebp - 128], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 128]
push dword print_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label36
call _printf
add esp, 8
add esp, ebx
call code_label21iFunc13
sub esp, 4 
mov dword [ebp - 132], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 132]
push dword print_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label37
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword [ebp - 136], 21
sub esp, 4 
mov dword [ebp - 140], 22
sub esp, 4 
mov dword [ebp - 144], 23
sub esp, 4 
mov dword ecx, [ebp - 144]
mov dword [ebp - 148], ecx
sub esp, 4 
mov dword ecx, [ebp - 140]
mov dword [ebp - 152], ecx
call code_label25iFunc14
sub esp, 4 
mov dword [ebp - 156], eax
sub esp, 4 
mov dword ecx, [ebp - 156]
mov dword [ebp - 160], ecx
sub esp, 4 
mov dword ecx, [ebp - 136]
mov dword [ebp - 164], ecx
call code_label25iFunc14
sub esp, 4 
mov dword [ebp - 168], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 168]
push dword print_int
call _printf
add esp, 8
add esp, ebx
call code_label26vFunc1
sub esp, 4 
mov dword [ebp - 172], 2
sub esp, 4 
mov dword ecx, [ebp - 172]
mov dword [ebp - 176], ecx
call code_label27vFunc2
sub esp, 4 
mov dword [ebp - 180], 3
sub esp, 4 
mov dword [ebp - 184], 99
sub esp, 4 
mov dword ecx, [ebp - 184]
mov dword [ebp - 188], ecx
sub esp, 4 
mov dword ecx, [ebp - 180]
mov dword [ebp - 192], ecx
call code_label28vFunc3
call code_label29vFunc4
mov dword [ebp - 72], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz code_label52
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label38
call _printf
add esp, 8
add esp, ebx
code_label52: nop
mov edx, ebp
sub edx, esp
mov ecx, 192
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jz code_label53
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label39
call _printf
add esp, 8
add esp, ebx
code_label53: nop
mov edx, ebp
sub edx, esp
mov ecx, 192
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jng code_label54
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label40
call _printf
add esp, 8
add esp, ebx
code_label54: nop
mov edx, ebp
sub edx, esp
mov ecx, 192
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnl code_label55
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label41
call _printf
add esp, 8
add esp, ebx
code_label55: nop
mov edx, ebp
sub edx, esp
mov ecx, 192
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnge code_label56
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label42
call _printf
add esp, 8
add esp, ebx
code_label56: nop
mov edx, ebp
sub edx, esp
mov ecx, 192
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnle code_label57
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label43
call _printf
add esp, 8
add esp, ebx
code_label57: nop
mov edx, ebp
sub edx, esp
mov ecx, 192
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jz code_label58
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label44
call _printf
add esp, 8
add esp, ebx
code_label58: nop
mov edx, ebp
sub edx, esp
mov ecx, 192
sub ecx, edx
sub esp, ecx
while_label59: nop
mov dword [ebp - 4], 5
mov dword edx, [label3]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnl while_label60
mov dword [ebp - 76], 1
sub esp, 4 
mov dword ecx, [label3]
add ecx, [ebp - 76]
mov dword [ebp - 196], ecx
mov dword ecx, [ebp - 196]
mov dword [label3], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label45
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
jmp while_label59
while_label60: nop
sub esp, 4 
mov dword [ebp - 72], 0
sub esp, 4 
mov dword edx, label4
add edx, [ebp - 72]
add edx, [ebp - 72]
add edx, [ebp - 72]
add edx, [ebp - 72]
mov dword ecx, [edx]
mov dword [ebp - 200], ecx
mov dword [ebp - 72], 0
mov dword edx, [ebp - 200]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz case_label62
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label46
call _printf
add esp, 8
add esp, ebx
jmp switch_label61
case_label62: nop
mov edx, ebp
sub edx, esp
mov ecx, 200
sub ecx, edx
sub esp, ecx
switch_label61: nop
mov edx, ebp
sub edx, esp
mov ecx, 200
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
mov dword [ebp - 204], ecx
mov dword [ebp - 72], 0
mov dword edx, [ebp - 204]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz case_label64
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label47
call _printf
add esp, 8
add esp, ebx
jmp switch_label63
case_label64: nop
mov edx, ebp
sub edx, esp
mov ecx, 204
sub ecx, edx
sub esp, ecx
mov dword [ebp - 76], 1
mov dword edx, [ebp - 204]
mov dword ecx, [ebp - 76]
cmp edx, ecx
jnz case_label65
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label48
call _printf
add esp, 8
add esp, ebx
jmp switch_label63
case_label65: nop
mov edx, ebp
sub edx, esp
mov ecx, 204
sub ecx, edx
sub esp, ecx
switch_label63: nop
mov edx, ebp
sub edx, esp
mov ecx, 204
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
mov dword [ebp - 208], ecx
mov dword [ebp - 72], 0
mov dword edx, [ebp - 208]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz case_label67
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label49
call _printf
add esp, 8
add esp, ebx
jmp switch_label66
case_label67: nop
mov edx, ebp
sub edx, esp
mov ecx, 208
sub ecx, edx
sub esp, ecx
mov dword [ebp - 76], 1
mov dword edx, [ebp - 208]
mov dword ecx, [ebp - 76]
cmp edx, ecx
jnz case_label68
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label50
call _printf
add esp, 8
add esp, ebx
jmp switch_label66
case_label68: nop
mov edx, ebp
sub edx, esp
mov ecx, 208
sub ecx, edx
sub esp, ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label51
call _printf
add esp, 8
add esp, ebx
jmp switch_label66
switch_label66: nop
mov edx, ebp
sub edx, esp
mov ecx, 208
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword ecx, [ebp - 72]
mov dword [ebp - 8], ecx
mov dword [ebp - 72], 0
mov dword ecx, [ebp - 72]
mov dword [ebp - 36], ecx
while_label69: nop
sub esp, 4 
mov dword [ebp - 212], 6
mov dword edx, [ebp - 8]
mov dword ecx, [ebp - 212]
cmp edx, ecx
jnl while_label70
sub esp, 4 
mov dword eax, [ebp - 8]
cdq
imul dword [ebp - 8]
mov dword [ebp - 216], eax
mov dword edx, ebp
sub edx, 12
sub edx, [ebp - 8]
sub edx, [ebp - 8]
sub edx, [ebp - 8]
sub edx, [ebp - 8]
mov dword ecx, [ebp - 216]
mov dword [edx], ecx
sub esp, 4 
mov dword edx, ebp
sub edx, 12
sub edx, [ebp - 8]
sub edx, [ebp - 8]
sub edx, [ebp - 8]
sub edx, [ebp - 8]
mov dword ecx, [edx]
mov dword [ebp - 220], ecx
sub esp, 4 
mov dword ecx, [ebp - 36]
add ecx, [ebp - 220]
mov dword [ebp - 224], ecx
mov dword ecx, [ebp - 224]
mov dword [ebp - 36], ecx
mov dword [ebp - 76], 1
sub esp, 4 
mov dword ecx, [ebp - 8]
add ecx, [ebp - 76]
mov dword [ebp - 228], ecx
mov dword ecx, [ebp - 228]
mov dword [ebp - 8], ecx
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
jmp while_label69
while_label70: nop
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label52
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
push dword label53
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
mov dword [ebp - 172], 2
mov dword [ebp - 172], 2
sub esp, 4 
sub esp, 4 
mov dword [ebp - 180], 3
mov dword [ebp - 180], 3
sub esp, 4 
sub esp, 4 
sub esp, 4 
mov dword [ebp - 260], 4
mov dword [ebp - 260], 4
sub esp, 4 
sub esp, 4 
mov dword [ebp - 4], 5
mov dword [ebp - 4], 5
sub esp, 4 
sub esp, 4 
mov dword eax, [ebp - 72]
cdq
imul dword [ebp - 72]
mov dword [ebp - 232], eax
mov dword eax, [ebp - 76]
cdq
imul dword [ebp - 76]
mov dword [ebp - 236], eax
mov dword ecx, [ebp - 232]
add ecx, [ebp - 236]
mov dword [ebp - 240], ecx
mov dword eax, [ebp - 172]
cdq
imul dword [ebp - 172]
mov dword [ebp - 244], eax
mov dword ecx, [ebp - 240]
add ecx, [ebp - 244]
mov dword [ebp - 248], ecx
mov dword eax, [ebp - 180]
cdq
imul dword [ebp - 180]
mov dword [ebp - 252], eax
mov dword ecx, [ebp - 248]
add ecx, [ebp - 252]
mov dword [ebp - 256], ecx
mov dword eax, [ebp - 260]
cdq
imul dword [ebp - 260]
mov dword [ebp - 264], eax
mov dword ecx, [ebp - 256]
add ecx, [ebp - 264]
mov dword [ebp - 268], ecx
mov dword eax, [ebp - 4]
cdq
imul dword [ebp - 4]
mov dword [ebp - 272], eax
mov dword ecx, [ebp - 268]
add ecx, [ebp - 272]
mov dword [ebp - 276], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 276]
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
push dword label54
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword ecx, [ebp - 40]
add ecx, [ebp - 44]
mov dword [ebp - 280], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 280]
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
push dword label55
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
sub esp, 4 
mov dword eax, [ebp - 44]
cdq
imul dword [ebp - 48]
mov dword [ebp - 284], eax
mov dword eax, [ebp - 284]
cdq
imul dword [ebp - 52]
mov dword [ebp - 288], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 288]
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
mov dword [ebp - 292], ecx
mov dword edx, label4
add edx, [ebp - 292]
add edx, [ebp - 292]
add edx, [ebp - 292]
add edx, [ebp - 292]
mov dword ecx, [ebp - 56]
mov dword [edx], ecx
mov dword [ebp - 76], 1
mov dword [ebp - 76], 1
sub esp, 4 
mov dword eax, [ebp - 76]
cdq
imul dword [ebp - 76]
mov dword [ebp - 296], eax
mov dword edx, label4
add edx, [ebp - 296]
add edx, [ebp - 296]
add edx, [ebp - 296]
add edx, [ebp - 296]
mov dword ecx, [ebp - 60]
mov dword [edx], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label56
call _printf
add esp, 8
add esp, ebx
mov dword [ebp - 72], 0
mov dword [ebp - 72], 0
sub esp, 4 
mov dword [ebp - 72], 0
sub esp, 4 
sub esp, 4 
mov dword ecx, [ebp - 72]
add ecx, [ebp - 72]
mov dword [ebp - 300], ecx
mov dword ecx, [ebp - 300]
add ecx, [ebp - 72]
mov dword [ebp - 304], ecx
mov dword edx, label4
add edx, [ebp - 304]
add edx, [ebp - 304]
add edx, [ebp - 304]
add edx, [ebp - 304]
mov dword ecx, [edx]
mov dword [ebp - 308], ecx
mov dword [ebp - 76], 1
mov dword [ebp - 76], 1
sub esp, 4 
mov dword [ebp - 76], 1
sub esp, 4 
sub esp, 4 
mov dword eax, [ebp - 76]
cdq
imul dword [ebp - 76]
mov dword [ebp - 312], eax
mov dword eax, [ebp - 312]
cdq
imul dword [ebp - 76]
mov dword [ebp - 316], eax
mov dword edx, label4
add edx, [ebp - 316]
add edx, [ebp - 316]
add edx, [ebp - 316]
add edx, [ebp - 316]
mov dword ecx, [edx]
mov dword [ebp - 320], ecx
sub esp, 4 
mov dword ecx, [ebp - 320]
mov dword [ebp - 324], ecx
sub esp, 4 
mov dword ecx, [ebp - 308]
mov dword [ebp - 328], ecx
call code_label30gcd
sub esp, 4 
mov dword [ebp - 332], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 332]
push dword print_int
call _printf
add esp, 8
add esp, ebx
mov dword [ebp - 72], 0
mov dword [ebp - 72], 0
mov dword edx, [ebp - 72]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz code_label72
mov dword [ebp - 72], 0
mov dword [ebp - 76], 1
mov dword edx, [ebp - 72]
mov dword ecx, [ebp - 76]
cmp edx, ecx
jz code_label73
mov dword [ebp - 172], 2
mov dword [ebp - 76], 1
mov dword edx, [ebp - 172]
mov dword ecx, [ebp - 76]
cmp edx, ecx
jng code_label74
mov dword [ebp - 180], 3
mov dword [ebp - 260], 4
mov dword edx, [ebp - 180]
mov dword ecx, [ebp - 260]
cmp edx, ecx
jnl code_label75
mov dword [ebp - 4], 5
mov dword [ebp - 4], 5
mov dword edx, [ebp - 4]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnge code_label76
mov dword [ebp - 212], 6
mov dword [ebp - 212], 6
mov dword edx, [ebp - 212]
mov dword ecx, [ebp - 212]
cmp edx, ecx
jnle code_label77
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label57
call _printf
add esp, 8
add esp, ebx
code_label77: nop
mov edx, ebp
sub edx, esp
mov ecx, 332
sub ecx, edx
sub esp, ecx
code_label76: nop
mov edx, ebp
sub edx, esp
mov ecx, 332
sub ecx, edx
sub esp, ecx
code_label75: nop
mov edx, ebp
sub edx, esp
mov ecx, 332
sub ecx, edx
sub esp, ecx
code_label74: nop
mov edx, ebp
sub edx, esp
mov ecx, 332
sub ecx, edx
sub esp, ecx
code_label73: nop
mov edx, ebp
sub edx, esp
mov ecx, 332
sub ecx, edx
sub esp, ecx
code_label72: nop
mov edx, ebp
sub edx, esp
mov ecx, 332
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword ecx, [ebp - 72]
mov dword [ebp - 64], ecx
while_label78: nop
mov dword [ebp - 4], 5
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnl while_label79
mov dword [ebp - 4], 5
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnl code_label80
mov dword [ebp - 76], 1
sub esp, 4 
mov dword ecx, [ebp - 64]
add ecx, [ebp - 76]
mov dword [ebp - 336], ecx
mov dword ecx, [ebp - 336]
mov dword [ebp - 64], ecx
code_label80: nop
mov edx, ebp
sub edx, esp
mov ecx, 336
sub ecx, edx
sub esp, ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label58
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
jmp while_label78
while_label79: nop
sub esp, 4 
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label59
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
jnl code_label81
while_label82: nop
mov dword [ebp - 4], 5
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnl while_label83
mov dword [ebp - 76], 1
sub esp, 4 
mov dword ecx, [ebp - 64]
add ecx, [ebp - 76]
mov dword [ebp - 340], ecx
mov dword ecx, [ebp - 340]
mov dword [ebp - 64], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label60
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
jmp while_label82
while_label83: nop
sub esp, 4 
code_label81: nop
mov edx, ebp
sub edx, esp
mov ecx, 340
sub ecx, edx
sub esp, ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label61
call _printf
add esp, 8
add esp, ebx
mov dword [ebp - 72], 0
mov dword ecx, [ebp - 72]
mov dword [ebp - 64], ecx
while_label84: nop
mov dword [ebp - 172], 2
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 172]
cmp edx, ecx
jnl while_label85
mov dword [ebp - 72], 0
mov dword ecx, [ebp - 72]
mov dword [ebp - 68], ecx
while_label86: nop
mov dword [ebp - 172], 2
mov dword edx, [ebp - 68]
mov dword ecx, [ebp - 172]
cmp edx, ecx
jnl while_label87
mov dword [ebp - 76], 1
sub esp, 4 
mov dword ecx, [ebp - 68]
add ecx, [ebp - 76]
mov dword [ebp - 344], ecx
mov dword ecx, [ebp - 344]
mov dword [ebp - 68], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label62
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
jmp while_label86
while_label87: nop
sub esp, 4 
mov dword [ebp - 76], 1
sub esp, 4 
mov dword ecx, [ebp - 64]
add ecx, [ebp - 76]
mov dword [ebp - 348], ecx
mov dword ecx, [ebp - 348]
mov dword [ebp - 64], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label63
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
jmp while_label84
while_label85: nop
sub esp, 4 
sub esp, 4 
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label64
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
jnz case_label89
mov dword [ebp - 72], 0
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz code_label90
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label65
call _printf
add esp, 8
add esp, ebx
code_label90: nop
mov edx, ebp
sub edx, esp
mov ecx, 348
sub ecx, edx
sub esp, ecx
jmp switch_label88
case_label89: nop
mov edx, ebp
sub edx, esp
mov ecx, 348
sub ecx, edx
sub esp, ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label66
call _printf
add esp, 8
add esp, ebx
jmp switch_label88
switch_label88: nop
mov edx, ebp
sub edx, esp
mov ecx, 348
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword ecx, [ebp - 72]
mov dword [ebp - 64], ecx
while_label91: nop
mov dword [ebp - 4], 5
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnl while_label92
mov dword [ebp - 72], 0
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz case_label94
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label67
call _printf
add esp, 8
add esp, ebx
jmp switch_label93
case_label94: nop
mov edx, ebp
sub edx, esp
mov ecx, 348
sub ecx, edx
sub esp, ecx
mov dword [ebp - 76], 1
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 76]
cmp edx, ecx
jnz case_label95
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label68
call _printf
add esp, 8
add esp, ebx
jmp switch_label93
case_label95: nop
mov edx, ebp
sub edx, esp
mov ecx, 348
sub ecx, edx
sub esp, ecx
mov dword [ebp - 172], 2
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 172]
cmp edx, ecx
jnz case_label96
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label69
call _printf
add esp, 8
add esp, ebx
jmp switch_label93
case_label96: nop
mov edx, ebp
sub edx, esp
mov ecx, 348
sub ecx, edx
sub esp, ecx
mov dword [ebp - 180], 3
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 180]
cmp edx, ecx
jnz case_label97
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label70
call _printf
add esp, 8
add esp, ebx
jmp switch_label93
case_label97: nop
mov edx, ebp
sub edx, esp
mov ecx, 348
sub ecx, edx
sub esp, ecx
mov dword [ebp - 260], 4
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 260]
cmp edx, ecx
jnz case_label98
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label71
call _printf
add esp, 8
add esp, ebx
jmp switch_label93
case_label98: nop
mov edx, ebp
sub edx, esp
mov ecx, 348
sub ecx, edx
sub esp, ecx
mov dword [ebp - 4], 5
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnz case_label99
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label72
call _printf
add esp, 8
add esp, ebx
jmp switch_label93
case_label99: nop
mov edx, ebp
sub edx, esp
mov ecx, 348
sub ecx, edx
sub esp, ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label73
call _printf
add esp, 8
add esp, ebx
jmp switch_label93
switch_label93: nop
mov edx, ebp
sub edx, esp
mov ecx, 348
sub ecx, edx
sub esp, ecx
mov dword [ebp - 76], 1
sub esp, 4 
mov dword ecx, [ebp - 64]
add ecx, [ebp - 76]
mov dword [ebp - 352], ecx
mov dword ecx, [ebp - 352]
mov dword [ebp - 64], ecx
add esp, 4 
jmp while_label91
while_label92: nop
sub esp, 4 
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label74
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label75
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
dd `vFunc1() called\n\0`
label9:
dd `vFunc2() called\n\0`
label10:
dd `param1 is \n\0`
label11:
dd `intC2 is \n\0`
label12:
dd `vFunc3() called\n\0`
label13:
dd `param1 is \n\0`
label14:
dd `param2 is \n\0`
label15:
dd `param1 + param2 is \n\0`
label16:
dd `vFunc4() called\n\0`
label17:
dd `charC3 is \n\0`
label18:
dd `charC4 is \n\0`
label19:
dd `intV4 is \n\0`
label20:
dd `%%d\n\0`
label21:
dd `\\\\\n\0`
label22:
dd `You entered \n\0`
label23:
dd `You entered \n\0`
label24:
dd `iFunc1()= \n\0`
label25:
dd `iFunc2()= \n\0`
label26:
dd `iFunc3()= \n\0`
label27:
dd `iFunc4()= \n\0`
label28:
dd `iFunc5()= \n\0`
label29:
dd `iFunc6()= \n\0`
label30:
dd `iFunc7()= \n\0`
label31:
dd `iFunc8()= \n\0`
label32:
dd `iFunc9()= \n\0`
label33:
dd `iFunc10()= \n\0`
label34:
dd `iFunc11()= \n\0`
label35:
dd `iFunc12()= \n\0`
label36:
dd `iFunc13()= \n\0`
label37:
dd `21 + 22 + 23 = \n\0`
label38:
dd `intV1 == 0\n\0`
label39:
dd `intV1 != 0\n\0`
label40:
dd `intV1 >  0\n\0`
label41:
dd `intV1 <  0\n\0`
label42:
dd `intV1 >= 0\n\0`
label43:
dd `intV1 <= 0\n\0`
label44:
dd `intV1 is true\n\0`
label45:
dd `intV1 becomes \n\0`
label46:
dd `intV2[0] is 0\n\0`
label47:
dd `intV2[0] is 0\n\0`
label48:
dd `intV2[0] is 1\n\0`
label49:
dd `intV2[0] is 0\n\0`
label50:
dd `intV2[0] is 1\n\0`
label51:
dd `intV2[0] is neither 0 nor 1\n\0`
label52:
dd `0*0+1*1+2*2+3*3+4*4+5*5 = \n\0`
label53:
dd `0*0+1*1+2*2+3*3+4*4+5*5 = \n\0`
label54:
dd `The sum of the 2 numbers you entered is \n\0`
label55:
dd `The product of the 3 numbers you entered is \n\0`
label56:
dd `The gcd of the 2 numbers you entered is \n\0`
label57:
dd `If-If test passed.\n\0`
label58:
dd `intV30 becomes \n\0`
label59:
dd `While-If test passed\n\0`
label60:
dd `intV30 becomes \n\0`
label61:
dd `If-While test passed\n\0`
label62:
dd `intV31 becomes\n\0`
label63:
dd `intV30 becomes \n\0`
label64:
dd `While-While test passed\n\0`
label65:
dd `Switch-If test passed\n\0`
label66:
dd `Switch-If test failed\n\0`
label67:
dd `intV30 is 0\n\0`
label68:
dd `intV30 is 1\n\0`
label69:
dd `intV30 is 2\n\0`
label70:
dd `intV30 is 3\n\0`
label71:
dd `intV30 is 4\n\0`
label72:
dd `While-Switch test failed\n\0`
label73:
dd `While-Switch test failed\n\0`
label74:
dd `While-Switch test passed\n\0`
label75:
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
