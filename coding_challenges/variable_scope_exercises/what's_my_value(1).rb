# What will the following code print and why? Don't run the code until you have tried to answer.
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

# Solution :
# this code will print 7.
# the assignment in line 5 binds the variable 'b' to a new object. Thus, both a and b are referencing two different objects.
# Also, numbers are immutable so the value of variable 'a' cannot be modified. 