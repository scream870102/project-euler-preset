# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

# def isPrime n
#   return true if n==2
#   return false if n%2==0
#   limit,i = Integer.sqrt(n),3
#   while i<=limit
#     return false if n % i == 0
#     i+=2
#   end
#   true
# end

# def euler010
#   sum = 0
#   for i  in (2..2000000)
#     sum += i if isPrime i
#   end
#   return sum
# end

# puts euler010


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

def euler010
  sum = 0
  (2..2000000).each {|i|sum += i if isPrime i}
  sum
end

puts euler010


