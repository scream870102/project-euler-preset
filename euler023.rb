# Non-abundant sums
# A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

# A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.
def findAllFactor n
    factor=[] 
    for i in (1..(Integer.sqrt n))
        if n%i==0
            other = n/i
            factor<<i
            factor<<other if i!=other
        end
    end
    factor
end

def euler023
    abundant =[]
    amount = 0
    for i in (1..28123)
        amount += i
        sum = 0 
        (findAllFactor i).each{|n|sum+=n}
        sum-=i
        abundant<<i if sum>i
    end
    tmp = []
    for i in (0...abundant.length)
        for j in (i...abundant.length)
            tmp << (abundant[i]+abundant[j]) if (abundant[i]+abundant[j])<=28123
        end
    end
    tmp.uniq!.each {|j|amount-=j}
    amount
end

puts euler023