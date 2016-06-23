def validate(num)
  num > 1
end

def sum(num)
  total = 0
  (1..num).each { |value| total += value }
  total
end

def product(num)
  total = 1
  (1..num).each { |n| total *= n }
  total
end

number = ''

msg2 = <<-sms
***************************************
                Hello!
This program calculates the sum or product of consecutive integers.
it asks you to enter a number greater than 0,
the program then calculates the sum or product of all numbers
between 1 and the entered number.
              Lets start!!
***************************************
sms

puts msg2

loop do
  puts "Please eneter a number greater than 0"
  number = gets.chomp.to_i
  if validate(number)
    break
  else
    puts "Invalid choice!"
  end
end

msg2 = <<-sms
 please choose an operation you wish to perform.
 Choose (s) for calculating the sum or (p) for calculating the product
 sms

loop do
  puts msg2
  choice = gets.chomp
  loop do
    if choice == 's'
      p "The sum of all numbers between 1 and #{number} is #{sum(number)}"
      break
    elsif choice == 'p'
      p "The product of all numbers between 1 and #{number}"
      p "is #{product(number)}"
      break
    else
      puts 'Invalid choice. Please eneter a valid choice'
      choice = gets.chomp
    end
  end
  puts "Would you like to perform another operation? (yes/no)"
  answer = gets.chomp.to_s
  unless answer.downcase == 'yes'
    break
  end
end
puts "THank you. Goodbye..."
