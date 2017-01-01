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
    this -> label = "";
}

void Quaternary::Print() {
    // FIXME: Should we use this large function to translate from Quaternary to x86?

    string a;
    switch (this -> ins) {
        case nopIns:
            break;

        case extractIns:
            a = source1 -> Addr();
            if (a[0] == 'e' && a[1] == 'b' && a[2] == 'p') {
                output << "mov dword edx, ebp" << endl;
                output << "sub edx, " << source1 -> Offset() << endl;
                output << "sub edx, " << source2 -> Memory() << endl;
                output << "sub edx, " << source2 -> Memory() << endl;
                output << "sub edx, " << source2 -> Memory() << endl;
                output << "sub edx, " << source2 -> Memory() << endl;
            }
            else {
                output << "mov dword edx, " << source1 -> Addr() << endl;
                output << "add edx, " << source2 -> Memory() << endl;
                output << "add edx, " << source2 -> Memory() << endl;
                output << "add edx, " << source2 -> Memory() << endl;
                output << "add edx, " << source2 -> Memory() << endl;
            }
            output << "mov dword ecx, [edx]" << endl;
            output << "mov dword " << dest -> Memory() << ", ecx" << endl;
            break;

        case assignIns:
            if (source2 != NULL) {
                a = dest -> Addr();
                if (a[0] == 'e' && a[1] == 'b' && a[2] == 'p') {
                    output << "mov dword edx, ebp" << endl;
                    output << "sub edx, " << dest -> Offset() << endl;
                    output << "sub edx, " << source2 -> Memory() << endl;
                    output << "sub edx, " << source2 -> Memory() << endl;
                    output << "sub edx, " << source2 -> Memory() << endl;
                    output << "sub edx, " << source2 -> Memory() << endl;
                    output << "mov dword ecx, " << source1 -> Memory() << endl;
                    output << "mov dword [edx], ecx" << endl;
                }
                else {
                    output << "mov dword edx, " << dest -> Addr() << endl;
                    output << "add edx, " << source2 -> Memory() << endl;
                    output << "add edx, " << source2 -> Memory() << endl;
                    output << "add edx, " << source2 -> Memory() << endl;
                    output << "add edx, " << source2 -> Memory() << endl;
                    output << "mov dword ecx, " << source1 -> Memory() << endl;
                    output << "mov dword [edx], ecx" << endl;
                }
            }
            else {
                output << "mov dword ecx, " << source1 -> Memory() << endl;
                output << "mov dword " << dest -> Memory() << ", ecx" << endl;
            }
            break;

        case mulIns:
        case divIns:
            output << "mov dword eax, " << source1 -> Memory() << endl;
            output << "cdq" << endl;
            output << InsString[ins] << "dword " << source2 -> Memory() << endl;
            output << "mov dword " << dest -> Memory() << ", eax" << endl;
            break;
        case plusIns:
        case minusIns:
            output << "mov dword ecx, " << source1 -> Memory() << endl;
            output << InsString[ins] << "ecx, " << source2 -> Memory() << endl;
            output << "mov dword " << dest -> Memory() << ", ecx" << endl;
            break;

        case scanIns:
            output << "mov dword ebx, esp\nand ebx, 0xf\nadd ebx, 0x8\nsub esp, ebx" << endl;
            a = dest -> Addr();
            if (a[0] == 'e' && a[1] == 'b' && a[2] == 'p') {
                output << "mov dword edx, ebp" << endl;
                output << "sub edx, " << dest -> Offset() << endl;
            }
            else {
                output << "mov dword edx, " << dest -> Addr() << endl;
            }
            output << "push dword edx" << endl;
            if (dest -> Kind() == intSym) {
                output << "push dword scan_int" << endl;
            }
            else output << "push dword scan_char" << endl;
            output << "call _scanf" << endl;
            output << "add esp, 8\nadd esp, ebx" << endl;
            if (a[0] == 'e' && a[1] == 'b' && a[2] == 'p') {
                output << "mov dword edx, ebp" << endl;
                output << "sub edx, " << dest -> Offset() << endl;
            }
            else {
                output << "mov dword edx, " << dest -> Addr() << endl;
            }
            output << "and dword [edx], 0xff" << endl;
            break;

        case printIns:
            output << "mov dword ebx, esp\nand ebx, 0xf\nadd ebx, 0x8\nsub esp, ebx" << endl;
            switch (source1 -> Type()) {
                case stringId:
                    output << "push dword 0" << endl;
                    output << "push dword " << source1 -> Addr() << endl;
                    break;
                case constId:
                case varId:
                    output << "push dword " << source1 -> Memory() << endl;
                    if (source1 -> Kind() == intSym) {
                        output << "push dword print_int" << endl;
                    }
                    else output << "push dword print_char" << endl;
                    break;
                default:
                    break;
            }
            output << "call _printf" << endl;
            output << "add esp, 8\nadd esp, ebx" << endl;
            break;

        case cmpIns:
            output << "mov dword edx, " << source1 -> Memory() << endl;
            output << "mov dword ecx, " << source2 -> Memory() << endl;
            output << "cmp edx, ecx" << endl;
            break;

        case callIns:
            ERR("Wrong type of quaternary used.");

        case saveRetIns:
            output << InsString[ins] << "eax, " << source1 -> Memory() << endl;
            break;

        case getRetIns:
            output << InsString[ins] << dest -> Memory() << ", eax" << endl;
            break;


        default:
            output << InsString[ins] << endl;
            break;
    }
}

Quaternary_immediate::Quaternary_immediate(insNo i, int num, Identifier * d) : Quaternary(i, NULL, NULL, d){
    this -> immediate = num;
}

void Quaternary_immediate::Print() {
    if (dest != NULL) {
        output << InsString[ins] << "" << dest -> Memory() << ", " << immediate << endl;
    }
    else {
        output << "mov edx, ebp\nsub edx, esp\nmov ecx, " << immediate << endl;
        output << "sub ecx, edx\nsub esp, ecx" << endl;
    }
}

Quaternary_label::Quaternary_label(insNo i, string l) : Quaternary(i, NULL, NULL, NULL) {
    this -> label = l;
}

void Quaternary_label::Print() {
    if (ins == nopIns) {
        output << label << ": ";
        output << "nop" << endl;
    }
    else {
        output << InsString[ins] << label << endl;
    }
}

Quaternary_data::Quaternary_data(string l, int v) : Quaternary(ddIns, NULL, NULL, NULL) {
    this -> label = l;
    this -> value = v;
}

void Quaternary_data::Print() {
    output << label << ":" << endl << InsString[ins] << value << endl;
}

Quaternary_bss::Quaternary_bss(string l, int s) : Quaternary(resdIns, NULL, NULL, NULL) {
    this -> label = l;
    this -> size = s;
}

void Quaternary_bss::Print() {
    output << label << ":" << endl << InsString[ins] << " " << size << endl;
}

Quaternary_string::Quaternary_string(string l, string v) : Quaternary(ddIns, NULL, NULL, NULL) {
    this -> label = l;

    string::size_type index = v.find('\\', 0);
    while (index != string::npos) {
        v.insert(index, 1, '\\');
        index = v.find('\\', index + 2);
    }
    index = v.find('%', 0);
    while (index != string::npos) {
        v.insert(index, 1, '%');
        index = v.find('%', index + 2);
    }
    value = v + "\\n\\0";
}

void Quaternary_string::Print() {
    output << label << ":" << endl << InsString[ins] << "`" << value << "`" << endl;
//    output << ".len: equ $ - " << this -> label << endl;
}
