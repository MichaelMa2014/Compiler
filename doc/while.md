Hot tricks are used in decoding While Statement.
This is officially named "dancing esp problem".
The trick is used so that the number of offset stored in IDT accords with the offset between ebp and esp.

Consider the following example:

```C
while(i + 1 < 5) {
    i = i + 1;
}
```

Now the x86 looks like this, which is extremely ugly:
Assume `i` is stored in `[ebp - 8]`

```Assembly
begin:
    nop
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
```

Similar tricks are used with If Statement. Consider the following example

```C
if (i < 5) {
    i = i + 1;
}
else {
    i = i - 1;
}
```

The assembly code looks like the following, assuming `i` is stored in `[ebp - 8]`. Pay attention to the two `sub esp, 4` instructions that would not be executed. Those are where the disparity comes from.

```Assembly
    mov ebx, [ebp - 8]
    sub esp, 4
    mov [ebp - 12], 5
    mov ecx, [ebp - 12]
    cmp ebx, ecx
    jnb label
    sub esp, 4				; This would not be excuted should there be a jump
    mov [esp - 16], 1
    mov ecx, [esp - 8]
    sub ecx, [esp - 16]
    sub esp, 4				; This would not be excuted should there be a jump
    mov [esp - 20], ecx
    mov ecx, [esp - 20]
    mov [ebp - 8], ecx
label:
    nop                     ; just to save label
    mov ebx, ebp
    sub ebx, esp			; ebx = ebp - esp = 12
    mov ecx, 20				; 20 is the offset stored in IDT
    sub ecx, ebx			; ecx = 20 - 12
    sub esp, ecx			; make up the disparity, which is exactly 8
    sub esp, 4
    mov [esp - 24], 1
    mov ecx, [esp - 8]
    add ecx, [esp - 24]
    sub esp, 4
    mov [esp - 28], ecx
    mov ecx, [esp - 28]
    mov [ebp - 8], ecx
```
