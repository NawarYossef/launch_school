# Challenge : 
# Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns the transpose of the original matrix. 
# Note that there is a Array#transpose method that does this -- you may not use it for this exercise. 
# You also are not allowed to use the Matrix class from the standard library. 
# Your task is to do this yourself.
# Take care not to modify the original matrix: you must produce a new matrix and leave the original matrix unchange

# Solution : 
def transpose(matrix)
  output_matrix = []
  (0..matrix[0].size - 1).each do |idx|
    (0..matrix.size - 1).each do |arr|
      output_matrix << matrix[arr][idx]
    end
  end
  output_matrix.each_slice(matrix[0].size).to_a
end

transpose(matrix = [[1, 5, 8],[4, 7, 2],[3, 9, 6]]) == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]