class Game
  attr_reader :player_one
  attr_reader :player_two

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def attack(player)
    player.receive_damage
  end
end