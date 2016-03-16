def sum_of_squares(number)
  sum = 0
  (1..number).each do |x|
    sum = sum += x * x
  end
  sum
end

def squares_of_sum(number)
  sum = 0
  (1..number).each do |x|
    sum = sum += x
  end
  sum = sum * sum
  sum
end

def find_the_difference(number)
  difference = squares_of_sum(number) - sum_of_squares(number)
end

# filter out all numbers devisiable by 7 1 to 100 uing filter and lambda
# do problem 1 again using lambda - have to do this in one line of code