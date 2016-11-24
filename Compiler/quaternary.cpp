//
//  quarternary.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/20/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "quaternary.hpp"

const char * InsString[INSNUM];

Quaternary::Quaternary(insNo i, Identifier * s1, Identifier * s2, Identifier * d) {
    InsString[0] = "nop            ";
    InsString[1] = "extractIns     ";
    InsString[2] = "assignIns      ";
    InsString[3] = "call           ";
    InsString[4] = "mov            ";
    InsString[5] = "mul            ";
    InsString[6] = "div            ";
    InsString[7] = "add            ";
    InsString[8] = "sub            ";
    InsString[9] = "neg            ";
    InsString[10] = "scanIns        ";
    InsString[11] = "printIns       ";
    InsString[12] = "allocIns       ";
    InsString[13] = "cmp            ";
    InsString[14] = "jng            ";
    InsString[15] = "jnge           ";
    InsString[16] = "jnl            ";
    InsString[17] = "jnle           ";
    InsString[18] = "jnz            ";
    InsString[19] = "jz             ";
    this -> ins = i;
    this -> source1 = s1;
    this -> source2 = s2;
    this -> dest = d;
}

void Quaternary::SetLabel(string l) {
    this -> label = l;
}

void Quaternary::Print() {
    // FIXME: Should we use this large function to translate from Quaternary to x86?
    if (ins == mulIns || ins == divIns || ins == plusIns || ins == minusIns) {
        cout << InsString[this -> ins] << " " << this -> source1 -> Addr() << " " << this -> source2 -> Addr() << " " << this -> dest -> Addr() << endl;
    }
    if (ins == movIns) {
        cout << InsString[this -> ins] << " " << this -> source1 -> Addr() << " " << this -> dest -> Addr() << endl;
    }
    if (ins == extractIns) {
        cout << InsString[this -> ins] << " " << this -> source1 -> Addr() << " " << this -> source2 -> Addr() << " " << this -> dest -> Addr() << endl;
    }
    if (ins == callIns) {
        cout << "call      " << this -> source1 -> name << endl;
        cout << "mov       " << this -> dest -> Addr() << " eax" << endl;
    }
}

Quaternary_immediate::Quaternary_immediate(insNo i, int num, Identifier * d) : Quaternary(i, NULL, NULL, d){
    this -> immediate = num;
}

Quaternary_label::Quaternary_label(insNo i, string l) : Quaternary(i, NULL, NULL, NULL) {
    this -> label = l;
}

void Quaternary_immediate::Print() {
    cout << InsString[this -> ins] << " " << this -> immediate << " " << this -> dest -> Addr() << endl;
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
    Quaternary * temp = new Quaternary(assignIns, value, index, dest);
    table.push_back(temp);
}

Identifier * Generator::FunctionCall(Identifier *func) {
    // Just pretend there has been a call
    string name = itoa(count);
    count++;
    
    id -> EnterVariable(name, func -> Kind(), 0);
    Identifier * dest = id -> Look(name);
    
    // FIXME: value parameters should be passed in
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

void Generator::Scan(Identifier * dest) {
    Quaternary * temp = new Quaternary(scanIns, NULL, NULL, dest);
    table.push_back(temp);
}

void Generator::Allocate() {
    Quaternary * temp = new Quaternary(allocIns, NULL, NULL, NULL);
    table.push_back(temp);
}

void Generator::LabelledNop(string label) {
    Quaternary * temp = new Quaternary(nopIns, NULL, NULL, NULL);
    temp -> SetLabel(label);
    table.push_back(temp);
}

void Generator::Jump(symbolNo LogicOp, Identifier *source1, Identifier *source2, string label) {
    Quaternary * temp = new Quaternary(cmpIns, source1, source2, NULL);
    table.push_back(temp);
    
    insNo ins;
    switch (LogicOp) {
        case lessSym:
            ins = jnlIns;
            break;
        case leqSym:
            ins = jnleIns;
            break;
        case moreSym:
            ins = jngIns;
            break;
        case meqSym:
            ins = jngeIns;
            break;
        case equalSym:
            ins = jnzIns;
            break;
        case neqSym:
            ins = jzIns;
            break;
        default:
            ERR("Illegal symbolNo for Jump");
    }
    
    temp = new Quaternary_label(ins, label);
    table.push_back(temp);
}
