# Reciprocal cycles
# Problem 26
# A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions with denominators 2 to 10 are given:

# 1/2	= 	0.5
# 1/3	= 	0.(3)
# 1/4	= 	0.25
# 1/5	= 	0.2
# 1/6	= 	0.1(6)
# 1/7	= 	0.(142857)
# 1/8	= 	0.125
# 1/9	= 	0.(1)
# 1/10	= 	0.1
# Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen that 1/7 has a 6-digit recurring cycle.

# Find the value of d < 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.

# https://tsujimotter.hatenablog.com/entry/2014/04/08/212954
# https://zh.wikipedia.org/wiki/%E5%BE%AA%E7%8E%AF%E5%B0%8F%E6%95%B0
# https://home.gamer.com.tw/creationDetail.php?sn=2569505
# https://kknews.cc/news/avq5m5n.html
require "./euler_utils"


def euler026
    hash={}
    1000.downto(100).each do |i|
        next if i%2==0 || i%5==0
        next unless isPrime i

        mod,j = 0 ,1
        while mod!=1
            mod =(10**j) % i
            j+=1
        end
        hash[j]=i
    end
    hash.max[1]
end

puts euler026