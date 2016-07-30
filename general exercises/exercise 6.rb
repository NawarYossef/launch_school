#Challenge: 
#Write a method that takes two Array arguments in which each Array contains a list of numbers, 
#and returns a new Array that contains the product of every pair 
#of numbers that can be formed between the elements of the two Arrays. 
#The results should be sorted by increasing value.

#solution :
#Short version :
def multiply_all_pairs(arr1,arr2)
  arr1.product(arr2).map {|value| value.reduce(:*)}.sort!
end

multiply_all_pairs([2, 4], [4, 3, 1, 2])

#Long version :
def multiply_all_pairs(arr1,arr2)
  new_array = []
   arr1.product(arr2).each do |v|
   new_array << v.reduce(:*)
   end
   new_array.sort!
end

multiply_all_pairs([2, 4], [4, 3, 1, 2])