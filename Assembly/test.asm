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
mov dword eax, [label0]
mov esp, ebp
pop ebp 
ret 
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
push dword label6
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
push dword [ebp - 8]
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
push dword [ebp - 12]
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
code_label29gcd: nop
push ebp 
mov ebp, esp 
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
push dword label19
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp + 12]
push dword command_int
call _printf
add esp, 8
add esp, ebx
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
mov dword [ebp - 64], 0
mov dword [ebp - 64], 0
mov dword edx, label4
add edx, [ebp - 64]
add edx, [ebp - 64]
add edx, [ebp - 64]
add edx, [ebp - 64]
mov dword ecx, [ebp - 64]
mov dword [edx], ecx
sub esp, 4 
mov dword [ebp - 68], 1
mov dword [ebp - 64], 0
mov dword edx, label4
add edx, [ebp - 68]
add edx, [ebp - 68]
add edx, [ebp - 68]
add edx, [ebp - 68]
mov dword ecx, [ebp - 64]
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
mov dword edx, label3
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
push dword label21
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [label3]
push dword command_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
mov dword edx, label5
push dword edx
push dword command_char
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
push dword [label5]
push dword command_char
call _printf
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
call code_label0iFunc1
sub esp, 4 
mov dword [ebp - 72], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 72]
push dword command_int
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
call code_label1iFunc2
sub esp, 4 
mov dword [ebp - 76], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 76]
push dword command_int
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
call code_label4iFunc3
sub esp, 4 
mov dword [ebp - 80], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 80]
push dword command_int
call _printf
add esp, 8
add esp, ebx
call code_label3cFunc1
sub esp, 4 
mov dword [ebp - 84], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 84]
push dword command_char
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
call code_label5iFunc4
sub esp, 4 
mov dword [ebp - 88], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 88]
push dword command_int
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
call code_label6iFunc5
sub esp, 4 
mov dword [ebp - 92], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 92]
push dword command_int
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
call code_label7iFunc6
sub esp, 4 
mov dword [ebp - 96], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 96]
push dword command_int
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
call code_label8iFunc7
sub esp, 4 
mov dword [ebp - 100], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 100]
push dword command_int
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
call code_label9iFunc8
sub esp, 4 
mov dword [ebp - 104], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 104]
push dword command_int
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
call code_label10iFunc9
sub esp, 4 
mov dword [ebp - 108], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 108]
push dword command_int
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
call code_label11iFunc10
sub esp, 4 
mov dword [ebp - 112], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 112]
push dword command_int
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
call code_label14iFunc11
sub esp, 4 
mov dword [ebp - 116], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 116]
push dword command_int
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
call code_label18iFunc12
sub esp, 4 
mov dword [ebp - 120], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 120]
push dword command_int
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
call code_label21iFunc13
sub esp, 4 
mov dword [ebp - 124], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 124]
push dword command_int
call _printf
add esp, 8
add esp, ebx
call code_label25vFunc1
sub esp, 4 
mov dword [ebp - 128], 2
sub esp, 4 
mov dword ecx, [ebp - 128]
mov dword [ebp - 132], ecx
call code_label26vFunc2
sub esp, 4 
mov dword [ebp - 136], 3
sub esp, 4 
mov dword [ebp - 140], 99
sub esp, 4 
mov dword ecx, [ebp - 140]
mov dword [ebp - 144], ecx
sub esp, 4 
mov dword ecx, [ebp - 136]
mov dword [ebp - 148], ecx
call code_label27vFunc3
call code_label28vFunc4
mov dword [ebp - 64], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 64]
cmp edx, ecx
jnz code_label49
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label36
call _printf
add esp, 8
add esp, ebx
code_label49: nop
mov edx, ebp
sub edx, esp
mov ecx, 148
sub ecx, edx
sub esp, ecx
mov dword [ebp - 64], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 64]
cmp edx, ecx
jz code_label50
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label37
call _printf
add esp, 8
add esp, ebx
code_label50: nop
mov edx, ebp
sub edx, esp
mov ecx, 148
sub ecx, edx
sub esp, ecx
mov dword [ebp - 64], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 64]
cmp edx, ecx
jng code_label51
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label38
call _printf
add esp, 8
add esp, ebx
code_label51: nop
mov edx, ebp
sub edx, esp
mov ecx, 148
sub ecx, edx
sub esp, ecx
mov dword [ebp - 64], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 64]
cmp edx, ecx
jnl code_label52
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label39
call _printf
add esp, 8
add esp, ebx
code_label52: nop
mov edx, ebp
sub edx, esp
mov ecx, 148
sub ecx, edx
sub esp, ecx
mov dword [ebp - 64], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 64]
cmp edx, ecx
jnge code_label53
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label40
call _printf
add esp, 8
add esp, ebx
code_label53: nop
mov edx, ebp
sub edx, esp
mov ecx, 148
sub ecx, edx
sub esp, ecx
mov dword [ebp - 64], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 64]
cmp edx, ecx
jnle code_label54
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label41
call _printf
add esp, 8
add esp, ebx
code_label54: nop
mov edx, ebp
sub edx, esp
mov ecx, 148
sub ecx, edx
sub esp, ecx
mov dword [ebp - 64], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 64]
cmp edx, ecx
jz code_label55
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label42
call _printf
add esp, 8
add esp, ebx
code_label55: nop
mov edx, ebp
sub edx, esp
mov ecx, 148
sub ecx, edx
sub esp, ecx
while_label56: nop
mov dword [ebp - 4], 5
mov dword edx, [label3]
mov dword ecx, [ebp - 4]
cmp edx, ecx
jnl while_label57
mov dword [ebp - 68], 1
sub esp, 4 
mov dword ecx, [label3]
add ecx, [ebp - 68]
mov dword [ebp - 152], ecx
mov dword ecx, [ebp - 152]
mov dword [label3], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label43
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [label3]
push dword command_int
call _printf
add esp, 8
add esp, ebx
add esp, 4 
jmp while_label56
while_label57: nop
sub esp, 4 
mov dword [ebp - 64], 0
sub esp, 4 
mov dword edx, label4
add edx, [ebp - 64]
add edx, [ebp - 64]
add edx, [ebp - 64]
add edx, [ebp - 64]
mov dword ecx, [edx]
mov dword [ebp - 156], ecx
mov dword [ebp - 64], 0
mov dword edx, [ebp - 156]
mov dword ecx, [ebp - 64]
cmp edx, ecx
jnz case_label59
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label44
call _printf
add esp, 8
add esp, ebx
jmp switch_label58
case_label59: nop
mov edx, ebp
sub edx, esp
mov ecx, 156
sub ecx, edx
sub esp, ecx
switch_label58: nop
mov edx, ebp
sub edx, esp
mov ecx, 156
sub ecx, edx
sub esp, ecx
mov dword [ebp - 64], 0
sub esp, 4 
mov dword edx, label4
add edx, [ebp - 64]
add edx, [ebp - 64]
add edx, [ebp - 64]
add edx, [ebp - 64]
mov dword ecx, [edx]
mov dword [ebp - 160], ecx
mov dword [ebp - 64], 0
mov dword edx, [ebp - 160]
mov dword ecx, [ebp - 64]
cmp edx, ecx
jnz case_label61
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label45
call _printf
add esp, 8
add esp, ebx
jmp switch_label60
case_label61: nop
mov edx, ebp
sub edx, esp
mov ecx, 160
sub ecx, edx
sub esp, ecx
mov dword [ebp - 68], 1
mov dword edx, [ebp - 160]
mov dword ecx, [ebp - 68]
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
jmp switch_label60
case_label62: nop
mov edx, ebp
sub edx, esp
mov ecx, 160
sub ecx, edx
sub esp, ecx
switch_label60: nop
mov edx, ebp
sub edx, esp
mov ecx, 160
sub ecx, edx
sub esp, ecx
mov dword [ebp - 64], 0
sub esp, 4 
mov dword edx, label4
add edx, [ebp - 64]
add edx, [ebp - 64]
add edx, [ebp - 64]
add edx, [ebp - 64]
mov dword ecx, [edx]
mov dword [ebp - 164], ecx
mov dword [ebp - 64], 0
mov dword edx, [ebp - 164]
mov dword ecx, [ebp - 64]
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
mov ecx, 164
sub ecx, edx
sub esp, ecx
mov dword [ebp - 68], 1
mov dword edx, [ebp - 164]
mov dword ecx, [ebp - 68]
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
mov ecx, 164
sub ecx, edx
sub esp, ecx
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
switch_label63: nop
mov edx, ebp
sub edx, esp
mov ecx, 164
sub ecx, edx
sub esp, ecx
mov dword [ebp - 64], 0
mov dword ecx, [ebp - 64]
mov dword [ebp - 8], ecx
mov dword [ebp - 64], 0
mov dword ecx, [ebp - 64]
mov dword [ebp - 36], ecx
while_label66: nop
sub esp, 4 
mov dword [ebp - 168], 6
mov dword edx, [ebp - 8]
mov dword ecx, [ebp - 168]
cmp edx, ecx
jnl while_label67
sub esp, 4 
mov dword eax, [ebp - 8]
cdq
imul dword [ebp - 8]
mov dword [ebp - 172], eax
mov dword edx, ebp
sub edx, 12
sub edx, [ebp - 8]
sub edx, [ebp - 8]
sub edx, [ebp - 8]
sub edx, [ebp - 8]
mov dword ecx, [ebp - 172]
mov dword [edx], ecx
sub esp, 4 
mov dword edx, ebp
sub edx, 12
sub edx, [ebp - 8]
sub edx, [ebp - 8]
sub edx, [ebp - 8]
sub edx, [ebp - 8]
mov dword ecx, [edx]
mov dword [ebp - 176], ecx
sub esp, 4 
mov dword ecx, [ebp - 36]
add ecx, [ebp - 176]
mov dword [ebp - 180], ecx
mov dword ecx, [ebp - 180]
mov dword [ebp - 36], ecx
mov dword [ebp - 68], 1
sub esp, 4 
mov dword ecx, [ebp - 8]
add ecx, [ebp - 68]
mov dword [ebp - 184], ecx
mov dword ecx, [ebp - 184]
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
push dword label50
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 36]
push dword command_int
call _printf
add esp, 8
add esp, ebx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label51
call _printf
add esp, 8
add esp, ebx
mov dword [ebp - 64], 0
mov dword [ebp - 64], 0
sub esp, 4 
mov dword eax, [ebp - 64]
cdq
imul dword [ebp - 64]
mov dword [ebp - 188], eax
mov dword [ebp - 68], 1
mov dword [ebp - 68], 1
sub esp, 4 
mov dword eax, [ebp - 68]
cdq
imul dword [ebp - 68]
mov dword [ebp - 192], eax
sub esp, 4 
mov dword ecx, [ebp - 188]
add ecx, [ebp - 192]
mov dword [ebp - 196], ecx
mov dword [ebp - 128], 2
mov dword [ebp - 128], 2
sub esp, 4 
mov dword eax, [ebp - 128]
cdq
imul dword [ebp - 128]
mov dword [ebp - 200], eax
sub esp, 4 
mov dword ecx, [ebp - 196]
add ecx, [ebp - 200]
mov dword [ebp - 204], ecx
mov dword [ebp - 136], 3
mov dword [ebp - 136], 3
sub esp, 4 
mov dword eax, [ebp - 136]
cdq
imul dword [ebp - 136]
mov dword [ebp - 208], eax
sub esp, 4 
mov dword ecx, [ebp - 204]
add ecx, [ebp - 208]
mov dword [ebp - 212], ecx
sub esp, 4 
mov dword [ebp - 216], 4
mov dword [ebp - 216], 4
sub esp, 4 
mov dword eax, [ebp - 216]
cdq
imul dword [ebp - 216]
mov dword [ebp - 220], eax
sub esp, 4 
mov dword ecx, [ebp - 212]
add ecx, [ebp - 220]
mov dword [ebp - 224], ecx
mov dword [ebp - 4], 5
mov dword [ebp - 4], 5
sub esp, 4 
mov dword eax, [ebp - 4]
cdq
imul dword [ebp - 4]
mov dword [ebp - 228], eax
sub esp, 4 
mov dword ecx, [ebp - 224]
add ecx, [ebp - 228]
mov dword [ebp - 232], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 232]
push dword command_int
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
push dword command_int
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
push dword command_int
call _scanf
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
sub esp, 4 
mov dword ecx, [ebp - 40]
add ecx, [ebp - 44]
mov dword [ebp - 236], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 236]
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
push dword 0
push dword label53
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword eax, [ebp - 44]
cdq
imul dword [ebp - 48]
mov dword [ebp - 240], eax
sub esp, 4 
mov dword eax, [ebp - 240]
cdq
imul dword [ebp - 52]
mov dword [ebp - 244], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 244]
push dword command_int
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
push dword command_int
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
push dword command_int
call _scanf
add esp, 8
add esp, ebx
mov dword [ebp - 64], 0
mov dword [ebp - 64], 0
sub esp, 4 
mov dword ecx, [ebp - 64]
add ecx, [ebp - 64]
mov dword [ebp - 248], ecx
mov dword edx, label4
add edx, [ebp - 248]
add edx, [ebp - 248]
add edx, [ebp - 248]
add edx, [ebp - 248]
mov dword ecx, [ebp - 56]
mov dword [edx], ecx
mov dword [ebp - 68], 1
mov dword [ebp - 68], 1
sub esp, 4 
mov dword eax, [ebp - 68]
cdq
imul dword [ebp - 68]
mov dword [ebp - 252], eax
mov dword edx, label4
add edx, [ebp - 252]
add edx, [ebp - 252]
add edx, [ebp - 252]
add edx, [ebp - 252]
mov dword ecx, [ebp - 60]
mov dword [edx], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label54
call _printf
add esp, 8
add esp, ebx
mov dword [ebp - 64], 0
mov dword [ebp - 64], 0
sub esp, 4 
mov dword ecx, [ebp - 64]
add ecx, [ebp - 64]
mov dword [ebp - 256], ecx
mov dword [ebp - 64], 0
sub esp, 4 
mov dword ecx, [ebp - 256]
add ecx, [ebp - 64]
mov dword [ebp - 260], ecx
sub esp, 4 
mov dword edx, label4
add edx, [ebp - 260]
add edx, [ebp - 260]
add edx, [ebp - 260]
add edx, [ebp - 260]
mov dword ecx, [edx]
mov dword [ebp - 264], ecx
mov dword [ebp - 68], 1
mov dword [ebp - 68], 1
sub esp, 4 
mov dword eax, [ebp - 68]
cdq
imul dword [ebp - 68]
mov dword [ebp - 268], eax
mov dword [ebp - 68], 1
sub esp, 4 
mov dword eax, [ebp - 268]
cdq
imul dword [ebp - 68]
mov dword [ebp - 272], eax
sub esp, 4 
mov dword edx, label4
add edx, [ebp - 272]
add edx, [ebp - 272]
add edx, [ebp - 272]
add edx, [ebp - 272]
mov dword ecx, [edx]
mov dword [ebp - 276], ecx
sub esp, 4 
mov dword ecx, [ebp - 276]
mov dword [ebp - 280], ecx
sub esp, 4 
mov dword ecx, [ebp - 264]
mov dword [ebp - 284], ecx
call code_label29gcd
sub esp, 4 
mov dword [ebp - 288], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 288]
push dword command_int
call _printf
add esp, 8
add esp, ebx
mov esp, ebp
pop ebp 
ret 

