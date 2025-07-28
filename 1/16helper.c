#include <stdio.h>

int main() {
    for (int i = 0; i < 16; i ++) {
        printf("    Nand(a=a[%d], b=notsel, out=t%d1);\n", i, i);
        printf("    Nand(a=sel, b=b[%d], out=t%d2);\n", i, i);
        printf("    Nand(a=t%d1, b=t%d2, out=out[%d]);\n", i, i, i);
        puts("");
    }
}