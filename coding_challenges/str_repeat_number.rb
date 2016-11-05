# Challenge:
# Write a function called repeat_str which repeats the given string src exactly count times.

# Solution : 
def repeat_str(num, str)
 str * num
end

repeat_str(3, "*") == "***"
repeat_str(5, "#") == "#####"
repeat_str(2, "ha ") == "ha ha "