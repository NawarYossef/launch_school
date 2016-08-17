
#Challenge: 
# Write a method that takes two Array arguments
# in which each Array contains a list of numbers,
# and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. 
# You may assume that the arguments contain the same number of elements.

#Solution: 
def multiply_list(arr1, arr2)
  new_array = []
  index = 0
  while index < arr1.size
    new_array << arr1[index] * arr2[index]
    index += 1
  end
  new_array
end

multiply_list([3, 5, 7], [9, 10, 11])
