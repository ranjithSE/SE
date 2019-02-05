# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0,:+)
end

def max_2_sum arr
  array_count=arr.count
  
  case array_count
  when 0
    return 0
  when 1
    return arr[0]
  else
    #arr.sort! { |x,y| x<=>y }
    arr.sort!
    return (arr[-1] + arr[-2])
  end
  
end

def sum_to_n? arr, n
  #arr.sort! { |x,y| x<=>y }
  array_count=arr.count
  
  case array_count
  when 0
    return false
  when 1
    return false
  else
    !!arr.uniq.combination(2).detect {|x,y| x+y==n }
  end
  
end


# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if /^[^aeiou\W]/i.match(s) == nil
     return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if s.match(/\A[01]+\Z/) == nil
    return false
  else
    decimal_value=s.to_i(2)
    if(decimal_value % 4 == 0 )
      return true
    else
      return false
    end
  end
  
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price 
  def initialize(isbn,price)
    @isbn=isbn
    @price=price
   
    if isbn.empty?  
      raise ArgumentError.new("ISBN number is empty")
    end
  
    unless price>0
      raise ArgumentError.new("Price is less than or equal to zero")
    end
  end
  
  
  
def price_as_string
  return "$#{'%.2f' % @price}"
end
end

