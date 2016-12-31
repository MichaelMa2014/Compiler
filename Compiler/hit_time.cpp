//
//  hit_time.cpp
//  Compiler
//
//  Created by 马琛骁 on 12/31/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include <map>

#include "hit_time.hpp"

extern string itoa(int i);

typedef map<string, int> HitTable;
HitTable hit_table;
IdTable all_idt;

void Optimizer::HitTimePass() {
    for (auto it = table.begin(); it != table.end(); it++) {
        auto temp = * it;
        if (temp -> source1 != NULL) {
            hit_table[temp -> source1 -> name] += 1;
            all_idt[temp -> source1 -> name] = temp -> source1;
        }
        if (temp -> source2 != NULL) {
            hit_table[temp -> source2 -> name] += 1;
            all_idt[temp -> source2 -> name] = temp -> source2;
        }
        if (temp -> dest) {
            hit_table[temp -> dest -> name] += 1;
            all_idt[temp -> dest -> name] = temp -> dest;
        }
    }
    int max = 0;
    string name;
    for (auto it = hit_table.begin(); it != hit_table.end(); it++) {
        if (it -> second > max && all_idt[it -> first] -> Type() == varId) {
            max = it -> second;
            name = it -> first;
        }
    }
    LOG("The identifier " + name + " is used " + itoa(max) + " times");
    for (auto it = table.begin(); it != table.end(); it++) {
        auto temp = * it;
        if (temp -> source1 != NULL && temp -> source1 -> name == name) {
            temp -> source1 -> addr = "esi";
        }
        if (temp -> source2 != NULL && temp -> source2 -> name == name) {
            temp -> source2 -> addr = "esi";
        }
        if (temp -> dest != NULL && temp -> dest -> name == name) {
            temp -> dest -> addr = "esi";
        }
    }
    hit_table[name] = 0;
    max = 0;
    name.clear();
    for (auto it = hit_table.begin(); it != hit_table.end(); it++) {
        if (it -> second > max && all_idt[it -> first] -> Type() == varId) {
            max = it -> second;
            name = it -> first;
        }
    }
    LOG("The identifier " + name + " is used " + itoa(max) + " times");
//    for (auto it = table.begin(); it != table.end(); it++) {
//        auto temp = * it;
//        if (temp -> source1 != NULL && temp -> source1 -> name == name) {
//            temp -> source1 -> addr = "edi";
//        }
//        if (temp -> source2 != NULL && temp -> source2 -> name == name) {
//            temp -> source2 -> addr = "edi";
//        }
//        if (temp -> dest != NULL && temp -> dest -> name == name) {
//            temp -> dest -> addr = "edi";
//        }
//    }
}
