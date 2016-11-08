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
    source = nullptr;
}

void LexicalDecoder::NextWord() {
    //  Encountered end of line
    //  Skip blank lines
    while (lastLine[pointer] == '\0') {
        if (source -> getline(lastLine, LINELENGTH) == 0) {
            ERR ("Unexpected end of file. Or other errors reading the source file");
        }
        pointer = 0;
    }
    
    //  Skip whitespaces and tabs, no other white characters allowed
    while (lastLine[pointer] == ' ' || lastLine[pointer] == '\t') {
        pointer++;
    }
    
    if (isalpha(lastLine[pointer])) {
        string temp;
        temp.push_back(lastLine[pointer]);
        pointer++;
        
        while (isalnum(lastLine[pointer])) {
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
    else if (isnumber(lastLine[pointer])) {
        string temp;
        temp.push_back(lastLine[pointer]);
        pointer++;
        
        while (isnumber(lastLine[pointer])) {
            temp.push_back(lastLine[pointer]);
            pointer++;
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
            ERR("Illegal character !");
        }
        lastStr = "";
        lastNum = 0;
        lastChar = '\0';
    }
    else if (lastLine[pointer] == '\'') {
        pointer++;
        lastWord = symbols;
        lastSymbol = singleQSym;
        lastStr = "";
        lastNum = 0;
        lastChar = '\0';
    }
    else if (lastLine[pointer] == '"') {
        pointer++;
        lastWord = symbols;
        lastSymbol = doubleQSym;
        lastStr = "";
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
        ERR("Illegal character.");
    }
}

wordType LexicalDecoder::LastWordType() {
    return this -> lastWord;
}

symbolID LexicalDecoder::LastSymbol() {
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
