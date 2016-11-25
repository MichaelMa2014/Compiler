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

#define INSNUM 22
enum insNo {nopIns, extractIns, assignIns, callIns, movIns, mulIns, divIns, plusIns, minusIns, negIns, scanIns, printIns, allocIns, ddIns, resdIns, cmpIns, jngIns, jngeIns, jnlIns, jnleIns, jnzIns, jzIns};

extern const char * InsString[];

class Quaternary {
protected:
    bool label_set;
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
extern vector<Quaternary *> data_table;

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
    virtual void Print();
};

class Quaternary_data : public Quaternary {
private:
    string label;
    int value;
public:
    Quaternary_data(string label, int value);
    virtual void Print();
};

class Quaternary_bss : public Quaternary {
private:
    string label;
public:
    Quaternary_bss(string label);
    virtual void Print();
};

class Quaternary_string : public Quaternary {
private:
    string label;
    string value;
public:
    Quaternary_string(string label, string value);
    virtual void Print();
};

class Generator {
private:
    IdentifierTable * id;
    int count;
    int string_count;
public:
    Generator(IdentifierTable * i);
    void SetId(IdentifierTable * i);
    
    Identifier * MatrixMember(Identifier * matrix, Identifier * index);
    void Assign(Identifier * value, Identifier * index, Identifier * dest);
    
    // The following 3 statements save the return value in stack, which can be accessed by the identifier pointer
    void AllocateStack();
    Identifier * FunctionCall(Identifier * func);
    Identifier * NumberConstant(int number);
    Identifier * CharacterConstant(char character);
    
    Identifier * MultiplyDivide(symbolNo type, Identifier * source1, Identifier * source2);
    Identifier * PlusMinus(symbolNo type, Identifier * source1, Identifier * source2);
    Identifier * Negative(Identifier * source);
    
    void Scan(Identifier * dest);
    
    void AllocateData(string label, int value);
    void AllocateBss(string label);
    void AllocateString(string label, string value);
    void PrintString(string data);
    
    void LabelledNop(string label);
    void Jump(symbolNo LogicOp, Identifier * source1, Identifier * source2, string label);
};

#endif /* quarternary_hpp */
