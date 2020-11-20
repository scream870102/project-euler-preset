# Lexicographic permutations
# A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

# 012   021   102   120   201   210
# What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?


def euler024
    s=""
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9].permutation.to_a[1000000-1].each {|c|s+=c.to_s}
    s.to_i
end

puts euler024
