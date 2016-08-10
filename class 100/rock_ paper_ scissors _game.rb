WIN_CHOICES = {
  "rock" => %w(lizard scissors),
  "paper" => %w(rock, spock),
  "scissors" => %w(lizard paper),
  "lizard" => %w(paper spock),
  "spock" => %w(scissors rock)
}.freeze

PLAYER_CONVERT_CHOICES = {
  "r" => 'rock',
  "p" => 'paper',
  "s" => "scissors",
  "l" => "lizard",
  "sp" => "spock"
}.freeze

COMPUTER_OPTIONS = %w(rock paper scissors lizard spock)

def prompt(message)
  puts message.to_s
end

def system_clear
  system('cls') || system('clear')
end

def line_break
  prompt("====================")
end

def validate_choice(choice)
  %w(r p s l sp).include?(choice)
end

def calc_score(player_score, computer_score)
  player_score == 5 || computer_score == 5
end

def winner(player_score, computer_score)
  if player_score > computer_score
    prompt("You win!!!...Good job!")
  else
    prompt("Computer won....Sorry:(")
  end
end

def player_wins(player_choice, computer_choice)
  WIN_CHOICES[PLAYER_CONVERT_CHOICES[player_choice]].include?(computer_choice)
end

def computer_wins(player_choice, computer_choice)
  WIN_CHOICES[computer_choice].include?(PLAYER_CONVERT_CHOICES[player_choice])
end

msg1 = <<-sm
--------------------------------
  ***************************
        Welcome to
rock paper scissors lizard spock
          game
  ***************************
--------------------------------
Here are The Rules of The Game:
^^ Scissors cuts Paper
^^ Paper covers Rock
^^ Rock crushes Lizard
^^ Lizard poisons Spock
^^ Spock smashes Scissors
^^ Scissors decapitates Lizard
^^ Lizard eats Paper
^^ Paper disproves Spock
^^ Spock vaporizes Rock
^^ Rock crushes Scissors

First person to win 5 rounds, wins the game!!!
sm

msg2 = <<-sm
Please make a choice :
r => rock
p => paper
s => scissors
l => lizard
sp => spock
sm

prompt(msg1)
player_choice = ''
player_score = 0
computer_score = 0
round = 1

loop do # main loop
  loop do # inner loop
    prompt("Round: #{round}")
    round += 1
    line_break
    prompt(msg2)
    player_choice = gets.downcase.chomp.to_s
    loop do
      if validate_choice(player_choice)
        break
      else
        prompt("Invalid choice. Please make a choice (r,p,s,l,sp)")
        player_choice = gets.chomp.downcase.to_s
      end
    end

    computer_choice = COMPUTER_OPTIONS.sample
    prompt("=> #{computer_choice}")
    line_break

    puts "You chose #{PLAYER_CONVERT_CHOICES[player_choice]}"
    puts "computer chose #{computer_choice}"
    if player_wins(player_choice, computer_choice)
      puts "You win "
      player_score += 1
    elsif computer_wins(player_choice, computer_choice)
      puts "Computer wins"
      computer_score += 1
    else
      puts "its a tie!"
    end

    line_break

    prompt("Player score:   #{player_score}")
    prompt("Computer score: #{computer_score}")

    break if calc_score(player_score, computer_score)
  end
  system_clear
  prompt("Final Score")
  prompt("Player score:   #{player_score}")
  prompt("Computer score: #{computer_score}")
  winner(player_score, computer_score)

  line_break

  prompt("Would you like to play again? ('y' or 'n')")
  answer = gets.chomp

  loop do
    break if answer.casecmp('y') == 0 || answer.casecmp('n') == 0
    prompt("Please enter a vaild answer (y/n)")
    answer = gets.chomp
  end

  break unless answer.casecmp('y') == 0
  player_score = 0
  computer_score = 0
  round = 1
  system_clear
end

system_clear

p 'Thank you. Goodbye!'
