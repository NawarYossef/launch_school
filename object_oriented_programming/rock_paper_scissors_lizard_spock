module GameMessages
  def greeting_msg
    msg = <<-sm
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
    puts msg
  end

  def choose_msg
    msg = <<-sm
    Please make a choice :
    r => rock
    p => paper
    s => scissors
    l => lizard
    sp => spock
    sm
   puts msg
  end

  def display_choices(player,computer)
    puts "You chose #{player}. Computer chose #{computer}"
  end

  def wrong_choice_msg
    msg = <<-sm
    Sorry! That's not a valid choice.
    Please make a vaild choice.
    sm
    puts msg
  end

  def clear_screen
    system("clear") || system("cls")
  end

  def make_move_msg
    msg = <<-sm
    Please make a choice (r p s l sp)
    sm
    puts msg
  end
  def round_msg(round)
    puts "Round : #{round}"
  end

  def round_win_msg
    msg = <<-sm
    You won this ROUND!
    **** Good Job ****
    sm
    puts msg
  end

  def round_lost_msg
    puts "Sorry! Computer won this round!"
  end

  def round_draw_msg
    puts "Its a draw"
    puts "let's try again"
  end

  def score_display_msg(player_score, computer_score)
    puts "Your Score:     #{player_score}"
    puts "Computer Score: #{computer_score}"
  end

  def game_win_msg
    puts "    * * * * *       "
    puts "YOU WON THE GAME!!!!"
    puts "    GREAT JOB       "
    puts "    * * * * *       "
  end

  def game_lost_msg
    puts "Sorry! Comupter won the game"
  end

  def play_again
    puts "Would you like to play again?"
  end

  def goodbye_msg
    puts 'Thanks for playing Rock Paper Scissors Lizard Spock! Goodbye!'
  end
end


class Game
  attr_reader :player, :computer
  include GameMessages

  WIN_CHOICES = {
  "Rock" => %w(Lizard Scissors),
  "Paper" => %w(Rock, Spock),
  "Scissors" => %w(Lizard Paper),
  "Lizard" => %w(Paper Spock),
  "Spock" => %w(Scissors Rock)
  }.freeze

  PLAYER_CONVERT_CHOICES = {
  "r" => 'Rock',
  "p" => 'Paper',
  "s" => "Scissors",
  "l" => "Lizard",
  "sp" => "Spock"
  }.freeze

  def initialize
    player = Player.new
    @player = player
    computer = Computer.new(%w(Rock Paper Scissors Lizard Spock))
    @computer = computer
  end

  def round_player_win?(player, computer)
    WIN_CHOICES[PLAYER_CONVERT_CHOICES[player]].include?(computer)
  end

  def round_draw?(player, computer)
    player == computer
  end

  def all_rounds_finish?(round)
    round > 5
  end

  def game_player_won?(player, computer)
    player > computer
  end

  def game_play
    game = Game.new
    player_score = 0
    computer_score = 0
    round = 1
    clear_screen
    game.greeting_msg
    game.choose_msg
    game.round_msg(round)
    loop do
      loop do
        game.make_move_msg
        player_choice = player.move
        loop do
          break if player.valid_choice?(player_choice)
          game.wrong_choice_msg
          player_choice = player.move
        end
        puts computer_choice = computer.move
        game.clear_screen
        game.display_choices(PLAYER_CONVERT_CHOICES[player_choice], computer_choice)
        if round_draw?(player_choice, computer_choice)
          game.score_display_msg(PLAYER_CONVERT_CHOICES[player_score], computer_score)
          game.round_draw_msg
          break
        elsif round_player_win?(player_choice, computer_choice)
          game.round_win_msg
          player_score += 1
          round += 1
          game.score_display_msg(player_score, computer_score)
        else
          computer_score += 1
          round += 1
          game.round_lost_msg
          game.score_display_msg(player_score, computer_score)
        end
        break if all_rounds_finish?(round)
      end
    clear_screen
    if game_player_won?(player_score, computer_score)
        game.game_win_msg
        break
      else
        game.game_lost_msg
        break
    end
    end
    game.score_display_msg(player_score, computer_score)
    game.goodbye_msg
    exit
  end
end


class Player
  attr_accessor :choice

  def initialize
    @choice = choice
  end
  def move
    choice = gets.chomp.to_s
    choice
  end

  def valid_choice?(choice)
    %w(r p s l sp).include?(choice)
  end
end


class Computer
  attr_reader :choices

  def initialize(choices)
    @choices = choices
  end

  def move
   choices.sample
  end
end

t = Game.new
t.game_play
