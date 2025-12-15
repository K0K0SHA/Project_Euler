// filename: level_1.c
// author: K0K0$H@ of GitHub
// Project Euler level 1 solution: finds all multiples of 3 or 5 under 1,000 without using structs
// https://projecteuler.net/problem=1
// run on Linux/Mac: gcc level_1.c && ./a.out
// run on Windows with gcc: gcc level_1.c ; ./a.exe
#include <stdio.h>
#include <stdlib.h>

int main(){
        printf("Project Euler level 1 challenge: find all multiples of 3 and 5 under 1,000\n");

        int sum = 0;

        // finds all multiples of 3 under 1,000 and adds them to the sum, skipping numbers divisible by 5 to avoid duplicates. Numbers factorable by 3 and 5 are dealt with later.
        int i = 3;
        while(i < 1000){
                if(i%5 != 0){
                        sum = sum + i;
                }
                i = i+3;
        }

        // finds all multiples of 5 under 1,000, including numbers divisible by both 3 and 5 such as 15
        i = 5;
        while(i < 1000){
                sum = sum + i;
                i = i+5;
        }

        printf("\nsum of multiples of 3 and/or 5 under 1,000:\n");
        //printf(sum);
        printf("%d\n", sum);

        return(0);
}


// last modified: 12/15/2025
