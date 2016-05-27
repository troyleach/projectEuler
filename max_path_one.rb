triangle = [
  [3],
  [7, 4],
  [2, 4, 6],
  [8, 5, 9, 3]
]


# rand(2) give 0 or 1

def flip
  return rand(2)
end
#31 times it ran when I put in 5
def sum_of_path(array, try)
  
  sum = []
  while try > 0
    path = [] #keeping track of the path
    row = 0 #this sets the row for me
    position = 0 #this is the index that I am at
    path << array[0][0] #i always will want the first number of the triangle
    row_count = array.length - 1 # this count tells the method how may rows there are so that I don't run anything on the last array in the tri
    array.each do |value|
      while row_count > 0
        direction = flip
        
        if direction == 0
          path << array[row + 1][position + direction]
          #  row + 1 plus current index
        else
          # row + 1 plus current index + 1
          path << array[row + 1][position + direction]
          position += 1
        end
        row += 1
        row_count -= 1
      end
    end
    
    
    sum << path.inject(:+)
    try -= 1
    
  end
  
  return sum.max
end
path << triangle[0][0]
array.index(value + 1)
maybe I could do this... flip || flip + 1
#we don't have to run the last array.. so (0..triangle.length).each do |thing|
