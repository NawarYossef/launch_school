# Challenge : 
# Using the Ruby language, have the function Division(num1,num2) take both parameters being passed and return the Greatest Common Factor. 
# That is, return the greatest number that evenly goes into both numbers with no remainder. For example: 12 and 16 both are divisible by 1, 2, and 4 so the output should be 4. 
# The range for both parameters will be from 1 to 10^3. 

# Solution :
def Division(num1,num2)
  factors = []
  (1..10**3).each {|idx| factors << idx if (num1 % idx == 0 && num2 % idx == 0)}
  factors.max
end

Division(7 , num2 = 3) == 1
Division(36 , num2 = 54) == 18
Division(12,16) == 4