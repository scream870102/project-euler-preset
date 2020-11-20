# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10001st prime number?

require "./euler_utils.rb"

def euler007
  i,n=0,2
  while i<10001
    i+=1 if isPrime(n) 
    n+=1
  end
  n-1
end
puts euler007