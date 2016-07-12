WINNING_COMBINATION = { "rock" => %w(lizard scissors),
                        "paper" => %W(rock spock),
                        "scissors" => %w(paper lizard),
                        "lizard" => %w(spock paper),
                        "spock" => %w(scissors rock)

}.freeze

Computer_choices =
  %w(rock paper scissors lizard spock).sample

Convert_choices = {
  'r' => 'rock',
  'p' => 'paper',
  's' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}.freeze

Result_display = {
  %w(rock lizard) => "rock beats lizard",
  %w(rock scissors) => "rock beats scissors",
  %w(paper rock) => "paper beats rock",
  %w(paper spock) => "paper beats spock",
  %w(scissors lizard) => "scissors beats lizard",
  %w(scissors paper) => "scissors beats paper",
  %w(paper lizard) => "lizard beats paper",
  %w(lizard spock) => "lizard beats spock",
  %w(spock scissors) => "spock beats scissors",
  %w(spock rock) => "spock beats rock"
}




def validate_choice(user_choice)
  loop do
    if %w(r p s l sp).include?(user_choice)
      break
    else
    prompt("Please make a valid choice: (r, p, s, l, sp)")
    user_choice = gets.chomp.downcase.to_s
    end
  end
end

def prompt(message)
  puts("#{message}")
end

def system_clear
  system('clr') || system('clear')
end

def line_break
  puts "--------------------------"
end

def player_winner?(player1,player2)
   WINNING_COMBINATION[player1].include?(player2)
end

msg1 = <<-sm

--------------------------------
  ***************************
        Welcome to
rock paper scissors lizard spock
          game
  ***************************
--------------------------------
sm

msg2 = <<-sm
Please make a choice :
r => rock
p => paper
s => scissors
l => lizard
sp => spock
sm

choice = ''
user_score = 0
pc_score = 0
computer_choice = Computer_choices
Both_choices = [Convert_choices[choice], computer_choice]

prompt(msg1)
loop do
  prompt(msg2)
  line_break
  choice = gets.chomp.downcase.to_s
  validate_choice(choice)
  computer_choice
  line_break
  prompt("you chose:            #{Convert_choices[choice]}")
  prompt("computer chose:       #{computer_choice}")
  prompt("#{Result_display[Both_choices]}")
   if player_winner?(Convert_choices[choice],computer_choice)
     prompt("You win")
   else
     prompt("Computer wins")
   end
end



