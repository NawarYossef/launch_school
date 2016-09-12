# Challenge :
# Using the Ruby language, have the function PermutationStep(num) take the num parameter being passed and return the next number greater than num using the same digits. 
# For example: if num is 123 return 132, if it's 12453 return 12534. 
# If a number has no greater permutations, return -1 (ie. 999). 


# Solution : 
def PermutationStep(num)
 possibilities = []
 possibilities = num.to_s.chars.map(&:to_i).permutation.to_a
 possibilities.reject! {|comb| comb.join.to_i <= num}
 possibilities.map! {|comb| comb.join.to_i}
 possibilities.empty? ? -1 : possibilities.min
end

PermutationStep(11121)
PermutationStep(41352)
PermutationStep(12453)
PermutationStep(999)
