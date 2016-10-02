# Challenge : 
# A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. 
# So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).
# Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. 
# Issue an error message if there is no next featured number.

# Solution : 
def featured(n)
  (n..9_999_999_999).each {|number| return number if number_valid?(n, number)}
  return "There is no possible number that fulfills those requirements."
end

def number_valid?(n, number)
  (number.to_s.chars.uniq.size == number.to_s.chars.size) && (number % 7 == 0 && number.odd? && number > n)
end

featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987
featured(9_999_999_999) == "There is no possible number that fulfills those requirements."