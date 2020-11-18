# Sum square difference
# The sum of the squares of the first ten natural numbers is,


# The square of the sum of the first ten natural numbers is,


# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is .

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def suqareOfSum n
  return ((1+n)*n/2)**2
end

def sumOfSquare n
  sum=0
  for i in (1..n)
    sum+=i**2
  end
  return sum
end
def euler006
  return suqareOfSum(100)-sumOfSquare(100)

end
puts euler006

