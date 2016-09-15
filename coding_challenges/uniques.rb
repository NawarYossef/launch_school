# Challenge : 
# Write a method uniques which takes an array of items and returns the array without any duplicates. 
# Don’t use Ruby’s uniq method!
# Solution : 
def uniques(arr)
 arr.reject! {|element| element if arr.count(element) != 1}
 arr
end
uniques([1,5,"frog", 2,1,3,"frog"])