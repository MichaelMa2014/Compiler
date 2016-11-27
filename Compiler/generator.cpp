//
//  generator.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/25/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "quaternary.hpp"

const char * InsString[INSNUM];

extern string itoa(int i);

Generator::Generator(IdentifierTable * i) {
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
    InsString[12] = "sub esp 4      ";
    InsString[13] = "add esp 4      ";
    InsString[14] = "dd             ";
    InsString[15] = "resd           ";
    InsString[16] = "cmp            ";
    InsString[17] = "jng            ";
    InsString[18] = "jnge           ";
    InsString[19] = "jnl            ";
    InsString[20] = "jnle           ";
    InsString[21] = "jnz            ";
    InsString[22] = "jz             ";
    InsString[23] = "mov            ";
    InsString[24] = "ret            ";
    this -> id = i;
    this -> count = 100;
    this -> string_count = 0;
}

void Generator::SetId(IdentifierTable * i) {
    this -> id = i;
}

Identifier * Generator::MatrixMember(Identifier * matrix, Identifier * index) {
    string name = itoa(count++);
    
    Identifier * dest = id -> EnterVariable(name, matrix -> Kind(), 0);
    
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
    string name = itoa(count++);
    
    Identifier * dest = id -> EnterVariable(name, func -> Kind(), 0);
    
    // FIXME: value parameters should be passed in
    Quaternary * temp = new Quaternary(callIns, func, NULL, dest);
    table.push_back(temp);
    
    return dest;
}

Identifier * Generator::NumberConstant(int number) {
    string name = itoa(count++);
    
    Identifier * dest = id -> EnterVariable(name, intSym, 0);
    
    Quaternary * temp = new Quaternary_immediate(movIns, number, dest);
    table.push_back(temp);
    
    return dest;
}

Identifier * Generator::CharacterConstant(char character) {
    string name = itoa(count++);
    
    Identifier * dest = id -> EnterVariable(name, charSym, 0);
    
    Quaternary * temp = new Quaternary_immediate(movIns, character, dest);
    table.push_back(temp);
    
    return dest;
}

Identifier * Generator::MultiplyDivide(symbolNo type, Identifier *source1, Identifier *source2) {
    string name = itoa(count++);
    
    Identifier * dest = id -> EnterVariable(name, intSym, 0);
    
    Quaternary * temp = new Quaternary((type == multiSym ? mulIns : divIns), source1, source2, dest);
    table.push_back(temp);
    
    return dest;
}

Identifier * Generator::PlusMinus(symbolNo type, Identifier *source1, Identifier *source2) {
    string name = itoa(count++);
    
    Identifier * dest = id -> EnterVariable(name, intSym, 0);
    
    Quaternary * temp = new Quaternary((type == plusSym ? plusIns : minusIns), source1, source2, dest);
    table.push_back(temp);
    
    return dest;
}

Identifier * Generator::Negative(Identifier * source) {
    string name = itoa(count++);
    
    Identifier * zero = id -> EnterVariable(name, intSym, 0);
    
    name = itoa(count);
    count++;
    
    Identifier * dest = id -> EnterVariable(name, intSym, 0);
    
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

void Generator::Print(Identifier * source) {
    Quaternary * temp = new Quaternary(printIns, source, NULL, NULL);
    table.push_back(temp);
}

void Generator::AllocateStack() {
    Quaternary * temp = new Quaternary(allocIns, NULL, NULL, NULL);
    table.push_back(temp);
}

void Generator::ReleaseStack() {
    Quaternary * temp = new Quaternary(releaseIns, NULL, NULL, NULL);
    table.push_back(temp);
}

void Generator::AllocateData(string label, int value) {
    Quaternary * temp = new Quaternary_data(label, value);
    data_table.push_back(temp);
}

void Generator::AllocateBss(string label) {
    Quaternary * temp = new Quaternary_bss(label);
    data_table.push_back(temp);
}

void Generator::PrintString(Identifier * source) {
    Quaternary * temp = new Quaternary(printIns, source, NULL, NULL);
    table.push_back(temp);
    
    temp = new Quaternary_string(source -> Addr(), source -> StringValue());
    data_table.push_back(temp);
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

void Generator::ReturnStatement(Identifier * value) {
    Quaternary * temp = new Quaternary(returnIns, value, NULL, NULL);
    table.push_back(temp);
}

void Generator::RET() {
    Quaternary * temp = new Quaternary(retIns, NULL, NULL, NULL);
    table.push_back(temp);
}
