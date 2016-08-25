# Challenge
# Using the Ruby language, have the function ChangingSequence(arr) 
# take the array of numbers stored in arr and return the index 
# at which the numbers stop increasing and begin decreasing or stop decreasing 
# and begin increasing. For example: if arr is [1, 2, 4, 6, 4, 3, 1] 
# then your program should return 3 because 6 is the last point in the array 
# where the numbers were increasing and the next number begins a decreasing sequence. 
# he array will contain at least 3 numbers and it may contains only a single sequence, 
# increasing or decreasing. If there is only a single sequence in the array, 
# then your program should return -1. Indexing should begin with 0. 

# Solution :
def ChangingSequence(arr)
  largest_num = arr.max if arr.max != arr.last
  smallest_num = arr.min if arr.min != arr.first
  indexed_array = arr
  index_for_output = 0
  indexed_array.size.times do |idx|
    if indexed_array[idx] == largest_num
     index_for_output = idx
    elsif indexed_array[idx] == smallest_num
     index_for_output = idx
   end
  end
  index_for_output != 0 ? index_for_output : -1
end


ChangingSequence([-4, -2, 9, 10]) == -1
ChangingSequence([5, 4, 3, 2, 10, 11]) == 3
ChangingSequence([1, 2, 4, 6, 4, 3, 1]) == 3