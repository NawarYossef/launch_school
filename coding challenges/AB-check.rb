
# Challenge :
# Using the Ruby language, have the function
# ABCheck(str) take the str parameter being
# passed and return the string true if the characters a and b are
# separated by exactly 3 places anywhere in
# the string at least once (ie. "lane borrowed" would result in true because there is exactly three characters between a and b).
# Otherwise return the string false.

# Solution :

def ABCheck(str)
  letter_a_index = str.rindex('a')
  letter_b_index = str.rindex('b')
  number_places = letter_a_index - letter_b_index
   if number_places.abs >= 3
     puts 'true'
   else
     puts 'false'
   end
end

ABCheck("after badly") == 'false'
ABCheck("Laura sobs") == 'true'

