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
    InsString[3] = "mov            ";
    InsString[4] = "mul            ";
    InsString[5] = "div            ";
    InsString[6] = "add            ";
    InsString[7] = "sub            ";
    InsString[8] = "neg            ";
    InsString[9] = "scanIns        ";
    InsString[10] = "printIns       ";
    InsString[11] = "sub esp 4      ";
    InsString[12] = "add esp 4      ";
    InsString[13] = "dd             ";
    InsString[14] = "resd           ";
    InsString[15] = "cmp            ";
    InsString[16] = "jng            ";
    InsString[17] = "jnge           ";
    InsString[18] = "jnl            ";
    InsString[19] = "jnle           ";
    InsString[20] = "jnz            ";
    InsString[21] = "jz             ";
    InsString[22] = "call           ";
    InsString[23] = "push ebp \nmov ebp, esp";
    InsString[24] = "pop ebp \nret ";
    InsString[25] = "mov            ";
    InsString[26] = "mov            ";
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

void Generator::Call(string label) {
    Quaternary * temp = new Quaternary_label(callIns, label);
    table.push_back(temp);
}

void Generator::FuncInit() {
    Quaternary * temp = new Quaternary(funcInitIns, NULL, NULL, NULL);
    table.push_back(temp);
}

void Generator::ReturnStatement(Identifier * value) {
    if (value == NULL) {
        return;
    }
    Quaternary * temp = new Quaternary(saveRetIns, value, NULL, NULL);
    table.push_back(temp);
}

void Generator::RET() {
    Quaternary * temp = new Quaternary(funcEndIns, NULL, NULL, NULL);
    table.push_back(temp);
}

void Generator::GetResult(Identifier * dest) {
    Quaternary * temp = new Quaternary(getRetIns, NULL, NULL, dest);
    table.push_back(temp);
}
