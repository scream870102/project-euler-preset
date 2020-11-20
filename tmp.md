# tmp

## function for check if number is prime
```ruby
def isPrime n
  return true if n==2
  return false if n%2==0
  limit,i = Integer.sqrt(n),3
  while i<=limit
    return false if n % i == 0
    i+=2
  end
  true
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


## function factorial 
```ruby
def factorial n
    return 1 if n ==1
    n* (factorial (n-1))
end
```