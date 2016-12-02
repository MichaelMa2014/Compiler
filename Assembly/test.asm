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
mov dword [ebp - 68], 0
sub esp, 4 
mov dword [ebp - 72], 0
mov dword edx, label4
add edx, [ebp - 68]
add edx, [ebp - 68]
add edx, [ebp - 68]
add edx, [ebp - 68]
mov dword ecx, [ebp - 72]
mov dword [edx], ecx
sub esp, 4 
mov dword [ebp - 76], 1
sub esp, 4 
mov dword [ebp - 80], 0
mov dword edx, label4
add edx, [ebp - 76]
add edx, [ebp - 76]
add edx, [ebp - 76]
add edx, [ebp - 76]
mov dword ecx, [ebp - 80]
mov dword [edx], ecx
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
push dword label20
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
push dword label21
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
push dword label22
call _printf
add esp, 8
add esp, ebx
call code_label0iFunc1
sub esp, 4 
mov dword [ebp - 84], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 84]
push dword command_int
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
call code_label1iFunc2
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
push dword label24
call _printf
add esp, 8
add esp, ebx
call code_label4iFunc3
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
call code_label3cFunc1
sub esp, 4 
mov dword [ebp - 96], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 96]
push dword command_char
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
call code_label5iFunc4
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
push dword label26
call _printf
add esp, 8
add esp, ebx
call code_label6iFunc5
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
push dword label27
call _printf
add esp, 8
add esp, ebx
call code_label7iFunc6
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
push dword label28
call _printf
add esp, 8
add esp, ebx
call code_label8iFunc7
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
push dword label29
call _printf
add esp, 8
add esp, ebx
call code_label9iFunc8
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
push dword label30
call _printf
add esp, 8
add esp, ebx
call code_label10iFunc9
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
push dword label31
call _printf
add esp, 8
add esp, ebx
call code_label11iFunc10
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
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label32
call _printf
add esp, 8
add esp, ebx
call code_label14iFunc11
sub esp, 4 
mov dword [ebp - 128], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 128]
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
call code_label18iFunc12
sub esp, 4 
mov dword [ebp - 132], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 132]
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
call code_label21iFunc13
sub esp, 4 
mov dword [ebp - 136], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 136]
push dword command_int
call _printf
add esp, 8
add esp, ebx
call code_label25vFunc1
sub esp, 4 
mov dword [ebp - 140], 2
sub esp, 4 
mov dword ecx, [ebp - 140]
mov dword [ebp - 144], ecx
call code_label26vFunc2
sub esp, 4 
mov dword [ebp - 148], 3
sub esp, 4 
mov dword [ebp - 152], 99
sub esp, 4 
mov dword ecx, [ebp - 152]
mov dword [ebp - 156], ecx
sub esp, 4 
mov dword ecx, [ebp - 148]
mov dword [ebp - 160], ecx
call code_label27vFunc3
call code_label28vFunc4
sub esp, 4 
mov dword [ebp - 164], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 164]
cmp edx, ecx
jnz code_label49
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label35
call _printf
add esp, 8
add esp, ebx
code_label49:
nop
mov edx, ebp
sub edx, esp
mov ecx, 164
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 168], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 168]
cmp edx, ecx
jz code_label50
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label36
call _printf
add esp, 8
add esp, ebx
code_label50:
nop
mov edx, ebp
sub edx, esp
mov ecx, 168
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 172], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 172]
cmp edx, ecx
jng code_label51
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label37
call _printf
add esp, 8
add esp, ebx
code_label51:
nop
mov edx, ebp
sub edx, esp
mov ecx, 172
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 176], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 176]
cmp edx, ecx
jnl code_label52
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label38
call _printf
add esp, 8
add esp, ebx
code_label52:
nop
mov edx, ebp
sub edx, esp
mov ecx, 176
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 180], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 180]
cmp edx, ecx
jnge code_label53
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label39
call _printf
add esp, 8
add esp, ebx
code_label53:
nop
mov edx, ebp
sub edx, esp
mov ecx, 180
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 184], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 184]
cmp edx, ecx
jnle code_label54
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label40
call _printf
add esp, 8
add esp, ebx
code_label54:
nop
mov edx, ebp
sub edx, esp
mov ecx, 184
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 188], 0
mov dword edx, [label3]
mov dword ecx, [ebp - 188]
cmp edx, ecx
jz code_label55
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label41
call _printf
add esp, 8
add esp, ebx
code_label55:
nop
mov edx, ebp
sub edx, esp
mov ecx, 188
sub ecx, edx
sub esp, ecx
while_label56:
nop
sub esp, 4 
mov dword [ebp - 192], 5
mov dword edx, [label3]
mov dword ecx, [ebp - 192]
cmp edx, ecx
jnl while_label57
sub esp, 4 
mov dword [ebp - 196], 1
sub esp, 4 
mov dword ecx, [label3]
add ecx, [ebp - 196]
mov dword [ebp - 200], ecx
mov dword ecx, [ebp - 200]
mov dword [label3], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label42
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
add esp, 4 
add esp, 4 
jmp while_label56
while_label57:
nop
sub esp, 4 
sub esp, 4 
sub esp, 4 
mov dword [ebp - 204], 0
sub esp, 4 
mov dword edx, label4
add edx, [ebp - 204]
add edx, [ebp - 204]
add edx, [ebp - 204]
add edx, [ebp - 204]
mov dword ecx, [edx]
mov dword [ebp - 208], ecx
sub esp, 4 
mov dword [ebp - 212], 0
mov dword edx, [ebp - 208]
mov dword ecx, [ebp - 212]
cmp edx, ecx
jnz case_label59
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label43
call _printf
add esp, 8
add esp, ebx
jmp switch_label58
case_label59:
nop
mov edx, ebp
sub edx, esp
mov ecx, 212
sub ecx, edx
sub esp, ecx
switch_label58:
nop
mov edx, ebp
sub edx, esp
mov ecx, 212
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 216], 0
sub esp, 4 
mov dword edx, label4
add edx, [ebp - 216]
add edx, [ebp - 216]
add edx, [ebp - 216]
add edx, [ebp - 216]
mov dword ecx, [edx]
mov dword [ebp - 220], ecx
sub esp, 4 
mov dword [ebp - 224], 0
mov dword edx, [ebp - 220]
mov dword ecx, [ebp - 224]
cmp edx, ecx
jnz case_label61
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label44
call _printf
add esp, 8
add esp, ebx
jmp switch_label60
case_label61:
nop
mov edx, ebp
sub edx, esp
mov ecx, 224
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 228], 1
mov dword edx, [ebp - 220]
mov dword ecx, [ebp - 228]
cmp edx, ecx
jnz case_label62
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
case_label62:
nop
mov edx, ebp
sub edx, esp
mov ecx, 228
sub ecx, edx
sub esp, ecx
switch_label60:
nop
mov edx, ebp
sub edx, esp
mov ecx, 228
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 232], 0
sub esp, 4 
mov dword edx, label4
add edx, [ebp - 232]
add edx, [ebp - 232]
add edx, [ebp - 232]
add edx, [ebp - 232]
mov dword ecx, [edx]
mov dword [ebp - 236], ecx
sub esp, 4 
mov dword [ebp - 240], 0
mov dword edx, [ebp - 236]
mov dword ecx, [ebp - 240]
cmp edx, ecx
jnz case_label64
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword 0
push dword label46
call _printf
add esp, 8
add esp, ebx
jmp switch_label63
case_label64:
nop
mov edx, ebp
sub edx, esp
mov ecx, 240
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 244], 1
mov dword edx, [ebp - 236]
mov dword ecx, [ebp - 244]
cmp edx, ecx
jnz case_label65
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
case_label65:
nop
mov edx, ebp
sub edx, esp
mov ecx, 244
sub ecx, edx
sub esp, ecx
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
switch_label63:
nop
mov edx, ebp
sub edx, esp
mov ecx, 244
sub ecx, edx
sub esp, ecx
sub esp, 4 
mov dword [ebp - 248], 0
mov dword ecx, [ebp - 248]
mov dword [ebp - 12], ecx
sub esp, 4 
mov dword [ebp - 252], 0
mov dword ecx, [ebp - 252]
mov dword [ebp - 40], ecx
while_label66:
nop
sub esp, 4 
mov dword [ebp - 256], 6
mov dword edx, [ebp - 12]
mov dword ecx, [ebp - 256]
cmp edx, ecx
jnl while_label67
sub esp, 4 
mov dword eax, [ebp - 12]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 12]
mov dword [ebp - 260], eax
mov dword edx, ebp
sub edx, 16
sub edx, [ebp - 12]
sub edx, [ebp - 12]
sub edx, [ebp - 12]
sub edx, [ebp - 12]
mov dword ecx, [ebp - 260]
mov dword [edx], ecx
sub esp, 4 
mov dword edx, ebp
sub edx, 16
sub edx, [ebp - 12]
sub edx, [ebp - 12]
sub edx, [ebp - 12]
sub edx, [ebp - 12]
mov dword ecx, [edx]
mov dword [ebp - 264], ecx
sub esp, 4 
mov dword ecx, [ebp - 40]
add ecx, [ebp - 264]
mov dword [ebp - 268], ecx
mov dword ecx, [ebp - 268]
mov dword [ebp - 40], ecx
sub esp, 4 
mov dword [ebp - 272], 1
sub esp, 4 
mov dword ecx, [ebp - 12]
add ecx, [ebp - 272]
mov dword [ebp - 276], ecx
mov dword ecx, [ebp - 276]
mov dword [ebp - 12], ecx
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
add esp, 4 
jmp while_label66
while_label67:
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
push dword label49
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
push dword label50
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword [ebp - 280], 0
sub esp, 4 
mov dword [ebp - 284], 0
sub esp, 4 
mov dword eax, [ebp - 280]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 284]
mov dword [ebp - 288], eax
sub esp, 4 
mov dword [ebp - 292], 1
sub esp, 4 
mov dword [ebp - 296], 1
sub esp, 4 
mov dword eax, [ebp - 292]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 296]
mov dword [ebp - 300], eax
sub esp, 4 
mov dword ecx, [ebp - 288]
add ecx, [ebp - 300]
mov dword [ebp - 304], ecx
sub esp, 4 
mov dword [ebp - 308], 2
sub esp, 4 
mov dword [ebp - 312], 2
sub esp, 4 
mov dword eax, [ebp - 308]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 312]
mov dword [ebp - 316], eax
sub esp, 4 
mov dword ecx, [ebp - 304]
add ecx, [ebp - 316]
mov dword [ebp - 320], ecx
sub esp, 4 
mov dword [ebp - 324], 3
sub esp, 4 
mov dword [ebp - 328], 3
sub esp, 4 
mov dword eax, [ebp - 324]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 328]
mov dword [ebp - 332], eax
sub esp, 4 
mov dword ecx, [ebp - 320]
add ecx, [ebp - 332]
mov dword [ebp - 336], ecx
sub esp, 4 
mov dword [ebp - 340], 4
sub esp, 4 
mov dword [ebp - 344], 4
sub esp, 4 
mov dword eax, [ebp - 340]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 344]
mov dword [ebp - 348], eax
sub esp, 4 
mov dword ecx, [ebp - 336]
add ecx, [ebp - 348]
mov dword [ebp - 352], ecx
sub esp, 4 
mov dword [ebp - 356], 5
sub esp, 4 
mov dword [ebp - 360], 5
sub esp, 4 
mov dword eax, [ebp - 356]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 360]
mov dword [ebp - 364], eax
sub esp, 4 
mov dword ecx, [ebp - 352]
add ecx, [ebp - 364]
mov dword [ebp - 368], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 368]
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
push dword label51
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword ecx, [ebp - 44]
add ecx, [ebp - 48]
mov dword [ebp - 372], ecx
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 372]
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
push dword label52
call _printf
add esp, 8
add esp, ebx
sub esp, 4 
mov dword eax, [ebp - 48]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 52]
mov dword [ebp - 376], eax
sub esp, 4 
mov dword eax, [ebp - 376]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 56]
mov dword [ebp - 380], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 380]
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
mov dword [ebp - 384], 0
sub esp, 4 
mov dword [ebp - 388], 0
sub esp, 4 
mov dword ecx, [ebp - 384]
add ecx, [ebp - 388]
mov dword [ebp - 392], ecx
mov dword edx, label4
add edx, [ebp - 392]
add edx, [ebp - 392]
add edx, [ebp - 392]
add edx, [ebp - 392]
mov dword ecx, [ebp - 60]
mov dword [edx], ecx
sub esp, 4 
mov dword [ebp - 396], 1
sub esp, 4 
mov dword [ebp - 400], 1
sub esp, 4 
mov dword eax, [ebp - 396]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 400]
mov dword [ebp - 404], eax
mov dword edx, label4
add edx, [ebp - 404]
add edx, [ebp - 404]
add edx, [ebp - 404]
add edx, [ebp - 404]
mov dword ecx, [ebp - 64]
mov dword [edx], ecx
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
mov dword [ebp - 408], 0
sub esp, 4 
mov dword [ebp - 412], 0
sub esp, 4 
mov dword ecx, [ebp - 408]
add ecx, [ebp - 412]
mov dword [ebp - 416], ecx
sub esp, 4 
mov dword [ebp - 420], 0
sub esp, 4 
mov dword ecx, [ebp - 416]
add ecx, [ebp - 420]
mov dword [ebp - 424], ecx
sub esp, 4 
mov dword edx, label4
add edx, [ebp - 424]
add edx, [ebp - 424]
add edx, [ebp - 424]
add edx, [ebp - 424]
mov dword ecx, [edx]
mov dword [ebp - 428], ecx
sub esp, 4 
mov dword [ebp - 432], 1
sub esp, 4 
mov dword [ebp - 436], 1
sub esp, 4 
mov dword eax, [ebp - 432]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 436]
mov dword [ebp - 440], eax
sub esp, 4 
mov dword [ebp - 444], 1
sub esp, 4 
mov dword eax, [ebp - 440]
mov edx, eax
and edx, 0x80000000
sar edx, 31
imul dword [ebp - 444]
mov dword [ebp - 448], eax
sub esp, 4 
mov dword edx, label4
add edx, [ebp - 448]
add edx, [ebp - 448]
add edx, [ebp - 448]
add edx, [ebp - 448]
mov dword ecx, [edx]
mov dword [ebp - 452], ecx
sub esp, 4 
mov dword ecx, [ebp - 452]
mov dword [ebp - 456], ecx
sub esp, 4 
mov dword ecx, [ebp - 428]
mov dword [ebp - 460], ecx
call code_label29gcd
sub esp, 4 
mov dword [ebp - 464], eax
mov dword ebx, esp
and ebx, 0xf
add ebx, 0x8
sub esp, ebx
push dword [ebp - 464]
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
dd `gcd a = \n\0`
label19:
dd `gcd b = \n\0`
label20:
dd `You entered \n\0`
label21:
dd `You entered \n\0`
label22:
dd `iFunc1()= \n\0`
label23:
dd `iFunc2()= \n\0`
label24:
dd `iFunc3()= \n\0`
label25:
dd `iFunc4()= \n\0`
label26:
dd `iFunc5()= \n\0`
label27:
dd `iFunc6()= \n\0`
label28:
dd `iFunc7()= \n\0`
label29:
dd `iFunc8()= \n\0`
label30:
dd `iFunc9()= \n\0`
label31:
dd `iFunc10()= \n\0`
label32:
dd `iFunc11()= \n\0`
label33:
dd `iFunc12()= \n\0`
label34:
dd `iFunc13()= \n\0`
label35:
dd `intV1 == 0\n\0`
label36:
dd `intV1 != 0\n\0`
label37:
dd `intV1 >  0\n\0`
label38:
dd `intV1 <  0\n\0`
label39:
dd `intV1 >= 0\n\0`
label40:
dd `intV1 <= 0\n\0`
label41:
dd `intV1 is true\n\0`
label42:
dd `intV1 becomes \n\0`
label43:
dd `intV2[0] is 0\n\0`
label44:
dd `intV2[0] is 0\n\0`
label45:
dd `intV2[0] is 1\n\0`
label46:
dd `intV2[0] is 0\n\0`
label47:
dd `intV2[0] is 1\n\0`
label48:
dd `intV2[0] is neither 0 nor 1\n\0`
label49:
dd `0*0+1*1+2*2+3*3+4*4+5*5 = \n\0`
label50:
dd `0*0+1*1+2*2+3*3+4*4+5*5 = \n\0`
label51:
dd `The sum of the 2 numbers you entered is \n\0`
label52:
dd `The product of the 3 numbers you entered is \n\0`
label53:
dd `The gcd of the 2 numbers you entered is \n\0`

section .bss
label3:
resd 4
label4:
resd 8
label5:
resd 4
