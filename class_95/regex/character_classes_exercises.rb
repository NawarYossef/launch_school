

# Write a regex that matches any of the strings "cat", "cot", "cut", "bat", "bot", or "but", regardless of case. Test it with this text:
string = "My cats, Buttterscotch and Pudding, like to
sleep on my cot with me, but they cut my sleep
short with acrobatics when breakfast time rolls
around. I need a robotic cat feeder."

# Solution : 
string.match(/(cat|cot|cut|bat|bot|but)/)
# or
string.match(/c[aou]t|b[aou]t/)
# or
string.match(/[cb][aou]t/i)
#-------------------------------------------

# Write a regex that matches uppercase or lowercase Ks and a lowercase s. Test it with these strings:
"Kx
Reds and blues
kitchen implements"

# Solution :
/[Kks]/
#-------------------------------------------

# Base 20 digits include the decimal digits 0 through 9, and the letters A through J in upper or lowercase. Write a regex that matches base 20 digits. Test it with these strings:
"0xDEADBEEF
1234.5678
Jamaica
plow ahead"

# Solution :
/[0-9a-j]/i
#--------------------------------------------
# Write a regex that matches any letter except x or X. Test it with these strings:
"0x1234
Too many XXXXXXXXXXxxxxxxXXXXXXXXXXXX to count.
The quick brown fox jumps over the lazy dog
THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"

# Solution :
/[0-9a-j]/i
#-------------------------------------------
# Write a regex that will not match any letters. Test it with these strings:
"0x1234abcd
1,000,000,000s and 1,000,000,000s.
THE quick BROWN fox JUMPS over THE lazy DOG!"

# Solution :
/[^a-z]/i
#------------------------------------------
# Challenge: write a regex that matches a string that looks like a simple negated character class range, e.g., '[^a-z]'. (Your answer should match exactly 6 characters.) Test it with these strings:
"The regex /[^a-z]/i matches any character that is
not a letter. Similarly, any non-digit is matched
by /[^0-9]/, while /[^A-Z]/ matches any character
that is not an uppercase letter. Beware: /[^+-<]/
is at best obscure, and may even be wrong."

# Solution :
/\[\^[0-9A-Za-z]-[0-9A-Za-z]\]/
#-----------------------------------------