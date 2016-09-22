# Challenge : 
# You have to write a function pattern which creates the following pattern upto n number of rows. 
# If the Argument is 0 or a Negative Integer then it should return "" i.e. empty string.

# Solution : 
def pattern(num)
  arr = (num.downto(1)).to_a.map(&:to_s)
  if num <= 0
    puts("")
  else
    (0..arr.length - 1).each {|idx| puts arr[0..idx].join}
  end
end
pattern(0)
pattern(1)
pattern(2)
pattern(5)