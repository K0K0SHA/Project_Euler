-- filename: level_2.lua
-- Project Euler Level 2 solution in Lua
-- https://projecteuler.net/problem=2
-- https://github.com/K0K0SHA/Project_Euler/new/main/solutions/level_2_even_fibonacci_numbers
-- challenge: find the sum of all even Fibonacci numbers not exceeding 4,000,000
-- The Fibonacci sequence starts with 1 and 2, and finds the next term by adding the two previous terms. Here is example: 1, 2, 3, 5, 8, 13, 21, 34, etc
-- created by K0K0$H@ of GitHub
-- last edit: 12/15/2025

sum = 0
a = 0
b = 1
c = 0

function Fibonacci(x,y)
        if ((x+y)%2==0) then
                sum = sum + (x+y)
        end
        return (x+y)
end

while true do
        c = a
        a = b
        b = Fibonacci(c, b)
        if(b > 4000000) then
                break
        end
end

print(sum)
