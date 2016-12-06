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

#### Purpose

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

#### Design

Note that the final state of memory is exactly the same before we applied this method.
There cannot be additional temporary variables.
As a result, the operands (sources) cannot be assigned.
Dealing with matrix members is also risky and complex.
So we will limit DAG to be applied only to a single expression,
whose destinations contain only (local or global) variables
and whose sources contain only all (local or global) variables and constants.

This is guaranteed by only applying DAG to several `add`, `sub`, `mul` and `div` quaternaries
that appears consecutively.
When the `optimizer` is applying DAG, it looks for these quaternaries.
When it finds one,
it constructs a `Dag` object and start putting all the following quaternaries in this object.
When it encounters the first quaternary that doesn't belong to these four categories,
it stops there and tell `Dag` to process these quaternaries and output the optimized quaternaries.
Then it destructs the `Dag` object and starts looking again, until the end of the quaternary table.

The `Dag` object keeps receiving quaternaries and constructs the graph with them.
When the `optimizer` tells it to `execute`, it processes the graph,
generate quaternaries and put them in the table.

There are 2 types of nodes in the graph.
The first one is source.
They do not have any child nodes so no quaternaries will be generated for them.
The second one is destination.
They have a left child node and a right child node.
They also have `ins`, which is how their values are calculated.
Each destination node represents at least one quaternary.
Different quaternaries share a node if they have exactly the same left child,
same right child and same `ins`.
We will generate one arithmetic quaternary for each node,
which is where optimization happens.
If there are more than one quaternary sharing one node,
the first one's destination will be the destination of the quaternary generated.
Others' destinations will be assigned directly from the first one's destination.
