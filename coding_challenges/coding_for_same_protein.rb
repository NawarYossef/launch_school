# Challenge :
# This is due to the redundancy of the genetic code, in fact 2 different tri-nucleotide can code for the same amino-acid. For example the tri-nucleotide 'TTT' and the tri-nucleotide 'TTC' both code for the amino-acid 'F'. For more information you can take a look here.
# Your goal in this kata is to define if two differents DNAs sequences code for exactly the same protein. Your function take the 2 sequences you should compare. For some kind of simplicity here the sequences will respect the following rules:
# It is a full protein sequence beginning with a Start codon and finishing by an Stop codon
# It will only contain valid tri-nucleotide.

# Solution : 
def code_for_same_protein?(string1,string2)
  if string1 != string2
    string1.gsub!(/[T][T][C]/,'TTT') if string2.include?('TTT')
    string1.gsub!(/[T][T][T]/,'TTC') if string2.include?('TTC')
  end
  string1 == string2 ? true : false
end

code_for_same_protein?("ATGTCGTCAATTTAA","ATGTCGTCAATTTAA") ==  true
code_for_same_protein?("ATGTTTTAA","ATGTTCTAA") ==  true
code_for_same_protein?("ATGTTTTAA","ATGATATAA") == false
code_for_same_protein?("ATGTTTTAA","ATGATATAA") ==  false
code_for_same_protein?("ATGTTTGGGAATAATTAAGGGTAA","ATGTTCGGGAATAATGGGAGGTAA") == false
code_for_same_protein?("ATGAATTCTACCGAATTTTTGGAGCTGTTTGAATCTACATAA","ATGAATTCTACCGAATTTTTGGAGCTGTTTGAATCTACATAA") == true