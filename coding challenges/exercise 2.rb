# Write a method that takes a single String argument and 
# returns a new string that contains the original value of the argument,
# but the first letter of every word is now capitalized.

def word_cap(string)
  words_capitalize = string.split.map{|word| word.capitalize!}
  words_capitalize.join(' ')
end

word_cap('four score and seven')
word_cap('the javaScript language')
word_cap('this is a "quoted" word')