# Chlallenge : 
# Using the Ruby language, have the function SimpleSymbols(str) take the str parameter being passed and determine if it is an acceptable sequence by either returning the string true or false. 
# The str parameter will be composed of + and = symbols with several letters between them (ie. ++d+===+c++==a) and for the string to be true each letter must be surrounded by a + symbol. So the string to the left would be false. 
# The string will not be empty and will have at least one letter. 


# Solution (1) :
def SimpleSymbols(str)
  letters = str.scan(/[a-z]/)
  str.scan(/\+[a-z]\+/).count == letters.size ? true : false
end


# Solution (2) :
def SimpleSymbols(str)
  letters = str.scan(/[a-z]/)
  bool = []
  str.chars.each_with_index do |letter,idx|
   if letters.include?(letter) && str.chars[idx + 1] == '+' && str.chars[idx - 1] == '+' && idx != 0 && idx != -1
     bool << true
   end
  end
  bool.size == letters.size ? true : false
end


SimpleSymbols("+d+=3=+s+") == true
SimpleSymbols("f++d+") == false
SimpleSymbols("++d+===+c++==a") == false