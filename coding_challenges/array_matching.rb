# Challenge : 
# Using the Ruby language, have the function ArrayMatching(strArr) read the array of strings stored in strArr which will contain only two elements, both of which will represent an array of positive integers. 
# For example: if strArr is ["[1, 2, 5, 6]", "[5, 2, 8, 11]"], then both elements in the input represent two integer arrays, and your goal for this challenge is to add the elements in corresponding locations from both arrays. 
# For the example input, your program should do the following additions: [(1 + 5), (2 + 2), (5 + 8), (6 + 11)] which then equals [6, 4, 13, 17]. 
# Your program should finally return this resulting array in a string format with each element separated by a hyphen: 6-4-13-17. 
# If the two arrays do not have the same amount of elements, then simply append the remaining elements onto the new array (example shown below). 
# Both arrays will be in the format: [e1, e2, e3, ...] where at least one element will exist in each array. 

# Solution : 
def ArrayMatching(arr)
  first_arr = arr[0].gsub(/\D/,'-').split('-').map(&:to_i).reject!{|e| e == 0}
  second_arr = arr[1].gsub(/\D/,'-').split('-').map(&:to_i).reject!{|e| e == 0}
  sum_matching_comb = []
  index = 1
  index = first_arr.size
  first_arr.zip(second_arr).map! {|comb| sum_matching_comb << comb.reduce(&:+).to_s}
  if first_arr.size < second_arr.size
    (second_arr.size - first_arr.size).times do
      sum_matching_comb << second_arr[index].to_s
      index += 1
    end
  end
sum_matching_comb
end

ArrayMatching(["[5, 2, 3]", "[2, 2, 3, 10, 6]"]) == "7-4-6-10-6"
ArrayMatching(["[1, 2, 1]", "[2, 1, 5, 2]"]) == "3-3-6-2"
ArrayMatching( ["[1, 2, 5, 6]", "[5, 2, 8, 11]"]) == "6-4-13-17"