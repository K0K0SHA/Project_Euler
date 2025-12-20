-- filename: largest_prime_factor.lua
-- Project Euler Level 3 solution in Lua
-- https://projecteuler.net/problem=3
-- [GITHUB LINK]
-- challenge: The prime factors of 13195 are 5, 7, 13, and 29. What is the largest prime factor of the number 600851475143?
-- hint: this challenge can be solved a lot of ways, but one way to create prime numbers is the Sieve of Eratosthenes
-- This code implements the Sieve of Eratosthenes, which is a way to find primes by factoring out numbers divisible by 2...sqrt(n) where n = target

local n = 600851475143
local factor = 2
local largest_factor = 0

while factor * factor <= n do
    if n % factor == 0 then
        largest_factor = factor
        n = n / factor
    else
        factor = factor + 1     
    end
end

if n > 1 then
    largest_factor = n
end

print(largest_factor)

