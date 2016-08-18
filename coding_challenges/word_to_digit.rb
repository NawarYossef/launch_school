# Coding Challenge :
# Write a method that takes a sentence string as input,
# and returns a new string that contains the original string
# with any sequence of 
# the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# Solution : 
def word_to_digit(string)
  words_to_numbers = {
    'zero' => 0,'one' => 1, 'two' => 2,'three' => 3,'four' => 4,
    'five' => 5,'six' => 6,'seven' => 7,'eight' => 8,'nine' => 9,
  }
  words_to_numbers.keys.each do |word|
    string.gsub!(word,words_to_numbers[word].to_s)
  end
  string
end

word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'