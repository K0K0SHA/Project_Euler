// filename: level_2.c
// solution to Project Euler Problem 2
// https://projecteuler.net/problem=2
// Challenge: find the sum of all even Fibonacci numbers not exceeding 4,000,000
#include <stdlib.h>
#include <stdio.h>

int main(){
	printf("%s\n", "Project Euler Level 2 challenge: find the sum of all even Fibonacci numbers not exceeding 4,000,000");
	
	int sum = 0;
	int a = 0;
	int b = 1;
	int c = 0;
	
	int Fibonacci(int x, int y){
		if((x+y)%2==0){
			sum = sum + (x+y);
		}
		return (x+y);
	}

	while(1 == 1){
		c = a; // saves previous a value before reassigning a
		a = b; // iterates a to progress Fibonacci sequence
		b = Fibonacci(c, b);
		if(b > 4000000){
			break;
		}
	}

	printf("%d\n", sum);
	return(0);
}

// by K0K0$H@ of GitHub
// last edit: 12/15/2025
