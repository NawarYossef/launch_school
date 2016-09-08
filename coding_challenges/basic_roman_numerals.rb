# Challenge : 
# Using the Ruby language, have the function BasicRomanNumerals(str) read str which will be a string of Roman numerals. 
# The numerals being used are: I for 1, V for 5, X for 10, L for 50, C for 100, D for 500 and M for 1000. 
# In Roman numerals, to create a number like 11 you simply add a 1 after the 10, so you get XI. 
# But to create a number like 19, you use the subtraction notation which is to add an I before an X or V (or add an X before an L or C). 
# So 19 in Roman numerals is XIX. 
# The goal of your program is to return the decimal equivalent of the Roman numeral given. For example: if str is "XXIV" your program should return 24 

# Solution :
ROMAN_TO_NUMBERS = {
    'I' => 1,
    'II' => 2,
    'III' => 3,
    'IV' => 4,
    'V' => 5,
    'VI'=> 6,
    'VII'=> 7,
    'VIII' => 8,
    'VIV' => 9,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

def BasicRomanNumerals(str)
  roman_numeral = str.split(//)
  case
  when roman_numeral.size == 1
    puts ROMAN_TO_NUMBERS[str]
  when roman_numeral.size > 1
    convert_roman_to_number(roman_numeral)
  end
end

def convert_roman_to_number(arr)
  output_num = []
    arr.each do |char|
      if char != arr.last || char != arr[-2]
        output_num << ROMAN_TO_NUMBERS[char]
      end
    end
    calculate_final_num(output_num)
end

def calculate_final_num(arr)
  last_two_digit_calc = arr.last - arr[-2]
  if arr.last > arr[-2]
    puts arr.reduce(:+) - (arr.last + arr[-2]) + last_two_digit_calc
  else
   puts  arr.reduce(:+)
  end
end

BasicRomanNumerals("IV") == 4
BasicRomanNumerals("XXIV") == 24