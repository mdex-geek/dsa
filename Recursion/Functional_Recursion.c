#include <stdio.h>

int sum(int n)
{
    if(n==0) return 0;
    return n +sum(n-1);
}

int fact(int n){
    if (n==1)
    {
        /* code */
        return 1;
    }
    return n*fact(n-1);
    
}

int main(int argc, char const *argv[])
{
    /* code */
    printf("%d",fact(5));
    return 0;
}