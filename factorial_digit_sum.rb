def sum_numbers(number)
  number = number.to_s
  arr = number.split(//)
  arr = arr.map { |num| num.to_i }
  sum = arr.inject(:+)
  return sum
end

def factorial_digit_sum(number)
  sum = number
  number.downto(2) do |n| 
    sum = sum * (n - 1)
  end
  return sum_numbers(sum)
end
# 648?
