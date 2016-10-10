#prbolem: 
#Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. 
#The ASCII string value is the sum of the ASCII values of every character in the string. 
#(You may use String.ord to determine the ASCII value of a character.)

#solution:

# use string.ord to get the ASCII values for each char
#use array as data structure to calculate the sum of all the ASCII values
# store the values into a new array
# two ways to calculate the sum in the array: 1) the 'inject' method, 2) iteration and adding values to a new variable (total)

# Solution (1) :
def ascii_value(string)
  string.emtpy? ? 0 : string.chars.map{|letter| letter.ord }.reduce(&:+)
end

# Solution (2) :
def ascii_value(string)
   arr = []
   string.chars {|c| arr << c.ord}
   arr.inject(&:+).to_i
end

ascii_value('Four score')
ascii_value('')




