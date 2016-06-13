def amicable_sum(end_of_range)
   amicable_numbers = []
   divisors = find_factors(end_of_range)
   divisor_sum = divisors.inject(:+)
   sum_divisor = find_factors(divisor_sum)
   second_sum = sum_divisor.inject(:+)
     if second_sum == end_of_range
         amicable_numbers << end_of_range << divisor_sum
     end
   return amicable_numbers
end

def find_factors(number)
  factors = [1]
  (2..(Math.sqrt(number).to_i)).to_a.each do |num|
    if number % num == 0 # Divides evenly
      if num == number / num
        factors << num
      else
        factors << num
        factors << number / num
      end
    end
  end
  return factors.sort
end

def amicable_sum(end_of_range)
  amicable_numbers = []
  (220..end_of_range).each do |number|
    if amicable_numbers.include?(number)
      next
    else
      divisors = find_factors(number)
      divisor_sum = divisors.inject(:+)
      if divisor_sum == number
        next
      end
      sum_divisor = find_factors(divisor_sum)
      second_sum = sum_divisor.inject(:+)
      if second_sum == number
        amicable_numbers << number << divisor_sum
      end
    end
  end
  puts amicable_numbers.inspect
  return amicable_numbers.inject(:+)
end
# 31626 
# take from largest_prime_factor.rb
# todo
# method takes in a (number)
# set up a empty array called amicable_numbers
# iterate from 1 to the number
#    if amicable array includes number skip (continue I belive this the method)
# find the divisors of each number
#   find the sum of those divisors
#   of that sum find the divisors
#     sum those divisors
#       if the sum == the orginal number
#         save original number to the amicable array
#   do this for all numbers under 10000
#   return the sum of the evaluate array

