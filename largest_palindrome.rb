def is_palindrome?(number)
  number = number.to_s
  number == number.reverse
end

# two digit numbers
def largest_palindrome
  palindromes = []
  (10..99).each do |x|
    (10..99).each do |y|
      multiplied_number = x * y
      if is_palindrome?(multiplied_number)
        palindromes << multiplied_number
      end
    end
  end
  return palindromes.max
end

def largest_palindrome
  palindromes = []
  (100..999).each do |x|
    (100..999).each do |y|
      multiplied_number = x * y
      if is_palindrome?(multiplied_number)
        palindromes << multiplied_number
      end
    end
  end
  return palindromes.max
end

def largest_palindrome
  palindromes = []
  (999.downto(100)).each do |x|
    (999.downto(100)).each do |y|
      multiplied_number = x * y
      if is_palindrome?(multiplied_number)
        palindromes << multiplied_number
      end
    end
  end
  return palindromes.max
end

def largest_palindrome(start, stop, step)
  palindrome = []
  (start..stop).each do |x|
    (start..stop).each do |y|
      if is_palindrome?(x * y)
        palindrome << x * y
      end
      
    end
  end
  if palindrome.length != 0
    return palindrome.max
  else
    largest_palindrome(start - step, stop - step, step)
  end
end