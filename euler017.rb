# Number letter counts
# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of “and” when writing out numbers is in compliance with British usage.

 
# $one2nine = ["one","two","three","four","five","six","seven","eight","nine"]
# $ten2ninty = {
#     90 => "ninety",
#     80 => "eighty",
#     70 => "seventy",
#     60 => "sixty",
#     50 => "fifty",
#     40 => "forty",
#     30 => "thirty",
#     20 => "twenty",
#     19=>"nineteen",
#     18=>"eighteen",
#     17=>"seventeen", 
#     16=>"sixteen",
#     15=>"fifteen",
#     14=>"fourteen",
#     13=>"thirteen",              
#     12=>"twelve",
#     11 => "eleven",
#     10 => "ten",
# }

# def under100 n
#     num=n%100
#     if num <= 20 && num>=10
#         return $ten2ninty[num]
#     elsif num < 10 && num!=0
#         return $one2nine[num-1]
#     else
#         tmp=""
#         if $ten2ninty.has_key?(num/10*10)
#             tmp = $ten2ninty[num/10*10]+ " "
#         end 
#         if num%10!=0
#             tmp += $one2nine[num%10-1]
#         end
#         return tmp
#     end
# end

# def hundred n
#     num = n/100%10
#     next_digit = n%100
#     res =""
#     if next_digit!=0
#         res += "and "
#     end
#     return res if num == 0 
#     res.insert(0,$one2nine[num-1]+" hundred ")
#     return res
# end

# def thousand n
#     num = n/1000%10
#     next_digit = n/100%10
#     return " " if num == 0
#     res = $one2nine[num-1]+" thousand "
#     if next_digit!=0
#         res += "and "
#     end
#     return res
# end

# def toWord n
#     if n >=1000
#         return thousand(n) + hundred(n) + under100(n)
#     elsif n>=100
#         return hundred(n) + under100(n)
#     else
#         return under100(n)
#     end
# end

# def euler017
#     # toWord 909
#     s=""
#     for i in (1..1000)
#         s+=toWord i
#     end
#     s.gsub(' ','').split("").length
# end

# puts euler017

$one2nine = ["one","two","three","four","five","six","seven","eight","nine"]
$ten2ninty = {
    90 => "ninety",
    80 => "eighty",
    70 => "seventy",
    60 => "sixty",
    50 => "fifty",
    40 => "forty",
    30 => "thirty",
    20 => "twenty",
    19=>"nineteen",
    18=>"eighteen",
    17=>"seventeen", 
    16=>"sixteen",
    15=>"fifteen",
    14=>"fourteen",
    13=>"thirteen",              
    12=>"twelve",
    11 => "eleven",
    10 => "ten",
}

def under100 n
    num=n%100
    if num <= 20 && num>=10
        return $ten2ninty[num]
    elsif num < 10 && num!=0
        return $one2nine[num-1]
    end
    tmp=""
    tmp = $ten2ninty[num/10*10]+ " " if $ten2ninty.has_key?(num/10*10)
    tmp += $one2nine[num%10-1] if num%10!=0
    tmp 
end

def hundred n
    num = n/100%10
    next_digit = n%100
    res =""
    res += "and " if next_digit!=0
    return res if num == 0 
    res.insert(0,$one2nine[num-1]+" hundred ")
end

def thousand n
    num = n/1000%10
    next_digit = n/100%10
    return " " if num == 0
    res = $one2nine[num-1]+" thousand "
    res += "and " if next_digit!=0
    res
end

def toWord n
    if n >=1000
        return thousand(n) + hundred(n) + under100(n)
    elsif n>=100
        return hundred(n) + under100(n)
    end
    under100(n)
end

def euler017
    s=""
    (1..1000).each{|i|s+=toWord i}
    s.gsub(' ','').split("").length
end

puts euler017