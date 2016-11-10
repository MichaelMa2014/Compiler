# lexical.cpp
for i in range(0, len(Name)):
    if (len(Name[i]) == 1):
        print ('else if (lastLine[pointer] == \'' + Name[i] + '\') {')
        print ('    pointer++;')
        print ('    lastWord = symbols;')
        print ('    lastSymbol = ' + Type[i] + ';')
        print ('    lastStr = "";')
        print ('    lastNum = 0;')
        print ('    lastChar = \'\\0\';')
        print ('}')
