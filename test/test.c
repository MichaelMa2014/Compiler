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

    intV5 = 1;
    _intV7 = 0;
    printf("_intV7 originally is ", _intV7);
    while (intV5 < 6) {
        intV6[intV5] = intV5 * intV5;
        _intV7 = _intV7 + intV6[intV5];
        printf("_intV7 becomes ", _intV7);
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
