
def find_max(arrays)
  length = 0
  result = []
  arrays.each do |array|
    if array.length > length
      length = array.length
      result.clear
      result << array
    end
  end
 return result[0].first
end

def collatz(number)
  results = []
  2.upto(number) { |number|
  chain = [number]
    while number > 1
      if number.even?
        number = number / 2
        chain.push(number)
      else
        number = number * 3 + 1
        chain.push(number)
      end
    end
    results << chain
  }
  return find_max(results) 
end
