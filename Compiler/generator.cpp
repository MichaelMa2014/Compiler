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
    InsString[0] = "nop ";
    InsString[1] = "extractIns ";
    InsString[2] = "mov dword ";
    InsString[3] = "imul ";
    InsString[4] = "idiv ";
    InsString[5] = "add ";
    InsString[6] = "sub ";
    InsString[7] = "scanIns ";
    InsString[8] = "printIns ";
    InsString[9] = "sub esp, 4 ";
    InsString[10] = "add esp, 4 ";
    InsString[11] = "dd ";
    InsString[12] = "resd";
    InsString[13] = "cmp ";
    InsString[14] = "jng ";
    InsString[15] = "jnge ";
    InsString[16] = "jnl ";
    InsString[17] = "jnle ";
    InsString[18] = "jnz ";
    InsString[19] = "jz ";
    InsString[20] = "jmp ";
    InsString[21] = "call ";
    InsString[22] = "push ebp \nmov ebp, esp ";
    InsString[23] = "mov esp, ebp\npop ebp \nret ";
    InsString[24] = "mov dword ";
    InsString[25] = "mov dword ";
    InsString[26] = "\n_test:\npush ebp\nmov ebp, esp\n";
    this -> id = i;
    this -> count = 100;
    this -> string_count = 0;
    
    Quaternary * temp = new Quaternary_string("command_int", "%d");
    data_table.push_back(temp);
    temp = new Quaternary_string("command_char", "%c");
    data_table.push_back(temp);
}

void Generator::SetId(IdentifierTable * i) {
    this -> id = i;
}

Identifier * Generator::MatrixMember(Identifier * matrix, Identifier * index) {
    string name = itoa(count++);
    
    Identifier * dest = id -> EnterVariable(name, matrix -> Kind(), 0);
    
    Quaternary * temp = new Quaternary(extractIns, matrix, index, dest);
    code_table.push_back(temp);
    
    return dest;
}

void Generator::Assign(Identifier * value, Identifier * index, Identifier * dest) {
    Quaternary * temp = new Quaternary(assignIns, value, index, dest);
    code_table.push_back(temp);
}

Identifier * Generator::NumberConstant(string name, int number) {
    Identifier * dest = id -> EnterConstant(name, intSym, number);
    
    Quaternary * temp = new Quaternary_immediate(assignIns, number, dest);
    code_table.push_back(temp);
    
    return dest;
}

Identifier * Generator::CharacterConstant(string name, char character) {
    Identifier * dest = id -> EnterConstant(name, charSym, character);
    
    Quaternary * temp = new Quaternary_immediate(assignIns, character, dest);
    code_table.push_back(temp);
    
    return dest;
}

Identifier * Generator::NumberConstant(int number) {
    Identifier * prev = id -> LookNumber(number);
    if (prev != NULL) {
        Quaternary * temp = new Quaternary_immediate(assignIns, number, prev);
        code_table.push_back(temp);
        return prev;
    }
    
    string name = itoa(count++);
    
    return NumberConstant(name, number);
}

Identifier * Generator::CharacterConstant(char character) {
    Identifier * prev = id -> LookCharacter(character);
    if (prev != NULL) {
        Quaternary * temp = new Quaternary_immediate(assignIns, character, prev);
        code_table.push_back(temp);
        return prev;
    }
    string name = itoa(count++);
    
    return CharacterConstant(name, character);
}

Identifier * Generator::MultiplyDivide(symbolNo type, Identifier *source1, Identifier *source2) {
    string name = itoa(count++);
    
    Identifier * dest = id -> EnterVariable(name, intSym, 0);
    
    Quaternary * temp = new Quaternary((type == multiSym ? mulIns : divIns), source1, source2, dest);
    code_table.push_back(temp);
    
    return dest;
}

Identifier * Generator::PlusMinus(symbolNo type, Identifier *source1, Identifier *source2) {
    string name = itoa(count++);
    
    Identifier * dest = id -> EnterVariable(name, intSym, 0);
    
    Quaternary * temp = new Quaternary((type == plusSym ? plusIns : minusIns), source1, source2, dest);
    code_table.push_back(temp);
    
    return dest;
}

Identifier * Generator::Negative(Identifier * source) {
    string name = itoa(count++);
    
    Identifier * zero = id -> EnterVariable(name, intSym, 0);
    
    name = itoa(count);
    count++;
    
    Identifier * dest = id -> EnterVariable(name, intSym, 0);
    
    // Store 0 in zero
    Quaternary * temp = new Quaternary_immediate(assignIns, 0, zero);
    code_table.push_back(temp);
    
    temp = new Quaternary(minusIns, zero, source, dest);
    code_table.push_back(temp);
    
    return dest;
}

void Generator::Scan(Identifier * dest) {
    Quaternary * temp = new Quaternary(scanIns, NULL, NULL, dest);
    code_table.push_back(temp);
}

void Generator::Print(Identifier * source) {
    Quaternary * temp = new Quaternary(printIns, source, NULL, NULL);
    code_table.push_back(temp);
}

void Generator::AllocateStack() {
    Quaternary * temp = new Quaternary(allocIns, NULL, NULL, NULL);
    code_table.push_back(temp);
}

void Generator::ReleaseStack() {
    Quaternary * temp = new Quaternary(releaseIns, NULL, NULL, NULL);
    code_table.push_back(temp);
}

void Generator::AllocateData(string label, int value) {
    Quaternary * temp = new Quaternary_data(label, value);
    data_table.push_back(temp);
}

void Generator::AllocateBss(string label, int size) {
    Quaternary * temp = new Quaternary_bss(label, size);
    bss_table.push_back(temp);
}

void Generator::PrintString(Identifier * source) {
    Quaternary * temp = new Quaternary(printIns, source, NULL, NULL);
    code_table.push_back(temp);
    
    temp = new Quaternary_string(source -> Addr(), source -> StringValue());
    data_table.push_back(temp);
}

void Generator::LabelledNop(string label) {
    Quaternary * temp = new Quaternary_label(nopIns, label);
    code_table.push_back(temp);
}

void Generator::Jump(symbolNo LogicOp, Identifier *source1, Identifier *source2, string label) {
    Quaternary * temp = new Quaternary(cmpIns, source1, source2, NULL);
    code_table.push_back(temp);
    
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
    code_table.push_back(temp);
}

void Generator::Jump(string label) {
    Quaternary * temp = new Quaternary_label(jmpIns, label);
    code_table.push_back(temp);
}

void Generator::Call(string label) {
    Quaternary * temp = new Quaternary_label(callIns, label);
    code_table.push_back(temp);
}

void Generator::FuncInit() {
    Quaternary * temp = new Quaternary(funcInitIns, NULL, NULL, NULL);
    code_table.push_back(temp);
}

void Generator::ReturnStatement(Identifier * value) {
    if (value == NULL) {
        return;
    }
    Quaternary * temp = new Quaternary(saveRetIns, value, NULL, NULL);
    code_table.push_back(temp);
}

void Generator::RET() {
    Quaternary * temp = new Quaternary(funcEndIns, NULL, NULL, NULL);
    code_table.push_back(temp);
}

void Generator::GetResult(Identifier * dest) {
    Quaternary * temp = new Quaternary(getRetIns, NULL, NULL, dest);
    code_table.push_back(temp);
}

void Generator::Align(int offset) {
    Quaternary * temp = new Quaternary_immediate(nopIns, offset, NULL);
    code_table.push_back(temp);
}
