def prompt(message)
Kernel.puts("=> #{message}")
end

def valid_number?(num)
    num.to_i() != 0 
end
number1 = ''
number2 = ''
name = ''
operator = ''

prompt("Welcome to Calculator! Enter your name")
loop do
    name = Kernel.gets().chomp()
    if name.empty?()
        prompt("Please enter a valid name")
    else
        break
    end
end
prompt("Hi #{name}")


loop do #main loop
    
    loop do
        prompt("What is the first number?")
        number1 = Kernel.gets().chomp()
        if valid_number?(number1)
            break
        else
            prompt("this is not a valid number")
        end
    end
    
    loop do
        prompt("What is the second number?")
        number2 = Kernel.gets().chomp()
        if valid_number?(number2)
            break
        else 
            prompt("This is nnot a valid number")
        end
    end
    
    op = <<-sm
    What operation would you like me to perform?
    1) Add 
    2) Sunbtract
    3) multiply 
    4) Devide
    sm
    prompt(op)
    loop do
        operator = Kernel.gets().chomp()
        if %w(1 2 3 4).include?(operator)
            break
        else
            prompt("Please enter a number between 1 - 4")
        end
    end
    
    
    result = case operator
        when '1'
              result = number1.to_i() + number2.to_i()
        when '2'
             result = number1.to_i() - number2.to_i()
        when '3'
              result = number1.to_i() * number2.to_i()
        when '4'
            result = number1.to_f() / number2.to_f()
    end
    prompt("The result is #{result}")

    prompt("Do you want to perform another calculation?
    (Y to calculate again)")
    answer = Kernel.gets().chomp()
    break unless answer.downcase().start_with?('y')
end
prompt("Thank you")
