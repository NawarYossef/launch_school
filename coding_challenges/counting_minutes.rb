# Challenge :
# Using the Ruby language, have the function CountingMinutesI(str) 
# take the str parameter being passed which will be two times (each properly formatted with a colon and am or pm) separated by a hyphen and return the total number of minutes between the two times. 
# The time will be in a 12 hour clock format. 
# For example: if str is 9:00am-10:00am then the output should be 60. 
# If str is 1:00pm-11:00am the output should be 1320. 

# Solution :
def CountingMinutesI(string)
 numbers = string.split('-')
   if numbers[0].include?('pm') && numbers[1].include?('pm') || numbers[0].include?('am') && numbers[1].include?('am')
    ((numbers[1].to_i - numbers[0].to_i) * 60).to_i
   else
    (((numbers[1].to_i - numbers[0].to_i) + 12) * 60).to_i
  end
end

CountingMinutesI("1:00pm-11:00am ") == 1320
CountingMinutesI("9:00am-10:00am ") == 60
CountingMinutesI("12:00pm-12:00am") == 720
CountingMinutesI("1:00pm-3:00am") == 840