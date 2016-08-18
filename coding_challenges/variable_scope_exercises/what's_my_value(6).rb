# What will the following code print and why? Don't run the code until you have tried to answer.
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

# Solution :
# This code will print "Xy-zy". That is because indexed assignment mutates the object being passed.
# The #[] method in the indexed assignment is a mutating method that modifies its receiver. 