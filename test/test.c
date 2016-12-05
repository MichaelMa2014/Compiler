const int intC1 = 1;
const char charC1 = 'a', charC2 = 'b';
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

void vFunc1() {
    printf("vFunc1() called");
}

void vFunc2(int param1) {
    const int intC2 = 2;
    printf("vFunc2() called");
    printf("param1 is ", param1);
    printf("intC2 is ", intC2);
}

void vFunc3(int param1, char param2) {
    int intV3;
    intV3 = param1 + param2;
    printf("vFunc3() called");
    printf("param1 is ", param1);
    printf("param2 is ", param2);
    printf("param1 + param2 is ", intV3);
}

void vFunc4() {
    const char charC3 = 'c', charC4 = 'd';
    int intV4;
    intV4 = 4;
    printf("vFunc4() called");
    printf("charC3 is ", charC3);
    printf("charC4 is ", charC4);
    printf("intV4 is ", intV4);
}

int gcd(int a , int b){
  printf("gcd a = ", a);
  printf("gcd b = ", b);
    if (a == b) {
        return (a);
    }
    if (a > b) {
        return (gcd(b, a - b));
    }
    if (a < b) {
        return (gcd(b - a, a));
    }
}

void main() {
    const int intC3 = 5;
    int intV5, intV6[6];
    int _intV7, i_ntV8, int_V9, intV10_, _____;
    int intV20, intV21;

    intV2[0] = 0;
    intV2[1] = 0;

    scanf(intV1);
    printf("\\You entered ", intV1);
    scanf(charV1);
    printf("You entered ", charV1);

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

    vFunc1();
    vFunc2(2);
    vFunc3(3, 'c');
    vFunc4();

    if (intV1 == 0) printf("intV1 == 0");
    if (intV1 != 0) printf("intV1 != 0");
    if (intV1 >  0) printf("intV1 >  0");
    if (intV1 <  0) printf("intV1 <  0");
    if (intV1 >= 0) printf("intV1 >= 0");
    if (intV1 <= 0) printf("intV1 <= 0");
    if (intV1) printf("intV1 is true");

    while (intV1 < 5) {
        intV1 = intV1 + 1;
        printf("intV1 becomes ", intV1);
    }

    switch (intV2[0]) {
        case 0:
            printf("intV2[0] is 0");
    }

    switch (intV2[0]) {
        case 0:
            printf("intV2[0] is 0");
        case 1:
            printf("intV2[0] is 1");
    }

    switch (intV2[0]) {
        case 0:
            printf("intV2[0] is 0");
        case 1:
            printf("intV2[0] is 1");
        default:
            printf("intV2[0] is neither 0 nor 1");
    }

    intV5 = 0;
    _intV7 = 0;
    while (intV5 < 6) {
        intV6[intV5] = intV5 * intV5;
        _intV7 = _intV7 + intV6[intV5];
        intV5 = intV5 + 1;
    }
    printf("0*0+1*1+2*2+3*3+4*4+5*5 = ", _intV7);
    printf("0*0+1*1+2*2+3*3+4*4+5*5 = ", 0*0+1*1+2*2+3*3+4*4+5*5);

    scanf(i_ntV8, int_V9);
    printf("The sum of the 2 numbers you entered is ", i_ntV8 + int_V9);

    scanf(int_V9, intV10_, _____);
    printf("The product of the 3 numbers you entered is ", int_V9 * intV10_ * _____);

    scanf(intV20, intV21);
    intV2[0 + 0] = intV20;
    intV2[1 * 1] = intV21;
    printf("The gcd of the 2 numbers you entered is ", gcd(intV2[0 + 0 + 0], intV2[1 * 1 * 1]));
}
