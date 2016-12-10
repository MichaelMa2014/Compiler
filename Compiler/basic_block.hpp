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
    vector<Quaternary *>::iterator begin;
    vector<Quaternary *>::iterator end;
};

#endif /* basic_block_hpp */
