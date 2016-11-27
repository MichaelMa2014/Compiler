//
//  main.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/7/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include <iostream>


#include "Lexical.hpp"
#include "grammar.hpp"
#include "identifier_table.hpp"


LexicalDecoder * ld;
Generator * ge;
vector<Quaternary *> table;
vector<Quaternary *> data_table;
vector<Quaternary *> bss_table;

int main(int argc, const char * argv[]) {
    init();
    
    ld = new LexicalDecoder();
    
    GIdentifierTable * id = new GIdentifierTable();
    GrammarDecoder * gd = new GrammarDecoder(id, id);
    
    ge = new Generator(id);
    
    ld -> NextWord();
    gd -> Program();
    
    for (vector<Quaternary *>::iterator it = table.begin(); it != table.end(); it++) {
        (* it) -> Print();
    }
    
    cout << endl << "section .data" << endl;
    for (vector<Quaternary *>::iterator it = data_table.begin(); it != data_table.end(); it++) {
        (* it) -> Print();
    }
    
    cout << endl << "section .bss" << endl;
    for (vector<Quaternary *>::iterator it = bss_table.begin(); it != bss_table.end(); it++) {
        (* it) -> Print();
    }
    
    return 0;
}
