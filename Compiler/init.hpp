//
//  init.hpp
//  Compiler
//
//  Created by 马琛骁 on 11/7/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#ifndef init_hpp
#define init_hpp

#include <stdio.h>
#include <iostream>
#include <map>

using namespace std;

#define BYTE 4

#define MYDEBUG 0

#define WORDNUM 36
enum symbolNo {ndef, voidSym, constSym, intSym, charSym, switchSym, caseSym, defaultSym, ifSym, whileSym, mainSym, scanfSym, printfSym, returnSym, plusSym, minusSym, multiSym, divideSym, lRoundSym, rRoundSym, lSquareSym, rSquareSym, lCurlySym, rCurlySym, lessSym, leqSym, moreSym, meqSym, neqSym, equalSym, becomeSym, singleQSym, doubleQSym, semiSym, colonSym, commaSym};

// extern tells whoever includes this header file that dictionary is a valid word
extern map<string, symbolNo> dictionary;
extern const char * symbolString[];

void init();

#endif /* init_hpp */
