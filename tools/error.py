macro = [
         ['000', 'UNEXPECTED_END', 'Unexpected end of source file', 'Shut down'],
         ['001', 'LINE_TOO_LONG', 'One line is too long in source file', 'Shut down'],
         ['100', 'ILLEGAL_CHARACTER', 'Illegal character in source file', 'The character is ignored'],
         ['101', 'ORPHAN_DOUBLE_QUOTE', 'Reached end of line before finding another double quote', 'The second double quote is added at the end of the line'],
         ['102', 'ORPHAN_SINGLE_QUOTE', 'The second character after one single quote is not a single quote', 'The single quote is added and the character right after the first single quote is treated as a character constant'],
         ['103', 'ILLEGAL_CHARACTER_CONST', 'Illegal character used as character constant', 'Shut down'],
         ['104', 'NUMBER_TOO_LONG', 'Number constant is too long for int', 'Shut down']
]


# error.hpp
for error in macro:
    print ('#define ' + error[1] + ' ' + error[0])


# error.cpp
for error in macro:
    print ('case ' + error[0] + ':')
    print ('    ERR("' + error[0] + ': ' + error[1] + '");')
    print ('    break;')

# error.md
for error in macro:
    print ('| ' + error[0] + '  | ' + error[2] + ' | ' + error[3] + ' |')
