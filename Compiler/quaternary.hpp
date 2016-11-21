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

enum Instruction {extractIns, callIns, movIns, mulIns, divIns, plusIns, minusIns, negIns};

class Quaternary {
protected:
    Instruction ins;
    Identifier * source1;
    Identifier * source2;
    Identifier * dest;
public:
    Quaternary(Instruction ins, Identifier * source1, Identifier * source2, Identifier * dest);
    virtual void Print();
};

extern vector<Quaternary *> table;

class Quaternary_immediate : public Quaternary{
private:
    int immediate;
public:
    Quaternary_immediate(Instruction ins, int number, Identifier * dest);
    virtual void Print();
};

class Generator {
private:
    IdentifierTable * id;
    int count;
public:
    Generator(IdentifierTable * i);
    void SetId(IdentifierTable * i);
    Identifier * MatrixMember(Identifier * matrix, Identifier * index);
    Identifier * FunctionCall(Identifier * func);
    Identifier * NumberConstant(int number);
    Identifier * CharacterConstant(char character);
    Identifier * MultiplyDivide(symbolNo type, Identifier * source1, Identifier * source2);
    Identifier * PlusMinus(symbolNo type, Identifier * source1, Identifier * source2);
    Identifier * Negative(Identifier * source);
};

#endif /* quarternary_hpp */
