# Challenge :
# Write a method that takes in a number and returns true if it is a
# power of 2. Otherwise, return false.
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.

# Solution : 
def is_power_of_two?(num)
  validate_num = []
  (1..num).each {|digit| validate_num << digit if digit * digit == num}
  (num.even? || num == 1) && (validate_num.size == 1) ? true : false
end

is_power_of_two?(1) == true
is_power_of_two?(64) == true
is_power_of_two?(78) == false
is_power_of_two?(0) == false