# Challenge : 
# Write a method that displays a 4-pointed diamond in an n x n grid,
# where n is an odd integer that is supplied 
# as an argument to the method. You may assume that 
# the argument will always be an odd integer.

# Solution :
def diamond(number)
 odd_numbers = []
 array_numbers = (1..number).to_a << (1..(number - 1)).to_a.reverse
 array_numbers.flatten.each {|num| odd_numbers << num if num.odd?}
 odd_numbers.each do |num|
   diamonds = "*" * num if num.odd?
   puts diamonds.to_s.center(number)
 end
end

diamond(3)
diamond(9)