section .data
command_int:
dd `%%d\n\0`
command_char:
dd `%%c\n\0`
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
dd `gcd a = \n\0`
label19:
dd `gcd b = \n\0`
label20:
dd `%%d\n\0`
label21:
dd `\\\\You entered \n\0`
label22:
dd `You entered \n\0`
label23:
dd `iFunc1()= \n\0`
label24:
dd `iFunc2()= \n\0`
label25:
dd `iFunc3()= \n\0`
label26:
dd `iFunc4()= \n\0`
label27:
dd `iFunc5()= \n\0`
label28:
dd `iFunc6()= \n\0`
label29:
dd `iFunc7()= \n\0`
label30:
dd `iFunc8()= \n\0`
label31:
dd `iFunc9()= \n\0`
label32:
dd `iFunc10()= \n\0`
label33:
dd `iFunc11()= \n\0`
label34:
dd `iFunc12()= \n\0`
label35:
dd `iFunc13()= \n\0`
label36:
dd `intV1 == 0\n\0`
label37:
dd `intV1 != 0\n\0`
label38:
dd `intV1 >  0\n\0`
label39:
dd `intV1 <  0\n\0`
label40:
dd `intV1 >= 0\n\0`
label41:
dd `intV1 <= 0\n\0`
label42:
dd `intV1 is true\n\0`
label43:
dd `intV1 becomes \n\0`
label44:
dd `intV2[0] is 0\n\0`
label45:
dd `intV2[0] is 0\n\0`
label46:
dd `intV2[0] is 1\n\0`
label47:
dd `intV2[0] is 0\n\0`
label48:
dd `intV2[0] is 1\n\0`
label49:
dd `intV2[0] is neither 0 nor 1\n\0`
label50:
dd `0*0+1*1+2*2+3*3+4*4+5*5 = \n\0`
label51:
dd `0*0+1*1+2*2+3*3+4*4+5*5 = \n\0`
label52:
dd `The sum of the 2 numbers you entered is \n\0`
label53:
dd `The product of the 3 numbers you entered is \n\0`
label54:
dd `The gcd of the 2 numbers you entered is \n\0`

section .bss
label3:
resd 4
label4:
resd 8
label5:
resd 4
