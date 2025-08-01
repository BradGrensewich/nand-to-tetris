#include <stdio.h>

int main() {
    for (int i = 1; i < 16; i ++) {
        printf("    FullAdder(a=a[%d] , b=b[%d] , c=c%d , sum=out[%d] , carry=c%d );\n", i, i, i - 1, i, i);
        
    }
}