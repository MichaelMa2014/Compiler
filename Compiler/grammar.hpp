//
//  grammar.hpp
//  Compiler
//
//  Created by 马琛骁 on 11/15/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#ifndef grammar_hpp
#define grammar_hpp

#include "init.hpp"
#include "error.hpp"
#include "lexical.hpp"

class GrammarDecoder {
private:
    LexicalDecoder * ld;
public:
    GrammarDecoder(LexicalDecoder * l);
    void Program();
    void ConstDeclare();
    void VarDeclare();
    void FuncDeclare();
    void VoidFuncDeclare();
    void Main();
    void Param();
    void Statement();
    void IfStat();
    void WhileStat();
    void SwitchStat();
    void CaseStat();
    void DefaultStat();
    void FuncCall();
    void VoidFuncCall();
    void ValueParam();
    void BecomeStat();
    void ScanfStat();
    void PrintfStat();
    void ReturnStat();
    void Expression();
    void Term();
    void Factor();
};

#endif /* grammar_hpp */
