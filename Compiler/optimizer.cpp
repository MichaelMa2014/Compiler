//
//  optimizer.cpp
//  Compiler
//
//  Created by 马琛骁 on 12/5/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "optimizer.hpp"

bool Node::operator==(Quaternary * quaternary) {
    return this -> ins == quaternary -> ins &&
            find(left -> names.begin(), left -> names.end(), quaternary -> source1 -> name) != left -> names.end() &&
            find(right -> names.begin(), right -> names.end(), quaternary -> source2 -> name) != right -> names.end();
}

bool Node::contains(string name) {
    return find(names.begin(), names.end(), name) != names.end();
}

Dag::Dag() {
    table.clear();
}

void Dag::AddNode(Quaternary * quaternary) {
    bool found = false;
    for (auto it = node_table.begin(); it != node_table.end(); it++) {
        if (*(* it) == quaternary) {
            (* it) -> names.push_back(quaternary -> dest -> name);
            found = true;
            break;
        }
    }
    if (!found) {
        Node * temp_left = NULL, * temp_right = NULL;
        for (auto it = node_table.begin(); it != node_table.end(); it++) {
            if ((* it) -> contains(quaternary -> source1 -> name)) {
                temp_left = * it;
            }
            if ((* it) -> contains(quaternary -> source2 -> name)) {
                temp_right = * it;
            }
        }
        if (temp_left == NULL) {
            for (auto it = node_table.begin(); it != node_table.end(); it++) {
                if ((* it) -> contains(quaternary -> source1 -> name + "0")) {
                    temp_left = * it;
                }
            }
        }
        if (temp_right == NULL) {
            for (auto it = node_table.begin(); it != node_table.end(); it++) {
                if ((* it) -> contains(quaternary -> source2 -> name + "0")) {
                    temp_right = * it;
                }
            }
        }
        if (temp_left == NULL) {
            temp_left = new Node();
            temp_left -> names.push_back(quaternary -> source1 -> name + "0");
        }
        if (temp_right == NULL) {
            temp_right = new Node();
            temp_right -> names.push_back(quaternary -> source2 -> name + "0");
        }
        Node * temp = new Node();
        temp -> names.push_back(quaternary -> dest -> name);
        temp -> left = temp_left;
        temp -> right = temp_right;
        node_table.push_back(temp);
    }
}


void Optimizer::DagPass() {
    o_table.clear();
    for (auto it = table.begin(); it != table.end(); it++) {
        switch ((* it) -> ins) {
            case mulIns:
            case divIns:
            case plusIns:
            case minusIns:
                if (dag == NULL) {
                    dag = new Dag();
                }
                dag -> AddNode(* it);
                break;
                
            default:
                if (dag != NULL) {
                    dag -> Execute();
                    delete dag;
                    dag = NULL;
                }
                o_table.push_back(* it);
                break;
        }
    }
    table = o_table;
}
