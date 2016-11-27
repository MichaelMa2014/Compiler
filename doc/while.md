Hot tricks are used in decoding while statement.
This is officially named "dancing esp problem".

Consider the following example:

while(i + 1 < 5) {
    i = i + 1;
}

Now the x86 looks like this, which is extremely ungly:
Assume i is stored in [ebp - 8]

begin:
    sub esp, 4
    mov [ebp - 12], 1
    mov ecx, [ebp - 8]
    add ecx, [ebp - 12]
    sub esp, 4
    mov [ebp - 16], ecx
    sub esp, 4
    mov [ebp - 20], 5
    cmp [ebp - 16], [ebp - 20]
    jne end
    sub esp, 4
    mov [ebp - 24], 1
    mov ecx, [ebp - 8]
    add ecx, [ebp - 24]
    sub esp, 4
    mov [ebp - 28], ecx
    mov [ebp - 8], [ebp - 28]
    add esp, 4
    add esp, 4
    add esp, 4
    add esp, 4
    add esp, 4
    jmp begin
end:
    nop
    sub esp, 4
    sub esp, 4
    sub esp, 4
    sub esp, 4
    sub esp, 4
