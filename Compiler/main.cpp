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

int main(int argc, const char * argv[]) {
    init();
    
    LexicalDecoder * ld = new LexicalDecoder();
    GrammarDecoder * gd = new GrammarDecoder(ld);
    
    ld -> NextWord();
    gd -> Program();
    
    return 0;
}
