# Challenge : 
# Using the Ruby language, have the function HammingDistance(strArr) take the array of strings stored in strArr, 
# which will only contain two strings of equal length and return the Hamming distance between them. 
# The Hamming distance is the number of positions where the corresponding characters are different. 
# For example: if strArr is ["coder", "codec"] then your program should return 1. 
# The string will always be of equal length and will only contain lowercase characters from the alphabet and numbers. 

# Solution :
def HammingDistance(arr)
  first_str = arr[0].chars
  sec_str = arr[1].chars
  hamm_dis_count = []
  (0..first_str.size).each do |index|
    if first_str[index] != sec_str[index]
      hamm_dis_count << first_str[index]
    end
  end
  hamm_dis_count.size
end

# Shorter solution
def HammingDistance(arr)
  first_str = arr[0].chars
  sec_str = arr[1].chars
  total = 0
  first_str.each_with_index{|char,index| char != sec_str[index] ? total += 1 : char}
  total
end

HammingDistance(["10011", "10100"]) == 3
HammingDistance(["helloworld", "worldhello"]) == 8
HammingDistance(["coder", "codec"]) == 1