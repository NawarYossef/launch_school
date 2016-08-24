# Challenge
# Using the Ruby language, have the function DashInsert(str) 
# insert dashes ('-') between each two odd numbers in str. 
# For example: if str is 454793 the output should be 4547-9-3.
# Don't count zero as an odd number. 

# Solution : 
def DashInsert(str)
  str.chars.map.with_index {|n, i| (n.to_i.odd? && str[i - 1].to_i.odd? && i != 0) ? '-' + n : n }.join('')
end

DashInsert('99946') == '9-9-946'
DashInsert('56730')  == '567-30'
DashInsert('54793')  == '4547-9-3'