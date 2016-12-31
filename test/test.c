const int intC1 = 1;
const char charC1 = 'a', charC2 = 'b';
int intV1, intV2[2];
int intv20, intv21;
char charV1;

void main() {
    const int intC3 = 5;
    int intV5, intV6[6];
    int _intV7, i_ntV8, int_V9, intV10_, _____;
    int intV20, intV21;
    int intV30, intV31;

    intV5 = 0 + intC3;
    intV5 = intC3 - 0;
    intV5 = intC3 * 1;
    intV5 = intC3 / 1;
    intV5 = intC3 / 0;

    intV2[0] = 0;
    intV2[1] = 0;

    printf("%d");
    printf("\\");

    scanf(intV1);
    printf("You entered ", intV1);
    scanf(charV1);
    printf("You entered ", charV1);

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

    if (0 == 0) {
      if (0 != 1) {
        if (2 > 1) {
          if (3 < 4) {
            if (5 >= 5) {
              if (6 <= 6) {
                printf("If-If test passed.");
              }
            }
          }
        }
      }
    }

    intV30 = 0;
    while (intV30 < 5) {
      if (intV30 < 5) {
        intV30 = intV30 + 1;
      }
      printf("intV30 becomes ", intV30);
    }
    printf("While-If test passed");

    intV30 = 0;
    if (intV30 < 5) {
      while (intV30 < 5) {
        intV30 = intV30 + 1;
        printf("intV30 becomes ", intV30);
      }
    }
    printf("If-While test passed");

    intV30 = 0;
    while (intV30 < 2) {
      intV31 = 0;
      while (intV31 < 2) {
        intV31 = intV31 + 1;
        printf("intV31 becomes", intV31);
      }
      intV30 = intV30 + 1;
      printf("intV30 becomes ", intV30);
    }
    printf("While-While test passed");

    intV30 = 0;
    switch (intV30) {
      case 0:
        if (intV30 == 0) {
          printf("Switch-If test passed");
        }
      default:
          printf("Switch-If test failed");
    }

    intV30 = 0;
    while (intV30 < 5) {
      switch (intV30) {
        case 0:
          printf("intV30 is 0");
        case 1:
          printf("intV30 is 1");
        case 2:
          printf("intV30 is 2");
        case 3:
          printf("intV30 is 3");
        case 4:
          printf("intV30 is 4");
        case 5:
          printf("While-Switch test failed");
        default:
          printf("While-Switch test failed");
      }
      intV30 = intV30 + 1;
    }
    printf("While-Switch test passed");

    {}
    {;}
    {;;}
    {{}}
    {{{}}}
    {{{;}}}
    {

    }
    printf("Blank statement test passed");
}
