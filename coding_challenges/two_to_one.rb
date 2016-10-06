# Challenge : 
# Take 2 strings s1 and s2 including only letters from ato z. 
# Return a new sorted string, the longest possible, containing distinct letters, - each taken only once - coming from s1 or s2.

# Solution : 
def longest(string1,string2)
 (string1.chars + string2.chars).sort.uniq.join
end

longest("aretheyhere", "yestheyarehere") == "aehrsty"
longest("loopingisfunbutdangerous", "lessdangerousthancoding") ==  "abcdefghilnoprstu"
longest("inmanylanguages", "theresapairoffunctions") ==  "acefghilmnoprstuy"