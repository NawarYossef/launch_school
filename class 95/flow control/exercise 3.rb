     #In this exercise I choose to use methods for the sake of practice. I'm aware that I can only use conditional statements to write the program succinctly. 

    def number_bellow0(num)
        puts "Please eneter a number above 0"
    end
    def number_0and50(num)
        puts "#{num} is between 0 and 50"
    end
    def number_51and100(num)
        puts "#{num} is between 51 and 100"
    end
    def number_above100(num)
        puts "#{num} is above 100"
    end
    
    puts "give me a number between 0 and 100." 
    puts "I will tell you whether the number is between 0 and 50, 51 and 100, or above 100."
    num = gets.chomp.to_i
    if (num<0)
        number_bellow0(num)
    elsif (num>=0 && num<=50)
        number_0and50(num)
    elsif (num>= 51 && num<=100)
        number_51and100(num)
    else
        number_above100(num)
    end
    
    