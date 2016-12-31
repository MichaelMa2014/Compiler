### Decide basic blocks

Basic blocks are defined as code blocks that has to be executed at once.
That is to say, the first line is the only entrance and the last line is the only exit.

The algorithm for deciding basic blocks is as below

1. Decide entrances first
2. The first line of the whole program is an entrance
3. Any line that can be jumped to is an entrance
4. Any line that follows a jump is an entrance
5. Lines between entrances belong to one basic blocks

Accordingly, the first line, which is either the label of the first function
or the assigning of a global constant, is an entrance.
Any line with a label is an entrance because the only scenario where a label is generated
is when a jump is required.
Any line after `jng`, `jnge`, `jnl`, `jnle`, `jnz`, `jz`, `jmp`, `call` is an entrance.

The optimizer can thus go through the whole quaternary table, stop at each label and each
jump instruction, and treat the lines between this stop and last stop as a basic block.

A basic block needs to keep the following information

1. Its begin and end line
1. Its predecessors and successors
1. Its `define` and `use` sets
1. Its `in` and `out` sets, which may change during iterations

### Predecessor and successor

We will now decide the predecessor and successor for a basic block.

Each block has one or two successors.
If the last quaternary in the block is not condition-jump, it has 2 successors.
Otherwise it has 1 successor.
If the last quaternary is `jmp`, the block directly following the block is its successor.
