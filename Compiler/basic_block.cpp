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
    for (auto it = table.begin(); it != table.end(); it++) {
        Quaternary * temp = * it;
        
        switch (temp -> ins) {
            case nopIns:
                if (temp -> label_set) {
                    entrances.push_back(it);
                }
                break;
                
            case jngIns:
            case jngeIns:
            case jnlIns:
            case jnleIns:
            case jnzIns:
            case jzIns:
                entrances.push_back(++it);
                break;
                
            default:
                break;
        }
    }
    for (auto it = entrances.begin(); it != entrances.end(); it++) {
        QTable::const_iterator temp = * it;
        Quaternary * tempt = * temp;
        if (!dynamic_cast<Quaternary_label *>(tempt)) {
            ERR("WTF");
        }
    }
}

