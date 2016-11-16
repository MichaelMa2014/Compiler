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
    symbolString[10] = "mainSym";
    symbolString[11] = "scanfSym";
    symbolString[12] = "printfSym";
    symbolString[13] = "returnSym";
    symbolString[14] = "plusSym";
    symbolString[15] = "minusSym";
    symbolString[16] = "multiSym";
    symbolString[17] = "divideSym";
    symbolString[18] = "lRoundSym";
    symbolString[19] = "rRoundSym";
    symbolString[20] = "lSquareSym";
    symbolString[21] = "rSquareSym";
    symbolString[22] = "lCurlySym";
    symbolString[23] = "rCurlySym";
    symbolString[24] = "lessSym";
    symbolString[25] = "leqSym";
    symbolString[26] = "moreSym";
    symbolString[27] = "meqSym";
    symbolString[28] = "neqSym";
    symbolString[29] = "equalSym";
    symbolString[30] = "becomeSym";
    symbolString[31] = "singleQSym";
    symbolString[32] = "doubleQSym";
    symbolString[33] = "semiSym";
    symbolString[34] = "colonSym";
    symbolString[35] = "commaSym";
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
    dictionary["main"] = mainSym;
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
