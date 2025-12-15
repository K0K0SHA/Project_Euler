# filename: level_1.py
# Project Euler Level 1 solution in Python
# https://projecteuler.net/problem=1
# https://github.com/K0K0SHA/Project_Euler/blob/main/solutions/level_1_multiples_of_3_and_5/
# Challenge: Find the sum of all the multiples of 3 or 5 below 1,000

# declare an empty set where we will put our multiples. Sets in Python can't have duplicates, and even if the program attempts to add one, it gets ignored (no error).
# side note: a set in Python is like a dict with keys but no values, and both sets and dicts are implemented using a hash table
multiples = {0}

# find all multiples of 3 under 1,000
i = 3
while i < 1000:
	multiples.add(i)
	i = i+3

# find all multiples of 5 under 1,000
i = 5
while i < 1000:
	multiples.add(i)
	i = i+5

print("multiples of 3 and 5 under 1,000: \n###\n") # DEBUG/VERBOSE
print(multiples) # DEBUG/VERBOSE

# summate the set
total = 0
for i in multiples:
	total = total + i

# display the answer
print("\n###\n###\n###\nSum of all multiples of 3 and 5 under 1,000 is:\n" + str(total))

# Created by K0K0$H@ of GitHub
# Last edit: 12/15/2025
