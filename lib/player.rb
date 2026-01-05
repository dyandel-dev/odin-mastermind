class Player
  attr_accessor :guess

  def initialize
    @guess = Hash.new(4)
  end

  def get_guess(code_number)
    print "Code-#{code_number + 1}: "
    gets.chomp.upcase
  end

  def ask_player(turn_count)
    puts "Turn #{turn_count + 1}"
    puts "Choices: RED, BLUE, GREEN, YELLOW, ORANGE, PURPLE"
    4.times do |index|
      key = "code#{index + 1}".to_sym
      value = get_guess(index)
      guess[key] = value
    end
  end
end
