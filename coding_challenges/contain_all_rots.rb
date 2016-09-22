# Challenge : 
# Input:
# a string strng
# an array of strings arr
# Output of function contain_all_rots(strng, arr) (or containAllRots or contain-all-rots):
# a boolean true if all rotations of strng are included in arr
# false otherwise

# Solution : 
def contain_all_rots(string,arr)
 all_rotations = []
 all_rotations << string
 cpy_string = string
 (string.length).times do
   cpy_string = cpy_string.chars.rotate!.join
   all_rotations << cpy_string
 end
 return true if string.empty? && arr.size >= 0
 all_rotations.all? {|w| arr.include?(w)} ? true : false
end

contain_all_rots("", []) == true
contain_all_rots("", ["bsjq", "qbsj"]) == true
contain_all_rots("bsjq", ["bsjq", "qbsj", "sjqb", "twZNsslC", "jqbs"]) == true
contain_all_rots("XjYABhR", ["TzYxlgfnhf", "yqVAuoLjMLy", "BhRXjYA", "YABhRXj", "hRXjYAB", "jYABhRX", "XjYABhR", "ABhRXjY"]) == false
contain_all_rots( "bsjq", ["bsjq", "qbsj", "sjqb", "twZNsslC", "jqbs"]) == true
contain_all_rots("Ajylvpy", ["Ajylvpy", "ylvpyAj", "jylvpyA", "lvpyAjy", "pyAjylv", "vpyAjyl", "ipywee"]) == false