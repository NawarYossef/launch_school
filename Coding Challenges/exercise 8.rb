#Challenge :
# Write a method that takes an Array of numbers 
# and then returns the sum of the sums of each leading subsequence for that Array.
# You may assume that the Array always contains at least one number.


#Solution :
# create new object 'total' which will hold total value of each iteration.
# insert each 'total' value into new array 'sum'
# Use method '.reduce' to adding up all elements in array

def sum_of_sums(arr)
    total = 0
    sum = []
    arr.each do |element|
       sum << total += element
    end
    sum.reduce(:+)
end

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35