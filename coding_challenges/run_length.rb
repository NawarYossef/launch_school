# Challenge: 
# Using the Ruby language, have the function RunLength(str) take the str parameter 
# being passed and return a compressed version of the string using the Run-length encoding algorithm. 
# This algorithm works by taking the occurrence of each repeating character and outputting 
# that number along with a single character of the repeating sequence. For example: "wwwggopp" would return 3w2g1o2p. 
# The string will not contain any numbers, punctuation, or symbols. 

# Solution (1) :
def RunLength(str)
  cpy_str = str.chars.uniq.join
  cpy_str.chars.map {|char|  str.scan(char).count.to_s + char}.join
end


# Solution (2): 
def Runlength(string)
  output_string = ''
  letter_count = []
  string.chars.each {|letter| letter_count << string.scan(letter).count}
  string.chars.uniq.each_with_index {|letter,index| output_string << letter_count[index].to_s << letter }
  output_string
end

Runlength("aabbcde") == "2a2b1c1d1e"
Runlength("wwwbbbw") == "3w3b1w"
Runlength("wwwggopp") ==  "3w2g1o2p"