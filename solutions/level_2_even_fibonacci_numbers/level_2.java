// filename: level_2.java
// Project Euler Level 2 solution
// https://projecteuler.net/problem=2
// Challenge: Find the sum of all even Fibonacci numbers not exceeding 4,000,000
// author: K0K0$H@ of GitHub
// last edit: 12/15/2025
// run on Linux/Mac terminal: javac level_2.java && java level_2
// run on Windows CMD/Powershell: javac level_2.java ; java level_2

import java.util.*;

public class level_2{

	static int sum = 0;
	static int a = 0;
	static int b = 1;
	static int c = 0;

	public static void main(String[] args){

		while(true){
			c = a;
			a = b;
			b = Fibonacci(c, b);
			if(b > 4000000){
				break;
			}
		}

		System.out.println(sum);
		return;
	}

	public static int Fibonacci(int x, int y){
		if((x+y)%2==0){
			sum = sum + x + y;
		}
		return(x+y);
	}

}
