//
//  grammar.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/15/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "grammar.hpp"

void GrammarDecoder::ConstDeclare() {
    while (ld -> LastSymbol() == constSym) {
        ld -> NextWord();
        
        LOG("Call ConstDefine");
        ConstDefine();
        
        if (ld -> LastSymbol() != semiSym) {
            error(MISSING_SEMI);
        }
        else ld -> NextWord();
    }
}

void GrammarDecoder::ConstDefine() {
    if (ld -> LastSymbol() != intSym && ld -> LastSymbol() != charSym) {
        error(MISSING_TYPE);
        exit(MISSING_TYPE);
    }
    
    symbolNo type = ld -> LastSymbol();
    
    do {
        ld -> NextWord();
        if (ld -> LastWordType() != identifiers) {
            error(MISSING_IDENTIFIER);
            exit(MISSING_IDENTIFIER);
        }
        string name = ld -> LastStr();
        
        ld -> NextWord();
        if (ld -> LastSymbol() != becomeSym) {
            error(MISSING_BECOME);
        }
        else ld -> NextWord();
        
        if (ld -> LastWordType() != numbers && ld -> LastWordType() != characters) {
            error(MISSING_VALUE);
            exit(MISSING_VALUE);
        }
        
        int value = ld -> LastNum();
        
        id -> EnterConstant(name, type, value);
        
        ld -> NextWord();
    
    } while (ld -> LastSymbol() == commaSym);
}

void GrammarDecoder::VarDeclare() {
    while (ld -> LastSymbol() == intSym || ld -> LastSymbol() == charSym) {
        LOG("Call VarDefine");
        VarDefine();
        
        if (ld -> LastSymbol() != semiSym) {
            error(MISSING_SEMI);
        }
        else ld -> NextWord();
    }
}

void GrammarDecoder::VarDefine() {
    symbolNo type = ld -> LastSymbol();
    
    do {
        ld -> NextWord();
        if (ld -> LastWordType() != identifiers) {
            error(MISSING_IDENTIFIER);
            exit(MISSING_IDENTIFIER);
        }
        string name = ld -> LastStr();
        ld -> NextWord();
        
        int size = 0;
        if (ld -> LastSymbol() == lSquareSym) {
            ld -> NextWord();
            
            if (ld -> LastWordType() != numbers) {
                error(MISSING_SIZE);
                exit(MISSING_SIZE);
            }
            
            size = ld -> LastNum();
            if (size == 0) {
                error(ILLEGAL_SIZE);
                exit(ILLEGAL_SIZE);
            }
            ld -> NextWord();
            
            if (ld -> LastSymbol() != rSquareSym) {
                error(ORPHAN_SQUARE);
            }
            else ld -> NextWord();
        }
        
        id -> EnterVariable(name, type, size);
        
        LOG("Found variable or matrix");
    } while (ld -> LastSymbol() == commaSym);
}

void GrammarDecoder::StaticVarDeclare(symbolNo type, string name) {
    StaticVarDefine(type, name);
    if (ld -> LastSymbol() != semiSym) {
        error(MISSING_SEMI);
    }
    else ld -> NextWord();
    
    while (ld -> LastSymbol() == intSym || ld -> LastSymbol() == charSym) {
        type = ld -> LastSymbol();
        ld -> NextWord();
        
        if (ld -> LastWordType() != identifiers) {
            error(MISSING_IDENTIFIER);
        }
        else {
            name = ld -> LastStr();
            ld -> NextWord();
        }
        
        if (ld -> LastSymbol() == lRoundSym) {
            ld -> NextWord();
            
            FuncDeclare(type, name);
            break;
        }
        
        StaticVarDefine(type, name);
    }
}

void GrammarDecoder::StaticVarDefine(symbolNo type, string name) {
    if (ld -> LastSymbol() == semiSym) {
        ld -> NextWord();
        
        id -> EnterVariable(name, type, 0);
        return;
    }
    else if (ld -> LastSymbol() == lSquareSym) {
        int size = 0;
        ld -> NextWord();
        
        if (ld -> LastWordType() != numbers) {
            error(MISSING_SIZE);
            exit(MISSING_SIZE);
        }
        
        size = ld -> LastNum();
        if (size == 0) {
            error(ILLEGAL_SIZE);
            exit(ILLEGAL_SIZE);
        }
        ld -> NextWord();
        
        if (ld -> LastSymbol() != rSquareSym) {
            error(ORPHAN_SQUARE);
        }
        else ld -> NextWord();
        
        id -> EnterVariable(name, type, size);
            
        LOG("Found static matrix");
    }
    else {
        id -> EnterVariable(name, type, 0);
    
        LOG("Found static variable");
    }
    while (ld -> LastSymbol() == commaSym) {
        ld -> NextWord();
        if (ld -> LastWordType() != identifiers) {
            error(MISSING_IDENTIFIER);
            exit(MISSING_IDENTIFIER);
        }
        name = ld -> LastStr();
        ld -> NextWord();
        
        int size = 0;
        if (ld -> LastSymbol() == lSquareSym) {
            ld -> NextWord();
            
            if (ld -> LastWordType() != numbers) {
                error(MISSING_SIZE);
                exit(MISSING_SIZE);
            }
            
            size = ld -> LastNum();
            if (size == 0) {
                error(ILLEGAL_SIZE);
                exit(ILLEGAL_SIZE);
            }
            ld -> NextWord();
            
            if (ld -> LastSymbol() != rSquareSym) {
                error(ORPHAN_SQUARE);
            }
            else ld -> NextWord();
        }
        
        id -> EnterVariable(name, type, size);
        
        LOG("Found variable or matrix");
    }

}
