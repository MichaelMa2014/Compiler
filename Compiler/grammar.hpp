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
#include "identifier_table.hpp"

class GrammarDecoder {
private:
    LexicalDecoder * ld;
    IdentifierTable * id;
    IdentifierTable * gid;
public:
    GrammarDecoder(LexicalDecoder * l, IdentifierTable * i, IdentifierTable * gi) {
        this -> ld = l;
        this -> id = i;
        this -> gid = gi;
    }
    void Program();
    void Main();
    
    void ConstDeclare();
    void ConstDefine();
    void StaticVarDeclare(symbolNo type, string name);
    void StaticVarDefine(symbolNo type, string name);
    void VarDeclare();
    void VarDefine();
    
    Parameter * Param();
    void FuncDeclare(symbolNo type, string name);
    void VoidFuncDeclare(string name);
    void ValueParam();
    void FuncCall(string name);
    void VoidFuncCall(string name);
    void AllFuncCall(string name);
    
    void Statements();
    void StatementBlock();
    void Statement();
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
