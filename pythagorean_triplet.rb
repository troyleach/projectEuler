def is_square?(number)
  if Math.sqrt(number) % 1 == 0
    true
  end
  false
end



def is_pythagorean_trplet?
  start_time = Time.now
  (1..500).each do |a|
    (1..500).each do |b|
      if Math.sqrt( (a * a) + (b * b) ) % 1 == 0
        c = Math.sqrt( (a * a) + (b * b) ).to_i
        sum = a + b + c
          if sum == 1000
            puts "#{a} + #{b} + #{c} = #{sum}"
          end
      end
    end
  end
  end_time = Time.now
  puts "This method took #{(end_time - start_time) * 1000} milliseconds"
end

def is_pythagorean_trplet?
  start_time = Time.now
  (1..500).each do |a|
    (1..500).each do |b|
      c = Math.sqrt( (a * a) + (b * b) ).to_i
      if is_square?( c )
        sum = a + b + c
          if sum == 1000
            puts  "#{a} + #{b} + #{c} = #{sum}"
            break
          end
      end
    end
  end
  end_time = Time.now
  puts "This method took #{(end_time - start_time) * 1000} milliseconds"
end