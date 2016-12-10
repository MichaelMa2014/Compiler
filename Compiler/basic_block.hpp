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
private:
    QTable::iterator begin;
    QTable::iterator end;
    vector<Block *> predecessors;
    vector<Block *> successors;
};

class BlockGraph {
private:
    vector<QTable> blocktable;
    void Construct(const QTable table);
};

#endif /* basic_block_hpp */
