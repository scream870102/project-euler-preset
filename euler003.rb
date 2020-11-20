# Largest prime factor
# The prime factors of  are , ,  and .

# What is the largest prime factor of the number ?
# Test=600851475143

# def isPrime n
#   for i in (2..Integer.sqrt(n))
#     if n%i==0 
#       return false
#     end
#   end
#   return true
# end

# def euler003
#   # find factor
#   i=1
#   factor=[]
#   while i<=Integer.sqrt(Test)
#     tmp=Test%i
#     if tmp==0
#       factor<<i
#       factor<<Test/i
#     end
#     i+=1
#   end 
#   factor.sort.reverse!.each do |i|
#     if isPrime i
#       return i
#     end
#   end
# end
# print euler003

require "./euler_utils"
Test=600851475143

def euler003
  i=1
  factor=[]
  while i<=Integer.sqrt(Test)
    factor<<i<<Test/i if (Test%i)==0
    i+=1
  end
  factor.sort.reverse!.each {|i|return i if isPrime i} 
end

puts euler003

