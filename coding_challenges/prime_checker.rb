# Challege :
# Using the Ruby language, have the function PrimeChecker(num) take num and return 1 if any arrangement of num comes out to be a prime number, otherwise return 0. 
# For example: if num is 910, the output should be 1 because 910 can be arranged into 109 or 019, both of which are primes. 

# Solution : 
def PrimeChecker(num)
  output = 0
  num.to_s.chars.map(&:to_i).permutation.to_a.select {|comb| output = comb if comb.join.to_i % 2 != 0 }
  output == 0 ? nil : 1
end

PrimeChecker(98) == 1
PrimeChecker(598) == 1