# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def multiples_three_five(max_number)
  sum = 0
  max_number = max_number - 1
  (0..max_number).each do |number|
    if number % 3 == 0 || number % 5 == 0
      sum = sum + number
    end
  end
  return sum
end


# == 233168
