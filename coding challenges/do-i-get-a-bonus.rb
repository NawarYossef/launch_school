# Challenge :
# Build a function that takes in two arguments (salary, bonus).
# Salary will be an integer, and bonus a boolean.
# If bonus is true, the salary should be multiplied by 10.
# If bonus is false, the fatcat did not make enough money and must receive only his stated salary.
# Return the total figure the individual will receive as a string prefixed with '$'.

# Solution :
def bonus_time(salary, bonus)
  total_with_bonus = salary * 10
  bonus == true ? puts('$' + total_with_bonus.to_s) : puts('$' + salary.to_s)
end

bonus_time(10000, true)==  '$100000'
bonus_time(25000, true) =='$250000'
bonus_time(10000, false) == '$10000'
bonus_time(60000, false) == '$60000'