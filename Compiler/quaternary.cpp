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
    
    switch (this -> ins) {
        case nopIns:
            cout << "nop" << endl;
            break;
            
        case extractIns:
            cout << "mov ebx, " << this -> source1 -> Addr() << endl;
            cout << "add ebx, [" << this -> source2 -> Addr() << "]" << endl;
            cout << "mov ecx, [ebx]" << endl;
            cout << "mov [" << this -> dest -> Addr() << "], ecx" << endl;
            break;
            
        case assignIns:
            if (source2 != NULL) {
                string a = dest -> Addr();
                if (a[0] == 'e' && a[1] == 'b' && a[2] == 'p') {
                    cout << "mov ebx, ebp" << endl;
                    cout << "sub ebx, " << dest -> Offset() << endl;
                    cout << "sub ebx, [" << source2 -> Addr() << "]" << endl;
                    cout << "mov ecx, [" << source1 -> Addr() << "]" << endl;
                    cout << "mov [ebx], ecx" << endl;
                }
                else {
                    cout << "mov ebx, " << dest -> Addr() << endl;
                    cout << "add ebx, [" << source2 -> Addr() << "]" << endl;
                    cout << "mov ecx, [" << source1 -> Addr() << "]" << endl;
                    cout << "mov [ebx], ecx" << endl;
                }
            }
            else {
                cout << "mov ecx, [" << source1 -> Addr() << "]" << endl;
                cout << "mov [" << dest -> Addr() << "], ecx" << endl;
            }
            break;
            
        case mulIns:
        case divIns:
            cout << "mov eax, [" << this -> source1 -> Addr() << "]" << endl;
            cout << InsString[this -> ins] << "dword [" << this -> source2 -> Addr() << "]" << endl;
            cout << "mov [" << this -> dest -> Addr() << "], eax" << endl;
            break;
        case plusIns:
        case minusIns:
            cout << "mov ecx, [" << this -> source1 -> Addr() << "]" << endl;
            cout << InsString[this -> ins] << "ecx, [" << this -> source2 -> Addr() << "]" << endl;
            cout << "mov [" << this -> dest -> Addr() << "], ecx" << endl;
            break;
            
        case scanIns:
            cout << "mov eax, esp\nand eax, 0xf\nadd eax, 0x8\nsub esp, eax" << endl;
            cout << "push dword " << this -> dest -> Addr() << endl;
            if (this -> dest -> Kind() == intSym) {
                cout << "push dword command_int" << endl;
            }
            else cout << "push dword command_char" << endl;
            cout << "call _scanf" << endl;
            
            break;
            
        case printIns:
        cout << "mov eax, esp\nand eax, 0xf\nadd eax, 0x8\nsub esp, eax" << endl;
            switch (this -> source1 -> Type()) {
                case stringId:
                    cout << "push dword 0" << endl;
                    cout << "push dword " << this -> source1 -> Addr() << endl;
                    break;
                case constId:
                case varId:
                    cout << "push dword [" << this -> source1 -> Addr() << "]" << endl;
                    if (this -> source1 -> Kind() == intSym) {
                        cout << "push dword command_int" << endl;
                    }
                    else cout << "push dword command_char" << endl;
                    break;
                default:
                    break;
            }
            cout << "call _printf" << endl;
            break;
            
        case cmpIns:
            cout << "mov ebx, [" << this -> source1 -> Addr() << "]" << endl;
            cout << "mov ecx, [" << this -> source2 -> Addr() << "]" << endl;
            cout << "cmp ebx, ecx" << endl;
            break;
            
        case callIns:
            ERR("Wrong type of quaternary used.");
        
        case saveRetIns:
            cout << InsString[this -> ins] << "eax, [" << this -> source1 -> Addr() << "]" << endl;
            break;
            
        case getRetIns:
            cout << InsString[this -> ins] << "[" << this -> dest -> Addr() << "], eax" << endl;
            break;
            
        
        default:
            cout << InsString[this -> ins] << endl;
            break;
    }
}

Quaternary_immediate::Quaternary_immediate(insNo i, int num, Identifier * d) : Quaternary(i, NULL, NULL, d){
    this -> immediate = num;
}

void Quaternary_immediate::Print() {
    cout << InsString[this -> ins] << "[" << this -> dest -> Addr() << "], " << this -> immediate << endl;
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
    this -> value = v + "\\n\\0";
}

void Quaternary_string::Print() {
    cout << this -> label << ":" << endl << InsString[this -> ins] << "`" << this -> value << "`" << endl;
//    cout << ".len: equ $ - " << this -> label << endl;
}
