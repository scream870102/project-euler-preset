# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10001st prime number?
# def isPrime n
#   for i in (2..Integer.sqrt(n))
#     if n%i==0 
#       return false
#     end
#   end
#   return true
# end

# def euler007
#   i=0
#   n=2
#   while i<10001
#     if isPrime(n) 
#       i+=1
#     end
#     n+=1
#   end
#   return n-1
# end
# puts euler007

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

def euler007
  i,n=0,2
  while i<10001
    i+=1 if isPrime(n) 
    n+=1
  end
  n-1
end
puts euler007