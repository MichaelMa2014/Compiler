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

void main() {
    vFunc1();
    vFunc2(2);
    vFunc3(3, 'c');
    vFunc4();
}
