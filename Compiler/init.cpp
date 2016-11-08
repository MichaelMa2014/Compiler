//
//  init.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/7/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "init.hpp"

map<string, symbolID> dictionary;
const char * symbolString[WORDNUM];

void init() {
    symbolString[0] = "";
    symbolString[1] = "void";
    symbolString[2] = "const";
    symbolString[3] = "int";
    symbolString[4] = "char";
    symbolString[5] = "switch";
    symbolString[6] = "case";
    symbolString[7] = "if";
    symbolString[8] = "while";
    symbolString[9] = "scanf";
    symbolString[10] = "printf";
    symbolString[11] = "return";
    symbolString[12] = "+";
    symbolString[13] = "-";
    symbolString[14] = "*";
    symbolString[15] = "/";
    symbolString[16] = "(";
    symbolString[17] = ")";
    symbolString[18] = "[";
    symbolString[19] = "]";
    symbolString[20] = "{";
    symbolString[21] = "}";
    symbolString[22] = "<";
    symbolString[23] = "<=";
    symbolString[24] = ">";
    symbolString[25] = ">=";
    symbolString[26] = "!=";
    symbolString[27] = "==";
    symbolString[28] = "=";
    symbolString[29] = "\'";
    symbolString[30] = "\"";
    symbolString[31] = ";";
    symbolString[32] = ":";
    symbolString[33] = ",";
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
