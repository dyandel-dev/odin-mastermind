require_relative "computer"
require_relative "player"

class Game
  attr_accessor :rounds, :guesses_correct, :computer, :player

  def initialize
    @rounds = 12
    @guesses_correct = nil
    @computer = Computer.new
    @player = Player.new
  end

  def generate_feedback(index, guesses)
    if computer.same_color?(index, guesses)
      computer.give_feedback(index, "BLACK")
    elsif computer.color_exist?(index, guesses)
      computer.give_feedback(index, "WHITE")
    else
      computer.give_feedback(index, "---")
    end
  end

  def display_feedback
    puts "Player Guesses: #{player.guess.values}"
    puts "Computer Feedback: #{computer.feedback.values}"
  end

  def run_game
    puts "Mastermind Game"
    computer.generate_code

    rounds.times do |count|
      player.ask_player(count)
      guesses = player.guess
      4.times do |index|
        generate_feedback(index, guesses)
      end
      display_feedback
    end
  end
end
