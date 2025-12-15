# Project Euler Level 1 notes
## Find the sum of all the multiples of 3 or 5 below 1000  
A natural number is a positive integer (whole positive or nonnegative number). In certain applications, 0 may be considered a natural number, but whether a natural number is positive or nonnegative is inconsequential in the context of this problem.  
The general way to solve this problem is very simple. We just need to take 3 and keep multiplying it by 1..2..3..etc until we reach 1,000 (but we need to stop before 1,000). Then we need to do the same thing with 5.  
The only intricacy in this problem is how we intend to keep track of the multiples. For one thing, we can't have duplicates. Also, we need to add up all our multiples, either at the end or during the program's execution.  

One way to solve this is with a data structure:  

* Create an empty data structure to hold the multiples  
* use a loop to find multiples of 3 and 5, adding them to the data struct  
* remove all duplicates from the data struct
* summate all members of the struct (the multiples of 3 and 5)

There is another way to solve it without using any type of data structure:  

* declare an int equal to 0 which represents our total sum of multiples
* find multiples of 3 under 1,000 and add them to the total sum, except those multiples of 3 which are also divisible by 5 such as 15. Those are found in the next loop. They only need to be found once.
* find multiples of 5 under 1,000 including numbers divisible by both 3 and 5 such as 15 and 30 and add them to the total sum.
* display the total sum

## CHALLENGE MASTERY
Once this challenge is completed in Python, Lua, Java, C++, C, Javascript, and Go, the final mastery challenge is to allow the variation of not only upper limit N, but the factors. In other words, modify the code to work with an entire struct (array, list, set, whatever) of factors. Beware that with more than 2 factors, this challenge becomes more complicated to do without using data structures to prevent duplicates. 
