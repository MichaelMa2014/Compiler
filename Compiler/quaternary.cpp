//
//  quarternary.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/20/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "quaternary.hpp"

string itoa(int i) {
    stringstream out;
    out << i;
    return out.str();
}

Quaternary::Quaternary(insNo i, Identifier * s1, Identifier * s2, Identifier * d) {
    this -> ins = i;
    this -> source1 = s1;
    this -> source2 = s2;
    this -> dest = d;
    this -> label_set = false;
    this -> label = "";
}

void Quaternary::SetLabel(string l) {
    this -> label_set = true;
    this -> label = l;
}

void Quaternary::Print() {
    // FIXME: Should we use this large function to translate from Quaternary to x86?

    if (label_set) {
        cout << label << ":" << endl;
    }

    cout << InsString[this -> ins];
    switch (this -> ins) {
        case mulIns:
        case divIns:
        case plusIns:
        case minusIns:
            cout << "[" << this -> source1 -> Addr() << "]" << " ";
            cout << "[" << this -> source2 -> Addr() << "]" << " ";
            cout << "[" << this -> dest -> Addr() << "]";
            break;
        case cmpIns:
            cout << "[" << this -> source1 -> Addr() << "]" << " ";
            cout << "[" << this -> source2 -> Addr() << "]";
            break;
        case movIns:
            cout << "[" << this -> dest -> Addr() << "]" << " ";
            cout << "[" << this -> source1 -> Addr() << "]";
            break;
        case extractIns:
            cout << "[" << this -> source1 -> Addr() << "]" << " ";
            cout << "[" << this -> source2 -> Addr() << "]" << " ";
            cout << "[" << this -> dest -> Addr() << "]";
            break;
        case callIns:
            cout << this -> source1 -> name << endl;
            cout << "mov            " << "[" << this -> dest -> Addr() << "] eax";
            break;
        case printIns:
            switch (this -> source1 -> Type()) {
                case stringId:
                    cout << "[" << this -> source1 -> Addr() << "]";
                    break;
                case constId:
                case varId:
                    cout << this -> source1 -> Kind() << " [" << this -> source1 -> Addr() << "]";
                    break;
                default:
                    break;
            }
            break;
        case returnIns:
            cout << "eax " << "[" << this -> source1 -> Addr() << "]";
            break;
        case retIns:
            break;

        default:
            break;
    }
    cout << endl;
}

Quaternary_immediate::Quaternary_immediate(insNo i, int num, Identifier * d) : Quaternary(i, NULL, NULL, d){
    this -> immediate = num;
}

void Quaternary_immediate::Print() {
    cout << InsString[this -> ins] << "[" << this -> dest -> Addr() << "] " << this -> immediate << endl;
}

Quaternary_label::Quaternary_label(insNo i, string l) : Quaternary(i, NULL, NULL, NULL) {
    this -> label = l;
}

void Quaternary_label::Print() {
    cout << InsString[this -> ins] << this -> label << endl;
}

Quaternary_data::Quaternary_data(string l, int v) : Quaternary(ddIns, NULL, NULL, NULL) {
    this -> label = l;
    this -> value = v;
}

void Quaternary_data::Print() {
    cout << this -> label << ":" << endl << InsString[this -> ins] << this -> value << endl;
}

Quaternary_bss::Quaternary_bss(string l) : Quaternary(resdIns, NULL, NULL, NULL) {
    this -> label = l;
}

void Quaternary_bss::Print() {
    cout << this -> label << ":" << endl << InsString[this -> ins] << endl;
}

Quaternary_string::Quaternary_string(string l, string v) : Quaternary(ddIns, NULL, NULL, NULL) {
    this -> label = l;
    this -> value = v;
}

void Quaternary_string::Print() {
    cout << this -> label << ":" << endl << InsString[this -> ins] << "\"" << this -> value << "\"" << endl;
}
