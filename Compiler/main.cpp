//
//  main.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/7/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include <iostream>
#include <fstream>

#include "Lexical.hpp"
#include "grammar.hpp"
#include "identifier_table.hpp"
#include "quaternary.hpp"

LexicalDecoder * ld;
Generator * ge;
QTable code_table;
QTable data_table;
QTable bss_table;

ofstream output;

int main(int argc, const char * argv[]) {
    init();
    
    ld = new LexicalDecoder();
    
    string output_path = "/Users/MichaelMa/Dropbox/Xcode/Compiler/Assembly/test.asm";
    
    if (!MYDEBUG) {
        cout << "Please input the full path to the output file" << endl;
        cout << "Example: C:\\Assembly\\test.asm" << endl;
        cin >> output_path;
    }
    
    output.open(output_path.c_str());
    
    GIdentifierTable * id = new GIdentifierTable();
    GrammarDecoder * gd = new GrammarDecoder(id, id);
    
    ge = new Generator(id);
    
    ld -> NextWord();
    gd -> Program();
    
    
    output << "global _test\nextern _printf\nextern _scanf\n";
    
    output << endl << "section .text" << endl;
    for (QTable::iterator it = code_table.begin(); it != code_table.end(); it++) {
        (* it) -> Print();
    }
    
    output << endl << "section .data" << endl;
    output << "command_int: dd `%d\\n\\0`" << endl;
    output << "command_char: dd `%c\\n\\0`" << endl;
    for (QTable::iterator it = data_table.begin(); it != data_table.end(); it++) {
        (* it) -> Print();
    }
    
    output << endl << "section .bss" << endl;
    for (QTable::iterator it = bss_table.begin(); it != bss_table.end(); it++) {
        (* it) -> Print();
    }
    
    return 0;
}
