# Challenge :
# You will get an array of numbers.
# Every preceding number is smaller than the one following it.

# Solution : 
def find_missing_numbers(arr)
  missing_nums = []
  if arr.size > 1
    (arr[0]..arr[-1]).each do |num|
      missing_nums << num if arr.include?(num) == false
    end
  end
  missing_nums
end

find_missing_numbers([-3,-2,1,4]) == [-1,0,2,3]
find_missing_numbers([-1,0,1,2,3,4]) == []
find_missing_numbers([]) == []
find_missing_numbers([0]) == []
find_missing_numbers([-4,4]) == [-3,-2,-1,0,1,2,3]