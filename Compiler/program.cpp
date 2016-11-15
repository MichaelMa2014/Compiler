//
//  program.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/15/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "grammar.hpp"

void GrammarDecoder::Program() {
    if (ld -> LastSymbol() == constSym) {
        LOG("Call ConstDeclare");
        ConstDeclare();
    }
    if (ld -> LastSymbol() == intSym || ld -> LastSymbol() == charSym) {
        symbolNo type = ld -> LastSymbol();
        ld -> NextWord();
        
        if (ld -> LastWordType() != identifiers) {
            error(MISSING_IDENTIFIER);
        }
        
        string name = ld -> LastStr();
        ld -> NextWord();
        
        if (ld -> LastSymbol() == lRoundSym) {
            LOG("Call FuncDeclare")
            //            FuncDeclare();
        }
        else {
            LOG("Call StaticVarDeclare");
            StaticVarDeclare(type, name);
        }
    }
    while (ld -> LastSymbol() == intSym || ld -> LastSymbol() == charSym || ld -> LastSymbol() == voidSym) {
        ;
    }
}
