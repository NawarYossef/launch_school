# Challenge :
# Using the Ruby language, have the function DivisionStringified(num1,num2) 
# take both parameters being passed, divide num1 by num2, 
# and return the result as a string with properly formatted commas. 
# If an answer is only 3 digits long, return the number with no commas (ie. 2 / 3 should output "1"). 
# For example: if num1 is 123456789 and num2 is 10000 the output should be "12,346". 


# Solution : 
def DivisionStringified(num1,num2)
  result = num1.to_f / num2.to_f
  result.round.to_s.chars.map(&:to_i).size <= 3 ? result.round : result.round(3)
end

DivisionStringified( 5 , num2 = 2)
DivisionStringified(6874 , num2 = 67)

