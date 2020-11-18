# Ruby Note

## Ruby Key words
- unless
- if
- elsif
- else
- end
- while
- until
- nil
- for
- in
- break
- next `==continue`
- redo
- retry
- loop do `must have break to get out the loop`
- each
- def

## Operator
- \+
- \-
- \*
- \/
- %
- &&
- ||
- !
- ==
- **

## other
- =begin
- =end
- \#
- #{var}
- (\.\.)_to_var `include`
- (\.\.\.)_to_var `exclude`
- array = [a,b,c,d,e]
- array[index] `from zero`
- array[-1] `equals to last element to array the same way of python`
- array << value `insert the value to the array`
- array.pop `delete the last element of array`
- array.delete_at(index) `delete the specific element in arrray`
- var*integer `put the var interger times var can't be neither integer or float but can be array`
- array1 & array2 `get the element both in two array`
- array1 | array2 `get the element in two array`
- array.reverse `If you use the reverse method without (!) and don’t save it to a new variable, it will just reverse it once and keep the original value.`
- array.reverse! `reverse the array`

## Array
**Can also be nested works as C#**  
### Array method
- array.length or array.size returns the number of elements in array.
- array.sort returns a new array with the elements sorted
- array.uniq returns a new array with duplicate values removed from array.
- array.uniq! removes duplicates in place.
- array.freeze safeguards the array, preventing it from being modified.
- array.include?(obj) returns true if obj is present in array, false otherwise.
- array.min returns the element with the minimum value.
- array.max returns the element with the maximum value.

## Hashes (like map)
**Can also be nested works as C#**  
### Hash method
- hash.delete(key) removes the key-value pair from hash by key.
- hash.key(value) returns the key for the given value in hash, nil if no matching value is found.
- hash.invert creates a new hash, reversing keys and values from hash; that is, in the new hash, the keys from hash become values and values become keys.
- hash.keys returns a new array with keys from hash.
- hash.values returns a new array containing all the values of hash.
- hash.length returns the length of hash as an integer.
```ruby
ages = { "David" => 28, "Amy"=> 19, "Rob" => 42 }

puts ages["Amy"] 
# outputs 19
```

## Symbols

**Save times and memory than using string as index**  
-Symbols are similar to strings, but they are immutable, meaning that they cannot be changed.
A symbol is created using a colon and a name, for example:
```ruby
h = {:name=>"Dave", :age=>28, :gender=>"male"}

puts h[:age]
```

Short way 
```ruby
h = {name:"Dave", age:28, gender:"male"}

puts h[:age]
```

## Iterators

### Array
```ruby
arr = [2, 4, 6]

arr.each do |x|
  puts x
end
```

### Hash
```ruby
sizes = {svga:800, hd:1366, uhd:3840}

sizes.each do |key, value|
  puts "#{key}=>#{value}"
end
```

short way
```ruby
sizes = {svga:800, hd:1366, uhd:3840}

sizes.each { |key, value| puts "#{key}=>#{value}" }
```

### string
`method` each_char

### times
```ruby
10.times do
  puts "Hi"
end
```

## Letter Frequency
```ruby
text = "I am learning Ruby and it is fun!"
text.downcase!
freqs = {}
freqs.default = 0

text.each_char { |char| freqs[char] += 1}

("a".."z").each {|x| puts "#{x} : #{freqs[x]}" }
```

The `default` method is used to set the default value for the hash, meaning that any key that does not have a value assigned will be set to that value.

With just 6 lines of code we created a fully working letter frequency counter!

## Method
Method name should start at lowercase alphabet  
Methods can also be as Arguments

```ruby
def sqr(x=1)
  puts x*x
end

sqr(8) 
# outputs 64
```

 if there is no parameter you don't need to  have parthenless

```ruby
def sum x, y
  puts x+y
end

sum 6, 9
```

### Optional Parameter
```ruby
def someMethod(*p)
  puts p
end

someMethod(25, "hello", true)
```

### Return value
```ruby
def squares(a, b, c)
  return a*a, b*b, c*c
end

arr = squares(2, 3, 6)
puts arr
```

> Ruby is pass by refference

## Global var
start with $
```ruby
$x = 42
```

## Class
```ruby
class Person
  def initialize
    puts "Hi there"
  end
end

p1 = Person.new
p2 = Person.new
```

### instance variable
```ruby
class Animal
  @age = 0
  def initialize(name, age)
    @name = name
    @age = age
  end
end

ob = Animal.new("Jacky", 3)
```


