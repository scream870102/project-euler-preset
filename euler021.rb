# Amicable numbers

# sum = 0 100).to_s.split("").each{|i|sum+=i.to_i}
# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.
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

def sumOfFactor n 
    sum=0
    factors = findAllFactor n
    factors.each{|i|sum+=i}
    sum-=n
end

def euler021
    tmp = []
    (2..10000).each do |i|
        a,b,=0,0
        a = sumOfFactor(i)
        b = sumOfFactor(a)
        tmp<<i<<a if i==b && i!=a
    end
    sum = 0 
    tmp.each{|x| sum += x} 
    sum/2
end


puts euler021
