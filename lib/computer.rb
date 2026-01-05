class Computer
  COLORS = %w[red blue green yellow orange purple].freeze

  attr_accessor :code

  def initialize
    @code = Hash.new(4)
  end

  def generate_code
    4.times do |index|
      key = "code#{index + 1}".to_sym
      code[key] = COLORS.sample
    end
  end
end
