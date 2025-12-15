-- filename: level_1.lua
-- Project Euler Level 1 solution in Lua
--# https://projecteuler.net/problem=1
--# https://github.com/K0K0SHA/Project_Euler/blob/main/solutions/level_1_multiples_of_3_and_5/
--# Challenge: Find the sum of all the multiples of 3 or 5 below 1,000

-- Creates empty table to store found multiples. Since tables in Lua can have duplicates, the program will have to prevent duplicates manually
-- side note: tables in Lua can implement lists or dicts. We are going to use a simple list implementation
multiples = {}

-- find all multiples of 3 under 1,000
i = 3
while i < 1000 do
        if i%5==0 then
                print("duplicate found: " .. i)
                i = i+3 -- do nothing except iterate if a multiple of 3 and 5 (such as 15) is found here. Multiples of 3 AND 5 will be discovered in the next while loop
        else
                table.insert(multiples, i)
                i = i+3
        end
end

-- find all multiples of 5 under 1,000
i = 5
while i < 1000 do
        table.insert(multiples, i)
        i = i+5
end

-- display total of multiples of 3 and/or 5 under 1,000 by iterating through the table multiples{}
total = 0
for i in ipairs(multiples) do
        total = total + multiples[i]
end

print("sum of multiples of 3 and 5 under 1,000: " .. total)

-- by K0K0$H@ of GitHub
-- Last edit: 12/15/2025
