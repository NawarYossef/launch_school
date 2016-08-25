# Challenge :
# Using the Ruby language, have the function AdditivePersistence(num) 
# take the num parameter being passed which will always be a positive integer 
# # you must add the digits in num until you reach a single digit. 
# For example: if num is 2718 then your program should return 2 because 2 + 7 + 1 + 8 = 18 and 1 + 8 = 9 and you stop at 9. 

# Solution : 
def AdditivePersistence(num)
 additive = []
 total = 0
 numbers = num.to_s.split(//).map(&:to_i)
 numbers.each do |number|
   additive << number
   total += number
   break if total >= 9
 end
 additive.size == 1 ? 0 : additive.size
end

AdditivePersistence(4) == 0
AdditivePersistence(19) == 2
AdditivePersistence(2718) == 2
