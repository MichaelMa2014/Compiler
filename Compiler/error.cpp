//
//  error.cpp
//  Compiler
//
//  Created by 马琛骁 on 11/8/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include "error.hpp"

void error(int errNo) {
    switch (errNo) {
        case 000:
            ERR("000: UNEXPECTED_END");
            break;
        case 001:
            ERR("001: LINE_TOO_LONG");
            break;
        case 100:
            ERR("100: ILLEGAL_CHARACTER");
            break;
        case 101:
            ERR("101: ORPHAN_DOUBLE_QUOTE");
            break;
        case 102:
            ERR("102: ORPHAN_SINGLE_QUOTE");
            break;
        case 103:
            ERR("103: ILLEGAL_CHARACTER_CONST");
            break;
        case 104:
            ERR("104: NUMBER_TOO_LONG");
            break;
    }
}
