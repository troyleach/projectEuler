def reverse(array)
    l = array.length - 1
    p = 0
  array.map do |x|
    if p < l
      first = array[p]
      array[p] = array[l]
      array[l] = first
      l = l - 1
      p = p + 1 
    end
  end
  return array
end

#to make this faster, divide the length in half! 

