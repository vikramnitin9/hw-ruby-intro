# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each do |x|
    total += x
  end
  return total
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    first = arr.max(2)[0]
    second = arr.max(2)[1]
    return first + second
  end
end

def sum_to_n? arr, n
  if arr.length < 2
    return false
  else
    (0...arr.length).each do |i|
      (i+1...arr.length).each do |j|
        if (arr[i] + arr[j]) == n
          return true
        end
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.length == 0
    return false
  end
  s = s.downcase
  vowel = (s[0] =~ /[aeiou]/)
  letter = (s[0] =~ /^[a-zA-Z]$/)
  return (! vowel and letter)
end

def binary_multiple_of_4? s
  all_binary = (s =~ /^[01]+$/)
  mult_4 = ((s[-2..-1] == '00') or (s == '0'))
  return (all_binary and mult_4)
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    if isbn == ""
      raise ArgumentError, "ISBN cannot be empty"
    elsif price <= 0
      raise ArgumentError, "Price must be positive"
    end

    @isbn = isbn
    @price = price
  end


  def price_as_string
    return "$%.2f" % price
  end
end
