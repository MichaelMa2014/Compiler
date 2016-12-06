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

#include "init.hpp"
#include "quaternary.hpp"

class Node {
public:
    vector<string> names;
    insNo ins;
    Node * left;
    Node * right;
    bool operator== (Quaternary * quaternary);
    bool Node::contains(string name);
};

class Dag {
    vector<Node *> node_table;
public:
    Dag();
    void AddNode(Quaternary * quaternary);
    void Execute();
};

class Optimizer {
private:
    vector<Quaternary *> table;
    vector<Quaternary *> o_table;
    Dag * dag;
public:
    void DagPass();
};

#endif /* optimizer_hpp */
