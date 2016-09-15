# Challenge : 
# Write a method overlap which takes two rectangles defined by the coordinates of their corners, e.g. [[0,0],[3,3]] and [[1,1],[4,6]], and determines whether they overlap. 
# You can assume all coordinates are positive integers.

# Solution 
def overlap(arr1,arr2)
  arr1[1][0] > arr2[0][0] ? true : false
end

overlap( [ [0,0],[3,3] ], [ [1,1],[4,5] ] )
overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] )