# Challenge : 
# Write a function
# vowel_2_index
# that takes in a string and replaces all the vowels [a,e,i,o,u] with their respective positions within that string. 


# Solution : 
def vowel_2_index(string)
  string.chars.map.with_index {|letter,index| 'aieou'.include?(letter) ? letter = index + 1 : letter}.join
end

vowel_2_index('this is my string') == 'th3s 6s my str15ng'
vowel_2_index('Codewars is the best site in the world') == 'C2d4w6rs 10s th15 b18st s23t25 27n th32 w35rld'
vowel_2_index('Tomorrow is going to be raining') ==  'T2m4rr7w 10s g1415ng t20 b23 r2627n29ng'
vowel_2_index('') == ''
