  def greeting (name)
   puts "Hello!" + name.capitalize 
  end

  puts "Hi! What is your name?"
  name = gets.chomp
  greeting (name)