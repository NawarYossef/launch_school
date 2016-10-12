# Challenge : 
# Using the Ruby language, have the function PalindromeTwo(str) take the str parameter being passed 
# and return the string true if the parameter is a palindrome, (the string is the same forward as it is backward) otherwise return the string false. 
# The parameter entered may have punctuation and symbols but they should not affect whether the string is in fact a palindrome. 
# For example: "Anne, I vote more cars race Rome-to-Vienna" should return true. 

# Solution :
def PalindromeTwo(str)
  backword_string = str.gsub(/[^a-zA-Z]/,"").downcase.reverse
  backword_string == str.gsub(/[^a-zA-Z]/,"").split(//).join.downcase ? puts("true") : puts("false")
end

PalindromeTwo("Noel - sees Leon") == "true"
PalindromeTwo("A war at Tarawa!") == "true"
PalindromeTwo("Anne, I vote more cars race Rome-to-Vienna") == "true"