# Challenge :
# Using the Ruby language, have the function Superincreasing(arr) 
# take the array of numbers stored in arr and determine if the array forms a superincreasing sequence 
# where each element in the array is greater than the sum of all previous elements. 
# For example: if arr is [1, 3, 6, 13, 54] then your program should return the string "true" 
# because it forms a superincreasing sequence. 
# If a superincreasing sequence isn't formed, 
# then your program should return the string "false" 

# Solution :
def Superincreasing(arr)
    sum = 0
    arr.each do |num|
      return false if num <= sum
      sum += num
    end
    return true
end

Superincreasing([1,2,3,4])   == "false"
Superincreasing([1,2,5,10]) == "true"
Superincreasing([1, 3, 6, 13, 54]) == "true"