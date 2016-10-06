# Challenge : 
# Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. 
# To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# Solution : 
def balanced?(string)
  all_paranth = string.scan(/[()]/)
  if all_paranth.size == 1
    false
  elsif all_paranth.empty?
    true
  elsif all_paranth[0] == ')' || all_paranth[-1] == '('
    false
  elsif all_paranth.join.scan(')').count != all_paranth.join.scan('(').count
    false
  else
    true
  end
end

balanced?('What (is) this?')
balanced?('What is) this?')
balanced?('What (is this?')
balanced?('((What) (is this))?')
balanced?('((What)) (is this))?')
balanced?('Hey!')
balanced?(')Hey!(')
balanced?('What ((is))) up(')