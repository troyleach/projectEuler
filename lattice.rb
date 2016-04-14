def lattice_path(array)
  temp = []
  sum = 0
  count = 0
  while count < array.length - 1
    sum = sum + array[count]
    puts sum
    temp.push(sum)
    count += 1
  end
  temp.push(array.last)
  sum = 0
  sum = temp.inject(:+) * 2
  temp.push(sum)
  return temp
end



# below works, just not dynamic arr = [1, 3, 6, 20]
def lattice_path(array)
  temp = [1]
  sum = array[0] + array[1]
  temp << sum
  sum = sum + array[2]
  temp << sum
  temp << array.last
  sum = temp.inject(:+)
  temp << (sum * 2)
  return temp
end



# below works... now just need to make it recursive and add the grid number
def lattice_path(array)
  temp = [1]
  count = 2
  sum = array[0] + array[1]
  temp.push(sum)
  while count < array.length - 1
    sum = sum + array[count]
    temp << sum
    count += 1
  end
  
  temp << array.last
  sum = temp.inject(:+)
  temp << (sum * 2)
  return temp
end


def lattice_path(array, grid)
  return array.last if array[1] == grid
    temp = [1]
    count = 2
    sum = array[0] + array[1]
    temp.push(sum)
    while count < array.length - 1
      sum = sum + array[count]
      temp << sum
      count += 1
    end
    temp << array.last
    sum = temp.inject(:+)
    temp << (sum * 2)
    lattice_path(temp, grid)
end

#=> 137846528820
#has not been verified!
