macro = [
         ['000', 'UNEXPECTED_END'],
         ['001', 'LINE_TOO_LONG'],
         ['100', 'ILLEGAL_CHARACTER'],
         ['101', 'ORPHAN_DOUBLE_QUOTE'],
         ['102', 'ORPHAN_SINGLE_QUOTE'],
         ['103', 'ILLEGAL_CHARACTER_CONST']
]


# error.hpp
for error in macro:
    print ('#define ' + error[1] + ' ' + error[0])


# error.cpp
for error in macro:
    print ('case ' + error[0] + ':')
    print ('    ERR("' + error[0] + ': ' + error[1] + '");')
    print ('    break;')
