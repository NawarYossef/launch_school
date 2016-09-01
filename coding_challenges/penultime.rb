#Challenge :
#Write a method that returns the next to last word 
#in the String passed to it as an argument.
#Words are any sequence of non-blank characters.
#You may assume that the input String will always contain at least two words.

#Solution 1) :
def penultimate(string)
  array = string.split
  index = array.size - 2
  array[index]
end

#Solution 2) :
def penultimate(string)
  string.split[-2]
end

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'