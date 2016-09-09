# Challenge :
# Write a function lucky_sevens?(numbers), which takes in an array of integers and returns true if any three consecutive elements sum to 7.
# Make sure your code correctly checks for edge cases (i.e. the first and last elements of the array).


# Solution : 
def lucky_sevens?(arr)
  sum = 0
  (0..arr.size - 1).each do |idx|
    total = 0
    previous,current,after = arr[idx], arr[idx + 1], arr[idx + 2]
    break if after == nil
    total = previous.to_i + current.to_i + after.to_i
    sum = total  if total == 7
  end
  sum == 7 ? true : false
end

lucky_sevens?([2,1,5,1,0]) == true # => 1 + 5 + 1 == 7
lucky_sevens?([0,-2,1,8]) == true # => -2 + 1 + 8 == 7
lucky_sevens?([7,7,7,7]) == false
lucky_sevens?([3,4,3,4]) == false