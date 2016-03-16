#  http://www.skorks.com/2010/03/timing-ruby-code-it-is-easy-with-benchmark/

def time_method(method, *args)
  start_time = Time.now
  self.send(method, args)
  end_time = Time.now
  time_elasped = start_time - end_time
  puts "This method took #{time_elasped}"
end