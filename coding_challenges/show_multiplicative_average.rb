#Challenge : 
#Write a method that takes an Array of integers as input, 
#multiplies all of the numbers together, 
#divides the result by the number of entries in the Array, 
#and then prints the result rounded to 3 decimal places.

#Solution:
def show_multiplicative_average(arr)
result = (arr.inject(&:*).to_f / arr.size)
puts "The result is #{sprintf('%.3f', result)}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([2, 5, 7, 11, 13, 17])