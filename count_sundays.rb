start = Date.new(1901, 1, 1)
ends = Date.new(2000, 12, 31)
def how_many_sundays(start_date, ending_date)
  sundays = (start_date..ending_date).group_by(&:wday)[0]
  first_day_of_month = 0
  puts sundays.size
  sundays.each do |sunday| 
    first_day_of_month += 1 if sunday.day == 1
  end
  return first_day_of_month
end
=> 5218 
sunday = [0]
result = (start..ends).to_a.select {|k| sunday.include?(k.wday)}
