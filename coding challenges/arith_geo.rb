#Challenge
# Using the Ruby language, have
# the function ArithGeo(arr) take the array of
# numbers stored in arr and return the string "Arithmetic"
# if the sequence follows an arithmetic pattern or
# return "Geometric" if it follows a geometric pattern.
# If the sequence doesn't follow either pattern return -1.
# An arithmetic sequence is one where the difference
# between each of the numbers is consistent,
# where as in a geometric sequence,
# each term after the first is multiplied
# by some constant or common ratio.
# Arithmetic example: [2, 4, 6, 8]
# and Geometric example: [2, 6, 18, 54].
# Negative numbers may be entered as parameters, 0 will not be entered,
# and no array will contain all the same elements.

# Solution :
def ArithGeo(arr)
  index1 = 0
  index2 = 1
  ratio_geo = arr[1] / arr[0]
  geo_seq = []

  while index2 < arr.size
      if arr[index2] / arr[index1] == ratio_geo
      geo_seq << true
    else
      geo_seq << false
     end
     index2 += 1
     index1 += 1
  end

  case
  when arr[0] * arr.size == arr[-1]
      puts "arithmetic"
  when geo_seq.include?(false) == false
      puts 'Geometric'
  else
      puts -1
  end
end

ArithGeo([5,10,15]) == "Arithmetic"
ArithGeo([2, 6, 18, 54]) == 'Geometric'
ArithGeo([2,4,16,24]) == -1
