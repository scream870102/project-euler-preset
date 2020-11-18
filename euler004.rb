# Largest palindrome product
# A palindromic number reads the same both ways. The largest palindrome made from the product of two -digit numbers is .

# Find the largest palindrome made from the product of two -digit numbers.
$max = 999
$min = 100
def isPalindrome n
  tmp=n.to_s.split("")
  reverse_tmp=tmp.reverse
  result = true
  for i in (0...tmp.length)
    if tmp[i]!=reverse_tmp[i]
      result=false
    end
  end
  return result
end

def euler004
  arr=[]
  tmp_arr=($min*$min..$max*$max).to_a.reverse
  tmp_arr.each do |t|
    arr<<t if t%11==0
  end
  arr.each do |x|
    for y in (100..999)
      tmp = x/y
      if (x%y==0)&&(tmp<=999&&tmp>=100)
        result = isPalindrome x
        if result==true
          return x
        end
      end
    end
  end
end
puts euler004

