# Challenge :
# Given a string of words separated by spaces, 
# write a method that takes this string of words 
# and returns a string in which the first and last letters of every word is swapped.
# You may assume that every word contains at least one letter, and that the string will always contain at least one word. 
# You may also assume that each string contains nothing but words and spaces


# Solution :
def swap(string)
  new_string = string.split.each {|w| w.size <= 2 ? w.reverse! : (w[0],w[-1] = w[-1],w[0])}.join(' ')
  puts new_string
end

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'