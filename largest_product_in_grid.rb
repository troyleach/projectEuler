data = [3,1,3,0,1,4]

data = [[3,1,3,5,1,4],
        [4,5,1,4,2,5],
        [3,5,0,2,2,0],
        [5,3,1,3,1,3],
        [1,5,0,4,0,3],
        [0,5,4,0,2,3]]


def largest_product(data, size, group)
  result = []
  (0..size - 1).each do |row|
    (0..size - (group + 1)).each do |col|
      result << data[row][col] * data[row][col + 1] * data[row][col + 2] * data[row][col + 3]
    end
  end

  (0..size - 1).each do |row|
    (0..size - (group + 1)).each do |col|
      result << data[row][col] * data[row + 1][col + 1] * data[row + 2][col + 2] * data[row + 3][col + 3]
    end
  end

  data = data.transpose
  (0..size - 1).each do |row|
    (0..size - (group + 1)).each do |col|
      result << data[row][col] * data[row][col + 1] * data[row][col + 2] * data[row][col + 3]
    end
  end
  return result
end

def largest_product(data, size, group)
  result = []
  (0..size - 1).each do |row|
    (0..size - group).each do |col|
      result << data[row][col] * data[row + 1][col + 1] * data[row + 2][col + 2] * data[row + 3][col + 3]
      binding.pry
    end
  end
  return result
end
