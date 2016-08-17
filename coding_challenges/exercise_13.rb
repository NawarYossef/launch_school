# Challenge : 
# Write a method that takes a number as an argument.
# if the argument is a positive number, return the negative of that number. 
# If the number is 0 or negative,return the original number.

#Solution :
def negative(num)
  num > 0 ? (num - (num * 2)) : (num)
end

negative(5) == -5
negative(-3) == -3
negative(0) == 0