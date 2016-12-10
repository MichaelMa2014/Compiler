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

#define LINELENGTH 120
#define PATHLENGTH 120
#define NUMBERLENGTH 9

using namespace std;

enum wordType {symbols, identifiers, strings, numbers, characters};

class LexicalDecoder {
private:
    ifstream * source;
    
    char lastLine[LINELENGTH];
    void NextLine();
    
    int pointer;
    
    wordType lastWord;
    symbolNo lastSymbol;
    string lastStr;
    int lastNum;
    char lastChar;
    
    int lineNum;
public:
    LexicalDecoder();
    ~LexicalDecoder();
    
    void NextWord();
    
    wordType LastWordType();
    symbolNo LastSymbol();
    string LastStr();
    int LastNum();
    char LastChar();
    
    int LineNum();
};

#endif /* Lexical_hpp */
