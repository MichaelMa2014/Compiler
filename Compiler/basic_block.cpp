//
//  basic_block.cpp
//  Compiler
//
//  Created by 马琛骁 on 12/10/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "basic_block.hpp"

void BlockGraph::Construct(const QTable table) {
    vector<QTable::const_iterator> entrances;
    
    QTable::const_iterator last_en;
    QTable::const_iterator this_en;
    
    for (auto it = table.begin(); it != table.end(); it++) {
        Quaternary * temp = * it;
        
        if (dynamic_cast<Quaternary_label *>(temp)) {
            if (temp -> ins == nopIns) {
                entrances.push_back(it);
            }
            else {
                entrances.push_back(++it);
            }
        }
        
        
    }
    
    
}

