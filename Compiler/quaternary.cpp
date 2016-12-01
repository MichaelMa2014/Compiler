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
        output << label << ":" << endl;
    }
    
    string a;
    switch (this -> ins) {
        case nopIns:
            output << "nop" << endl;
            break;
            
        case extractIns:
            a = source1 -> Addr();
            if (a[0] == 'e' && a[1] == 'b' && a[2] == 'p') {
                output << "mov dword ebx, ebp" << endl;
                output << "sub ebx, " << source1 -> Offset() << endl;
                output << "sub ebx, [" << source2 -> Addr() << "]" << endl;
            }
            else {
                output << "mov dword ebx, " << source1 -> Addr() << endl;
                output << "add ebx, [" << source2 -> Addr() << "]" << endl;
            }
            output << "mov dword ecx, [ebx]" << endl;
            output << "mov dword [" << this -> dest -> Addr() << "], ecx" << endl;
            break;
            
        case assignIns:
            if (source2 != NULL) {
                a = dest -> Addr();
                if (a[0] == 'e' && a[1] == 'b' && a[2] == 'p') {
                    output << "mov dword ebx, ebp" << endl;
                    output << "sub ebx, " << dest -> Offset() << endl;
                    output << "sub ebx, [" << source2 -> Addr() << "]" << endl;
                    output << "mov dword ecx, [" << source1 -> Addr() << "]" << endl;
                    output << "mov dword [ebx], ecx" << endl;
                }
                else {
                    output << "mov dword ebx, " << dest -> Addr() << endl;
                    output << "add ebx, [" << source2 -> Addr() << "]" << endl;
                    output << "mov dword ecx, [" << source1 -> Addr() << "]" << endl;
                    output << "mov dword [ebx], ecx" << endl;
                }
            }
            else {
                output << "mov dword ecx, [" << source1 -> Addr() << "]" << endl;
                output << "mov dword [" << dest -> Addr() << "], ecx" << endl;
            }
            break;
            
        case mulIns:
        case divIns:
            output << "mov dword eax, [" << this -> source1 -> Addr() << "]" << endl;
            output << InsString[this -> ins] << "dword [" << this -> source2 -> Addr() << "]" << endl;
            output << "mov dword [" << this -> dest -> Addr() << "], eax" << endl;
            break;
        case plusIns:
        case minusIns:
            output << "mov dword ecx, [" << this -> source1 -> Addr() << "]" << endl;
            output << InsString[this -> ins] << "ecx, [" << this -> source2 -> Addr() << "]" << endl;
            output << "mov dword [" << this -> dest -> Addr() << "], ecx" << endl;
            break;
            
        case scanIns:
            output << "mov dword edx, esp\nand edx, 0xf\nadd edx, 0x8\nsub esp, edx" << endl;
            a = dest -> Addr();
            if (a[0] == 'e' && a[1] == 'b' && a[2] == 'p') {
                output << "mov dword ebx, ebp" << endl;
                output << "sub ebx, " << dest -> Offset() << endl;
            }
            else {
                output << "mov dword ebx, " << dest -> Addr() << endl;
            }
            output << "push dword ebx" << endl;
            if (this -> dest -> Kind() == intSym) {
                output << "push dword command_int" << endl;
            }
            else output << "push dword command_char" << endl;
            output << "call _scanf" << endl;
            output << "add esp, 8\nadd esp, edx" << endl;
            break;
            
        case printIns:
            output << "mov dword edx, esp\nand edx, 0xf\nadd edx, 0x8\nsub esp, edx" << endl;
            switch (this -> source1 -> Type()) {
                case stringId:
                    output << "push dword 0" << endl;
                    output << "push dword " << this -> source1 -> Addr() << endl;
                    break;
                case constId:
                case varId:
                    output << "push dword [" << this -> source1 -> Addr() << "]" << endl;
                    if (this -> source1 -> Kind() == intSym) {
                        output << "push dword command_int" << endl;
                    }
                    else output << "push dword command_char" << endl;
                    break;
                default:
                    break;
            }
            output << "call _printf" << endl;
            output << "add esp, 8\nadd esp, edx" << endl;
            break;
            
        case cmpIns:
            output << "mov dword ebx, [" << this -> source1 -> Addr() << "]" << endl;
            output << "mov dword ecx, [" << this -> source2 -> Addr() << "]" << endl;
            output << "cmp ebx, ecx" << endl;
            break;
            
        case callIns:
            ERR("Wrong type of quaternary used.");
        
        case saveRetIns:
            output << InsString[this -> ins] << "eax, [" << this -> source1 -> Addr() << "]" << endl;
            break;
            
        case getRetIns:
            output << InsString[this -> ins] << "[" << this -> dest -> Addr() << "], eax" << endl;
            break;
            
        
        default:
            output << InsString[this -> ins] << endl;
            break;
    }
}

Quaternary_immediate::Quaternary_immediate(insNo i, int num, Identifier * d) : Quaternary(i, NULL, NULL, d){
    this -> immediate = num;
}

void Quaternary_immediate::Print() {
    if (this -> dest != NULL) {
        output << InsString[this -> ins] << "[" << this -> dest -> Addr() << "], " << this -> immediate << endl;
    }
    else {
        output << "mov ebx, ebp\nsub ebx, esp\nmov ecx, " << this -> immediate << endl;
        output << "sub ecx, ebx\nsub esp, ecx" << endl;
    }
}

Quaternary_label::Quaternary_label(insNo i, string l) : Quaternary(i, NULL, NULL, NULL) {
    this -> label = l;
}

void Quaternary_label::Print() {
    output << InsString[this -> ins] << this -> label << endl;
}

Quaternary_data::Quaternary_data(string l, int v) : Quaternary(ddIns, NULL, NULL, NULL) {
    this -> label = l;
    this -> value = v;
}

void Quaternary_data::Print() {
    output << this -> label << ":" << endl << InsString[this -> ins] << this -> value << endl;
}

Quaternary_bss::Quaternary_bss(string l, int s) : Quaternary(resdIns, NULL, NULL, NULL) {
    this -> label = l;
    this -> size = s;
}

void Quaternary_bss::Print() {
    output << this -> label << ":" << endl << InsString[this -> ins] << " " << this -> size << endl;
}

Quaternary_string::Quaternary_string(string l, string v) : Quaternary(ddIns, NULL, NULL, NULL) {
    this -> label = l;
    this -> value = v + "\\n\\0";
}

void Quaternary_string::Print() {
    output << this -> label << ":" << endl << InsString[this -> ins] << "`" << this -> value << "`" << endl;
//    output << ".len: equ $ - " << this -> label << endl;
}
