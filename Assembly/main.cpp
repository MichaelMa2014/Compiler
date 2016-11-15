//
//  main.cpp
//  Assembly
//
//  Created by 马琛骁 on 11/13/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#include <iostream>
#include <stdio.h>

extern "C" int GetRDTSC();

int main(int, const char**)
{
    int RDTSC1 = GetRDTSC();
    int RDTSC2 = GetRDTSC();
    printf("Time-Stamp Counters: %c - %d\n", RDTSC1, RDTSC2);
    return 0;
}
