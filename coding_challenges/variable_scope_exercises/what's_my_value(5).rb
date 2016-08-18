# What will the following code print and why? Don't run the code until you have tried to answer.
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

# Solution :
# This code will print "Xyzzy" which is the original value assigned to variable "a" in line 1.
# in line 5, the variable "b" is initialized through assignment and is now bound to a new object. it is no longer referencing the same string object as "a".
# Thus, "a" cannot be mutated with "my_value" method. 

