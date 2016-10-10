# Challenge : 
# Using the Ruby language, have the function LargestPair(num) take the num parameter being passed and determine the largest double digit number within the whole number. 
# For example: if num is 4759472 then your program should return 94 because that is the largest double digit number. 
# The input will always contain at least two positive digits. 

# Solution : 
def LargestPair(num)
  digits = num.to_s.chars.map(&:to_i)
  all_numbers = []
  digits.each_with_index do |digit,idx|
    if idx == 0
       all_numbers << digit.to_s + digits[idx + 1].to_s
    elsif idx == -1
      all_numbers << digit.to_s + digits[idx - 1].to_s
    else
      all_numbers << digit.to_s + digits[idx + 1].to_s
      all_numbers << digit.to_s + digits[idx - 1].to_s
    end
  end
  all_numbers.map(&:to_i).sort[-1]
end

LargestPair(453857)
LargestPair(363223311)