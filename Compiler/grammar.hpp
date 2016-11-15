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
    GrammarDecoder(LexicalDecoder * l) {
        this -> ld = l;
    }
    void Program();
    void Main();
    
    void ConstDeclare();
    void ConstDefine();
    void StaticVarDeclare(symbolNo type, string name);
    void StaticVarDefine(symbolNo type, string name);
    void VarDeclare();
    void VarDefine();
    
    void Param();
    void FuncDeclare(symbolNo type, string name);
    void VoidFuncDeclare(symbolNo type, string name);
    void ValueParam();
    void FuncCall(string name);
    void VoidFuncCall();
    
    void Statements();
    void IfStat();
    void WhileStat();
    void SwitchStat();
    void CaseStat();
    void DefaultStat();
    void BecomeStat();
    void ScanfStat();
    void PrintfStat();
    void ReturnStat();
    
    void Expression();
    void Term();
    void Factor();
};

#endif /* grammar_hpp */
