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
#include <fstream>

using namespace std;

#include "identifier_table.hpp"

extern ofstream output;

#define INSNUM 27
enum insNo {nopIns, extractIns, assignIns, mulIns, divIns, plusIns, minusIns, scanIns, printIns, allocIns, releaseIns, ddIns, resdIns, cmpIns, jngIns, jngeIns, jnlIns, jnleIns, jnzIns, jzIns, jmpIns, callIns, funcInitIns, funcEndIns, saveRetIns, getRetIns, mainIns};

extern const char * InsString[];

class Quaternary {
    friend class Node;
    friend class Dag;
    friend class Optimizer;
    friend class BlockGraph;
protected:
    string label;
    insNo ins;
    Identifier * source1;
    Identifier * source2;
    Identifier * dest;
public:
    Quaternary(insNo ins, Identifier * source1, Identifier * source2, Identifier * dest);
    virtual void Print();
};

typedef vector<Quaternary *> QTable;
extern QTable code_table;
extern QTable data_table;
extern QTable bss_table;

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
    string string_value;
public:
    Quaternary_data(string label, int value);
    virtual void Print();
};

class Quaternary_bss : public Quaternary {
private:
    string label;
    int size;
public:
    Quaternary_bss(string label, int size);
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
    void ReleaseStack();
    Identifier * NumberConstant(int number);
    Identifier * CharacterConstant(char character);
    Identifier * NumberConstant(string name, int number);
    Identifier * CharacterConstant(string name, char character);
    
    Identifier * MultiplyDivide(symbolNo type, Identifier * source1, Identifier * source2);
    Identifier * PlusMinus(symbolNo type, Identifier * source1, Identifier * source2);
    Identifier * Negative(Identifier * source);
    
    void Scan(Identifier * dest);
    void Print(Identifier * source);
    
    void AllocateData(string label, int value);
    void AllocateBss(string label, int size);
    void PrintString(Identifier * source);
    
    void LabelledNop(string label);
    void Jump(symbolNo LogicOp, Identifier * source1, Identifier * source2, string label);
    void Jump(string label);
    
    void Call(string label);
    void FuncInit();
    void ReturnStatement(Identifier * value);
    void RET();
    void GetResult(Identifier * dest);
    
    void Align(int offset);
};

#endif /* quarternary_hpp */
