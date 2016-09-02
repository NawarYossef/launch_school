# Challenge :
# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.

# Solution :
def no_repeats(year1,year2)
  all_years = (year1..year2).to_a
  all_years.reject! do |year|
    year_no_repeat_num = year
    year_no_repeat_num.to_s.split(//).uniq.size != year.to_s.split(//).size
  end
  all_years
end

no_repeats(1980,1988)
no_repeats(1234,1234)
no_repeats(1123,1123)