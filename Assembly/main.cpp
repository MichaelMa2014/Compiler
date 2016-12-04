//
//  main.cpp
//  Assembly
//
//  Created by 马琛骁 on 11/13/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include <iostream>
#include <stdio.h>

#define MYDEBUG 0

extern "C" int test();

int main(int, const char**)
{
    test();
    while (!MYDEBUG) {
        ;
    }
    return 0;
}
