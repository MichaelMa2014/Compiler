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

int main(int argc, const char * argv[]) {
    init();
    
    ld = new LexicalDecoder();
    
    IdentifierTable * id = new IdentifierTable();
    GrammarDecoder * gd = new GrammarDecoder(id, id);
    
    ge = new Generator(id);
    
    ld -> NextWord();
    gd -> Program();
    
    for (vector<Quaternary *>::iterator it = table.begin(); it != table.end(); it++) {
        (* it) -> Print();
    }
    
    return 0;
}
