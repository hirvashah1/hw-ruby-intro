# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort.last(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  h = Hash.new(0)
  arr.each do |val|
    if h.key? val
      return true
    else
      h[n-val] = val
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s[0] =~ /[bcdfghjklmnprstvwxyz]/i
  
  
    
 
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /^[0-1]+$/
    return s.to_i(2) % 4 == 0
  end
  false
  
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize isbn,price
    if isbn.empty?
      raise ArgumentError 
    end
    if price <= 0 
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
    
  def isbn #getter method
    @isbn
  end
  
  def price
    @price
  end
  def isbn=(isbn) #setter method
    @isbn = isbn
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string 
  
  price_string = sprintf("%.2f",@price.to_s)
  string_format = "$" + price_string
  return string_format
  
  end
  
end


  
