# Challenge : 
# Write a method, that gets an array of integer-numbers and return an array of the averages of each integer-number and his follower, if there is one.
# Example:
# Input:  [ 1, 3, 5, 1, -10]
# Output:  [ 2, 4, 3, -4.5]
# If the array has 0 or 1 values or is null or None, your method should return an empty array.
# Have fun coding it and please don't forget to vote and rank this kata! :-)

# Solution : 
def averages(arr)
  all_averages = []
  return [] if arr == nil
  (1..arr.size - 1).each do |index|
    num =  (arr[index] + arr[index - 1])
    all_averages << num.to_f / 2 if num.odd?
    all_averages << num / 2 if num.even?
  end
  all_averages
end

averages([2, 2, 2, 2, 2]) == [2, 2, 2, 2]
averages([2, -2, 2, -2, 2]) == [0, 0, 0, 0]
averages([1, 3, 5, 1, -10]) == [2, 4, 3, -4.5]
averages([]) == []
averages(nil) == []