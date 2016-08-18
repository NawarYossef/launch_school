# What will the following code print and why? Don't run the code until you have tried to answer.
a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

# Solution :
# This code will print 7. That is because methods are self contained with respect to their local variables.
# The variable "a" inside the method is not visible in the outer scope.
