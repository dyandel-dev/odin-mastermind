class Computer
  COLORS = %w[Red Blue Green Yellow Orange Purple].freeze

  attr_accessor :code, :guess

  def initialize
    @code = Hash.new(4)
    @guess = Hash.new(4)
  end

  def generate_code
    4.times do |index|
      key = "code#{index + 1}".to_sym
      code[key] = COLORS.sample
    end
  end
end
