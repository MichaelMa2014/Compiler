//
//  optimizer.hpp
//  Compiler
//
//  Created by 马琛骁 on 12/5/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#ifndef optimizer_hpp
#define optimizer_hpp

#include <algorithm>
#include <map>

#include "init.hpp"
#include "quaternary.hpp"

typedef vector<Quaternary *> InsTable;

class Node;
typedef vector<Node *> NodeV;
typedef map<Node *, Identifier *> NodeMap;

class Node {
public:
    Node();
    insNo ins;
    Node * left;
    Node * right;
    vector<string> names;
    NodeV parents;
    bool operator== (Quaternary * quaternary);
    bool contains(string name);
};

class Dag {
    NodeV node_table;
    NodeMap node_map;
    NodeV stack;
public:
    Dag();
    ~Dag();
    bool AllParentsInStack(Node * node);
    void Execute(InsTable & otable);
    void AddNode(Quaternary * quaternary);
};

class Optimizer {
private:
    InsTable table;
    Dag * dag;
public:
    Optimizer(InsTable table);
    InsTable Execute();
    void DagPass();
};

#endif /* optimizer_hpp */
