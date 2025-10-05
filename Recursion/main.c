#include <stdio.h>

int count = 0;

void f(int a);

int main(){
    printf("hello \n");
    f(count);
    return 0;
}

void f(int a){
    if(a ==5) return;
    printf("%d \n",++count);
    f(count);
}