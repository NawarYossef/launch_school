# Challenge : 
# Using the JavaScript language, have the function PatternChaser(str) take str which will be a string and return the longest pattern within the string. 
# A pattern for this challenge will be defined as: if at least 2 or more adjacent characters within the string repeat at least twice. 
# So for example "aabecaa" contains the pattern aa, on the other hand "abbbaac" doesn't contain any pattern. Your program should return yes/no pattern/null. 
# So if str were "aabejiabkfabed" the output should be yes abe. If str were "123224" the output should return no null. 
# The string may either contain all characters (a through z only), integers, or both. But the parameter will always be a string type. 
# The maximum length for the string being passed in will be 20 characters. 
# If a string for example is "aa2bbbaacbbb" the pattern is "bbb" and not "aa". 
# You must always return the longest pattern possible. 

# Solution : 
def PatternChaser(string)
  patterns = []
  (0..string.size - 1).each do |idx|
    (1..string.size - 1).each do |length|
      if string.scan(string[idx..length]).count > 1
        patterns << string[idx..length]
      end
    end
  end
  patterns.empty? ? "no null" : "yes #{patterns.sort_by {|word| word.size}.last}"
end

PatternChaser("da2kr32a2") == "yes a2"
PatternChaser("sskfssbbb9bbb") == "yes bbb"