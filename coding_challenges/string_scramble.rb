# Challenge: 
# Using the Ruby language, have the function StringScramble(str1,str2) take both parameters being passed 
# and return the string true if a portion of str1 characters can be rearranged to match str2, otherwise return the string false. 
# or example: if str1 is "rkqodlw" and str2 is "world" the output should return true. 
# Punctuation and symbols will not be entered with the parameters. 

# Solution :
def StringScramble(str1,str2)
  validate_strings = str1.split(//) + str2.split(//)
  validate_strings.uniq.size == str2.size ? puts("true") : puts("false")
end

StringScramble("cdore" , str2 = "coder") == "true"
StringScramble("h3llko" , str2 = "hello") == "false"
StringScramble("rkqodlw","world") == "false"