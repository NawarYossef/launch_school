# Challenge :
# Create a function that returns the average of an array of numbers ("scores"), rounded to the nearest whole number. 
# You are not allowed to use any loops (including for, for/in, while, and do/while loops).

# Solution : 
def average(arr)
 (arr.reduce(&:+).to_f / arr.size).round
end

average([5, 78, 52, 900, 1]) == 207
average([5, 25, 50, 75]) == 39
average([2]) == 2
average([1, 1, 1, 1, 9999]) == 2001
average([0]) == 0
