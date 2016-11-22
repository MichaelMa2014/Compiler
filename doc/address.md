Here we will design how addresses are assigned to identifiers.

Characters and Integers are treated identically, each have 4 bytes.

Strings are always constant, so they will always be stored in `.data` section.

Global constants and variables will be stored in `.data` and `.bss` sections respectively, both with a label to access them. As a result, `Grammar Decoder` should generate `dd` instructions to allocate spaces for them, append labels properly and store the labels in `addr` field in `Identifier Table`.

Local constants and variables will be stored on stack. They will be accessed by their offset to `%ebp`. According to `cdecl`IA-32 Function-call Conventions, each function will store the caller's `%ebp` at `[%ebp]`. The first local variable is thus stored at `[%ebp - 4]`, the second one at `[%ebp - 8]` and so on. This inspires us to store this offset as an integer in `Identifier Table`. Also, `Identifier Table` should keep a counter to make sure addresses are unique to each other and call `Generator` to move `%esp` accordingly.
