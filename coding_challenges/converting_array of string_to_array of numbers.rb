# Challenge : 
# Some really funny web dev gave you an array of numbers from his API response as an array of strings!
# You need to cast the whole array to the correct type.
# Create the function toNumberArray(array) that takes as a parameter an array of numbers represented as strings and outputs an array of numbers.
# ie:["1", "2", "3"] to [1, 2, 3]
# Note that you can receive floats as well.

# Solution : 
def to_number_array(str_arr)
 str_arr.map(&:to_f)
end

to_number_array(["1.1","2.2","3.3"]) ==  [1.1,2.2,3.3]

