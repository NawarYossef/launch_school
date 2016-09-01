# Challenge :
# Using the JavaScript language, have the function CheckNums(num1,num2) take both parameters being passed 
# and return the string true if num2 is greater than num1, otherwise return the string false. 
# If the parameter values are equal to each other then return the string -1. 

# Solution : 
def CheckNums(num1,num2)
  case
  when num2 > num1
      return 'true'
  when num2 == num1
      return '-1'
  else
      return 'false'
  end
end
CheckNums(6,8) == 'true'
CheckNums(5,4) == 'false'
