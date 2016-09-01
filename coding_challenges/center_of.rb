# Challenge :
# Write a method that takes a non-empty string argument, 
# and returns the middle character or characters of the argument. 
# If the argument has an odd length, you should return exactly one character. 
# If the argument has an even length, you should return exactly two characters.


#Solution :
def center_of(string)
 index = (string.chars.size / 2)
 string.chars.size.odd? ? (string[index]) : (string[index - 1] + string[index])
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'