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
            ERR(MISSING_SEMI);
        }
        else ld -> NextWord();
    }
}

void GrammarDecoder::ConstDefine() {
    if (ld -> LastSymbol() != intSym && ld -> LastSymbol() != charSym) {
        ERR("No int or char after const");
        exit(-1);
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
            error(MISSING_EQUAL);
        }
        else ld -> NextWord();
        
        if (ld -> LastWordType() != numbers && ld -> LastWordType() != characters) {
            error(MISSING_VALUE);
            exit(MISSING_VALUE);
        }
        
        if (type == intSym) {
            int value = ld -> LastNum();
            LOG("Found constant int " + name);
        }
        else {
            char value = ld -> LastChar();
            LOG("Found constant char " + name);
        }
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
                ERR("Missing numbers after left square bracket");
                exit(-1);
            }
            
            size = ld -> LastNum();
            if (size == 0) {
                ERR("Illegal size for matrix");
            }
            ld -> NextWord();
            
            if (ld -> LastSymbol() != rSquareSym) {
                ERR("Missing right square bracket");
            }
            else ld -> NextWord();
        }
        
        if (size == 0) {
            if (type == intSym) {
                LOG("Found variable int " + name);
            }
            else {
                LOG("Found variable char " + name);
            }
        }
        else {
            if (type == intSym) {
                LOG("Found matrix int " + name);
            }
            else {
                LOG("Found matrix char " + name);
            }
        }
    } while (ld -> LastSymbol() == commaSym);
}

void GrammarDecoder::StaticVarDeclare(symbolNo type, string name) {
    StaticVarDefine(type, name);
    if (ld -> LastSymbol() != semiSym) {
        error(MISSING_SEMI);
    }
    else ld -> NextWord();
    
    while (ld -> LastSymbol() == intSym || ld -> LastSymbol() == charSym) {
        symbolNo type = ld -> LastSymbol();
        ld -> NextWord();
        
        if (ld -> LastWordType() != identifiers) {
            error(MISSING_IDENTIFIER);
        }
        else {
            string name = ld -> LastStr();
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
        return;
    }
    else if (ld -> LastSymbol() == lSquareSym) {
        int size = 0;
        ld -> NextWord();
        
        if (ld -> LastWordType() != numbers) {
            ERR("Missing numbers after left square bracket");
            exit(-1);
        }
        
        size = ld -> LastNum();
        if (size == 0) {
            ERR("Illegal size for matrix");
        }
        ld -> NextWord();
        
        if (ld -> LastSymbol() != rSquareSym) {
            ERR("Missing right square bracket");
        }
        else ld -> NextWord();
        
        if (type == intSym) {
            LOG("Found matrix int " + name);
        }
        else {
            LOG("Found matrix char " + name);
        }
    }
    else {
        if (type == intSym) {
            LOG("Found variable int " + name);
        }
        else {
            LOG("Found variable char " + name);
        }
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
                ERR("Missing numbers after left square bracket");
                exit(-1);
            }
            
            size = ld -> LastNum();
            if (size == 0) {
                ERR("Illegal size for matrix");
            }
            ld -> NextWord();
            
            if (ld -> LastSymbol() != rSquareSym) {
                ERR("Missing right square bracket");
            }
            else ld -> NextWord();
        }
        
        if (size == 0) {
            if (type == intSym) {
                LOG("Found variable int " + name);
            }
            else {
                LOG("Found variable char " + name);
            }
        }
        else {
            if (type == intSym) {
                LOG("Found matrix int " + name);
            }
            else {
                LOG("Found matrix char " + name);
            }
        }
    }

}
