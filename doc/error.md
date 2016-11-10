There are several error defined in the compiler.

| No   | Description                              | Compiler Behaviour                       |
| ---- | ---------------------------------------- | ---------------------------------------- |
| 000  | Unexpected end of source file            | Shut down                                |
| 001  | One line is too long in source file      | Shut down                                |
| 100  | Illegal character in source file         | The character is ignored                 |
| 101  | Reached end of line before finding another double quote | The second double quote is added at the end of the line |
| 102  | The second character after one single quote is not a single quote | The single quote is added and the character right after the first single quote is treated as a character constant |
| 103  | Illegal character used as character constant | Shut down
