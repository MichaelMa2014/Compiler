### Decide basic blocks

Basic blocks are defined as code blocks that has to be executed at once.
That is to say, the first line is the only entrance and the last line is the only exit.

The algorithm for deciding basic blocks is as below

1. Decide entrances first
2. The first line of the whole program is an entrance
3. Any line that can be jumped to is an entrance
4. Any line that follows a jump is an entrance
5. Lines between entrances belong to one basic blocks

Accordingly, the first line, which is labelled by `_test` is an entrance.
Any line with a label is an entrance because the only scenario where a label is generated
is when a jump is required.
Any line after `jng`, `jnge`, `jnl`, `jnle`, `jnz`, `jz`, `jmp` is an entrance.

The optimizer can thus go through the whole quaternary table, stop at each label and each
jump instruction, and treat the lines between this stop and last stop as a basic block.

### Directed Acyclic Graph

The purpose of this optimization is to optimize the following lines

```Assembly
mov ecx, [ebp - 8]
add ecx, [ebp - 12]
mov [ebp - 16], ecx
mov ecx, [ebp - 8]			; Duplicate
add ecx, [ebp - 12]			; Duplicate
mov [ebp - 20], ecx
mov ecx, [ebp - 16]
add ecx, [ebp - 20]
mov [ebp - 24], ecx
```

into the following lines

```Assembly
mov ecx, [ebp - 8]
add ecx, [ebp - 12]
mov [ebp - 16], ecx
mov [ebp - 20], ecx
mov ecx, [ebp - 16]
add ecx, [ebp - 20]
mov [ebp - 24], ecx
```

Which is to say, DAG is used to reduce duplicated subexpressions.

Note that the final state of memory is exactly the same before we applied this method.

