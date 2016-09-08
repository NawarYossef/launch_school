# Challenge :
# Using the Ruby language, have the function ArithGeoII(arr) take the array of numbers stored in arr and return the string "Arithmetic" if the sequence follows an arithmetic pattern or return "Geometric" if it follows a geometric pattern. 
# If the sequence doesn't follow either pattern return -1. 
# An arithmetic sequence is one where the difference between each of the numbers is consistent, where as in a geometric sequence, each term after the first is multiplied by some constant or common ratio. Arithmetic example: [2, 4, 6, 8] and Geometric example: [2, 6, 18, 54]. 
# Negative numbers may be entered as parameters, 0 will not be entered, and no array will contain all the same elements. 

# Solution : 
def ArithGeoII(arr)
  arith = arr.last / arr.size
  arr.each
  multiples  = []
  arr.size.times do |index|
    break if index + 1 > arr.size - 1
    current,after = arr[index], arr[index + 1]
    multiples << after / current
  end
  case
   when arith == arr.first
     puts "arithmatic"
   when multiples.uniq.size == 1
     puts "geometric"
   else
     puts -1
   end
end

ArithGeoII([5,10,15]) == "arithmatic"
ArithGeoII([2,4,16,24]) == -1
