# Challenge : 
# In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G". 
# You have function with one side of the DNA (string, except for Haskell); you need to get the other complementary side. 
# DNA strand is never empty or there is no DNA at all 

# Solution : 
def DNA_strand(string)
   string.gsub(/[ACTG]/, 'A' => 'T', 'T'=>'A','G'=>'C', 'C' => 'G')
end

DNA_strand("AAAA") == "TTTT"
DNA_strand("ATTGC") == "TAACG"
DNA_strand("GTAT") == "CATA"