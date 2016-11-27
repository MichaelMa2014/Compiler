//
//  grammar.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/15/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "grammar.hpp"

extern string itoa(int i);

Parameter * GrammarDecoder::Param() {
    Parameter * list =  new Parameter();
    list -> clear();
    
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
            
            id -> EnterParam(name, type);
            
            list -> push_back(type);
        
            LOG("Parameter logged");
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
                
                id -> EnterParam(name, type);
                
                list -> push_back(type);
                
                LOG("Parameter logged");
            }
        }
    }
    
    return list;
}

void GrammarDecoder::FuncDeclare(symbolNo type, string name) {
    id = new IdentifierTable();
    ge -> SetId(id);
    
    Parameter * list = Param();
    
    if (ld -> LastSymbol() != rRoundSym) {
        error(ORPHAN_ROUND);
    }
    else ld -> NextWord();
    
    if (ld -> LastSymbol() != lCurlySym) {
        error(MISSING_LEFT_CURLY);
    }
    else ld -> NextWord();
    
    string label = "code_label" + itoa(label_count++) + name;
    ge -> LabelledNop(label);
    
    gid -> EnterFunction(name, type, list, label);
    
    Statements();
    
    if (ld -> LastSymbol() != rCurlySym) {
        error(ORPHAN_CURLY);
    }
    else ld -> NextWord();
    
    LOG("Decoded a function declaration");
    
    id -> ReturnStack();
    
//    delete id; FIXME
    id = NULL;
    
    ge -> SetId(gid);
}

void GrammarDecoder::VoidFuncDeclare(string name) {
    id = new IdentifierTable();
    ge -> SetId(id);
    
    Parameter * list = Param();
    
    if (ld -> LastSymbol() != rRoundSym) {
        error(ORPHAN_ROUND);
    }
    else ld -> NextWord();
    
    if (ld -> LastSymbol() != lCurlySym) {
        error(MISSING_LEFT_CURLY);
    }
    else ld -> NextWord();
    
    string label = "code_label" + itoa(label_count++) + name;
    ge -> LabelledNop(label);
    
    gid -> EnterFunction(name, voidSym, list, label);
    
    Statements();
    
    if (ld -> LastSymbol() != rCurlySym) {
        error(ORPHAN_CURLY);
    }
    else ld -> NextWord();
    
    LOG("Decoded a void function declaration");
    
    id -> ReturnStack();
    
//    delete id;
//    FIXME: Huge memory leak
    id = NULL;
    
    ge -> SetId(gid);
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
