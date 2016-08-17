# Challenge : 
# Write a method that 
# can rotate the last n digits of a number.
# Note that rotating just 1 digit results in the original number being returned.

# Solution :
def rotate_rightmost_digits(number, num)
  digits = number.to_s.chars.map(&:to_i)
  index_to_rotate = digits.size - num
  digits << digits.delete_at(index_to_rotate)
  p digits.join.to_i
end

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
