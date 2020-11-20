# Longest Collatz sequence
# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.
def collatz n 
    return n/2 if n%2==0
    3*n+1
end

def euler014
    max,max_count=0,0
    for i in (2..1000000)
        count = 0
        n = i
        while n!=1
            n=collatz n
            count+=1
        end
        if count > max_count
            max_count = count   
            max = i
        end
    end
    max
end

puts euler014