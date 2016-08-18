# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a
# Solution :
# This code will print 7.
# Shadowing is taking place in line 6 because the variable "a" from line 3 is being shadowed in the block in line 6.
# Shadowing means that the variable defined in the block has no effect on the variable in outer scope even if both variables have the same name.