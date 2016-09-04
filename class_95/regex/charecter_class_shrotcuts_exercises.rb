# Write a regex that matches any sequence of 3 characters delimited by whitespace characters. Test it with these strings:
"reds and blues
the lazy cat sleeps"

# Solution :
/\s...\s/
#------------------------------
# Write a regex that matches any 4 digit hexadecimal number that is both preceded and followed by whitespace. Test it with these strings:
"Hello 4567 bye CDEF - cdef
0x1234 0x5678 0xABCD
1F8A done"

# Solution :
/\s\h\h\h\h\s/
#-----------------------------
# Write a regex that matches any sequence of 3 letters. Test it with these strings:
"The red d0g chases the b1ack cat.
a_b c_d"

# Solution : 
/[a-z][a-z][a-z]/i