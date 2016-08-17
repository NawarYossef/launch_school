Modlues are like classes in that they share similar functions. 
However, objects cannot be created within a Modlue

module MyModule(sound)
end

class Myclass 
  include MyModule
end
myObject = Myclass.new



