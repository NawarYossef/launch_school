# Challenge :
# Given a string that consists of some words 
# and an assortment of non-alphabetic characters, 
# write a method that returns that string with all of the non-alphabetic characters replaced by spaces. 
# If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

# Solution : 
def cleanup(string)
  output = []
  string.scan(/\w+/).each {|w| output << w }
  puts output.join(' ')
end

cleanup("---what's my +*& line?") == ' what s my line '