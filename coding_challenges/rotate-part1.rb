# Challenge :
# Write a method that rotates an array
# by moving the first element to the end of the array.
# The original array should not be modified.
# Do not use the method Array#rotate or Array#rotate! for your implementation.

# Solution :
def rotate_array(arr)
 new_array = []
 new_array << arr
 new_array.flatten!.delete_at(0)
 new_array << arr[0]
 new_array
end

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']