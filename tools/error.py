error0 = [
          ['UNEXPECTED_END', 'Unexpected end of source file', 'Shut down'],
          ['LINE_TOO_LONG', 'One line is too long in source file', 'Shut down']
]
error1 = [
          ['ILLEGAL_CHARACTER', 'Illegal character in source file', 'The character is ignored'],
          ['ORPHAN_DOUBLE_QUOTE', 'Reached end of line before finding another double quote', 'The second double quote is added at the end of the line'],
          ['ORPHAN_SINGLE_QUOTE', 'The second character after one single quote is not a single quote', 'The single quote is added and the character right after the first single quote is treated as a character constant'],
          ['ILLEGAL_CHARACTER_CONST', 'Illegal character used as character constant', 'Shut down'],
          ['NUMBER_TOO_LONG', 'Number constant is too long for int', 'Shut down']
]

error2 = [
          ['MISSING_SEMI', 'An semi colon sign is missing', 'Act as if normal'],
          ['MISSING_LEFT_CURLY', 'An left curly bracket is missing', 'Act as if normal'],
          ['MISSING_LEFT_ROUND', 'An left round bracket is missing', 'Act as if normal'],
          ['ORPHAN_SQUARE', 'A square bracket is missing', 'Act as if normal'],
          ['ORPHAN_ROUND', 'A round bracket is missing', 'Act as if normal'],
          ['ORPHAN_CURLY', 'A curly bracket is missing', 'Act as if normal'],
          ['MISSING_TYPE', 'No int or char after const', 'Shut down'],
          ['MISSING_IDENTIFIER', 'No identifier found following int or char', 'Shut down'],
          ['MISSING_BECOME', 'No become sign found in constant definition', 'Add an equal sign right after the identifier'],
          ['MISSING_VALUE', 'No value found in constant definition', 'Shut down'],
          ['MISSING_SIZE', 'No number found following left square bracket', 'Shut down'],
          ['ILLEGAL_SIZE', 'Illegal size for matrix definition', 'Shut down'],
          ['ILLEGAL_FACTOR', 'Illegal word for factor', 'Shut down'],
          ['MISSING_CASE_VALUE', 'No value found following case symbol', 'Shut down'],
          ['MISSING_CASE_COLON', 'No colon sign found following case value or default symbol', 'Act as if normal'],
          ['ILLEGAL_SCANF', 'Missing identifier in scanf statement', 'Shut down']
]

error3 = [
          ['DOUBLE_DECLARE', 'An identifier is declared twice', 'The second declaration is ignored'],
          ['NO_DECLARE', 'An identifier is refered to before any declaration', 'The statement containing the reference is ignored'],
          ['MISMATCH_PARAM', 'Too few or too many parameters passed to a function', 'Shut down']
]

def pad(i):
    if (i >= 10 and i < 100):
        return str(i)
    if (i >= 0 and i < 10):
        return '0' + str(i)
    return '*'

# error.hpp
for i in range(0, len(error0)):
    print ('#define ' + error0[i][0] + ' ' + '0' + pad(i))
for i in range(0, len(error1)):
    print ('#define ' + error1[i][0] + ' ' + '1' + pad(i))
for i in range(0, len(error2)):
    print ('#define ' + error2[i][0] + ' ' + '2' + pad(i))
for i in range(0, len(error3)):
    print ('#define ' + error3[i][0] + ' ' + '3' + pad(i))

# error.cpp
for i in range(0, len(error0)):
    print ('case 0' + pad(i) + ':')
    print ('    ERR("0' + pad(i) + ': ' + error0[i][1] + '");')
    print ('    break;')
for i in range(0, len(error1)):
    print ('case 1' + pad(i) + ':')
    print ('    ERR("1' + pad(i) + ': ' + error1[i][1] + '");')
    print ('    break;')
for i in range(0, len(error2)):
    print ('case 2' + pad(i) + ':')
    print ('    ERR("2' + pad(i) + ': ' + error2[i][1] + '");')
    print ('    break;')
for i in range(0, len(error3)):
    print ('case 3' + pad(i) + ':')
    print ('    ERR("3' + pad(i) + ': ' + error3[i][1] + '");')
    print ('    break;')

# error.md
for i in range(0, len(error0)):
    print ('| 0' + pad(i) + '  | ' + error0[i][1] + ' | ' + error0[i][2] + ' |')
for i in range(0, len(error1)):
    print ('| 1' + pad(i) + '  | ' + error1[i][1] + ' | ' + error1[i][2] + ' |')
for i in range(0, len(error2)):
    print ('| 2' + pad(i) + '  | ' + error2[i][1] + ' | ' + error2[i][2] + ' |')
for i in range(0, len(error3)):
    print ('| 3' + pad(i) + '  | ' + error3[i][1] + ' | ' + error3[i][2] + ' |')

