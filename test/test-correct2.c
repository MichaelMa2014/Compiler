const int intC1 = 1;
int intV1, intV2[2];
char charV1;

int iFunc1() {
    return (1);
}

int iFunc2() {
    return (iFunc1());
}

char cFunc1() {
    return ('a');
}

int iFunc3() {
    return (intC1);
}

int iFunc4() {
    return (intV2[0]);
}

int iFunc5() {
    return ((0));
}

int iFunc6() {
    return (1 * 2);
}

int iFunc7() {
    return (1 * 2 / (-1));
}

int iFunc8() {
    return (+1);
}

int iFunc9() {
    return (-1);
}

int iFunc10() {
    return (iFunc8() + iFunc9());
}

int iFunc11() {
    return (iFunc8() + iFunc9() + iFunc10());
}

int iFunc12() {
    return (iFunc8() * iFunc9());
}

int iFunc13() {
    return (iFunc8() / iFunc9() / iFunc12());
}

void main() {
    intV2[0] = 0;
    intV2[1] = 0;

    printf("iFunc1()= ", iFunc1());
    printf("iFunc2()= ", iFunc2());
    printf("iFunc3()= ", iFunc3());
    printf(cFunc1());
    printf("iFunc4()= ", iFunc4());
    printf("iFunc5()= ", iFunc5());
    printf("iFunc6()= ", iFunc6());
    printf("iFunc7()= ", iFunc7());
    printf("iFunc8()= ", iFunc8());
    printf("iFunc9()= ", iFunc9());
    printf("iFunc10()= ", iFunc10());
    printf("iFunc11()= ", iFunc11());
    printf("iFunc12()= ", iFunc12());
    printf("iFunc13()= ", iFunc13());
}
