# challenge : 
# Using the Ruby language, have the function BracketMatcher(str) take the str parameter being passed and return 1 if the brackets are correctly matched and each one is accounted for. 
# Otherwise return 0. For example: if str is "(hello (world))", then the output should be 1, but if str is "((hello (world))" the the output should be 0 because the brackets do not correctly match up. Only "(" and ")" will be used as brackets. 
# If str contains no brackets return 1. 



# Solution  : 
def BracketMatcher(string)
  open_brackets = string.scan(/\(/)
  close_brackets = string.scan(/\)/)
  open_brackets.size == close_brackets.size ? 1 : 0
end

BracketMatcher("(coder)(byte))")
BracketMatcher("(c(oder)) b(yte)")