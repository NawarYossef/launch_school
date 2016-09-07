# Challenge :
# Using the Ruby language, have the function OtherProducts(arr) take the array of numbers stored in arr and return a new list of the products of all the other numbers in the array for each element. 
# For example: if arr is [1, 2, 3, 4, 5] then the new array, where each location in the new array is the product of all other elements, is [120, 60, 40, 30, 24]. The following calculations were performed to get this answer: [(2*3*4*5), (1*3*4*5), (1*2*4*5), (1*2*3*5), (1*2*3*4)]. You should generate this new array and then return the numbers as a string joined by a hyphen: 120-60-40-30-24. 
# The array will contain at most 10 elements and at least 1 element of only positive integers. 

# Solution : 
def OtherProducts(arr)
  total = arr.reduce(&:*).to_i
  index = 0
  output_stirng = []
  while index < arr.size
    output_stirng << (total / arr[index]).to_s
    index += 1
  end
  output_stirng.join('-')
end

OtherProducts([1,4,3]) == "12-3-4"
OtherProducts([3,1,2,6]) ==  "12-36-18-6"
OtherProducts([1, 2, 3, 4, 5]) == "120-60-40-30-24"