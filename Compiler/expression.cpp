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
    
    Term();
    
    while (ld -> LastSymbol() == plusSym || ld -> LastSymbol() == minusSym) {
        ld -> NextWord();
        Term();
    }
}

void GrammarDecoder::Term() {
    Factor();
    
    while (ld -> LastSymbol() == multiSym || ld -> LastSymbol() == divideSym) {
        ld -> NextWord();
        Factor();
    }
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
            ld -> NextWord();
            FuncCall(name);

            LOG("Function call as factor");
        }
        else {
            LOG("Identifier as factor");
        }
    }
    else if (ld -> LastSymbol() == lRoundSym) {
        ld -> NextWord();
        Expression();
        
        if (ld -> LastSymbol() != rRoundSym) {
            ERR("Missing right round bracket");
        }
        else ld -> NextWord();
    }
    else if (ld -> LastWordType() == numbers) {
        ld -> NextWord();
        
        LOG("Numbers as factor");
    }
    else if (ld -> LastWordType() == characters) {
        ld -> NextWord();
        
        LOG("Character as factor");
    }
    else ERR("Illegal word for a factor");
}
