def find_factors(number)
  factors = []
  (1..(Math.sqrt(number).to_i)).to_a.each do |num|
    if number % num == 0 # Divides evenly
      factors << num
      factors << number / num unless num == number / num
    end
  end
  return factors 
end

  return "#{number}: #{factors.sort.join(', ')}"


# need to start at 3
# if number / 3 == hole number OR number % 9 == 1 
# then find the prime numbers of that number
# next triangular number + how many times through loop + 1
# => 343429632
#
def triangular(number)
  sum = 0
  count = 2
  triangle_number = 3
  flag = false
  while flag == false
    triangle_number = triangle_number + count + 1
    if find_factors(triangle_number).length > number
      flag = true
    end
    count += 1
  end
  return triangle_number
end

# => 76576500

