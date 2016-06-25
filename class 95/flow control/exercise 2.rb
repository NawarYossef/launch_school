def method (string)
    if (string.length > 10)
        puts string.upcase
        puts "I like your name!"
    else
        puts " Sorry man! We can't be friends."
        puts "Your name is too short for me to remember"
    end
end

puts " what is your name"
name = gets.chomp.to_s
method (name)
