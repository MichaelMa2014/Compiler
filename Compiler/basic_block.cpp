//
//  basic_block.cpp
//  Compiler
//
//  Created by 马琛骁 on 12/10/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "basic_block.hpp"
#include "quaternary.hpp"

Block::Block(int i, QTable::const_iterator b, QTable::const_iterator e) {
    this -> id = i;
    this -> begin = b;
    this -> end = e;
    this -> predecessors.clear();
}

string Block::Label() {
    Quaternary * first = * (this -> begin);
    if (dynamic_cast<Quaternary_label *>(first)) {
        return first -> label;
    }
    else return "";
}

void Block::UpdateSuccessors() {
    Quaternary * last = * (end - 1);
    if (last -> ins == jmpIns) {
        this -> direct_successor = NULL;
        
        Block * dest = bg -> LocateByLabel(last -> label);
        if (dest == NULL) {
            ERR("LocateByLabel returned NULL");
        }
        this -> jump_successor = dest;
        dest -> AddPredecessor(this);
    }
    else {
        Block * next = bg -> LocateByEntrance(end);
        if (next == NULL) {
            ERR("LocateByEntrance returned NULL");
        }
        this -> direct_successor = next;
        next -> AddPredecessor(this);
        
        switch (last -> ins) {
            case jngIns:
            case jngeIns:
            case jnlIns:
            case jnleIns:
            case jnzIns:
            case jzIns:
            case callIns:
                next = bg -> LocateByLabel(last -> label);
                if (next == NULL) {
                    ERR("LocateByLabel returned NULL");
                }
                this -> jump_successor = next;
                next -> AddPredecessor(this);
                break;
                
            default:
                this -> jump_successor = NULL;
                break;
        }
    }
}

void Block::AddPredecessor(Block * predecessor) {
    this -> predecessors.push_back(predecessor);
}

bool Block::UpdateInOut() {
    return true;
}

BlockGraph::BlockGraph(const QTable table) {
    count = 0;
    block_table.clear();
    
    vector<QTable::const_iterator> entrances;
    
    QTable::const_iterator last_en;
    QTable::const_iterator this_en;
    
    for (auto it = table.begin(); it != table.end(); it++) {
        Quaternary * temp = * it;
        if (it == table.begin()) {
            entrances.push_back(it);
        }
        else if (dynamic_cast<Quaternary_label *>(temp)) {
            if (temp -> ins == nopIns) {
                // This label will be jumped to
                entrances.push_back(it);
            }
            else {
                // This is a jump instruction
                entrances.push_back(++it);
                LOG(InsString[temp -> ins]);
            }
        }
    }
    
    this_en = * entrances.begin();
    for (auto it = entrances.begin() + 1; it != entrances.end(); it++) {
        QTable::const_iterator temp = * it;
        last_en = this_en;
        this_en = temp;
        Block * new_block = new Block(count++, last_en, this_en);
        block_table.push_back(new_block);
    }
}

void BlockGraph::Construct() {
    for (auto it = block_table.begin(); it != block_table.end(); it++) {
        Block * temp = * it;
        temp -> UpdateSuccessors();
    }
}

Block * BlockGraph::LocateByLabel(string label) {
    for (auto it = block_table.begin(); it != block_table.end(); it++) {
        Block * temp = * it;
        if (temp -> Label().length() != 0 && temp -> Label() == label) {
            return temp;
        }
    }
    return NULL;
}

Block * BlockGraph::LocateByEntrance(QTable::const_iterator entrance) {
    for (auto it = block_table.begin(); it != block_table.end(); it++) {
        Block * temp = * it;
        if (temp -> begin == entrance) {
            return temp;
        }
    }
    return NULL;
}

