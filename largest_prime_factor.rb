# https://www.mathsisfun.com/definitions/prime-factor.html
def prime_factors(number)
  result = []
  prime = []
  if is_prime?(number)
    return number
  else # Non-prime
    result = find_factors(number)
    result.each do |num|
      if is_prime?(num)
        prime << num
      end
    end
  end
  prime.sort
end

def is_prime?(number)
  (2..(Math.sqrt(number).to_i)).to_a.each do |num|
    return false if number % num == 0
  end
  true
end

def find_factors(number)
  factors = []
  (2..(Math.sqrt(number).to_i)).to_a.each do |num|
    if number % num == 0 # Divides evenly
      factors << num
      factors << number / num
    end
  end
  return factors
end


# 6857
