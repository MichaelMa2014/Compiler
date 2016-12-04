//
//  error.hpp
//  Compiler
//
//  Created by 马琛骁 on 11/8/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#ifndef error_hpp
#define error_hpp

#include <cstdio>
#include <cstdlib>
#include <iostream>

#include "init.hpp"

using namespace std;

#define LOG(x) do {cerr << "***LOG " << x << endl;} while(0);
//#define LOG(x) do {;} while(0);
#define ERR(x) do {cerr << "***ERR " << x << endl; if (MYDEBUG) throw 0;} while(0);

#define UNEXPECTED_END 000
#define LINE_TOO_LONG 001
#define ILLEGAL_CHARACTER 100
#define ORPHAN_DOUBLE_QUOTE 101
#define ORPHAN_SINGLE_QUOTE 102
#define ILLEGAL_CHARACTER_CONST 103
#define NUMBER_TOO_LONG 104
#define MISSING_SEMI 200
#define MISSING_LEFT_CURLY 201
#define MISSING_LEFT_ROUND 202
#define ORPHAN_SQUARE 203
#define ORPHAN_ROUND 204
#define ORPHAN_CURLY 205
#define MISSING_TYPE 206
#define MISSING_IDENTIFIER 207
#define MISSING_BECOME 208
#define MISSING_VALUE 209
#define MISSING_SIZE 210
#define ILLEGAL_SIZE 211
#define ILLEGAL_FACTOR 212
#define MISSING_CASE_VALUE 213
#define MISSING_CASE_COLON 214
#define ILLEGAL_SCANF 215
#define DOUBLE_DECLARE 300
#define NO_DECLARE 301
#define MISMATCH_PARAM 302
#define NO_RETURN 303

void error(int errNo);

#endif /* error_hpp */
