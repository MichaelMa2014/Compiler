There are several error defined in the compiler.

| No   | Description                                                       | Compiler Behaviour                       |
| ---- | ----------------------------------------------------------------- | ---------------------------------------- |
| 000  | Unexpected end of source file | Shut down |
| 001  | One line is too long in source file | Shut down |
| 100  | Illegal character in source file | The character is ignored |
| 101  | Reached end of line before finding another double quote | The second double quote is added at the end of the line |
| 102  | The second character after one single quote is not a single quote | The single quote is added and the character right after the first single quote is treated as a character constant |
| 103  | Illegal character used as character constant | Shut down |
| 104  | Number constant is too long for int | Shut down |
| 200  | An semi colon sign is missing | Act as if normal |
| 201  | An left curly bracket is missing | Act as if normal |
| 202  | An left round bracket is missing | Act as if normal |
| 203  | A square bracket is missing | Act as if normal |
| 204  | A round bracket is missing | Act as if normal |
| 205  | A curly bracket is missing | Act as if normal |
| 206  | No int or char after const | Shut down |
| 207  | No identifier found following int or char | Shut down |
| 208  | No become sign found in constant definition | Add an equal sign right after the identifier |
| 209  | No value found in constant definition | Shut down |
| 210  | No number found following left square bracket | Shut down |
| 211  | Illegal size for matrix definition | Shut down |
| 212  | Illegal word for factor | Shut down |
| 213  | No value found following case symbol | Shut down |
| 214  | No colon sign found following case value or default symbol | Act as if normal |
| 215  | Missing identifier in scanf statement | Shut down |
