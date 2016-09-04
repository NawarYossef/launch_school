# Challenge :
# using the Ruby language, have the function DashInsert(str) 
# insert dashes ('-') between each two odd numbers in str. 
# For example: if str is 454793 the output should be 4547-9-3. Don't count zero as an odd number. 

# Solution :
def DashInsert(num)
  string_for_num = num.to_s
  result = string_for_num.chars.map.with_index {|n,index| (n.to_i.odd? && string_for_num[index - 1].to_i.odd? && index != 0) ? '-' + n : n}
  puts result.join
  end

DashInsert(454793) == 4547-9-3
DashInsert(99946) == 9-9-946
DashInsert(56730) == 567-30
