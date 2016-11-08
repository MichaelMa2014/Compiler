//
//  main.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/7/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include <iostream>


#include "Lexical.hpp"

int main(int argc, const char * argv[]) {
    init();
    
    LexicalDecoder ld = LexicalDecoder();
    
    LOG("Starting lexical decoding");
    
    while (true) {
        ld.NextWord();
        switch (ld.LastWordType()) {
            case symbols:
                cout << "symbol " << ld.LastSymbol() << " " << symbolString[ld.LastSymbol()] << endl;
                break;
            case identifiers:
                cout << "identifier " << ld.LastStr() << endl;
                break;
            case strings:
                cout << "string " << ld.LastStr() << endl;
                break;
            case numbers:
                cout << "number " << ld.LastNum() << endl;
                break;
            case characters:
                cout << "character " << ld.LastChar() << endl;
                break;
        }
    }
    return 0;
}
