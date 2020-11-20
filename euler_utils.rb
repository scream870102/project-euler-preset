def isPrime n
    return true if n==2
    return false if n%2==0
    limit,i = Integer.sqrt(n),3
    while i<=limit
      return false if n % i == 0
      i+=2
    end
    true
end

def findAllFactor n
    factor=[] 
    (1..(Integer.sqrt n)).each {|i|factor<<i<<n/i if n%i==0}
    factor.delete_at(factor.index(Integer.sqrt n)) if (Math.sqrt n) == (Integer.sqrt n)
    factor
end

def factorial n
    return 1 if n ==1
    n* (factorial (n-1))
end

# recursion ver 
# def fibonacci n 
#     return 1 if n==1 || n==2
#     fibonacci(n-1)+fibonacci(n-2)
# end


def fibonacci n 
	a, b = n%2, 1
    (n/2).times do
        a+=b
        b+=a
    end
    a
end