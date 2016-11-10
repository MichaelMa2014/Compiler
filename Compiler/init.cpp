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
    symbolString[7] = "ifSym";
    symbolString[8] = "whileSym";
    symbolString[9] = "scanfSym";
    symbolString[10] = "printfSym";
    symbolString[11] = "returnSym";
    symbolString[12] = "plusSym";
    symbolString[13] = "minusSym";
    symbolString[14] = "multiSym";
    symbolString[15] = "divideSym";
    symbolString[16] = "lRoundSym";
    symbolString[17] = "rRoundSym";
    symbolString[18] = "lSquareSym";
    symbolString[19] = "rSquareSym";
    symbolString[20] = "lCurlySym";
    symbolString[21] = "rCurlySym";
    symbolString[22] = "lessSym";
    symbolString[23] = "leqSym";
    symbolString[24] = "moreSym";
    symbolString[25] = "meqSym";
    symbolString[26] = "neqSym";
    symbolString[27] = "equalSym";
    symbolString[28] = "becomeSym";
    symbolString[29] = "singleQSym";
    symbolString[30] = "doubleQSym";
    symbolString[31] = "semiSym";
    symbolString[32] = "colonSym";
    symbolString[33] = "commaSym";
    dictionary[""] = ndef;
    dictionary["void"] = voidSym;
    dictionary["const"] = constSym;
    dictionary["int"] = intSym;
    dictionary["char"] = charSym;
    dictionary["switch"] = switchSym;
    dictionary["case"] = caseSym;
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
