# Challenge : 
# Write a method uniques which takes an array of items and returns the array without any duplicates. 
# Don’t use Ruby’s uniq method!
# Solution : 
def no_dupes(arr)
  arr.each_with_index {|ele,idx| arr.delete_at(arr.rindex(ele)) if arr.count(ele) > 1} 
end
uniques([1,5,"frog", 2,1,3,"frog"])