# tmp

## function for check if number is prime
```ruby
def isPrime n
  if n==2
    return true
  end
  if n%2==0
    return false
  end
  limit = Integer.sqrt n
  i = 3
  while i<=limit
    if n % i == 0
      return false
    end
    i+=2
  end
  return true
end
```

## function find all factor and return num of factor
```ruby
def findAllFactor n
    factor=[] 
    for i in (1..(Integer.sqrt n))
        if n%i==0
            other = n/i
            factor<<i
            factor<<other if i!=other
        end
    end
    factor.length
end
```