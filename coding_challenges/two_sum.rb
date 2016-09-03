# Challenge :
# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.

# Solution : 
def two_sum(nums)
  numbers = []
  indexes = []
  (1..nums.size).to_a.each do |index|
    nums.combination(index).each do |combination|
      if combination.reduce(:+) == 0
        combination.each {|n| numbers << n}
      end
    end
  end
  numbers.each {|element| indexes << nums.index(element)}
  numbers.empty? ? nil : indexes
end

two_sum([1, 3, 5, -3]) == [1,3]
two_sum([1, 3, 5]) ==  nil
