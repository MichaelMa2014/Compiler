//
//  basic_block.hpp
//  Compiler
//
//  Created by 马琛骁 on 12/10/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#ifndef basic_block_hpp
#define basic_block_hpp

#include <iostream>

#include "quaternary.hpp"

class Block {
    friend class BlockGraph;
private:
    int id;
    QTable::const_iterator begin;
    QTable::const_iterator end;
    vector<Block *> predecessors;
    Block * direct_successor;
    Block * jump_successor;
public:
    Block(int id, QTable::const_iterator begin, QTable::const_iterator end);
    string Label();
    void UpdateSuccessors();
    void AddPredecessor(Block * predecessor);
    
    bool UpdateInOut();
};

class BlockGraph {
private:
    vector<Block *> block_table;
    int count;
public:
    BlockGraph(const QTable table);
    void Construct();
    Block * LocateByLabel(string label);
    Block * LocateByEntrance(QTable::const_iterator entrance);
};

extern BlockGraph * bg;

#endif /* basic_block_hpp */
