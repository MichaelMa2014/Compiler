 //
//  error.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/8/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "error.hpp"

extern LexicalDecoder * ld;

void error(int errNo) {
    cout << ld -> LineNum();
    switch (errNo) {
        case 000:
            ERR("000: Unexpected end of source file");
            break;
        case 001:
            ERR("001: One line is too long in source file");
            break;
        case 100:
            ERR("100: Illegal character in source file");
            break;
        case 101:
            ERR("101: Reached end of line before finding another double quote");
            break;
        case 102:
            ERR("102: The second character after one single quote is not a single quote");
            break;
        case 103:
            ERR("103: Illegal character used as character constant");
            break;
        case 104:
            ERR("104: Number constant is too long for int");
            break;
        case 200:
            ERR("200: An semi colon sign is missing");
            break;
        case 201:
            ERR("201: An left curly bracket is missing");
            break;
        case 202:
            ERR("202: An left round bracket is missing");
            break;
        case 203:
            ERR("203: A square bracket is missing");
            break;
        case 204:
            ERR("204: A round bracket is missing");
            break;
        case 205:
            ERR("205: A curly bracket is missing");
            break;
        case 206:
            ERR("206: No int or char after const");
            break;
        case 207:
            ERR("207: No identifier found following int or char");
            break;
        case 208:
            ERR("208: No become sign found in constant definition");
            break;
        case 209:
            ERR("209: No value found in constant definition");
            break;
        case 210:
            ERR("210: No number found following left square bracket");
            break;
        case 211:
            ERR("211: Illegal size for matrix definition");
            break;
        case 212:
            ERR("212: Illegal word for factor");
            break;
        case 213:
            ERR("213: No value found following case symbol");
            break;
        case 214:
            ERR("214: No colon sign found following case value or default symbol");
            break;
        case 215:
            ERR("215: Missing identifier in scanf statement");
            break;
        case 300:
            ERR("300: An identifier is declared twice");
            break;
        case 301:
            ERR("301: An identifier is refered to before any declaration");
            break;
        case 302:
            ERR("302: Too few or too many parameters passed to a function");
            break;
        case 303:
            ERR("303: Control reached end of non-void function");
            break;
        case 304:
            ERR("304: Illegal return statement in void function");
            break;
        case 305:
            ERR("305: Assign to constants");
            break;
        case 306:
            ERR("306: Assign to functions");
            break;
        case 307:
            ERR("307: Assign to matrices");
            break;
        case 308:
            ERR("308: Divided by zero");
            break;
    }
}
