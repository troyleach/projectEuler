WORD_MAP = {
  "0" => " ",
  "1" => "one",
  "2" => "two",
  "3" => "three",
  "4" => "four",
  "5" => "five",
  "6" => "six",
  "7" => "seven",
  "8" => "eight",
  "9" => "nine",
  "10" => "ten",
  "11" => "eleven",
  "12" => "twelve",
  "13" => "thirteen",
  "14" => "fourteen",
  "15" => "fifteen",
  "16" => "sixteen",
  "17" => "seventeen",
  "18" => "eighteen",
  "19" => "nineteen",
  "20" => "twenty",
  "30" => "thirty",
  "40" => "forty",
  "50" => "fifty",
  "60" => "sixty",
  "70" => "seventy",
  "80" => "eighty",
  "90" => "ninety"
}
def count_letters(str)
  str = str.gsub(" ", "")
  sum = str.size
  puts "this is inside count_letters => #{str.inspect}"
  return sum
end

def one_and_two_digit(number)
  if number < 21
    number_word_string = WORD_MAP[number.to_s]
  else
    number_word_string = ""
    number_word_string.concat( WORD_MAP[(number / 10 * 10).to_s] )
    number_word_string.concat( WORD_MAP[(number % 10).to_s] )
  end
  return number_word_string
end

def three_digit(number)
  if number % 100 == 0
    number_word_string = WORD_MAP[(number / 100).to_s] + " hundred"
  else
    number_word_string = ""
    number_word_string.concat( WORD_MAP[(number / 100).to_s] + " hundred and ")
    number_word_string.concat( one_and_two_digit(number % 100) )
  end
  return number_word_string
end

def four_digit(number)
  number_word_string = ""
  number_word_string.concat( WORD_MAP[(number / 1000).to_s] + " thousand")
  return number_word_string
end

def count_number_words(number)
  result = 0
    (1..number).each do |num|
      if num < 100
        number_word_string = one_and_two_digit(num)
        result += count_letters(number_word_string)
      elsif num < 1000
        number_word_string = three_digit(num)
        result += count_letters(number_word_string)
      else
        number_word_string = four_digit(num)
        result += count_letters(number_word_string)
      end
    end
  return "All the letter added up are #{result}"
end


