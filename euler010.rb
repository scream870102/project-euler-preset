# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

require "./euler_utils"

def euler010
  sum = 0
  (2..2000000).each {|i|sum += i if isPrime i}
  sum
end

puts euler010


