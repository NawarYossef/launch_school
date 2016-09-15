# Challenge :
# Using the Ruby language, have the function TripleDouble(num1,num2) take both parameters being passed, and return 1 if there is a straight triple of a number at any place in num1 and also a straight double of the same number in num2. 
# For example: if num1 equals 451999277 and num2 equals 41177722899, then return 1 because in the first parameter you have the straight triple 999 and you have a straight double, 99, of the same number in the second parameter. 
# If this isn't the case, return 0. 

# Solution  :
def TripleDouble(num1,num2)
   arr_num1 = num1.to_s.split(//).map(&:to_i)
   arr_num2 = num2.to_s.split(//).map(&:to_i)
   first_number_valid?(arr_num1) && second_number_valid?(arr_num2) ? 1 : 0
end

def second_number_valid?(numbers)
  numbers.each_with_index do |ch,idx|
    break if numbers[idx + 1] == nil
    return true if numbers.count(ch) == 2 && ch == numbers[idx + 1]
  end
end

def first_number_valid?(numbers)
  numbers.each_with_index do |ch,idx|
    break if numbers[idx + 2] == nil
    return true if numbers.count(ch) >= 3 &&  (ch == numbers[idx + 1] && numbers[idx + 1] == numbers[idx + 2])
  end
end

TripleDouble(465555, 5579) == 1
TripleDouble(67844, 66237) == 0
TripleDouble(451999277,41177722899 ) == 1