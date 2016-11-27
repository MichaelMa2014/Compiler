//
//  Lexical.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/7/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "lexical.hpp"

LexicalDecoder::LexicalDecoder() {
    cout << "Please input the full path to a file" << endl;
    cout << "Example: ~/Desktop/main.c" << endl;
    cout << "Example: C:\\14231016_test.txt" << endl;
    char path[PATHLENGTH];
    cin >> path;
    
    source = new ifstream();
    source -> open(path);
    
    while (!source -> good()) {
        cout << "The path you entered is " << path << endl;
        cout << "This file cannot be open, please input the full path to a file" << endl;
        cin >> path;
        source->open(path);
    }
    
    source -> getline(lastLine, LINELENGTH); // no \n, has \0
    
    cout << "Succeed. The first line of the file is" << endl << lastLine << endl;
    
    pointer = 0;
    
    lastWord = symbols;
    lastSymbol = ndef;
    lastStr = "";
    lastNum = 0;
    lastChar = '\0';
}

LexicalDecoder::~LexicalDecoder() {
    source -> close();
    delete source;
    source = NULL;
}

void LexicalDecoder::NextLine() {
    for (int i = 0; i < LINELENGTH; i++) {
        lastLine[i] = 0;
    }
    if (source -> getline(lastLine, LINELENGTH) == 0) {
        if (source -> fail()) {
            if (source -> eof()) {
                error(UNEXPECTED_END);
                exit(UNEXPECTED_END);
            }
            error(LINE_TOO_LONG);
            exit(LINE_TOO_LONG);
        }
    }
    pointer = 0;
}
void LexicalDecoder::NextWord() {
    //  Encountered end of line
    //  Skip blank lines
    while (lastLine[pointer] == '\0') {
        NextLine();
    }
    
    //  Skip whitespaces and tabs, no other white characters allowed
    while (lastLine[pointer] == ' ' || lastLine[pointer] == '\t') {
        pointer++;
        while (lastLine[pointer] == '\0') {
            NextLine();
        }
    }
    
    if (isalpha(lastLine[pointer]) || lastLine[pointer] == '_') {
        string temp;
        temp.push_back(lastLine[pointer]);
        pointer++;
        
        while (isalnum(lastLine[pointer]) || lastLine[pointer] == '_') {
            temp.push_back(lastLine[pointer]);
            pointer++;
        }
        
        if ((lastSymbol = dictionary[temp]) != 0) {
            lastWord = symbols;
            lastStr = "";
            lastNum = 0;
            lastChar = '\0';
        }
        else {
            lastWord = identifiers;
            lastStr = temp;
            lastNum = 0;
            lastChar = '\0';
        }
    }
    else if (isdigit(lastLine[pointer])) {
        string temp;
        temp.push_back(lastLine[pointer]);
        pointer++;
        
        while (isdigit(lastLine[pointer])) {
            temp.push_back(lastLine[pointer]);
            pointer++;
        }
        
        if (temp.length() > NUMBERLENGTH) {
            cout << temp << endl;
            error(NUMBER_TOO_LONG);
        }
        
        lastWord = numbers;
        lastSymbol = ndef;
        lastStr = "";
        lastNum = atoi(temp.c_str());
        lastChar = '\0';
    }
    else if (lastLine[pointer] == '+') {
        pointer++;
        lastWord = symbols;
        lastSymbol = plusSym;
        lastStr = "";
        lastNum = 0;
        lastChar = '\0';
    }
    else if (lastLine[pointer] == '-') {
        pointer++;
        lastWord = symbols;
        lastSymbol = minusSym;
        lastStr = "";
        lastNum = 0;
        lastChar = '\0';
    }
    else if (lastLine[pointer] == '*') {
        pointer++;
        lastWord = symbols;
        lastSymbol = multiSym;
        lastStr = "";
        lastNum = 0;
        lastChar = '\0';
    }
    else if (lastLine[pointer] == '/') {
        pointer++;
        //  Encoutered comments, skip this line
        if (lastLine[pointer] == '/') {
            source -> getline(lastLine, LINELENGTH);
            pointer = 0;
        }
        else {
            lastWord = symbols;
            lastSymbol = divideSym;
            lastStr = "";
            lastNum = 0;
            lastChar = '\0';
        }
    }
    else if (lastLine[pointer] == '(') {
        pointer++;
        lastWord = symbols;
        lastSymbol = lRoundSym;
        lastStr = "";
        lastNum = 0;
        lastChar = '\0';
    }
    else if (lastLine[pointer] == ')') {
        pointer++;
        lastWord = symbols;
        lastSymbol = rRoundSym;
        lastStr = "";
        lastNum = 0;
        lastChar = '\0';
    }
    else if (lastLine[pointer] == '[') {
        pointer++;
        lastWord = symbols;
        lastSymbol = lSquareSym;
        lastStr = "";
        lastNum = 0;
        lastChar = '\0';
    }
    else if (lastLine[pointer] == ']') {
        pointer++;
        lastWord = symbols;
        lastSymbol = rSquareSym;
        lastStr = "";
        lastNum = 0;
        lastChar = '\0';
    }
    else if (lastLine[pointer] == '{') {
        pointer++;
        lastWord = symbols;
        lastSymbol = lCurlySym;
        lastStr = "";
        lastNum = 0;
        lastChar = '\0';
    }
    else if (lastLine[pointer] == '}') {
        pointer++;
        lastWord = symbols;
        lastSymbol = rCurlySym;
        lastStr = "";
        lastNum = 0;
        lastChar = '\0';
    }
    else if (lastLine[pointer] == '<') {
        pointer++;
        
        lastWord = symbols;
        if (lastLine[pointer] == '=') {
            lastSymbol = leqSym;
            pointer++;
        }
        else {
            lastSymbol = lessSym;
        }
        lastStr = "";
        lastNum = 0;
        lastChar = '\0';
    }
    else if (lastLine[pointer] == '>') {
        pointer++;
        
        lastWord = symbols;
        if (lastLine[pointer] == '=') {
            lastSymbol = meqSym;
            pointer++;
        }
        else {
            lastSymbol = moreSym;
        }
        lastStr = "";
        lastNum = 0;
        lastChar = '\0';
    }
    else if (lastLine[pointer] == '=') {
        pointer++;
        lastWord = symbols;
        
        if (lastLine[pointer] == '=') {
            lastSymbol = equalSym;
            pointer++;
        }
        else {
            lastSymbol = becomeSym;
        }
        lastStr = "";
        lastNum = 0;
        lastChar = '\0';
    }
    else if (lastLine[pointer] == '!') {
        pointer++;
        lastWord = symbols;
        
        if (lastLine[pointer] == '=') {
            lastSymbol = neqSym;
            pointer++;
        }
        else {
            error(ILLEGAL_CHARACTER);
        }
        lastStr = "";
        lastNum = 0;
        lastChar = '\0';
    }
    else if (lastLine[pointer] == '\'') {
        pointer++;
        //  <字符>::='<加法运算符>'|'<乘法运算符>'|'<字母>'|'<数字>'
        //  <加法运算符>::=+|-
        //  <乘法运算符>::=*|/
        //  <字母>::=_|a|．．．|z|A|．．．|Z
        //  <数字>::=0|<非零数字>
        //  <非零数字>::=1|．．．|9
        //  Only the following characters are allowed as character constant
        if (!(lastLine[pointer] == '+' || lastLine[pointer] == '-' || lastLine[pointer] == '*' || lastLine[pointer] == '/' || lastLine[pointer] == '_' || isalnum(lastLine[pointer]))) {
            cout << lastLine[pointer] << endl;
            error(ILLEGAL_CHARACTER_CONST);
            exit(ILLEGAL_CHARACTER_CONST);
        }
        
        lastWord = characters;
        lastSymbol = ndef;
        lastStr = "";
        lastNum = lastLine[pointer];
        lastChar = lastLine[pointer];
        
        //  There should be another single quote sign here, if there is not any, then leave the pointer where it is for encoding at next time
        pointer++;
        if (lastLine[pointer] != '\'') {
            error(ORPHAN_SINGLE_QUOTE);
            return;
        }
        pointer++;
    }
    else if (lastLine[pointer] == '"') {
        string temp;
        pointer++;
        // TODO: how to move the pointer properly
        while (lastLine[pointer] != '"') {
            temp.push_back(lastLine[pointer]);
            pointer++;
            if (lastLine[pointer] == '\0') {
                error(ORPHAN_DOUBLE_QUOTE);
                NextLine();
            }
        }
        pointer++;
        
        lastWord = strings;
        lastSymbol = ndef;
        lastStr = temp;
        lastNum = 0;
        lastChar = '\0';
    }
    else if (lastLine[pointer] == ';') {
        pointer++;
        lastWord = symbols;
        lastSymbol = semiSym;
        lastStr = "";
        lastNum = 0;
        lastChar = '\0';
    }
    else if (lastLine[pointer] == ':') {
        pointer++;
        lastWord = symbols;
        lastSymbol = colonSym;
        lastStr = "";
        lastNum = 0;
        lastChar = '\0';
    }
    else if (lastLine[pointer] == ',') {
        pointer++;
        lastWord = symbols;
        lastSymbol = commaSym;
        lastStr = "";
        lastNum = 0;
        lastChar = '\0';
    }
    else {
        cout << lastLine[pointer] << endl;
        error(ILLEGAL_CHARACTER);
    }
}

wordType LexicalDecoder::LastWordType() {
    return this -> lastWord;
}

symbolNo LexicalDecoder::LastSymbol() {
    return this -> lastSymbol;
}

string LexicalDecoder::LastStr() {
    return this -> lastStr;
}

int LexicalDecoder::LastNum() {
    return this -> lastNum;
}

char LexicalDecoder::LastChar() {
    return this -> lastChar;
}
