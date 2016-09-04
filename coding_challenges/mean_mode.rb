# CHallenge : 
# Using the Ruby language, have the function MeanMode(arr) take the array of numbers stored in arr 
# and return 1 if the mode equals the mean, 0 if they don't equal each other (ie. [5, 3, 3, 3, 1] should return 1 because the mode (3) equals the mean (3)). 
# The array will not be empty, will only contain positive integers, and will not contain more than one mode. 

# Solution : 
def MeanMode(arr)
  mean = arr.reduce(:+) / arr.size
  mode = arr.size - ((arr.uniq.size) - 1)
  mean == mode ? 1 : 0
end

MeanMode([1,2,3]) == 0
MeanMode([4,4,4,6,2]) == 1
MeanMode([5,3,3,3,1]) == 1