//
//  statement.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/15/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "grammar.hpp"

extern string itoa(int i);

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
    
    Identifier * condition1 = Expression();
    Identifier * condition2 = NULL;
    
    symbolNo logicOp = ndef;
    if (ld -> LastSymbol() == lessSym || ld -> LastSymbol() == leqSym || ld -> LastSymbol() == moreSym || ld -> LastSymbol() == meqSym || ld -> LastSymbol() == neqSym || ld -> LastSymbol() == equalSym) {
        logicOp = ld -> LastSymbol();
        
        ld -> NextWord();
        
        condition2 = Expression();
    }

    if (ld -> LastSymbol() != rRoundSym) {
        error(ORPHAN_ROUND);
    }
    else ld -> NextWord();
    
    if (condition2 == NULL) {
        condition2 = ge -> NumberConstant(0);
        logicOp = neqSym;
    }
    
    string label = "code_label" + itoa(label_count++);
    ge -> Jump(logicOp, condition1, condition2, label);
    
    Statement();
    
    ge -> LabelledNop(label);
    
    ge -> Align(id -> Offset());
    
    LOG("If statement decoded");
}

void GrammarDecoder::WhileStat() {
    if (ld -> LastSymbol() != lRoundSym) {
        error(MISSING_LEFT_ROUND);
    }
    else ld -> NextWord();
    
    string start = "while_label" + itoa(label_count++);
    ge -> LabelledNop(start);
    
    int inito1 = id -> Offset();
    
    Identifier * condition1 = Expression();
    Identifier * condition2 = NULL;
    
    symbolNo logicOp = ndef;
    if (ld -> LastSymbol() == lessSym || ld -> LastSymbol() == leqSym || ld -> LastSymbol() == moreSym || ld -> LastSymbol() == meqSym || ld -> LastSymbol() == neqSym || ld -> LastSymbol() == equalSym) {
        logicOp = ld -> LastSymbol();
        
        ld -> NextWord();
        
        condition2 = Expression();
    }
    
    if (condition2 == NULL) {
        condition2 = ge -> NumberConstant(0);
        logicOp = neqSym;
    }
    
    string end = "while_label" + itoa(label_count++);
    ge -> Jump(logicOp, condition1, condition2, end);
    
    // FIXIT: This is a hot trick
    int inito2 = id -> Offset();
    
    if (ld -> LastSymbol() != rRoundSym) {
        error(ORPHAN_ROUND);
    }
    else ld -> NextWord();
    
    Statement();
    
    int endo = id -> Offset();
    
    for (int i = inito1; i < endo; i += 4) {
        ge -> ReleaseStack();
    }
    
    ge -> Jump(start);
    ge -> LabelledNop(end);
    
    for (int i = inito2; i < endo; i += 4) {
        ge -> AllocateStack();
    }
    
    LOG("While statement decoded");
}

void GrammarDecoder::SwitchStat() {
    if (ld -> LastSymbol() != lRoundSym) {
        error(MISSING_LEFT_ROUND);
    }
    else ld -> NextWord();
    
    Identifier * condition = Expression();
    
    if (ld -> LastSymbol() != rRoundSym) {
        error(ORPHAN_ROUND);
    }
    else ld -> NextWord();
    
    if (ld -> LastSymbol() != lCurlySym) {
        error(MISSING_LEFT_CURLY);
    }
    else ld -> NextWord();
    
    string exit = "switch_label" + itoa(label_count++);
    
    while (ld -> LastSymbol() == caseSym) {
        ld -> NextWord();
        CaseStat(condition, exit);
    }
    
    if (ld -> LastSymbol() == defaultSym) {
        ld -> NextWord();
        DefaultStat(exit);
    }
    
    if (ld -> LastSymbol() != rCurlySym) {
        error(ORPHAN_CURLY);
    }
    else ld -> NextWord();
    
    ge -> LabelledNop(exit);
    ge -> Align(id -> Offset());
    
    LOG("Switch statement decoded");
}

void GrammarDecoder::CaseStat(Identifier * condition1, string e) {
    Identifier * condition2;
    if (ld -> LastWordType() != numbers && ld -> LastWordType() != characters) {
        error(MISSING_CASE_VALUE);
        exit(MISSING_CASE_VALUE);
    }
    else {
        int value = ld -> LastWordType() == numbers ? ld -> LastNum() : ld -> LastChar();
        condition2 = ge -> NumberConstant(value);
        
        ld -> NextWord();
        LOG("Decoded a case");
    }
    if (ld -> LastSymbol() != colonSym) {
        error(MISSING_CASE_COLON);
    }
    else ld -> NextWord();
    
    string next = "case_label" + itoa(label_count++);
    
    ge -> Jump(equalSym, condition1, condition2, next);
    
    Statement();
    
    ge -> Jump(e);
    ge -> LabelledNop(next);
    
    ge -> Align(id -> Offset());
    
    LOG("Case statement decoded");
}

void GrammarDecoder::DefaultStat(string e) {
    if (ld -> LastSymbol() != colonSym) {
        error(MISSING_CASE_COLON);
    }
    else ld -> NextWord();
    
    Statement();
    
    ge -> Jump(e);
    
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
        
        Identifier * dest = id -> Look(name);
        if (dest == NULL) {
            dest = gid -> Look(name);
        }
        if (dest == NULL) {
            error(NO_DECLARE);
        }
        ge -> Scan(dest);
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
            
            Identifier * dest = id -> Look(name);
            if (dest == NULL) {
                dest = gid -> Look(name);
            }
            if (dest == NULL) {
                error(NO_DECLARE);
            }
            ge -> Scan(dest);
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
    
    string temp;
    temp.clear();
    Identifier * source = NULL;
    
    if (ld -> LastWordType() == strings) {
        temp = ld -> LastStr();
        ld -> NextWord();
        
        ge -> PrintString(gid -> EnterString(temp));
        LOG("Decoded string from a printf statement: " + temp);
        
        if (ld -> LastSymbol() == commaSym) {
            ld -> NextWord();
            
            source = Expression();
        }
    }
    else {
        // FIXME: The first word in expression is used but NextWord is not called
        source = Expression();
    }
    
    if (ld -> LastSymbol() != rRoundSym) {
        error(ORPHAN_ROUND);
    }
    else ld -> NextWord();
    
    if (source != NULL) ge -> Print(source);
    
    LOG("Printf statement decoded");
}

void GrammarDecoder::ReturnStat() {
    Identifier * value = NULL;
    if (ld -> LastSymbol() == lRoundSym) {
        ld -> NextWord();
        
        value = Expression();
        
        if (ld -> LastSymbol() != rRoundSym) {
            error(ORPHAN_ROUND);
        }
        else ld -> NextWord();
    }
    
    ge -> ReturnStatement(value);
    id -> ReturnStack();
    ge -> RET();
    LOG("Return statement decoded");
}
