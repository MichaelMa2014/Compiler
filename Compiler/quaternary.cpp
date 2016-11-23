//
//  quarternary.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/20/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "quaternary.hpp"

Quaternary::Quaternary(Instruction i, Identifier * s1, Identifier * s2, Identifier * d) {
    this -> ins = i;
    this -> source1 = s1;
    this -> source2 = s2;
    this -> dest = d;
}

void Quaternary::Print() {
    if (ins == mulIns || ins == divIns || ins == plusIns || ins == minusIns) {
        cout << this -> ins << " " << this -> source1 -> name << " " << this -> source2 -> name << " " << this -> dest -> name << endl;
    }
    if (ins == movIns || ins == callIns) {
        cout << this -> ins << " " << this -> source1 -> name << " " << this -> dest -> name << endl;
    }
    if (ins == extractIns) {
        cout << this -> ins << " " << this -> source1 -> name << " " << this -> source2 -> name << " " << this -> dest -> name << endl;
    }
}

Quaternary_immediate::Quaternary_immediate(Instruction i, int num, Identifier * d) : Quaternary(i, NULL, NULL, d){
    this -> immediate = num;
}

void Quaternary_immediate::Print() {
    cout << this -> ins << " " << this -> immediate << " " << this -> dest -> name << endl;
}

string itoa(int i) {
    stringstream out;
    out << i;
    return out.str();
}

Generator::Generator(IdentifierTable * i) {
    this -> id = i;
    this -> count = 100;
}

void Generator::SetId(IdentifierTable * i) {
    this -> id = i;
}

Identifier * Generator::MatrixMember(Identifier * matrix, Identifier * index) {
    string name = itoa(count);
    count++;
    
    id -> EnterVariable(name, matrix -> Kind(), 0);
    Identifier * dest = id -> Look(name);
    
    Quaternary * temp = new Quaternary(extractIns, matrix, index, dest);
    table.push_back(temp);
    
    return dest;
}

void Generator::Assign(Identifier * value, Identifier * index, Identifier * dest) {
    string name = itoa(count);
    count++;
    
    Quaternary * temp = new Quaternary(assignIns, value, index, dest);
    table.push_back(temp);
}

Identifier * Generator::FunctionCall(Identifier *func) {
    // Just pretend there has been a call
    string name = itoa(count);
    count++;
    
    id -> EnterVariable(name, func -> Kind(), 0);
    Identifier * dest = id -> Look(name);
    
    // FIXIT value parameters should be passed in
    Quaternary * temp = new Quaternary(callIns, func, NULL, dest);
    table.push_back(temp);
    
    return dest;
}

Identifier * Generator::NumberConstant(int number) {
    string name = itoa(count);
    count++;
    
    id -> EnterVariable(name, intSym, 0);
    Identifier * dest = id -> Look(name);
    
    Quaternary * temp = new Quaternary_immediate(movIns, number, dest);
    table.push_back(temp);
    
    return dest;
}

Identifier * Generator::CharacterConstant(char character) {
    string name = itoa(count);
    count++;
    
    id -> EnterVariable(name, charSym, 0);
    Identifier * dest = id -> Look(name);
    
    Quaternary * temp = new Quaternary_immediate(movIns, character, dest);
    table.push_back(temp);
    
    return dest;
}

Identifier * Generator::MultiplyDivide(symbolNo type, Identifier *source1, Identifier *source2) {
    string name = itoa(count);
    count++;
    
    id -> EnterVariable(name, intSym, 0);
    Identifier * dest = id -> Look(name);
    
    Quaternary * temp = new Quaternary((type == multiSym ? mulIns : divIns), source1, source2, dest);
    table.push_back(temp);
    
    return dest;
}

Identifier * Generator::PlusMinus(symbolNo type, Identifier *source1, Identifier *source2) {
    string name = itoa(count);
    count++;
    
    id -> EnterVariable(name, intSym, 0);
    Identifier * dest = id -> Look(name);
    
    Quaternary * temp = new Quaternary((type == plusSym ? plusIns : minusIns), source1, source2, dest);
    table.push_back(temp);
    
    return dest;
}

Identifier * Generator::Negative(Identifier *source) {
    string name = itoa(count);
    count++;
    
    id -> EnterVariable(name, intSym, 0);
    Identifier * zero = id -> Look(name);
    
    name = itoa(count);
    count++;
    
    id -> EnterVariable(name, intSym, 0);
    Identifier * dest = id -> Look(name);
    
    // Store 0 in zero
    Quaternary * temp = new Quaternary_immediate(movIns, 0, zero);
    table.push_back(temp);
    
    temp = new Quaternary(minusIns, zero, source, dest);
    table.push_back(temp);
    
    return dest;
}
