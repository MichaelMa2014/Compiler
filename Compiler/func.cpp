//
//  grammar.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/15/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "grammar.hpp"

Parameter GrammarDecoder::Param() {
    Parameter list;
    list.clear();
    
    if (ld -> LastSymbol() == intSym || ld -> LastSymbol() == charSym) {
        symbolNo type = ld -> LastSymbol();
        ld -> NextWord();
        
        if (ld -> LastWordType() != identifiers) {
            error(MISSING_IDENTIFIER);
            exit(MISSING_IDENTIFIER);
        }
        else {
            string name = ld -> LastStr();
            ld -> NextWord();
            
            if (type == intSym) {
                id -> EnterInt(name);
                list.push_back(intId);
                LOG("Int Parameter logged " + name);
            }
            else {
                id -> EnterChar(name);
                list.push_back(charId);
                LOG("Char Parameter logged " + name);
            }
        }
    }
    while (ld -> LastSymbol() == commaSym) {
        ld -> NextWord();
        
        if (ld -> LastSymbol() == intSym || ld -> LastSymbol() == charSym) {
            symbolNo type = ld -> LastSymbol();
            ld -> NextWord();
            
            if (ld -> LastWordType() != identifiers) {
                error(MISSING_IDENTIFIER);
                exit(MISSING_IDENTIFIER);
            }
            else {
                string name = ld -> LastStr();
                ld -> NextWord();
                
                if (type == intSym) {
                    id -> EnterInt(name);
                    list.push_back(intId);
                    LOG("Int Parameter logged " + name);
                }
                else {
                    id -> EnterChar(name);
                    list.push_back(charId);
                    LOG("Char Parameter logged " + name);
                }
            }
        }
    }
    
    return list;
}

void GrammarDecoder::FuncDeclare(symbolNo type, string name) {
    id = new IdentifierTable();
    
    Parameter list = Param();
    
    if (ld -> LastSymbol() != rRoundSym) {
        error(ORPHAN_ROUND);
    }
    else ld -> NextWord();
    
    if (ld -> LastSymbol() != lCurlySym) {
        error(MISSING_LEFT_CURLY);
    }
    else ld -> NextWord();
    
    Statements();
    
    if (ld -> LastSymbol() != rCurlySym) {
        error(ORPHAN_CURLY);
    }
    else ld -> NextWord();
    
    if (type == intSym) {
        gid -> EnterInt(name, list);
    }
    else {
        gid -> EnterChar(name, list);
    }
    LOG("Decoded a function declaration");
    
    delete id;
    id = NULL;
}

void GrammarDecoder::VoidFuncDeclare(string name) {
    id = new IdentifierTable();
    
    Parameter list = Param();
    
    if (ld -> LastSymbol() != rRoundSym) {
        error(ORPHAN_ROUND);
    }
    else ld -> NextWord();
    
    if (ld -> LastSymbol() != lCurlySym) {
        error(MISSING_LEFT_CURLY);
    }
    else ld -> NextWord();
    
    Statements();
    
    if (ld -> LastSymbol() != rCurlySym) {
        error(ORPHAN_CURLY);
    }
    else ld -> NextWord();
    
    gid -> EnterFunc(name, list);
    LOG("Decoded a void function declaration");
    
    delete id;
    id = NULL;
}

void GrammarDecoder::ValueParam() {
    if (ld -> LastSymbol() == rRoundSym) {
        return;
        // FIXME: This is a trick becasue the last word is used but NextWord is not called
    }
    
    Expression();
    LOG("Decoded a value parameter");
    
    while (ld -> LastSymbol() == commaSym) {
        ld -> NextWord();
        Expression();
        LOG("Decoded a value parameter");
    }
}

void GrammarDecoder::FuncCall(string name) {
    ValueParam();
    if (ld -> LastSymbol() != rRoundSym) {
        error(ORPHAN_ROUND);
    }
    else ld -> NextWord();
}

void GrammarDecoder::VoidFuncCall(string name) {
    ValueParam();
    if (ld -> LastSymbol() != rRoundSym) {
        error(ORPHAN_ROUND);
    }
    else ld -> NextWord();
}

void GrammarDecoder::AllFuncCall(string name) {
    ValueParam();
    if (ld -> LastSymbol() != rRoundSym) {
        error(ORPHAN_ROUND);
    }
    else ld -> NextWord();
}
