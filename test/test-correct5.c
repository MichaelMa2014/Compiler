void main() {
    int i_ntV8, int_V9, intV10_, _____;
    int intV30, intV31;

    scanf(i_ntV8, int_V9);
    printf("The sum of the 2 numbers you entered is ", i_ntV8 + int_V9);

    scanf(int_V9, intV10_, _____);
    printf("The product of the 3 numbers you entered is ", int_V9 * intV10_ * _____);

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
}
