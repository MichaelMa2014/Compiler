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
mov dword eax, [ebp - 4]
cdq
imul dword [ebp - 8]
mov dword [ebp - 12], eax
mov dword [ebp - 4], 1
sub esp, 4 
mov dword [ebp - 16], 0
sub esp, 4 
mov dword ecx, [ebp - 16]
sub ecx, [ebp - 4]
mov dword [ebp - 20], ecx
sub esp, 4 
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
code_label25vFunc1: nop
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
code_label26vFunc2: nop
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
code_label27vFunc3: nop
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
code_label28vFunc4: nop
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
code_label29gcd: nop
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
code_label30: nop
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
code_label31: nop
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
code_label33: nop
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
call code_label25vFunc1
sub esp, 4 
mov dword [ebp - 136], 2
sub esp, 4 
mov dword ecx, [ebp - 136]
mov dword [ebp - 140], ecx
call code_label26vFunc2
sub esp, 4 
mov dword [ebp - 144], 3
sub esp, 4 
mov dword [ebp - 148], 99
sub esp, 4 
mov dword ecx, [ebp - 148]
mov dword [ebp - 152], ecx
sub esp, 4 
mov dword ecx, [ebp - 144]
mov dword [ebp - 156], ecx
call code_label27vFunc3
call code_label28vFunc4
mov dword [ebp - 72], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz code_label49
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label37
call _printf
add esp, 8
add esp, ebx
code_label49: nop
mov edx, ebp
sub edx, esp
mov ecx, 156
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jz code_label50
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label38
call _printf
add esp, 8
add esp, ebx
code_label50: nop
mov edx, ebp
sub edx, esp
mov ecx, 156
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jng code_label51
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label39
call _printf
add esp, 8
add esp, ebx
code_label51: nop
mov edx, ebp
sub edx, esp
mov ecx, 156
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnl code_label52
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label40
call _printf
add esp, 8
add esp, ebx
code_label52: nop
mov edx, ebp
sub edx, esp
mov ecx, 156
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnge code_label53
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label41
call _printf
add esp, 8
add esp, ebx
code_label53: nop
mov edx, ebp
sub edx, esp
mov ecx, 156
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnle code_label54
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label42
call _printf
add esp, 8
add esp, ebx
code_label54: nop
mov edx, ebp
sub edx, esp
mov ecx, 156
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jz code_label55
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label43
call _printf
add esp, 8
add esp, ebx
code_label55: nop
mov edx, ebp
sub edx, esp
mov ecx, 156
sub ecx, edx
sub esp, ecx
while_label56: nop
mov dword [ebp - 4], 5
mov dword edx, [label3]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnl while_label57
mov dword [ebp - 76], 1
sub esp, 4 
mov dword ecx, [label3]
add ecx, [ebp - 76]
mov dword [ebp - 160], ecx
mov dword ecx, [ebp - 160]
mov dword [label3], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label44
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
jmp while_label56
while_label57: nop
sub esp, 4 
mov dword [ebp - 72], 0
sub esp, 4 
mov dword edx, label4
add edx, [ebp - 72]
add edx, [ebp - 72]
add edx, [ebp - 72]
add edx, [ebp - 72]
mov dword ecx, [edx]
mov dword [ebp - 164], ecx
mov dword [ebp - 72], 0
mov dword edx, [ebp - 164]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz case_label59
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label45
call _printf
add esp, 8
add esp, ebx
jmp switch_label58
case_label59: nop
mov edx, ebp
sub edx, esp
mov ecx, 164
sub ecx, edx
sub esp, ecx
switch_label58: nop
mov edx, ebp
sub edx, esp
mov ecx, 164
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
mov dword [ebp - 168], ecx
mov dword [ebp - 72], 0
mov dword edx, [ebp - 168]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz case_label61
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label46
call _printf
add esp, 8
add esp, ebx
jmp switch_label60
case_label61: nop
mov edx, ebp
sub edx, esp
mov ecx, 168
sub ecx, edx
sub esp, ecx
mov dword [ebp - 76], 1
mov dword edx, [ebp - 168]
mov dword ecx, [ebp - 76]
cmp edx, ecx
jnz case_label62
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label47
call _printf
add esp, 8
add esp, ebx
jmp switch_label60
case_label62: nop
mov edx, ebp
sub edx, esp
mov ecx, 168
sub ecx, edx
sub esp, ecx
switch_label60: nop
mov edx, ebp
sub edx, esp
mov ecx, 168
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
mov dword [ebp - 172], ecx
mov dword [ebp - 72], 0
mov dword edx, [ebp - 172]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz case_label64
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
case_label64: nop
mov edx, ebp
sub edx, esp
mov ecx, 172
sub ecx, edx
sub esp, ecx
mov dword [ebp - 76], 1
mov dword edx, [ebp - 172]
mov dword ecx, [ebp - 76]
cmp edx, ecx
jnz case_label65
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label49
call _printf
add esp, 8
add esp, ebx
jmp switch_label63
case_label65: nop
mov edx, ebp
sub edx, esp
mov ecx, 172
sub ecx, edx
sub esp, ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label50
call _printf
add esp, 8
add esp, ebx
jmp switch_label63
switch_label63: nop
mov edx, ebp
sub edx, esp
mov ecx, 172
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword ecx, [ebp - 72]
mov dword [ebp - 8], ecx
mov dword [ebp - 72], 0
mov dword ecx, [ebp - 72]
mov dword [ebp - 36], ecx
while_label66: nop
sub esp, 4 
mov dword [ebp - 176], 6
mov dword edx, [ebp - 8]
mov dword ecx, [ebp - 176]
cmp edx, ecx
jnl while_label67
sub esp, 4 
mov dword eax, [ebp - 8]
cdq
imul dword [ebp - 8]
mov dword [ebp - 180], eax
mov dword edx, ebp
sub edx, 12
sub edx, [ebp - 8]
sub edx, [ebp - 8]
sub edx, [ebp - 8]
sub edx, [ebp - 8]
mov dword ecx, [ebp - 180]
mov dword [edx], ecx
sub esp, 4 
mov dword edx, ebp
sub edx, 12
sub edx, [ebp - 8]
sub edx, [ebp - 8]
sub edx, [ebp - 8]
sub edx, [ebp - 8]
mov dword ecx, [edx]
mov dword [ebp - 184], ecx
sub esp, 4 
mov dword ecx, [ebp - 36]
add ecx, [ebp - 184]
mov dword [ebp - 188], ecx
mov dword ecx, [ebp - 188]
mov dword [ebp - 36], ecx
mov dword [ebp - 76], 1
sub esp, 4 
mov dword ecx, [ebp - 8]
add ecx, [ebp - 76]
mov dword [ebp - 192], ecx
mov dword ecx, [ebp - 192]
mov dword [ebp - 8], ecx
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
jmp while_label66
while_label67: nop
sub esp, 4 
sub esp, 4 
sub esp, 4 
sub esp, 4 
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label51
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
push dword label52
call _printf
add esp, 8
add esp, ebx
mov dword [ebp - 72], 0
mov dword [ebp - 72], 0
sub esp, 4 
mov dword eax, [ebp - 72]
cdq
imul dword [ebp - 72]
mov dword [ebp - 196], eax
mov dword [ebp - 76], 1
mov dword [ebp - 76], 1
sub esp, 4 
mov dword eax, [ebp - 76]
cdq
imul dword [ebp - 76]
mov dword [ebp - 200], eax
sub esp, 4 
mov dword ecx, [ebp - 196]
add ecx, [ebp - 200]
mov dword [ebp - 204], ecx
mov dword [ebp - 136], 2
mov dword [ebp - 136], 2
sub esp, 4 
mov dword eax, [ebp - 136]
cdq
imul dword [ebp - 136]
mov dword [ebp - 208], eax
sub esp, 4 
mov dword ecx, [ebp - 204]
add ecx, [ebp - 208]
mov dword [ebp - 212], ecx
mov dword [ebp - 144], 3
mov dword [ebp - 144], 3
sub esp, 4 
mov dword eax, [ebp - 144]
cdq
imul dword [ebp - 144]
mov dword [ebp - 216], eax
sub esp, 4 
mov dword ecx, [ebp - 212]
add ecx, [ebp - 216]
mov dword [ebp - 220], ecx
sub esp, 4 
mov dword [ebp - 224], 4
mov dword [ebp - 224], 4
sub esp, 4 
mov dword eax, [ebp - 224]
cdq
imul dword [ebp - 224]
mov dword [ebp - 228], eax
sub esp, 4 
mov dword ecx, [ebp - 220]
add ecx, [ebp - 228]
mov dword [ebp - 232], ecx
mov dword [ebp - 4], 5
mov dword [ebp - 4], 5
sub esp, 4 
mov dword eax, [ebp - 4]
cdq
imul dword [ebp - 4]
mov dword [ebp - 236], eax
sub esp, 4 
mov dword ecx, [ebp - 232]
add ecx, [ebp - 236]
mov dword [ebp - 240], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 240]
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
push dword label53
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword ecx, [ebp - 40]
add ecx, [ebp - 44]
mov dword [ebp - 244], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 244]
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
push dword label54
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword eax, [ebp - 44]
cdq
imul dword [ebp - 48]
mov dword [ebp - 248], eax
sub esp, 4 
mov dword eax, [ebp - 248]
cdq
imul dword [ebp - 52]
mov dword [ebp - 252], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 252]
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
mov dword [ebp - 256], ecx
mov dword edx, label4
add edx, [ebp - 256]
add edx, [ebp - 256]
add edx, [ebp - 256]
add edx, [ebp - 256]
mov dword ecx, [ebp - 56]
mov dword [edx], ecx
mov dword [ebp - 76], 1
mov dword [ebp - 76], 1
sub esp, 4 
mov dword eax, [ebp - 76]
cdq
imul dword [ebp - 76]
mov dword [ebp - 260], eax
mov dword edx, label4
add edx, [ebp - 260]
add edx, [ebp - 260]
add edx, [ebp - 260]
add edx, [ebp - 260]
mov dword ecx, [ebp - 60]
mov dword [edx], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label55
call _printf
add esp, 8
add esp, ebx
mov dword [ebp - 72], 0
mov dword [ebp - 72], 0
sub esp, 4 
mov dword ecx, [ebp - 72]
add ecx, [ebp - 72]
mov dword [ebp - 264], ecx
mov dword [ebp - 72], 0
sub esp, 4 
mov dword ecx, [ebp - 264]
add ecx, [ebp - 72]
mov dword [ebp - 268], ecx
sub esp, 4 
mov dword edx, label4
add edx, [ebp - 268]
add edx, [ebp - 268]
add edx, [ebp - 268]
add edx, [ebp - 268]
mov dword ecx, [edx]
mov dword [ebp - 272], ecx
mov dword [ebp - 76], 1
mov dword [ebp - 76], 1
sub esp, 4 
mov dword eax, [ebp - 76]
cdq
imul dword [ebp - 76]
mov dword [ebp - 276], eax
mov dword [ebp - 76], 1
sub esp, 4 
mov dword eax, [ebp - 276]
cdq
imul dword [ebp - 76]
mov dword [ebp - 280], eax
sub esp, 4 
mov dword edx, label4
add edx, [ebp - 280]
add edx, [ebp - 280]
add edx, [ebp - 280]
add edx, [ebp - 280]
mov dword ecx, [edx]
mov dword [ebp - 284], ecx
sub esp, 4 
mov dword ecx, [ebp - 284]
mov dword [ebp - 288], ecx
sub esp, 4 
mov dword ecx, [ebp - 272]
mov dword [ebp - 292], ecx
call code_label29gcd
sub esp, 4 
mov dword [ebp - 296], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 296]
push dword print_int
call _printf
add esp, 8
add esp, ebx
mov dword [ebp - 72], 0
mov dword [ebp - 72], 0
mov dword edx, [ebp - 72]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz code_label69
mov dword [ebp - 72], 0
mov dword [ebp - 76], 1
mov dword edx, [ebp - 72]
mov dword ecx, [ebp - 76]
cmp edx, ecx
jz code_label70
mov dword [ebp - 136], 2
mov dword [ebp - 76], 1
mov dword edx, [ebp - 136]
mov dword ecx, [ebp - 76]
cmp edx, ecx
jng code_label71
mov dword [ebp - 144], 3
mov dword [ebp - 224], 4
mov dword edx, [ebp - 144]
mov dword ecx, [ebp - 224]
cmp edx, ecx
jnl code_label72
mov dword [ebp - 4], 5
mov dword [ebp - 4], 5
mov dword edx, [ebp - 4]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnge code_label73
mov dword [ebp - 176], 6
mov dword [ebp - 176], 6
mov dword edx, [ebp - 176]
mov dword ecx, [ebp - 176]
cmp edx, ecx
jnle code_label74
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label56
call _printf
add esp, 8
add esp, ebx
code_label74: nop
mov edx, ebp
sub edx, esp
mov ecx, 296
sub ecx, edx
sub esp, ecx
code_label73: nop
mov edx, ebp
sub edx, esp
mov ecx, 296
sub ecx, edx
sub esp, ecx
code_label72: nop
mov edx, ebp
sub edx, esp
mov ecx, 296
sub ecx, edx
sub esp, ecx
code_label71: nop
mov edx, ebp
sub edx, esp
mov ecx, 296
sub ecx, edx
sub esp, ecx
code_label70: nop
mov edx, ebp
sub edx, esp
mov ecx, 296
sub ecx, edx
sub esp, ecx
code_label69: nop
mov edx, ebp
sub edx, esp
mov ecx, 296
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword ecx, [ebp - 72]
mov dword [ebp - 64], ecx
while_label75: nop
mov dword [ebp - 4], 5
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnl while_label76
mov dword [ebp - 4], 5
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnl code_label77
mov dword [ebp - 76], 1
sub esp, 4 
mov dword ecx, [ebp - 64]
add ecx, [ebp - 76]
mov dword [ebp - 300], ecx
mov dword ecx, [ebp - 300]
mov dword [ebp - 64], ecx
code_label77: nop
mov edx, ebp
sub edx, esp
mov ecx, 300
sub ecx, edx
sub esp, ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label57
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
jmp while_label75
while_label76: nop
sub esp, 4 
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label58
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
jnl code_label78
while_label79: nop
mov dword [ebp - 4], 5
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnl while_label80
mov dword [ebp - 76], 1
sub esp, 4 
mov dword ecx, [ebp - 64]
add ecx, [ebp - 76]
mov dword [ebp - 304], ecx
mov dword ecx, [ebp - 304]
mov dword [ebp - 64], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label59
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
jmp while_label79
while_label80: nop
sub esp, 4 
code_label78: nop
mov edx, ebp
sub edx, esp
mov ecx, 304
sub ecx, edx
sub esp, ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label60
call _printf
add esp, 8
add esp, ebx
mov dword [ebp - 72], 0
mov dword ecx, [ebp - 72]
mov dword [ebp - 64], ecx
while_label81: nop
mov dword [ebp - 136], 2
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 136]
cmp edx, ecx
jnl while_label82
mov dword [ebp - 72], 0
mov dword ecx, [ebp - 72]
mov dword [ebp - 68], ecx
while_label83: nop
mov dword [ebp - 136], 2
mov dword edx, [ebp - 68]
mov dword ecx, [ebp - 136]
cmp edx, ecx
jnl while_label84
mov dword [ebp - 76], 1
sub esp, 4 
mov dword ecx, [ebp - 68]
add ecx, [ebp - 76]
mov dword [ebp - 308], ecx
mov dword ecx, [ebp - 308]
mov dword [ebp - 68], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label61
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
jmp while_label83
while_label84: nop
sub esp, 4 
mov dword [ebp - 76], 1
sub esp, 4 
mov dword ecx, [ebp - 64]
add ecx, [ebp - 76]
mov dword [ebp - 312], ecx
mov dword ecx, [ebp - 312]
mov dword [ebp - 64], ecx
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
push dword [ebp - 64]
push dword print_int
call _printf
add esp, 8
add esp, ebx
add esp, 4 
add esp, 4 
jmp while_label81
while_label82: nop
sub esp, 4 
sub esp, 4 
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label63
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
jnz case_label86
mov dword [ebp - 72], 0
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz code_label87
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label64
call _printf
add esp, 8
add esp, ebx
code_label87: nop
mov edx, ebp
sub edx, esp
mov ecx, 312
sub ecx, edx
sub esp, ecx
jmp switch_label85
case_label86: nop
mov edx, ebp
sub edx, esp
mov ecx, 312
sub ecx, edx
sub esp, ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label65
call _printf
add esp, 8
add esp, ebx
jmp switch_label85
switch_label85: nop
mov edx, ebp
sub edx, esp
mov ecx, 312
sub ecx, edx
sub esp, ecx
mov dword [ebp - 72], 0
mov dword ecx, [ebp - 72]
mov dword [ebp - 64], ecx
while_label88: nop
mov dword [ebp - 4], 5
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnl while_label89
mov dword [ebp - 72], 0
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 72]
cmp edx, ecx
jnz case_label91
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label66
call _printf
add esp, 8
add esp, ebx
jmp switch_label90
case_label91: nop
mov edx, ebp
sub edx, esp
mov ecx, 312
sub ecx, edx
sub esp, ecx
mov dword [ebp - 76], 1
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 76]
cmp edx, ecx
jnz case_label92
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label67
call _printf
add esp, 8
add esp, ebx
jmp switch_label90
case_label92: nop
mov edx, ebp
sub edx, esp
mov ecx, 312
sub ecx, edx
sub esp, ecx
mov dword [ebp - 136], 2
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 136]
cmp edx, ecx
jnz case_label93
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label68
call _printf
add esp, 8
add esp, ebx
jmp switch_label90
case_label93: nop
mov edx, ebp
sub edx, esp
mov ecx, 312
sub ecx, edx
sub esp, ecx
mov dword [ebp - 144], 3
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 144]
cmp edx, ecx
jnz case_label94
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label69
call _printf
add esp, 8
add esp, ebx
jmp switch_label90
case_label94: nop
mov edx, ebp
sub edx, esp
mov ecx, 312
sub ecx, edx
sub esp, ecx
mov dword [ebp - 224], 4
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 224]
cmp edx, ecx
jnz case_label95
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label70
call _printf
add esp, 8
add esp, ebx
jmp switch_label90
case_label95: nop
mov edx, ebp
sub edx, esp
mov ecx, 312
sub ecx, edx
sub esp, ecx
mov dword [ebp - 4], 5
mov dword edx, [ebp - 64]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnz case_label96
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label71
call _printf
add esp, 8
add esp, ebx
jmp switch_label90
case_label96: nop
mov edx, ebp
sub edx, esp
mov ecx, 312
sub ecx, edx
sub esp, ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label72
call _printf
add esp, 8
add esp, ebx
jmp switch_label90
switch_label90: nop
mov edx, ebp
sub edx, esp
mov ecx, 312
sub ecx, edx
sub esp, ecx
mov dword [ebp - 76], 1
sub esp, 4 
mov dword ecx, [ebp - 64]
add ecx, [ebp - 76]
mov dword [ebp - 316], ecx
mov dword ecx, [ebp - 316]
mov dword [ebp - 64], ecx
add esp, 4 
jmp while_label88
while_label89: nop
sub esp, 4 
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label73
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label74
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
dd `intV1 == 0\n\0`
label38:
dd `intV1 != 0\n\0`
label39:
dd `intV1 >  0\n\0`
label40:
dd `intV1 <  0\n\0`
label41:
dd `intV1 >= 0\n\0`
label42:
dd `intV1 <= 0\n\0`
label43:
dd `intV1 is true\n\0`
label44:
dd `intV1 becomes \n\0`
label45:
dd `intV2[0] is 0\n\0`
label46:
dd `intV2[0] is 0\n\0`
label47:
dd `intV2[0] is 1\n\0`
label48:
dd `intV2[0] is 0\n\0`
label49:
dd `intV2[0] is 1\n\0`
label50:
dd `intV2[0] is neither 0 nor 1\n\0`
label51:
dd `0*0+1*1+2*2+3*3+4*4+5*5 = \n\0`
label52:
dd `0*0+1*1+2*2+3*3+4*4+5*5 = \n\0`
label53:
dd `The sum of the 2 numbers you entered is \n\0`
label54:
dd `The product of the 3 numbers you entered is \n\0`
label55:
dd `The gcd of the 2 numbers you entered is \n\0`
label56:
dd `If-If test passed.\n\0`
label57:
dd `intV30 becomes \n\0`
label58:
dd `While-If test passed\n\0`
label59:
dd `intV30 becomes \n\0`
label60:
dd `If-While test passed\n\0`
label61:
dd `intV31 becomes\n\0`
label62:
dd `intV30 becomes \n\0`
label63:
dd `While-While test passed\n\0`
label64:
dd `Switch-If test passed\n\0`
label65:
dd `Switch-If test failed\n\0`
label66:
dd `intV30 is 0\n\0`
label67:
dd `intV30 is 1\n\0`
label68:
dd `intV30 is 2\n\0`
label69:
dd `intV30 is 3\n\0`
label70:
dd `intV30 is 4\n\0`
label71:
dd `While-Switch test failed\n\0`
label72:
dd `While-Switch test failed\n\0`
label73:
dd `While-Switch test passed\n\0`
label74:
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
