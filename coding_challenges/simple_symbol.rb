
# Challenge :
# Using the Ruby language, have the function SimpleSymbols(str) take the str parameter 
# being passed and determine if it is an acceptable sequence by 
# either returning the string true or false. 
# The str parameter will be composed of + and = symbols with several letters 
# between them (ie. ++d+===+c++==a) and for the string to be true each letter 
# must be surrounded by a + symbol. So the string to the left would be false. 
# The string will not be empty and will have at least one letter


# Solution : 
def SimpleSymbols(str)
  letters = ('a'..'z').to_a + ('A'..'Z').to_a
  all_letters_indexes = []
  str.chars.each_with_index {|c,idx| all_letters_indexes << idx if letters.include?(c)}
  all_letters_indexes.each do |index|
    if  (index != 0 && index != -1) && (("+=").include?(str[index - 1]) && ('+=').include?(str[index + 1]))
      return true
    else
      return false
    end
  end
end


SimpleSymbols("+d+=3=+s+")
SimpleSymbols("f++d+")
SimpleSymbols("++d+===+c++==a")