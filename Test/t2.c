//  take the inputs from user and calculate the effective memory access time
#include<stdio.h>
#include<stdlib.h>

int calc_emat(int a,int b,int c,int d,int e,int f){
    int res = ((a+b+c)/d)*e*f;
    return res;
}

int main(){
    int a,b,c,d,e,f;
    printf("Enter the M.M. access time: ");
    scanf("%d",&a);
    printf("Enter the TLB look-up time: ");
    scanf("%d",&b);
    printf("Enter page swap in out time: ");
    scanf("%d",&c);
    printf("Enter RLB miss ratio: ");
    scanf("%d",&d);
    printf("Enter page fault ratio: ");
    scanf("%d",&e);
    printf("Enter rate of swap out: ");
    scanf("%d",&f);
    int result = calc_emat(a,b,c,d,e,f);
    printf("Effective memory access time = %d \n",result);
    return 0;
}