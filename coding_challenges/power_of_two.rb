# Challenge
# Using the Ruby language, have the function PowersofTwo(num) 
# take the num parameter being passed which will be an integer 
# and return the string true if it's a power of two. 
# If it's not return the string false. 
# For example if the input is 16 then your program 
# should return the string true but if the input is 22 then the output 
# should be the string false. 

# Solution : 
def PowersofTwo(num)
 factors = []
 number = num
 output = []
 while number > 0
   factors << num/number if num % number == 0
   number -=1
 end
 factors.reject!{|n| n * n != num}
 (factors.empty?) ? "false" : "true"
end

PowersofTwo(4)=="true"
PowersofTwo(124) == "false"
PowersofTwo(16)  == "true"
PowersofTwo(22) == "false"

