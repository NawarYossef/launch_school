# Challenge : 
# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.

# Solution : 
def ordered_vowel_words(string)
  output_string = []
  string.scan(/\w+/).each {|word| output_string << word if word_valid?(word) }
  output_string
  (string.split.size == 1 && word_valid?(string) == false) ? "" : output_string.join(' '))
end

def word_valid?(word)
  word.scan(/[aeiou]/).each {|vowls| vowls.chars == vowls.chars.sort}
end

ordered_vowel_words("amends")
ordered_vowel_words("crypt") == "crypt"
ordered_vowel_words("o") == "o"
ordered_vowel_words("complicated") == ""
ordered_vowel_words("this is a test of the vowel ordering system") == "this is a test of the system"