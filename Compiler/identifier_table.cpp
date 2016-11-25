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

IdentifierTable::IdentifierTable() {
    this -> table = Table();
    this -> table.clear();
    this -> offset = 4;
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

void IdentifierTable::EnterConstant(string name, symbolNo type, int value) {
    if (table[name] != NULL) {
        error(DOUBLE_DECLARE);
    }
    Identifier * temp = new Constant(name, type, value);
    table[name] = temp;
    
    ge -> AllocateStack();
    
    temp -> offset = this -> offset;
    this -> offset += 4;
    temp -> addr = "[ebp - " + itoa(temp -> offset) + "]";
}

void IdentifierTable::EnterVariable(string name, symbolNo type, int size){
    if (table[name] != NULL) {
        error(DOUBLE_DECLARE);
    }
    Identifier * temp;
    if (size == 0) {
        temp = new Variable(name, type);
    }
    else temp = new Matrix(name, type, size);
    table[name] = temp;
    
    ge -> AllocateStack();
    
    temp -> offset = this -> offset;
    this -> offset += 4;
    temp -> addr = "[ebp - " + itoa(temp -> offset) + "]";
}

void IdentifierTable::EnterFunction(string name, symbolNo type, Parameter * list) {
    ERR("Log function in local IDT");
    exit(-1);
}

void GIdentifierTable::EnterConstant(string name, symbolNo type, int value) {
    if (table[name] != NULL) {
        error(DOUBLE_DECLARE);
    }
    Identifier * temp = new Constant(name, type, value);
    table[name] = temp;
    
    string label = "[label" + itoa(label_count++) + "]";
    temp -> addr = label;
    temp -> offset = 0;
    
    ge -> AllocateData(label, value);
}

void GIdentifierTable::EnterVariable(string name, symbolNo type, int size){
    if (table[name] != NULL) {
        error(DOUBLE_DECLARE);
    }
    Identifier * temp;
    if (size == 0) {
        temp = new Variable(name, type);
    }
    else temp = new Matrix(name, type, size);
    table[name] = temp;
    
    string label = "[label" + itoa(label_count++) + "]";
    temp -> addr = label;
    temp -> offset = 0;
    
    ge -> AllocateBss(label);
}

void GIdentifierTable::EnterFunction(string name, symbolNo type, Parameter * list) {
    if (table[name] != NULL) {
        error(DOUBLE_DECLARE);
    }
    Identifier * temp = new Function(name, type, list);
    table[name] = temp;
    
    string label = "[label" + itoa(label_count++) + "]";
    ge -> LabelledNop(label);
    temp -> addr = label;
    temp -> offset = 0;
}
