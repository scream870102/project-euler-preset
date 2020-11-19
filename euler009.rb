# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
def euler009
  a=1
  b=a+1
  while a<1000
    b=a+1
    while b<1000
      c=1000-a-b
      if c>=a+b
        b+=1
        next
      end
      if a*a+b*b==c*c
        return a*b*c
      end
      b+=1
    end
    a+=1
  end
end

puts euler009


