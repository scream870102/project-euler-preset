# Smallest multiple
#  is the smallest number that can be divided by each of the numbers from  to  without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from  to ?
def gcd x,y
  tmp=0
  while y!=0
    tmp=x%y
    x=y
    y=tmp
  end
  return x
end

def lcm x,y
  return (x*y)/gcd(x,y)
end


def euler005
  tmp=1
  for i in (2..20)
    tmp=lcm tmp,i
  end
  return tmp
end
puts euler005

