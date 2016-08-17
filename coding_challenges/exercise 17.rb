# Challenge :
# Using the Ruby language, 
# have the function SimpleAdding(num) add up all the numbers from 1 to num. 
# For the test cases, the parameter num will be any number from 1 to 1000. 

#Solution
def SimpleAdding(num
 total =  1.upto(num).reduce(&:+)
 total         
end
   
SimpleAdding(12) == 78