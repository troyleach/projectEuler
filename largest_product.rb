def largest_product(string, step)
  start_time = Time.now
  sum = 0
  new_array = string.split(%r{\s*}).map(&:to_i)
  while new_array.length > step
    temp = new_array.slice(0..step - 1)
    if sum < temp.inject(:*)
      sum = temp.inject(:*)
      product = temp
    end
    new_array.shift
  end
  end_time = Time.now
  puts "This took #{(end_time - start_time) * 1000} milliseconds"
  thing = "the biggest product is #{sum} and the #{step} adjacent numbers are #{product}"
  return thing
end

# if the 13 numbers includes a 0 


str.slice(0..1)
first = 0
last = step #might have to minus 1 bc of starting at 0
str = '987654321'
str.split(%r{\s*})
[1, 2, 3].inject(:*)
[1, 2, 3].inject(:*) => 6
# maybe take the first four the use pop then take the next four then pop

sum = 0
str.split(%r{\s*}).map(&:to_i)
# loop starts here
temp = new.slice(0..1)
sum = temp.inject(:*) # if statement here if sum is smaller than the new sum save
new.shift

