int intV2[2];
int intv20, intv21;
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
    int intV20, intV21;

    scanf(intV20, intV21);
    intV2[0 + 0] = intV20;
    intV2[1 * 1] = intV21;
    printf("The gcd of the 2 numbers you entered is ", gcd(intV2[0 + 0 + 0], intV2[1 * 1 * 1]));
}
