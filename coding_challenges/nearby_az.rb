# Challenge : 
# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.


# Solution : 
def nearby_az(string)
  a_index, z_index = string.chars.index('a'), string.chars.index('z')
  if string.size == 1
    false
  elsif z_index - a_index == 1 || z_index - a_index == 2 || z_index - a_index == 3
    true
  else
    false
  end
end

nearby_az("baz") == true
nearby_az("abz") == true
nearby_az("abcz") == true
nearby_az("a") == false
nearby_az("z") == false
nearby_az("za") == false