//
//  identifier_table.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/15/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "identifier_table.hpp"
#include "quaternary.hpp"

extern Generator * ge;
string itoa(int i);

Identifier::Identifier(string n) {
    this -> name = n;
}

Constant::Constant(string name, symbolNo k, int v) : Identifier(name){
    this -> kind = k;
    this -> value = v;
}

IdType Constant::Type() {
    return constId;
}

symbolNo Constant::Kind() {
    return this -> kind;
}

int Constant::Value() {
    return this -> value;
}

Variable::Variable(string name, symbolNo k) : Identifier(name){
    this -> kind = k;
}

IdType Variable::Type() {
    return varId;
}

symbolNo Variable::Kind() {
    return this -> kind;
}

Matrix::Matrix(string name, symbolNo k, int s) : Identifier(name){
    this -> kind = k;
    this -> size = s;
}

IdType Matrix::Type() {
    return matId;
}

symbolNo Matrix::Kind() {
    return this -> kind;
}

int Matrix::Size() {
    return this -> size;
}

Function::Function(string name, symbolNo k, Parameter * p) : Identifier(name) {
    this -> kind = k;
    this -> parameters = p;
}

Function::~Function() {
    delete parameters;
    parameters = NULL;
}

IdType Function::Type() {
    return funcId;
}

symbolNo Function::Kind() {
    return this -> kind;
}

Parameter * Function::Parameters() {
    return this -> parameters;
}

String::String(string name, string v) : Identifier(name) {
    this -> value = v;
}

IdType String::Type() {
    return stringId;
}

string String::StringValue() {
    return this -> value;
}

IdentifierTable::IdentifierTable() {
    this -> table = Table();
    this -> table.clear();
    this -> offset = 0;
    this -> param_offset = 8;
}

IdentifierTable::~IdentifierTable() {
    for (Table::iterator it = table.begin(); it != table.end(); it++) {
        delete it -> second;
        it -> second = NULL;
    }
}

Identifier * IdentifierTable::Look(string name) {
    if (table[name] == NULL) {
        // Will not throw error here because this might only be the local IDT
    }
    return table[name];
}

int IdentifierTable::Offset() {
    return this -> offset;
}

void IdentifierTable::ReturnStack() {
    int count = 0;
    for (Table::iterator it = table.begin(); it != table.end(); it++) {
        if (it -> second == NULL) {
            continue;
        }
        switch (it -> second -> Type()) {
            case constId:
            case varId:
                count += 1;
                break;
            case matId:
                if (it -> second -> Size() == 0) {
                    ERR("FATAL. size is 0 in matrix identifier")
                }
                count += it -> second -> Size();
                break;
            default:
                break;
        }
    }
    for (int i = 0; i < count; i++) {
        ge -> ReleaseStack();
    }
}

Identifier * IdentifierTable::EnterParam(string name, symbolNo type) {
    if (table[name] != NULL) {
        error(DOUBLE_DECLARE);
    }
    Identifier * temp = new Variable(name, type);
    table[name] = temp;
    
    temp -> offset = this -> param_offset;
    this -> param_offset += 4;
    temp -> addr = "ebp + " + itoa(temp -> offset);
    
    return temp;
}

Identifier * IdentifierTable::EnterConstant(string name, symbolNo type, int value) {
    if (table[name] != NULL) {
        error(DOUBLE_DECLARE);
    }
    Identifier * temp = new Constant(name, type, value);
    table[name] = temp;
    
    ge -> AllocateStack();
    
    temp -> offset = this -> offset;
    this -> offset += 4;
    temp -> addr = "ebp - " + itoa(temp -> offset);
    
    return temp;
}

Identifier * IdentifierTable::EnterVariable(string name, symbolNo type, int size){
    if (table[name] != NULL) {
        error(DOUBLE_DECLARE);
    }
    Identifier * temp;
    if (size == 0) {
        temp = new Variable(name, type);
        this -> offset += 4;
        
        ge -> AllocateStack();
    }
    else {
        temp = new Matrix(name, type, size);
        this -> offset += 4 * size;
        
        for (int i = 0; i < size; i++) {
            ge -> AllocateStack();
        }
    }
    table[name] = temp;
    
    temp -> offset = this -> offset;
    temp -> addr = "ebp - " + itoa(temp -> offset);
    
    return temp;
}

Identifier * IdentifierTable::EnterFunction(string name, symbolNo type, Parameter * list, string entrance) {
    ERR("Enter function in local IDT");
    exit(-1);
}

Identifier * IdentifierTable::EnterString(string value) {
    ERR("Enter string in local IDT");
    exit(-1);
}

Identifier * GIdentifierTable::EnterParam(string name, symbolNo type) {
    ERR("Enter parameter in global IDT");
    exit(-1);
}

Identifier * GIdentifierTable::EnterConstant(string name, symbolNo type, int value) {
    if (table[name] != NULL) {
        error(DOUBLE_DECLARE);
    }
    Identifier * temp = new Constant(name, type, value);
    table[name] = temp;
    
    string label = "label" + itoa(label_count++);
    temp -> addr = label;
    temp -> offset = 0;
    
    ge -> AllocateData(label, value);
    
    return temp;
}

Identifier * GIdentifierTable::EnterVariable(string name, symbolNo type, int size){
    if (table[name] != NULL) {
        error(DOUBLE_DECLARE);
    }
    Identifier * temp;
    if (size == 0) {
        temp = new Variable(name, type);
    }
    else temp = new Matrix(name, type, size);
    table[name] = temp;
    
    string label = "label" + itoa(label_count++);
    temp -> addr = label;
    temp -> offset = 0;
    
    if (size == 0) {
        size = 4;
    }
    else size *= 4;
    
    ge -> AllocateBss(label, size);
    
    return temp;
}

Identifier * GIdentifierTable::EnterFunction(string name, symbolNo type, Parameter * list, string label) {
    if (table[name] != NULL) {
        error(DOUBLE_DECLARE);
    }
    Identifier * temp = new Function(name, type, list);
    table[name] = temp;
    
    temp -> addr = label;
    temp -> offset = 0;
    
    return temp;
}

Identifier * GIdentifierTable::EnterString(string value) {
    // name and label are same for a string constant
    string label = "label" + itoa(label_count++);
    Identifier * temp = new String(label, value);
    temp -> addr = label;
    temp -> offset = 0;
    table[label] = temp;
    
    return temp;
}
