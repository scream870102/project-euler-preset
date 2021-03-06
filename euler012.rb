 
# # The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:

# # 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

# # Let us list the factors of the first seven triangle numbers:

# #  1: 1
# #  3: 1,3
# #  6: 1,2,3,6
# # 10: 1,2,5,10
# # 15: 1,3,5,15
# # 21: 1,3,7,21
# # 28: 1,2,4,7,14,28
# # We can see that 28 is the first triangle number to have over five divisors.

# # What is the value of the first triangle number to have over five hundred divisors?
# def findAllFactor n
#     factor=[] 
#     for i in (1..(Integer.sqrt n))
#         if n%i==0
#             factor<<i
#             factor<<n/i
#         end
#     end
#     if (Math.sqrt n) == (Integer.sqrt n)
#         factor.delete_at(factor.index(Integer.sqrt n))
#     end
#     factor.length
# end
# def euler012
#     i=1
#     sum=0
#     tmp = 500*500
#     loop do 
#         sum+=i
#         return sum if (sum>=tmp)&&(findAllFactor sum)>500
#         i+=1
#     end
#     sum
# end
# puts euler012

# The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:

# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

# Let us list the factors of the first seven triangle numbers:

#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five divisors.

# What is the value of the first triangle number to have over five hundred divisors?
require "./euler_utils"

def euler012
    i=1
    sum=0
    tmp = 500*500
    loop do 
        sum+=i
        return sum if (sum>=tmp)&&(findAllFactor sum).length>500
        i+=1
    end
    sum
end
puts euler012