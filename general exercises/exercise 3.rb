#Write a method that takes a string as an argument and returns a new string 
#in which every uppercase letter is replaced by its lowercase version, 
#and every lowercase letter by its uppercase version. 
#All other characters should be unchanged.

#Solution :

#short version 
def swapcase(string)
 string.swapcase!
end

#Longer version 
def swapcase(string)
 letters = string.chars
 letters.each do |c|
  if c == c.upcase
   c.downcase!
  elsif c == c.downcase
  c.upcase!
 end

end
  letters.join('')
end

swapcase('CamelCase')
swapcase('Tonight on XYZ-TV')