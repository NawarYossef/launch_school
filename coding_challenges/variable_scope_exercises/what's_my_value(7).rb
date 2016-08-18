# What will the following code print, and why? Don't run the code until you have tried to answer.
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# Solution :
# This code will print 7.
# This is because variables defined inside the block are not visible in the outer scope.
# Although the variables in line 2 and 6 have the same name, they are two different objects.
