//
//  quarternary.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/20/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "quaternary.hpp"

const char * InsString[INSNUM];

Quaternary::Quaternary(insNo i, Identifier * s1, Identifier * s2, Identifier * d) {
    InsString[0] = "nop            ";
    InsString[1] = "extractIns     ";
    InsString[2] = "assignIns      ";
    InsString[3] = "call           ";
    InsString[4] = "mov            ";
    InsString[5] = "mul            ";
    InsString[6] = "div            ";
    InsString[7] = "add            ";
    InsString[8] = "sub            ";
    InsString[9] = "neg            ";
    InsString[10] = "scanIns        ";
    InsString[11] = "printIns       ";
    InsString[12] = "allocIns       ";
    InsString[13] = "cmp            ";
    InsString[14] = "jng            ";
    InsString[15] = "jnge           ";
    InsString[16] = "jnl            ";
    InsString[17] = "jnle           ";
    InsString[18] = "jnz            ";
    InsString[19] = "jz             ";
    this -> ins = i;
    this -> source1 = s1;
    this -> source2 = s2;
    this -> dest = d;
}

void Quaternary::SetLabel(string l) {
    this -> label = l;
}

void Quaternary::Print() {
    // FIXME: Should we use this large function to translate from Quaternary to x86?
    if (ins == mulIns || ins == divIns || ins == plusIns || ins == minusIns) {
        cout << InsString[this -> ins] << " " << this -> source1 -> Addr() << " " << this -> source2 -> Addr() << " " << this -> dest -> Addr() << endl;
    }
    if (ins == movIns) {
        cout << InsString[this -> ins] << " " << this -> source1 -> Addr() << " " << this -> dest -> Addr() << endl;
    }
    if (ins == extractIns) {
        cout << InsString[this -> ins] << " " << this -> source1 -> Addr() << " " << this -> source2 -> Addr() << " " << this -> dest -> Addr() << endl;
    }
    if (ins == callIns) {
        cout << "call      " << this -> source1 -> name << endl;
        cout << "mov       " << this -> dest -> Addr() << " eax" << endl;
    }
}

Quaternary_immediate::Quaternary_immediate(insNo i, int num, Identifier * d) : Quaternary(i, NULL, NULL, d){
    this -> immediate = num;
}

Quaternary_label::Quaternary_label(insNo i, string l) : Quaternary(i, NULL, NULL, NULL) {
    this -> label = l;
}

void Quaternary_immediate::Print() {
    cout << InsString[this -> ins] << " " << this -> immediate << " " << this -> dest -> Addr() << endl;
}

string itoa(int i) {
    stringstream out;
    out << i;
    return out.str();
}
