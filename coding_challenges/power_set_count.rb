# Challenge : 
# Using the Ruby language, have the function PowerSetCount(arr) take the array of integers stored in arr, 
# and return the length of the power set (the number of all possible sets) that can be generated

# Solution : 
def PowerSetCount(arr)
  count = []
  (0..arr.size).each do |index|
    arr.combination(index).each {|combination| count << combination}
  end
  count.size
end

PowerSetCount([1, 2, 3, 4]) ==  16
PowerSetCount([5, 6]) == 4
PowerSetCount([1, 2, 3]) ==  8
