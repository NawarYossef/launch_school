# Challenge : 
# Using the Ruby language, have the function ThreeFiveMultiples(num) return the sum of all the multiples of 3 and 5 that are below num. 
# For example: if num is 10, the multiples of 3 and 5 that are below 10 are 3, 5, 6, and 9, and adding them up you get 23, so your program should return 23. 
# The integer being passed will be between 1 and 100. 

# Solution : 
def ThreeFiveMultiples(num)
  mult_arr = (1..num).to_a
  total = []
  mult_arr.each do |digit|
    three_mult = digit * 3
    five_mult = digit * 5
   total << three_mult if three_mult < num
   total << five_mult if five_mult < num
  end
     num <= 5 ? p(0) :  p(total.reduce(&:+))
end

ThreeFiveMultiples(6) == 8
ThreeFiveMultiples(1) == 0
ThreeFiveMultiples(10) == 23