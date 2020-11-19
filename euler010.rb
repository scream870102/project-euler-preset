# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

def isPrime n
  if n==2
    return true
  end
  if n%2==0
    return false
  end
  limit = Integer.sqrt n
  i = 3
  while i<=limit
    if n % i == 0
      return false
    end
    i+=2
  end
  return true
end

def euler010
  sum = 0
  for i  in (2..2000000)
    sum += i if isPrime i
  end
  return sum
end

puts euler010


