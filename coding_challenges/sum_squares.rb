# Challenge : 
# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.
# Solution : 
def sum_square_difference(num)
(1..num).reduce(&:+) ** 2 - (1..num).map {|num| num ** 2}.reduce(&:+)
end

sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150