# Challenge : 
# Using the JavaScript language, have the function PairSearching(num) take the num parameter being passed and perform the following steps. 
# First take all the single digits of the input number (which will always be a positive integer greater than 1) and add each of them into a list. 
# Then take the input number and multiply it by any one of its own integers, then take this new number and append each of the digits onto the original list. 
# Continue this process until an adjacent pair of the same number appears in the list. Your program should return the least number of multiplications it took to find an adjacent pair of duplicate numbers. 
# For example: if num is 134 then first append each of the integers into a list: [1, 3, 4]. 
# Now if we take 134 and multiply it by 3 (which is one of its own integers), we get 402. Now if we append each of these new integers to the list, we get: [1, 3, 4, 4, 0, 2]. We found an adjacent pair of duplicate numbers, namely 4 and 4. So for this input your program should return 1 because it only took 1 multiplication to find this pair. 

# Solution : 
def PairSearching(num)
  digits = num.to_s.split(//).map(&:to_i)
  number_of_mult, cpy_num = 0, num
  loop do
    cpy_num = (cpy_num *  cpy_num.to_s.split(//).map(&:to_i).sample)
    digits << cpy_num.to_s.split(//).map(&:to_i)
    digits.flatten!
    number_of_mult += 1
  break if adjecent_digits?(digits)
  end
  digits
  number_of_mult
end

def adjecent_digits?(arr)
  arr.each_with_index do |num,idx|
    break if arr[idx + 1] == nil
    return true if num == arr[idx + 1]
  end
end

PairSearching(198)
PairSearching(46)