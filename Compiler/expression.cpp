//
//  expression.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/15/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "grammar.hpp"

void GrammarDecoder::Expression() {
    if (ld -> LastSymbol() == plusSym) {
        ld -> NextWord();
    }
    else if (ld -> LastSymbol() == minusSym) {
        ld -> NextWord();
    }
    else do {
        Term();
        ld -> NextWord();
    } while (ld -> LastSymbol() == plusSym || ld -> LastSymbol() == minusSym);
}

void GrammarDecoder::Term() {
    do {
        Factor();
        ld -> NextWord();
    } while (ld -> LastSymbol() == multiSym || ld -> LastSymbol() == divideSym);
}

void GrammarDecoder::Factor() {
    if (ld -> LastWordType() == identifiers) {
        string name = ld -> LastStr();
        ld -> NextWord();
        if (ld -> LastSymbol() == lSquareSym) {
            ld -> NextWord();
            
            int index;
            Expression();
            
            if (ld -> LastSymbol() != rSquareSym) {
                ERR("Missing right square bracket");
            }
            else ld -> NextWord();
            LOG("Matrix member as factor");
        }
        else if (ld -> LastSymbol() == lRoundSym) {
            FuncCall(name);
            
            if (ld -> LastSymbol() != rRoundSym) {
                ERR("Missing right round bracket");
            }
            else ld -> NextWord();
            LOG("Function call as factor");
        }
    }
    else if (ld -> LastSymbol() == lRoundSym) {
        Expression();
        
        if (ld -> LastSymbol() != rRoundSym) {
            ERR("Missing right round bracket");
        }
        else ld -> NextWord();
    }
    else if (ld -> LastWordType() == numbers) {
        LOG("Numbers as factor");
    }
    else if (ld -> LastWordType() == characters) {
        LOG("Character as factor");
    }
    else ERR("Illegal word for a factor");
}
