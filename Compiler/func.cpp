//
//  grammar.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/15/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "grammar.hpp"

void GrammarDecoder::Param() {
    return;
}

void GrammarDecoder::FuncDeclare(symbolNo type, string name) {
    Param();
    
    if (ld -> LastSymbol() != rRoundSym) {
        ERR("Missing right round bracket");
    }
    else ld -> NextWord();
    
    if (ld -> LastSymbol() != lCurlySym) {
        ERR("Missing left curly bracket");
    }
    else ld -> NextWord();
    
    Statements();
    
    if (ld -> LastSymbol() != rCurlySym) {
        ERR("Missing right curly bracket");
    }
    else ld -> NextWord();
}

void GrammarDecoder::VoidFuncDeclare(symbolNo type, string name) {
    
}

void GrammarDecoder::ValueParam() {
    
}

void GrammarDecoder::FuncCall(string name) {

}

void GrammarDecoder::VoidFuncCall() {
    
}
