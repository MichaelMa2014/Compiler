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
