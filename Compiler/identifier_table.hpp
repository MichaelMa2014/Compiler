//
//  identifier_table.hpp
//  Compiler
//
//  Created by 马琛骁 on 11/15/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#ifndef identifier_table_hpp
#define identifier_table_hpp

#include <map>
#include <vector>

#include "init.hpp"
#include "error.hpp"

enum IdType {constId, varId, matId, funcId};

typedef vector<symbolNo> Parameter;

class Identifier {
    friend class IdentifierTable;
    friend class GIdentifierTable;
private:
    string addr;
    int offset;
public:
    string name;
    Identifier(string name);
    string Addr() {
        return this -> addr;
    }
    int Offset() {
        return this -> offset;
    }
    virtual IdType Type() {
        ERR("Identifier::Type() called");
        exit(-1);
    }
    virtual symbolNo Kind() {
        ERR("Identifier::Kind() called");
        exit(-1);
    }
    virtual int Size() {
        ERR("Identifier::Size() called");
        exit(-1);
    }
    virtual int Value() {
        ERR("Identifier::Value() called");
        exit(-1);
    }
    virtual Parameter * Parameters() {
        ERR("Identifier::Parameters() called");
        exit(-1);
    }
};

typedef map<string, Identifier *> Table;

class Constant : public Identifier {
private:
    symbolNo kind;
    int value;
public:
    Constant(string name, symbolNo kind, int value);
    virtual IdType Type();
    virtual symbolNo Kind();
    virtual int Value();
};

class Variable : public Identifier {
private:
    symbolNo kind;
public:
    Variable(string name, symbolNo kind);
    virtual IdType Type();
    virtual symbolNo Kind();
};

class Matrix : public Identifier {
private:
    symbolNo kind;
    int size;
public:
    Matrix(string name, symbolNo kind, int size);
    virtual IdType Type();
    virtual symbolNo Kind();
    virtual int Size();
};

class Function : public Identifier {
private:
    symbolNo kind;
    Parameter * parameters;
public:
    Function(string name, symbolNo kind, Parameter * parameters);
    ~Function();
    virtual IdType Type();
    virtual symbolNo Kind();
    virtual Parameter * Parameters();
};

class IdentifierTable {
private:
    int offset; // a multiple of 4
protected:
    Table table;
public:
    IdentifierTable();
    ~IdentifierTable();
    Identifier * Look(string name);
    virtual void EnterConstant(string name, symbolNo type, int value);
    virtual void EnterVariable(string name, symbolNo type, int size);
    virtual void EnterFunction(string name, symbolNo type, Parameter * list);
};

class GIdentifierTable : public IdentifierTable {
private:
    int label_count;
public:
    virtual void EnterConstant(string name, symbolNo type, int value);
    virtual void EnterVariable(string name, symbolNo type, int size);
    virtual void EnterFunction(string name, symbolNo type, Parameter * list);
};

#endif /* identifier_table_hpp */
