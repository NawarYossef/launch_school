# Challenge : 
# Write a method combinations which takes two arrays of strings and returns an array with all of the combinations of the items in them, listing the first items first.


# Solution : 
def combinations(arr1,arr2)
  combination_array = []
  arr1.each_with_index do |word|
    (0..arr2.size - 1).each do |idx|
      combination_array << word + arr2[idx]
    end
  end
  combination_array
end

combinations(['on','in'],['to','rope'])