# Smallest multiple
#  is the smallest number that can be divided by each of the numbers from  to  without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from  to ?
def gcd x,y
  while y!=0
    x,y=y,x%y
  end
  x
end

def lcm x,y
  (x*y)/gcd(x,y)
end


def euler005
  tmp=1
  (2..20).each{|i|tmp=lcm tmp,i}
  tmp
end
puts euler005
