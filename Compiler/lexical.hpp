//
//  Lexical.hpp
//  Compiler
//
//  Created by 马琛骁 on 11/7/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#ifndef lexical_hpp
#define lexical_hpp

#include <fstream>
#include <cctype>
#include <cstdlib>

#include "init.hpp"
#include "error.hpp"

#define LINELENGTH 80
#define PATHLENGTH 80

using namespace std;

enum wordType {symbols, identifiers, strings, numbers, characters};
//enum idType {variable, constant, matrix, function};

class LexicalDecoder {
private:
    ifstream * source;
    
    char lastLine[LINELENGTH];
    
    int pointer;
    
    wordType lastWord;
    symbolNo lastSymbol;
    string lastStr;
    int lastNum;
    char lastChar;
public:
    LexicalDecoder();
    ~LexicalDecoder();
    
    void NextWord();
    
    wordType LastWordType();
    symbolNo LastSymbol();
    string LastStr();
    int LastNum();
    char LastChar();
};

#endif /* Lexical_hpp */
