# filename: level_2.py
# Project Euler Level 2 solution in Python
# https://projecteuler.net/problem=2
# https://github.com/K0K0SHA/Project_Euler/blob/main/solutions/level_2_even_fibonacci_numbers/level_2.py
# Challenge: find the sum of all even Fibonacci numbers not exceeding 4,000,000

sum = 0
a = 0
b = 1

def Fibonacci(x, y):
        global sum
        if (x+y)%2 == 0:
                sum = sum + (x+y)
                #print(sum) # DEBUG/VERBOSE
        return x+y

while True:
        c = a # saves previous a value
        a = b
        b = Fibonacci(c,b)
        #print(b) # DEBUG/VERBOSE
        if b > 4000000:
                break

print(sum)
