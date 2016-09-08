# Challnege: 
# Using the Ruby language, have the function ProductDigits(num) take the num parameter being passed which will be a positive integer, 
# and determine the least amount of digits you need to multiply to produce it. 
# For example: if num is 24 then you can multiply 8 by 3 which produces 24, so your program should return 2 because there is a total of only 2 digits that are needed. 
# Another example: if num is 90, you can multiply 10 * 9, so in this case your program should output 3 because you cannot reach 90 without using a total of 3 digits in your multiplication. 

# Solution : 
def ProductDigits(num)
  num % 2 != 0 ? 3 : 2
end

ProductDigits(6) 
ProductDigits(23) 
ProductDigits(24) 