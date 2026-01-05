class Computer
  COLORS = %w[RED BLUE GREEN YELLOW ORANGE PURPLE].freeze

  attr_accessor :code, :feedback

  def initialize
    @code = Hash.new(4)
    @feedback = Hash.new(4)
  end

  def create_key(index)
    "code#{index + 1}".to_sym
  end

  def generate_code
    4.times do |index|
      code[create_key(index)] = COLORS.sample
    end
  end

  def same_color?(index, player_guess)
    code[create_key(index)] == player_guess[create_key(index)]
  end

  def color_exist?(index, player_guess)
    code.value?(player_guess[create_key(index)])
  end

  def give_feedback(index, value)
    feedback[create_key(index)] = value
  end
end
