def sum_the_power(number, exponent)
  sum = number**exponent
  sum = sum.to_s
  sum = sum.split(//)
  sum = sum.map(&:to_i)
  total = sum.inject(:+)
  return total
end

# => 1366
# do this with out any help, like number ** exponent don't use **
