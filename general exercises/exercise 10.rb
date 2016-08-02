#Challenge :
# Write a method that takes two arguments: the first is the starting number, 
# and the second is the ending number.
# Print out all numbers between the two numbers, 
# except if a number is divisible by 3, print "Fizz", 
# if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

#Solution :
def fizzbuzz(num1,num2)
 num1.upto(num2).each do |n|
    case
    when n % 3 == 0
    'fizz'
    when n % 5 == 0
    'buzz'
    when n % 3 == 0 && n % 5 == 0
    'fizzbuzz'
    else
    p n
    end
 end
end
fizzbuzz(1, 15)