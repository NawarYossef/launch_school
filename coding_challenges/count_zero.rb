# Challenge : 
# Gigi is a clever monkey, living in the zoo, his teacher (animal keeper) recently taught him some knowledge of "0".
# In Gigi's eyes, "0" is a character contains some circle(maybe one, maybe two).
# So, a is a "0",b is a "0",6 is also a "0"，and 8 have two "0" ,etc...
# Now, write some code to count how many "0"s in the text.
# Let us see who is smarter? You ? or monkey?
# Input always be a string(including words numbers and symbols)，You don't need to verify it, but pay attention to the difference between uppercase and lowercase letters.

# Solution : 
def countzero(string)
  charecters_circles = {'0' => 1,'6' => 1,'8' => 2,'9' => 1,'q'=> 1,'o' =>1,
  'p' => 1,'d' => 1,'g'=> 2,'a'=> 1,'b'=> 1,'Q'=> 1,'R' =>1,'O' => 1,'P' => 1,'D' => 1,'B' => 2,'%'=> 2,'&'=> 2}
  circle_count = 0
  string.chars.each_with_index do |letter,idx|
    break if string[idx + 1] == nil
    circle_count += 1 if letter == '(' && string[idx + 1] == ')'
  end
  string.chars.each_with_index do |letter,idx|  
    circle_count += charecters_circles[letter] if charecters_circles.keys.include?(letter)
  end
  circle_count
end

countzero("") ==  0
countzero("0") ==  1
countzero("0oO0oO") == 6
countzero("1234567890") == 5
countzero("abcdefghijklmnopqrstuvwxyz") ==  8
countzero("()") ==  1
