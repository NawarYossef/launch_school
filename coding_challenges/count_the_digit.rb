# Challenge: 
# Take an integer n (n >= 0) and a digit d (0 <= d <= 9) as an integer. Square all numbers k (0 <= k <= n) between 0 and n. 
# Count the numbers of digits d used in the writing of all the k**2. Call nb_dig (or nbDig or ...) the function taking n and d as parameters and returning this count.

# Solution :
def nb_dig(number,digit)
  count_digit = 0
  all_squares = (0..number).map {|num| num * num}
  all_squares.each {|num| count_digit +=  num.to_s.chars.map(&:to_i).count(digit)}
  count_digit
end
nb_dig(10, 1) == 4
nb_dig(25, 1) == 11
nb_dig(5750, 0) == 4700
nb_dig(11011, 2) == 9481
nb_dig(12224, 8) == 7733
nb_dig(11549, 1) == 11905