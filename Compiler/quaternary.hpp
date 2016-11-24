//
//  quaternary.hpp
//  Compiler
//
//  Created by 马琛骁 on 11/20/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#ifndef quaternary_hpp
#define quaternary_hpp

#include <iostream>
#include <sstream>

#include "identifier_table.hpp"

#define INSNUM 20
enum insNo {nopIns, extractIns, assignIns, callIns, movIns, mulIns, divIns, plusIns, minusIns, negIns, scanIns, printIns, allocIns, cmpIns, jngIns, jngeIns, jnlIns, jnleIns, jnzIns, jzIns};

extern const char * InsString[];

class Quaternary {
protected:
    string label;
    insNo ins;
    Identifier * source1;
    Identifier * source2;
    Identifier * dest;
public:
    Quaternary(insNo ins, Identifier * source1, Identifier * source2, Identifier * dest);
    void SetLabel(string label);
    virtual void Print();
};

extern vector<Quaternary *> table;

class Quaternary_immediate : public Quaternary {
private:
    int immediate;
public:
    Quaternary_immediate(insNo ins, int number, Identifier * dest);
    virtual void Print();
};

class Quaternary_label : public Quaternary {
private:
    string label;
public:
    Quaternary_label(insNo ins, string label);
};

class Generator {
private:
    IdentifierTable * id;
    int count;
public:
    Generator(IdentifierTable * i);
    void SetId(IdentifierTable * i);
    
    Identifier * MatrixMember(Identifier * matrix, Identifier * index);
    void Assign(Identifier * value, Identifier * index, Identifier * dest);
    
    Identifier * FunctionCall(Identifier * func);
    Identifier * NumberConstant(int number);
    Identifier * CharacterConstant(char character);
    Identifier * MultiplyDivide(symbolNo type, Identifier * source1, Identifier * source2);
    Identifier * PlusMinus(symbolNo type, Identifier * source1, Identifier * source2);
    Identifier * Negative(Identifier * source);
    
    void Scan(Identifier * dest);
    
    void Allocate();
    
    void LabelledNop(string label);
    void Jump(symbolNo LogicOp, Identifier * source1, Identifier * source2, string label);
};

#endif /* quarternary_hpp */
