# Challenge :
# Using the Ruby language, have the function WordCount(str) 
# take the str string parameter being passed and return the number of words 
# the string contains (ie. "Never eat shredded wheat" would return 4). 
# Words will be separated by single spaces. 
# Sample Test Cases

# Solution :
def WordCount(str)
  str.split.size
end

WordCount("Hello World") == 2
WordCount("one 22 three") == 3