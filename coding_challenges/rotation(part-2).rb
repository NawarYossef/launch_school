# Challenge : 
# If you take a number like 735291, and rotate it to the left,
# you get 352917. If you now keep the first 
# digit fixed in place, and rotate the remaining digits, 
# you get 329175. Keep the first 2 digits fixed in place 
# and rotate again to 321759. Keep the first 3 digits 
# fixed in place and rotate again to get 321597. 
# Finally, keep the first 4 digits fixed in place 
# and rotate the final 2 digits to get 321579. 
# The resulting number is called the maximum rotation of the original number.

# Solution : 
def max_rotation(number)
 digits = number.to_s.chars.map(&:to_i)
 index = 0
 while index < digits.size - 1
    digits << digits.delete_at(index)
   index += 1
 end
 digits.join.to_i

end
max_rotation(735291) == 321579
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845