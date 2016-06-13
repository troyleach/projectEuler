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


def perfect_number?(max_number, return_value)
  data = {
    deficient: [1],
    abundant: [],
    perfect_number: []
  }
  (2..max_number).each do |number| 
    factors = find_factors(number)
    factors_sum = factors.inject(:+)
    if factors_sum < number
      data[:deficient].push(number)
    end
    if factors_sum > number
      data[:abundant].push(number)
    end
    if factors_sum == number
      data[:perfect_number].push(number)
    end
  end
  return data[return_value.to_sym]
end

def non_sum(number)
  numbers = perfect_number?(number, "abundant")
  abundant_sums = []
  numbers.each do |num|
    numbers.each do |add_number|
      abundant_sums << add_number + num
    end
  end
  abundant_sums = abundant_sums.uniq.sort
  max_number = abundant_sums.last
  result = []
  (1..max_number).each do |number|
    result << number if !abundant_sums.include?(number)
  end
  return result.inject(:+)
end
# 52749780
