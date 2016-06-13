ALPHABIT = {
            "a": 1,
            "b": 2,
            "c": 3,
            "d": 4,
            "e": 5,
            "f": 6,
            "g": 7,
            "h": 8,
            "i": 9,
            "j": 10,
            "k": 11,
            "l": 12,
            "m": 13,
            "n": 14,
            "o": 15,
            "p": 16,
            "q": 17,
            "r": 18,
            "s": 19,
            "t": 20,
            "u": 21,
            "v": 22,
            "w": 23,
            "x": 24,
            "y": 25,
            "z": 26,
            "\"": 0
            }

def parse_text_file(file)
  names = []
  File.open(file, 'r') do |file|
    string_of_names = file.read
    names = string_of_names.split(',')
  end
 return names
end


def count_letters(name)
  sum = []
  name = name.downcase.split(//)
  name.each do |letter|
    sum << ALPHABIT[letter.to_sym]
  end
  return sum.inject(:+)
end

def name_count(file)
  sum = []
  array = parse_text_file(file)
  puts array
  array = array.sort
  puts array
  array.each_with_index do |value, index|
    sum << count_letters(value) * (index + 1)
  end
  return sum.inject(:+)
end

#def name_count(file)
sum = []
array = parse_text_file(file)
puts array
array = array.sort
puts array
array.each_with_index do |value, index|
  sum << count_letters(value) * (index + 1)
end
return sum.inject(:+)
end
# 871198282
# 'A'.ord give you 65 so minus 64 gives you 1 and so far therefore no need for a letter map
