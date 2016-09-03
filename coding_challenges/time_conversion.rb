# Challenge :
# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.

# Solution :
def time_conversion(minutes)
  hours = minutes / 60
  minutes_left = minutes % 60
  case
  when minutes > 60 && minutes_left.to_s.split(//).size == 1
    puts "#{hours}:#{minutes_left}0"
  when minutes > 60 && minutes_left.to_s.split(//).size == 2
    puts "#{hours}:#{minutes_left}"
  when minutes < 60
    puts "00:#{minutes}"
  end
end

time_conversion(15) == '0:15'
time_conversion(150) == "2:30"
time_conversion(360) == "6:00"

