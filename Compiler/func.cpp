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
    
    ge -> FuncInit();
    
    Statements();
    
    if (ld -> LastSymbol() != rCurlySym) {
        error(ORPHAN_CURLY);
    }
    else ld -> NextWord();
    
    LOG("Decoded a function declaration");
    
    id -> ReturnStack();
    ge -> RET();
    
//    delete id; FIXME
    id = NULL;
    
    ge -> SetId(gid);
}

void GrammarDecoder::VoidFuncDeclare(string name) {
    FuncDeclare(voidSym, name);
}

void GrammarDecoder::ValueParam(Parameter * list) {
    if (ld -> LastSymbol() == rRoundSym) {
        return;
        // FIXME: This is a trick becasue the last word is used but NextWord is not called
    }
    
    vector<Identifier *> vlist;
    vlist.clear();
    
    vlist.push_back(Expression());
    LOG("Decoded a value parameter");
    
    while (ld -> LastSymbol() == commaSym) {
        ld -> NextWord();
        vlist.push_back(Expression());
        LOG("Decoded a value parameter");
    }
    
    vector<symbolNo>::reverse_iterator it;
    vector<Identifier *>::reverse_iterator vit;
    
    for (it = list -> rbegin(), vit = vlist.rbegin(); it != list -> rend(); it++, vit++) {
        Identifier * temp = id -> EnterVariable("param" + itoa(this -> param_count++), (* vit) -> Kind(), 0);
        ge -> Assign(* vit, NULL, temp);
        if ((* vit) -> Kind() != (* it)) {
            LOG("Warning: Mismatch param kind");
        }
    }
    
    if (vit != vlist.rend()) {
        error(MISMATCH_PARAM);
    }
}

Identifier * GrammarDecoder::FuncCall(string name) {
    Identifier * func = gid -> Look(name);
    Parameter * list = func -> Parameters();
    ValueParam(list);
    if (ld -> LastSymbol() != rRoundSym) {
        error(ORPHAN_ROUND);
    }
    else ld -> NextWord();
    
    ge -> Call(func -> Addr());
    
    string temp_name = "result" + itoa(this -> label_count++);
    Identifier * result = id -> EnterVariable(temp_name, func -> Kind(), 0);
    ge -> GetResult(result);
    
    return result;
}

void GrammarDecoder::VoidFuncCall(string name) {
    Identifier * func = gid -> Look(name);
    Parameter * list = func -> Parameters();
    ValueParam(list);
    if (ld -> LastSymbol() != rRoundSym) {
        error(ORPHAN_ROUND);
    }
    else ld -> NextWord();
    
    ge -> Call(func -> Addr());
}

void GrammarDecoder::AllFuncCall(string name) {
    VoidFuncCall(name);
}
