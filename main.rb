require_relative "lib/computer"
require_relative "lib/player"

computer1 = Computer.new
computer1.generate_code
puts computer1.code

player1 = Player.new
player1.get_guess(0)
