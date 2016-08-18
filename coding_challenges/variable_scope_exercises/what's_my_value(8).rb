# What will the following code print, and why? Don't run the code until you have tried to answer.
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# Solution :
# This code will run an error message "undefined local variable or method".
# That is because the variable "a" in line 5 is a local variable to the block and cannot be accessed outside of the block.
