# Challenge :
# Using the Ruby language, have the function AlphabetSoup(str) take the str string parameter 
# being passed and return the string with the letters in alphabetical order (ie. hello becomes ehllo). 
# Assume numbers and punctuation symbols will not be included in the string. 

# Solution :
ALPHABETS = ('a'..'z').to_a
def AlphabetSoup(string)
  string_indexes = []
  ALPHABETS.each_with_index do |letter,index|
    string.scan(letter).count.times do
      string_indexes << index
    end
  end
  string_indexes.sort!
  new_string(string_indexes)
end

def new_string(indexes)
  output_string = ''
  ALPHABETS.each_with_index do |letter,index|
    indexes.count(index).times do
      output_string << letter
    end
  end
  puts output_string
end

AlphabetSoup("coderbyte") == "bcdeeorty"
AlphabetSoup("hooplah")  == "ahhloop"
AlphabetSoup("hello") == "ehllo"