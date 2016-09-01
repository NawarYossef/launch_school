# Challenge : 
# Write a program that will ask a user for an input 
# of a word or multiple words and give back the number of characters. 
# Spaces should not be counted as a character.

# Solution : 
puts "Please write word or multiple words"
input = gets.chomp.to_s
puts "There are #{input.split.join('').chars.size} characters in " + "(#{input})"