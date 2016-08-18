# What will the following code print and why? Don't run the code until you have tried to answer.
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

# Solution :
# This code still prints 7
# the assignment in line 5 has no effect on the value of "a" in line 1. 
# Although both variables have the same name, they are both pointing to two different objects.
# Numbers are immutable so the value of "a" in line 1 cannot be modified. 
