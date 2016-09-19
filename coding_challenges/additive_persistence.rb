# Challenge :
# Using the Ruby language, have the function AdditivePersistence(num) 
# take the num parameter being passed which will always be a positive integer 
# # you must add the digits in num until you reach a single digit. 
# For example: if num is 2718 then your program should return 2 because 2 + 7 + 1 + 8 = 18 and 1 + 8 = 9 and you stop at 9. 

# Solution : 
def AdditivePersistence(num)
  num.to_s.split(//).map(&:to_i).combination(2).to_a.each do |comb|
    return comb.size if comb.reduce(&:+)  > 0 && comb.reduce(&:+) <= 9
  end
  return 0
end

AdditivePersistence(4) == 0
AdditivePersistence(19) == 0
AdditivePersistence(2718) == 2 
