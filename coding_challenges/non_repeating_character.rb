# Challenge : 
# Using the Ruby language, have the function NonrepeatingCharacter(str) take the str parameter being passed, which will contain only alphabetic characters and spaces, and return the first non-repeating character. 
# For example: if str is "agettkgaeee" then your program should return k. 
# The string will always contain at least one character and there will always be at least one non-repeating character. 

# Solution : 
def NonrepeatingCharacter(str)
    str.chars.each_with_index do |char,idx|
      after = idx + 1
      return char unless str.chars[after..str.length - 1].include?(char)
    end
end

NonrepeatingCharacter("abcdef")
NonrepeatingCharacter("hello world hi hey")
