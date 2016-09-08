# How do we create an object in Ruby? Give an example of the creation of an object.

# Answwer :
# We create an object by defining a class and then use the .new method to instantiate the object. 
# example :
class NewClass
end

new_obj = NewClass.new
#---------------------------------

# What is a module? What is its purpose? How do we use them with our classes? Create a module for the class you created in exercise 1 and include it properly.

# Answer : 
# is a way to achieve polymorphism. We use modules to group reusable code into one place. Modules are used in classes by using the "include" reserve word.
module Mod
end

class NewClass
  include Mod
end
#---------------------------------



