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
#include "quaternary.hpp"

extern LexicalDecoder * ld;
extern Generator * ge;

class GrammarDecoder {
private:
    IdentifierTable * id;
    IdentifierTable * gid;
    int label_count;
    int param_count;
public:
    GrammarDecoder(IdentifierTable * i, IdentifierTable * gi) {
        this -> id = i;
        this -> gid = gi;
        this -> label_count = 0;
        this -> param_count = 1000;
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
    void ValueParam(Parameter * list);
    Identifier * FuncCall(string name);
    void VoidFuncCall(string name);
    void AllFuncCall(string name);
    
    void Statements();
    void StatementBlock();
    void Statement();
    void IfStat();
    void WhileStat();
    void SwitchStat();
    void CaseStat(Identifier * condition, string exit);
    void DefaultStat(string exit);
    void AssignStat(string name);
    void ScanfStat();
    void PrintfStat();
    void ReturnStat();
    
    Identifier * Expression();
    Identifier * Term();
    Identifier * Factor();
};

#endif /* grammar_hpp */
