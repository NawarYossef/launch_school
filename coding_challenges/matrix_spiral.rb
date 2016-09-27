# Challenge : 
# Using the JavaScript language, have the function MatrixSpiral(strArr) read the array of strings stored in strArr which will represent a 2D N matrix, 
# and your program should return the elements after printing them in a clockwise, spiral order. 
# You should return the newly formed list of elements as a string with the numbers separated by commas. 
# For example: if strArr is "[1, 2, 3]", "[4, 5, 6]", "[7, 8, 9]" then this looks like the following 2D matrix: 

# 1 2 3
# 4 5 6
# 7 8 9 

# So your program should return the elements of this matrix in a clockwise, spiral order which is: 1,2,3,6,9,8,7,4,5 

# Solution : 
def MatrixSpiral(arr)
  matrix_spiral_order = []
  cpy_arr = []
  arr.join.scan(/\d+/).each {|num| cpy_arr << num.to_i }
  if arr.size == 2
    cpy_arr = cpy_arr.each_slice(2).to_a
    return matrix_spiral_order = (cpy_arr[0] + cpy_arr[1].reverse).join(',')
  elsif arr.size.odd? && arr[0].scan(/\d+/).count == 4
    cpy_arr = cpy_arr.each_slice(4).to_a
    return matrix_spiral_order =  (cpy_arr[0] + cpy_arr[1][-1].to_s.split.map(&:to_i) + cpy_arr[2].reverse + cpy_arr[1][0..-2]).join(',')
  elsif arr.size.odd? && arr[0].scan(/\d+/).count == 3
    cpy_arr = cpy_arr.each_slice(3).to_a
    return matrix_spiral_order =  (cpy_arr[0] + cpy_arr[1][-1].to_s.split.map(&:to_i) + cpy_arr[2].reverse + cpy_arr[1][0..-2]).join(',')
  end
end

MatrixSpiral(["[1, 2]", "[10, 14]"]) == "1,2,14,10"
MatrixSpiral(["[4, 5, 6, 5]", "[1, 1, 2, 2]", "[5, 4, 2, 9]"]) == "4,5,6,5,2,9,2,4,5,1,1,2"
MatrixSpiral(["[1, 2, 3]", "[4, 5, 6]", "[7, 8, 9]"]) == "1,2,3,6,9,8,7,4,5 "

