//
//  init.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/7/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "init.hpp"

map<string, symbolNo> dictionary;
const char * symbolString[WORDNUM];

void init() {
    symbolString[0] = "ndef";
    symbolString[1] = "voidSym";
    symbolString[2] = "constSym";
    symbolString[3] = "intSym";
    symbolString[4] = "charSym";
    symbolString[5] = "switchSym";
    symbolString[6] = "caseSym";
    symbolString[7] = "defaultSym";
    symbolString[8] = "ifSym";
    symbolString[9] = "whileSym";
    symbolString[10] = "scanfSym";
    symbolString[11] = "printfSym";
    symbolString[12] = "returnSym";
    symbolString[13] = "plusSym";
    symbolString[14] = "minusSym";
    symbolString[15] = "multiSym";
    symbolString[16] = "divideSym";
    symbolString[17] = "lRoundSym";
    symbolString[18] = "rRoundSym";
    symbolString[19] = "lSquareSym";
    symbolString[20] = "rSquareSym";
    symbolString[21] = "lCurlySym";
    symbolString[22] = "rCurlySym";
    symbolString[23] = "lessSym";
    symbolString[24] = "leqSym";
    symbolString[25] = "moreSym";
    symbolString[26] = "meqSym";
    symbolString[27] = "neqSym";
    symbolString[28] = "equalSym";
    symbolString[29] = "becomeSym";
    symbolString[30] = "singleQSym";
    symbolString[31] = "doubleQSym";
    symbolString[32] = "semiSym";
    symbolString[33] = "colonSym";
    symbolString[34] = "commaSym";
    dictionary[""] = ndef;
    dictionary["void"] = voidSym;
    dictionary["const"] = constSym;
    dictionary["int"] = intSym;
    dictionary["char"] = charSym;
    dictionary["switch"] = switchSym;
    dictionary["case"] = caseSym;
    dictionary["default"] = defaultSym;
    dictionary["if"] = ifSym;
    dictionary["while"] = whileSym;
    dictionary["scanf"] = scanfSym;
    dictionary["printf"] = printfSym;
    dictionary["return"] = returnSym;
    dictionary["+"] = plusSym;
    dictionary["-"] = minusSym;
    dictionary["*"] = multiSym;
    dictionary["/"] = divideSym;
    dictionary["("] = lRoundSym;
    dictionary[")"] = rRoundSym;
    dictionary["["] = lSquareSym;
    dictionary["]"] = rSquareSym;
    dictionary["{"] = lCurlySym;
    dictionary["}"] = rCurlySym;
    dictionary["<"] = lessSym;
    dictionary["<="] = leqSym;
    dictionary[">"] = moreSym;
    dictionary[">="] = meqSym;
    dictionary["!="] = neqSym;
    dictionary["=="] = equalSym;
    dictionary["="] = becomeSym;
    dictionary["\'"] = singleQSym;
    dictionary["\""] = doubleQSym;
    dictionary[";"] = semiSym;
    dictionary[":"] = colonSym;
    dictionary[","] = commaSym;
}
