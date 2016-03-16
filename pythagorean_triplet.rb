def is_square?(number)
  if Math.sqrt(number) % 1 == 0
    true
  end
  false
end



def is_pythagorean_trplet?
  product = 0
  start_time = Time.now
  (1..500).each do |a|
    (1..500).each do |b|
      if Math.sqrt( (a * a) + (b * b) ) % 1 == 0
        c = Math.sqrt( (a * a) + (b * b) ).to_i
        sum = a + b + c
          if sum == 1000
             product = a * b * c
          end
      end
    end
  end
  end_time = Time.now
  puts "This method took #{(end_time - start_time) * 1000} milliseconds"
  return product
end

def is_pythagorean_trplet2?
  start_time = Time.now
  (1..500).each do |a|
    (1..500).each do |b|
      if Math.sqrt( (a * a) + (b * b) ) % 1 == 0
        c = Math.sqrt( (a * a) + (b * b) ).to_i
        sum = a + b + c
          if sum == 1000
  end_time = Time.now
  puts "This method took #{(end_time - start_time) * 1000} milliseconds"
             return a * b * c
          end
      end
    end
  end
end
