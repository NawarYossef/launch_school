# Challenge: 
# You get an array of numbers, return the sum of all of the positives ones. Return 0 if array is empty or only includes negative numbers.

# Solution: 
def positive_sum(arr)
  sum = arr.select {|num| num > 0}.reduce(&:+) 
  sum == nil ? 0 : sum
end


positive_sum([1,2,3,4,5]) == 15
positive_sum([1,-2,3,4,5]) ==  13
positive_sum([-1,2,3,4,-5]) ==  9
positive_sum([-1,-2,-3,-4,-5]) ==  0
positive_sum([]) ==  0