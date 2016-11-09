The source **program** is composed of several **sentences**

A **sentence** is composed of several **words**

All **words** are divided into 5 **categories**

1. **Symbols** are reserve **words** defined by compiler.

    There are several symbols, each has a **name** and a **number**. For exmaple, `const` is a reserve word, its **name** is `"const"` as a string, and its **number**, defined in `enum symbolNo`, is `0` as a number. The number of a symbol is `dictionary[name]`, and the name of a symbol is `symbolString[number]`.

2. **Identifiers** are **words** defined by the source file.

    Identifiers are stored in a table maintained by the compiler, called **Identifier Table**.

    There are several **types** of identifiers. The type of a indentifies is one of the following: **variable**, **constant** , **matrix** and **function**. Base on how the data is stored, there are 2 **kinds** of identifiers, `int` and `char`. This is defined by the grammar.

3. **Strings** are **words** bracketed by double quote signs in the source file

4. **Numbers** are **words** composed only of digits

5. A **character** is one of the following bracketed by singal quote signs
```
    $%&'()*+,-/0123456789:;<=>@
    ABCDEFGHIJKLMNOPQRSTUVWXYZ
    abcdefghijklmnopqrstuvwxyz
    "[\]^_`{|}~
```


