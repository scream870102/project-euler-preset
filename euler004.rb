# Largest palindrome product
# A palindromic number reads the same both ways. The largest palindrome made from the product of two -digit numbers is .

# Find the largest palindrome made from the product of two -digit numbers.

$max = 999
$min = 100

def isPalindrome n
  tmp=n.to_s.split("")
  reverse_tmp=tmp.reverse
  result = true
  tmp.length.times{|i|result =false if tmp[i]!=reverse_tmp[i]}
  result
end

def euler004
  arr=[]
  tmp_arr=($min*$min..$max*$max).to_a.reverse.each{|t|arr<<t if t%11==0} 
  arr.each do |x|
    for y in (100..999)
      tmp = x/y
      return x if isPalindrome x if (x%y==0)&&(tmp<=999&&tmp>=100)
    end
  end
end
puts euler004
