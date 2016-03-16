# Need to make an list of all the prime numbers up to a given position - run my method 6 times
# return the prime number at that position
# Make sure to add one bc index start at 0

def is_prime?(number)
  (2..(Math.sqrt(number).to_i)).to_a.each do |num|
    return false if number % num == 0
  end
  true
end

def find_this(max)
  start_time = Time.now
  num = 1
  results = []
  while results.length != max
    results << num if is_prime?(num) && num != 1
    num = num.next
  end
  end_time = Time.now
  puts "This took #{(end_time - start_time) * 1000} milliseconds"
  return results[max - 1]
end

def find_this2(max)
  start_time = Time.now
  num = 3
  max = max - 1
  results = []
  while results.length != max
    results << num if is_prime?(num)
    num = num + 2
  end
  end_time = Time.now
  puts "This took #{(end_time - start_time) * 1000} milliseconds"
  return results[max - 1]
end

def find_this3(max)
  start_time = Time.now
  num = 3
  count = 0
  while count < (max - 1)
    count+=1 if is_prime?(num)
    num = num += 2
  end
  end_time = Time.now
  puts "This took #{(end_time - start_time) * 1000} milliseconds"
  return num-2
end