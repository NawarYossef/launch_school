def prompt(message)
  puts "#{message}"
end

def multiply(num1, num2)
  num1 * num2
end

def devide(num1, num2)
  if num1 % num2
    return num1.to_f / num2.to_f
  else
    return (num1 / num2).to_i
  end
end

def subtract(num1, num2)
  num1 - num2
end

def addition(num1, num2)
  num1 + num2
end

def valid_number?(number)
  number.to_i != 0
end

msg1 = <<-sm
-------------------------------------------
  #######################################
        Welcome to The Calculator App
  #######################################
-------------------------------------------
sm

msg2 = <<-sm1
Please choose an operation you would like to perform:
1) addition
2) devision
3) multipication
4) subtraction
sm1

prompt(msg1)
loop do 
  prompt(msg2)
  choice = Kernel.gets().chomp()
  sleep 1.0
  system("clear")
  loop do
    if %w(1 2 3 4).include?(choice)
      break
    else
      prompt('Invalid choice.Please enter a number between 1 - 4')
      choice = Kernel.gets().chomp()
    end
  end
  prompt("Please eneter your first number")
  number1 = Kernel.gets().to_i
  loop do
    if valid_number?(number1)
      break
    else
      prompt('invalid number. Enter a number above 0')
      prompt("Please eneter your first number")
      number1 = Kernel.gets().to_i
    end
  end
  prompt("Please eneter your second number")
  number2 = Kernel.gets().to_i
  loop do
    if valid_number?(number2)
      break
    else
      prompt('invalid number. Enter a number above 0')
      prompt("Please eneter your second number")
      number2 = Kernel.gets().to_i
    end
  end
  system('clear')
  case choice
  when '1'
    prompt("Your total is #{addition(number1, number2)}")
  when '2'
    prompt("Your total is #{devide(number1, number2)}")
  when '3'
    prompt("Your total is #{multiply(number1, number2)}")
  when '4'
    prompt("Your total is #{subtract(number1, number2)}")
  end
  prompt("Would you like to perform another operation? ")
  answer = Kernel.gets().chomp()
  break unless answer.casecmp('yes') == 0
end
prompt("Good bye...")