//
//  statement.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/15/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "grammar.hpp"

void GrammarDecoder::Statements() {
    if (ld -> LastSymbol() == constSym) {
        ConstDeclare();
    }
    if (ld -> LastSymbol() == intSym || ld -> LastSymbol() == charSym) {
        // FIXME: NextWord is not called
        
        VarDeclare();
    }
    StatementBlock();
}

void GrammarDecoder::StatementBlock() {
    while (ld -> LastSymbol() != rCurlySym) {
        // FIXME NextWord is not called
        Statement();
    }
}

void GrammarDecoder::Statement() {
    // Become statement, Func call
    if (ld -> LastWordType() == identifiers) {
        string name = ld -> LastStr();
        ld -> NextWord();
        
        if (ld -> LastSymbol() == lRoundSym) {
            ld -> NextWord();
            AllFuncCall(name);
            
            if (ld -> LastSymbol() != semiSym) {
                error(MISSING_SEMI);
            }
            else ld -> NextWord();
            
            LOG("Decoded function call");
        }
        else {
            AssignStat(name);
            
            if (ld -> LastSymbol() != semiSym) {
                error(MISSING_SEMI);
            }
            else ld -> NextWord();
            
            LOG("Decoded become statement");
        }
    }
    else if (ld -> LastSymbol() == ifSym){
        ld -> NextWord();
        IfStat();
    }
    else if (ld -> LastSymbol() == whileSym){
        ld -> NextWord();
        WhileStat();
    }
    else if (ld -> LastSymbol() == switchSym){
        ld -> NextWord();
        SwitchStat();
    }
    else if (ld -> LastSymbol() == scanfSym){
        ld -> NextWord();
        ScanfStat();
        
        if (ld -> LastSymbol() != semiSym) {
            error(MISSING_SEMI);
        }
        else ld -> NextWord();
    }
    else if (ld -> LastSymbol() == printfSym){
        ld -> NextWord();
        PrintfStat();
        
        if (ld -> LastSymbol() != semiSym) {
            error(MISSING_SEMI);
        }
        else ld -> NextWord();
    }
    else if (ld -> LastSymbol() == returnSym){
        ld -> NextWord();
        ReturnStat();
        
        if (ld -> LastSymbol() != semiSym) {
            error(MISSING_SEMI);
        }
        else ld -> NextWord();
    }
    else if (ld -> LastSymbol() == lCurlySym){
        ld -> NextWord();
        StatementBlock();
        
        if (ld -> LastSymbol() != rCurlySym) {
            error(ORPHAN_CURLY);
        }
        else ld -> NextWord();
    }
}

void GrammarDecoder::AssignStat(string name) {
    Identifier * dest, * index = NULL, * value;
    
    dest = id -> Look(name);
    if (dest == NULL) {
        dest = gid -> Look(name);
    }
    if (dest == NULL) {
        error(NO_DECLARE);
    }
    
    if (ld -> LastSymbol() == lSquareSym) {
        ld -> NextWord();
        
        index = Expression();
        
        if (ld -> LastSymbol() != rSquareSym) {
            error(ORPHAN_SQUARE);
        }
        else ld -> NextWord();
    }
    
    if (ld -> LastSymbol() != becomeSym) {
        error(MISSING_BECOME);
    }
    else ld -> NextWord();
    
    value = Expression();
    
    ge -> Assign(value, index, dest);
}

void GrammarDecoder::IfStat() {
    if (ld -> LastSymbol() != lRoundSym) {
        error(MISSING_LEFT_ROUND);
    }
    else ld -> NextWord();
    
    Expression();
    
    if (ld -> LastSymbol() == lessSym || ld -> LastSymbol() == leqSym || ld -> LastSymbol() == moreSym || ld -> LastSymbol() == meqSym || ld -> LastSymbol() == neqSym || ld -> LastSymbol() == equalSym) {
        ld -> NextWord();
        
        Expression();
    }
    
    if (ld -> LastSymbol() != rRoundSym) {
        error(ORPHAN_ROUND);
    }
    else ld -> NextWord();
    
    Statement();
    
    LOG("If statement decoded");
}

