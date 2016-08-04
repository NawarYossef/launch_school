#Challenge :
# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. 
# The return value should be arranged in order from shortest to longest substring.

#Solution : 
# iterate through letters
# initialize a new object 'letters' which will hold the  value from each iteration
# create an array 'array_string'. while iterating thtough the string, I will inuput each value of the object 'letters ' into the array
def substrings_at_start(string)
    letters = ''
    new_array_string = []
    string.chars.each {|c|  new_array_string << letters += c }
    new_array_string
end

substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']