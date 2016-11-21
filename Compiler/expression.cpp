//
//  expression.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/15/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "grammar.hpp"

Identifier * GrammarDecoder::Expression() {
    bool negative = false;
    
    if (ld -> LastSymbol() == plusSym) {
        ld -> NextWord();
    }
    else if (ld -> LastSymbol() == minusSym) {
        ld -> NextWord();
        negative = true;
    }
    
    Identifier * source1 = Term();
    
    while (ld -> LastSymbol() == plusSym || ld -> LastSymbol() == minusSym) {
        symbolNo type = ld -> LastSymbol();
        ld -> NextWord();
        
        Identifier * source2 = Term();
        
        source1 = ge -> PlusMinus(type, source1, source2);
    }
    
    if (negative) {
        return ge -> Negative(source1);
    }
    else return source1;
}

Identifier * GrammarDecoder::Term() {
    Identifier * source1 = Factor();
    
    while (ld -> LastSymbol() == multiSym || ld -> LastSymbol() == divideSym) {
        symbolNo type = ld -> LastSymbol();
        ld -> NextWord();
        
        Identifier * source2 = Factor();
        
        source1 = ge -> MultiplyDivide(type, source1, source2);
    }
    
    return source1;
}

Identifier * GrammarDecoder::Factor() {
    if (ld -> LastWordType() == identifiers) {
        string name = ld -> LastStr();
        
        Identifier * pointer = id -> Look(name);
        if (pointer == NULL) {
            pointer = gid -> Look(name);
        }
        if (pointer == NULL) {
            error(NO_DECLARE);
        }
        
        ld -> NextWord();
        
        if (ld -> LastSymbol() == lSquareSym) {
            ld -> NextWord();
            
            Identifier * index = Expression();
            
            if (ld -> LastSymbol() != rSquareSym) {
                error(ORPHAN_SQUARE);
            }
            else ld -> NextWord();
            
            LOG("Matrix member as factor");
            
            return ge -> MatrixMember(pointer, index);
        }
        else if (ld -> LastSymbol() == lRoundSym) {
            ld -> NextWord();
            FuncCall(name);

            LOG("Function call as factor");
            
            return ge -> FunctionCall(gid -> Look(name));
        }
        else {
            LOG("Identifier as factor");
            
            return pointer;
        }
    }
    else if (ld -> LastSymbol() == lRoundSym) {
        ld -> NextWord();
        Identifier * temp = Expression();
        
        if (ld -> LastSymbol() != rRoundSym) {
            error(ORPHAN_ROUND);
        }
        else ld -> NextWord();
        
        return temp;
    }
    else if (ld -> LastWordType() == numbers) {
        int number = ld -> LastNum();
        ld -> NextWord();
        
        LOG("Numbers as factor");
        
        return ge -> NumberConstant(number);
    }
    else if (ld -> LastWordType() == characters) {
        char character = ld -> LastChar();
        ld -> NextWord();
        
        LOG("Character as factor");
        
        return ge -> CharacterConstant(character);
    }
    else {
        cout << symbolString[ld -> LastSymbol()];
        error(ILLEGAL_FACTOR);
        exit(ILLEGAL_FACTOR);
    }
}