void GrammarDecoder::WhileStat() {
    if (ld -> LastSymbol() != lRoundSym) {
        error(MISSING_LEFT_ROUND);
    }
    else ld -> NextWord();
    
    Expression();

    if (ld -> LastSymbol() == lessSym || ld -> LastSymbol() == leqSym || ld -> LastSymbol() == moreSym || ld -> LastSymbol() == meqSym || ld -> LastSymbol() == neqSym || ld -> LastSymbol() == equalSym) {
        ld -> NextWord();
        
        Expression();
    }
    
    if (ld -> LastSymbol() != rRoundSym) {
        error(ORPHAN_ROUND);
    }
    else ld -> NextWord();
    
    Statement();
    
    LOG("While statement decoded");
}

void GrammarDecoder::SwitchStat() {
    if (ld -> LastSymbol() != lRoundSym) {
        error(MISSING_LEFT_ROUND);
    }
    else ld -> NextWord();
    
    Expression();
    
    if (ld -> LastSymbol() != rRoundSym) {
        error(ORPHAN_ROUND);
    }
    else ld -> NextWord();
    
    if (ld -> LastSymbol() != lCurlySym) {
        error(MISSING_LEFT_CURLY);
    }
    else ld -> NextWord();
    
    while (ld -> LastSymbol() == caseSym) {
        ld -> NextWord();
        CaseStat();
    }
    
    if (ld -> LastSymbol() == defaultSym) {
        ld -> NextWord();
        DefaultStat();
    }
    
    if (ld -> LastSymbol() != rCurlySym) {
        error(ORPHAN_CURLY);
    }
    else ld -> NextWord();
    
    LOG("Switch statement decoded");
}

void GrammarDecoder::CaseStat() {
    if (ld -> LastWordType() != numbers && ld -> LastWordType() != characters) {
        error(MISSING_CASE_VALUE);
        exit(MISSING_CASE_VALUE);
    }
    else {
        int value = ld -> LastWordType() == numbers ? ld -> LastNum() : ld -> LastChar();
        ld -> NextWord();
        LOG("Decoded a case");
    }
    if (ld -> LastSymbol() != colonSym) {
        error(MISSING_CASE_COLON);
    }
    else ld -> NextWord();
    
    Statement();
    
    LOG("Case statement decoded");
}

void GrammarDecoder::DefaultStat() {
    if (ld -> LastSymbol() != colonSym) {
        error(MISSING_CASE_COLON);
    }
    else ld -> NextWord();
    
    Statement();
    
    LOG("Default statement decoded");
}

void GrammarDecoder::ScanfStat() {
    if (ld -> LastSymbol() != lRoundSym) {
        error(MISSING_LEFT_ROUND);
    }
    else ld -> NextWord();
    
    if (ld -> LastWordType() != identifiers) {
        error(ILLEGAL_SCANF);
        exit(ILLEGAL_SCANF);
    }
    else {
        string name = ld -> LastStr();
        ld -> NextWord();
    }
    
    while (ld -> LastSymbol() == commaSym) {
        ld -> NextWord();
        
        if (ld -> LastWordType() != identifiers) {
            error(ILLEGAL_SCANF);
            exit(ILLEGAL_SCANF);
        }
        else {
            string name = ld -> LastStr();
            ld -> NextWord();
        }
    }
    
    if (ld -> LastSymbol() != rRoundSym) {
        error(ORPHAN_ROUND);
    }
    else ld -> NextWord();
    
    LOG("Scanf statement decoded");
}

void GrammarDecoder::PrintfStat() {
    if (ld -> LastSymbol() != lRoundSym) {
        error(MISSING_LEFT_ROUND);
    }
    else ld -> NextWord();
    
    if (ld -> LastWordType() == strings) {
        string temp = ld -> LastStr();
        ld -> NextWord();
        LOG("Decoded string from a printf statement: " + temp);
        
        if (ld -> LastSymbol() == commaSym) {
            ld -> NextWord();
            
            Expression();
        }
    }
    else {
        // FIXME: The first word in expression is used but NextWord is not called
        Expression();
    }
    
    if (ld -> LastSymbol() != rRoundSym) {
        error(ORPHAN_ROUND);
    }
    else ld -> NextWord();
    
    LOG("Printf statement decoded");
}

void GrammarDecoder::ReturnStat() {
    if (ld -> LastSymbol() == lRoundSym) {
        ld -> NextWord();
        
        Expression();
        
        if (ld -> LastSymbol() != rRoundSym) {
            error(ORPHAN_ROUND);
        }
        else ld -> NextWord();
    }
    
    LOG("Return statement decoded");
}
