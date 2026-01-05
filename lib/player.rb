class Player
  attr_accessor :guess

  def initialize
    @guess = Hash.new(4)
  end

  def get_guess(code_number)
    print "Code-#{code_number + 1}: "
    gets.chomp.downcase
  end
end
