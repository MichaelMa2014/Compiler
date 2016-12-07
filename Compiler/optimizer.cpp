//
//  optimizer.cpp
//  Compiler
//
//  Created by 马琛骁 on 12/5/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "optimizer.hpp"

Node::Node() {
    ins = nopIns;
    left = right = NULL;
    names.clear();
    parents.clear();
}

bool Node::operator==(Quaternary * quaternary) {
    return this -> ins == quaternary -> ins &&
            left -> contains(quaternary -> source1 -> name) &&
            right -> contains(quaternary -> source2 -> name);
}

bool Node::contains(string name) {
    return find(names.begin(), names.end(), name) != names.end();
}

Dag::Dag() {
    node_table.clear();
}

Dag::~Dag() {
    // How can I possibly find all the nodes...
}

bool Dag::AllParentsInStack(Node * node) {
    for (auto it = node -> parents.begin(); it != node -> parents.end(); it++) {
        if (find(stack.begin(), stack.end(), * it) == stack.end()) {
            return false;
        }
    }
    return true;
}

void Dag::Execute(InsTable & o_table) {
    // Repeat until every node is deleted (source nodes) or moved to stack (dest nodes)
    while (!node_table.empty()) {
        for (auto it = node_table.rbegin(); it != node_table.rend(); it++) {
            Node * temp = * it;
            
            // Some parents haven't entered, wait until next pass
            if (!AllParentsInStack(temp)) {
                continue;
            }
            
            auto index = find(node_table.begin(), node_table.end(), temp);
            node_table.erase(index);
            
            // Source nodes do not enter stack
            if (temp -> left == NULL) {
                continue;
            }
            
            stack.push_back(temp);
            temp = temp -> left;
            
            while (temp -> left != NULL) {
                if (AllParentsInStack(temp -> left)) {
                    stack.push_back(temp -> left);
                    
                    index = find(node_table.begin(), node_table.end(), temp -> left);
                    node_table.erase(index);
                    
                    temp = temp -> left;
                }
                else {
                    break;
                }
            }
        }
    }
    for (auto it = stack.rbegin(); it != stack.rend(); it++) {
        Node * temp = * it;
        
        auto range = node_map.equal_range(temp);
        auto first = range.first;
        auto last = range.second;
        
        Identifier * dest_id = first -> second;
        o_table.push_back(new Quaternary(temp -> ins, node_map.find(temp -> left) -> second, node_map.find(temp -> right) -> second, dest_id));
        
        for (first++; first != last; first++) {
            o_table.push_back(new Quaternary(assignIns, dest_id, NULL, first -> second));
        }
    }
}

void Dag::AddNode(Quaternary * quaternary) {
    bool found = false;
    for (auto it = node_table.begin(); it != node_table.end(); it++) {
        if (*(* it) == quaternary) {
            (* it) -> names.push_back(quaternary -> dest -> name);
            node_map.insert(pair<Node *, Identifier *>(* it, quaternary -> dest));
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
            temp_left = new Node();
            temp_left -> names.push_back(quaternary -> source1 -> name);
            node_map.insert(pair<Node *, Identifier *>(temp_left, quaternary -> source1));
        }
        if (temp_right == NULL) {
            temp_right = new Node();
            temp_right -> names.push_back(quaternary -> source2 -> name);
            node_map.insert(pair<Node *, Identifier *>(temp_right, quaternary -> source2));
        }
        Node * temp = new Node();
        temp -> ins = quaternary -> ins;
        temp -> names.push_back(quaternary -> dest -> name);
        node_map.insert(pair<Node *, Identifier *>(temp, quaternary -> dest));
        temp -> left = temp_left;
        temp_left -> parents.push_back(temp);
        temp -> right = temp_right;
        temp_right -> parents.push_back(temp);
        node_table.push_back(temp);
    }
}

Optimizer::Optimizer(InsTable t) {
    dag = NULL;
    this -> table = t;
}

InsTable Optimizer::Execute() {
    DagPass();
    return table;
}

void Optimizer::DagPass() {
    InsTable o_table;
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
                
//            case assignIns:
//                if (dag != NULL && dynamic_cast<Quaternary_immediate *>(* it) == NULL) {
//                    dag -> Execute(o_table);
//                    delete dag;
//                    dag = NULL;
//                }
//                o_table.push_back(* it);
//                break;
                
            case allocIns:
                o_table.push_back(* it);
                break;
                
            default:
                if (dag != NULL) {
                    dag -> Execute(o_table);
                    delete dag;
                    dag = NULL;
                }
                o_table.push_back(* it);
                break;
        }
    }
    table = o_table;
}
