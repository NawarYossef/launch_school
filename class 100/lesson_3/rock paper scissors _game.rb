  ARR_CHOICES = ['rock', 'paper', 'scissors']
  COMPUTER_CHOICES = ARR_CHOICES.sample
  user_choices = ''
  def prompt(message)
    Kernel.puts("=> #{message}")
  end
  def valid_choice?(user_choices)
    ARR_CHOICES.include?(user_choices) == true
  end
  def result_draw
    prompt("Oops! it's a draw.")
  end
  def reslut_user_win(user_choices)
    if user_choices == "rock" && COMPUTER_CHOICES == "scissors"
      return true
    elsif user_choices == "paper" && COMPUTER_CHOICES == "rock"
      return true
    elsif user_choices == "scissors" && COMPUTER_CHOICES == "paper"
      return true
    end
  end
  prompt("Hello! Let's play a game of rock paper scissors!")
  prompt("make a choice")
  loop do
  user_choices = Kernel.gets.downcase().chomp()
  loop do
    if valid_choice?(user_choices)
      break
    else
      prompt("Please eneter a valid answer") 
      user_choices = Kernel.gets.downcase().chomp()
    end
  end
  prompt("#{COMPUTER_CHOICES}")
  if user_choices == COMPUTER_CHOICES
     result_draw
  elsif reslut_user_win(user_choices)
    prompt("Congratulations! You Win...")
  else
    prompt("I win!.Sorry:(")
  end
  prompt("Thank you for playing with me. Would you like to play again ?")
  reply = Kernel.gets.downcase().chomp()
  break unless reply.downcase == 'yes'
  prompt("Please make a choice")
  end
  prompt("Thank you. Good bye...")
