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
        // FIXME: NextWord is not called
        ConstDeclare();
        LOG("Call ConstDeclare");
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
            FuncDeclare(type, name);
        }
        else {
            LOG("Call StaticVarDeclare");
            StaticVarDeclare(type, name);
        }
    }
    while (ld -> LastSymbol() == intSym || ld -> LastSymbol() == charSym || ld -> LastSymbol() == voidSym) {
        symbolNo type = ld -> LastSymbol();
        ld -> NextWord();
        
        if (ld -> LastSymbol() == mainSym) {
            ld -> NextWord();
            
            Main();
            break;
        }
        
        string name = ld -> LastStr();
        ld -> NextWord();
        
        if (ld -> LastSymbol() != lRoundSym) {
            ERR("Missing left round bracket");
        }
        else ld -> NextWord();
        
        switch (type) {
            case intSym:
            case charSym:
                FuncDeclare(type, name);
                break;
            case voidSym:
                VoidFuncDeclare(name);
            default:
                break;
        }
    }
}

void GrammarDecoder::Main() {
    if (ld -> LastSymbol() != lRoundSym) {
        ERR("Missing left round bracket after main");
    }
    else ld -> NextWord();
    if (ld -> LastSymbol() != rRoundSym) {
        ERR("Missing right round bracket after main");
    }
    else ld -> NextWord();
    if (ld -> LastSymbol() != lCurlySym) {
        ERR("Missing left curly bracket after main");
    }
    else ld -> NextWord();
    
    Statements();
    
    if (ld -> LastSymbol() != rCurlySym) {
        ERR("Missing right curly bracket");
    }
    
    LOG("Decoded main function");
}
