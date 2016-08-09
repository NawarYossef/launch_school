# Challenge :
# Using the Ruby language, have the function VowelCount(str)
# take the str string parameter being passed and
# return the number of vowels
# the string contains (ie. "All cows eat grass" would return 5).
# Do not count y as a vowel for this challenge.

# Solution :
def VowelCount(str)
 str.downcase.scan(/[aieou]/).count
end

VowelCount('aee') == 3
VowelCount("All cows eat grass" ) == 5
