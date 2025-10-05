#include <stdio.h>

// no. of time print
// void f(int i,int n){
//     if(i>n) return;
//     printf("deepanshu garg \n");
//     f(i+1,n);
// }

// reverse print from n to 1
// void f(int n){
//     if(n<1) return;
//     printf("%d \n",n--);
//     f(n);
// }

// print from 1 to n using backtracking
// void f(int i){
//     if (i<1)
//     {return;
//         /* code */
//     }
//     f(i-1);
//     printf("%d \n",i);
// }

// print from n to 1 using backtracking
void f(int i){
    if(i<1) return;
    printf("%d \n",i);
    f(--i);
}

int main(int argc, char const *argv[])
{
    int n;
    printf("enter number we should print: \n");
    scanf("%d", &n);
    f(n);
    return 0;
}