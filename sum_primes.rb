#problem 10


def is_prime?(number)
  (2..(Math.sqrt(number).to_i)).to_a.each do |num|
    return false if number % num == 0
  end
  true
end

def sum_prime_below(max)
  start_time = Time.now
  num = 3
  results = [2]
  while results.last <= max
    results << num if is_prime?(num)
    num = num + 2
  end
  results.pop
  results = results.inject(:+)
  end_time = Time.now
  puts "This took #{(end_time - start_time) * 1000} milliseconds"
  return results
end
# => 142913828922
