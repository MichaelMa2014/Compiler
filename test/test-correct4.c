int intV1, intV2[2];
char charV1;

void main() {
    int intV5, intV6[6];
    int _intV7;

    intV2[0] = 0;

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
}
