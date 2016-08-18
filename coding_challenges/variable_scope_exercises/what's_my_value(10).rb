# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a
# Solution :
# This code will run an error message. In line 8, the variable "a" is assigned as "a = a + b". "a" was not initialized before line 8 and has no value. therefore, it cannot be added to the value of "b".
# Also the variable "a" in line 3 is in the outer scope and not visible inside the block.



