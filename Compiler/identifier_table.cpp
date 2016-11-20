//
//  identifier_table.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/15/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "identifier_table.hpp"

Constant::Constant(symbolNo k, int v) {
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

Variable::Variable(symbolNo k) {
    this -> kind = k;
}

IdType Variable::Type() {
    return varId;
}

symbolNo Variable::Kind() {
    return this -> kind;
}

Matrix::Matrix(symbolNo k, int s) {
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

Function::Function(symbolNo k, Parameter * p) {
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
}

IdentifierTable::~IdentifierTable() {
    for (Table::iterator it = table.begin(); it != table.end(); it++) {
        delete it -> second;
        it -> second = NULL;
    }
}

const Identifier * IdentifierTable::Look(string name) {
    if (table[name] == NULL) {
        error(NO_DECLARE);
    }
    return table[name];
}

void IdentifierTable::EnterConstant(string name, symbolNo type, int value) {
    if (table[name] != NULL) {
        error(DOUBLE_DECLARE);
    }
    Identifier * temp = new Constant(type, value);
    table[name] = temp;
}

void IdentifierTable::EnterVariable(string name, symbolNo type, int size){
    if (table[name] != NULL) {
        error(DOUBLE_DECLARE);
    }
    Identifier * temp;
    if (size == 0) {
        temp = new Variable(type);
    }
    else temp = new Matrix(type, size);
    table[name] = temp;
}

void IdentifierTable::EnterFunction(string name, symbolNo type, Parameter * list) {
    if (table[name] != NULL) {
        error(DOUBLE_DECLARE);
    }
    Identifier * temp = new Function(type, list);
    table[name] = temp;
}

void GIdentifierTable::EnterConstant(string name, symbolNo type, int value) {
    if (table[name] != NULL) {
        error(DOUBLE_DECLARE);
    }
    Identifier * temp = new Constant(type, value);
    table[name] = temp;
}

void GIdentifierTable::EnterVariable(string name, symbolNo type, int size){
    if (table[name] != NULL) {
        error(DOUBLE_DECLARE);
    }
    Identifier * temp;
    if (size == 0) {
        temp = new Variable(type);
    }
    else temp = new Matrix(type, size);
    table[name] = temp;
}

void GIdentifierTable::EnterFunction(string name, symbolNo type, Parameter * list) {
    if (table[name] != NULL) {
        error(DOUBLE_DECLARE);
    }
    Identifier * temp = new Function(type, list);
    table[name] = temp;
}
