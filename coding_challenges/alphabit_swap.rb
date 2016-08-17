# Challenge :
# Using the Ruby language, have the function AlphabetSoup(str)
# take the str string parameter being passed and return the string with the letters
# in alphabetical order (ie. hello becomes ehllo). Assume numbers and
# punctuation symbols will not be included in the string.

# Solution :

def AlphabetSoup(str)
 str.downcase.chars.sort!.join
end

AlphabetSoup("coderbyte") == "bcdeeorty"
AlphabetSoup('hello') == 'ehllo'