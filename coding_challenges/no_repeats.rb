# Challenge : 
# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.

# Solution : 
def no_repeats(start_year,end_year)
  all_years = (start_year..end_year).to_a
  output_years = []
  all_years.select {|year| output_years << year if year_valid?(year)}
  output_years
end

def year_valid?(year)
  year.to_s.split(//).map(&:to_i).uniq.size == year.to_s.split(//).map(&:to_i).size
end

no_repeats(1234, 1234) == [1234]
no_repeats(1123, 1123) == []
no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987]