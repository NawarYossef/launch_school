# Challenge :
# Using the Ruby language, have the function SecondGreatLow(arr) 
# take the array of numbers stored in arr and return the second lowest 
# and second greatest numbers, respectively, separated by a space. 
# For example: if arr contains [7, 7, 12, 98, 106] the output should be 12 98. 
# The array will not be empty and will contain at least 2 numbers. 
# It can get tricky if there's just two numbers! 


# solution : 
def SecondGreatLow(arr)

  arr.size > 2 ? puts("#{arr.sort.uniq[1]} #{arr.sort.uniq[-2]}") : puts("#{arr[1]} #{arr[0]}")
end

SecondGreatLow([1, 42, 42, 180])   == "42 42"
SecondGreatLow([4, 90]) == "90 4"
SecondGreatLow( [7, 7, 12, 98, 106]) == "12 98"