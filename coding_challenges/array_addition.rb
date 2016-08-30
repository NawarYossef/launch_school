# Challenge :
# Using the Ruby language, have the function ArrayAdditionI(arr) 
# take the array of numbers stored in arr and return the string true 
# if any combination of numbers in the array can be added up to equal 
# the largest number in the array, otherwise return the string false. 
# For example: if arr contains [4, 6, 23, 10, 1, 3] the output should return true 
# because 4 + 6 + 10 + 3 = 23. The array will not be empty, will not contain all the same elements, 
# and may contain negative numbers. 

# Solution : 
def ArrayAdditionI(arr)
  sum = []
  largest_num = arr.max
  arr.sort!.pop
  index = 2
  while index < arr.size
    arr.combination(index).to_a.each do |combination|
      sum << combination if combination.reduce(&:+) == largest_num
    end
    index += 1
  end
  sum.join(' ').split.map(&:to_i).reduce(&:+) == largest_num ? puts("true") : puts("false")
end

ArrayAdditionI([5,7,16,1,2]) == "false"
ArrayAdditionI([3,5,-1,8,12]) == "true"