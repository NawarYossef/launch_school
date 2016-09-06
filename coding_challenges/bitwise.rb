# Challenge :
# Using the Ruby language, have the function BitwiseOne(strArr) take the array of strings stored in strArr, 
# which will only contain two strings of equal length that represent binary numbers, and return a final binary string that performed the bitwise OR operation on both strings. 
# A bitwise OR operation places a 0 in the new string where there are zeroes in both binary strings, otherwise it places a 1 in that spot. 
# For example: if strArr is ["1001", "0100"] then your program should return the string "1101" 


# Solution :
def Bitwise(arr)
  output_num = ''
  arr[0].split(//).each_with_index {|char,idx| char == arr[1][idx] ? output_num << '0' : output_num << '1'}
  output_num.to_i
end

Bitwise(["100", "000"]) == 100
Bitwise(["00011", "01010"]) == 01011
Bitwise(["1001", "0100"]) == 1101