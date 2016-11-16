# generate dictionary

# please pay attention to the \\\ in quote sign
Name = [
    '',
    'void', 'const', 'int', 'char', 'switch', 'case', 'default', 'if', 'while',
    'scanf', 'printf', 'return',
    '+', '-', '*', '/',
    '(', ')', '[', ']', '{', '}',
    '<', '<=', '>', '>=','!=', '==', '=',
    '\\\'', '\\\"', ';', ':', ','
]

No = [
    'ndef',
    'voidSym', 'constSym', 'intSym', 'charSym', 'switchSym', 'caseSym', 'defaultSym', 'ifSym', 'whileSym',
    'scanfSym', 'printfSym', 'returnSym',
    'plusSym', 'minusSym', 'multiSym', 'divideSym',
    'lRoundSym', 'rRoundSym', 'lSquareSym', 'rSquareSym', 'lCurlySym', 'rCurlySym',
    'lessSym', 'leqSym', 'moreSym', 'meqSym', 'neqSym', 'equalSym', 'becomeSym',
    'singleQSym', 'doubleQSym', 'semiSym', 'colonSym', 'commaSym'
]
#######################
# init.hpp

# WORDNUM macro
print ('#define WORDNUM ' + str(len(Name)))

# generate enum definition
print ('enum symbolNo {' + No[0], end = '')
for i in range(1, len(No)):
    print (', ' + No[i], end = '')
print ('};')

#######################
# init.cpp
print ('void init() {')
# store names
for i in range(0, len(Name)):
    print ('    symbolString[' + str(i) + '] = "' + No[i] + '";')

# generate dictionary definition
for i in range(0, len(Name)):
    print ('    dictionary["' + Name[i] + '"] = ' + No[i] + ';')
print ('}')

