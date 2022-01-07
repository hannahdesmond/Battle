class Player
  DEFAULT_HP = 60
  attr_reader :hit_points
  attr_reader :name

  def initialize(hit_points: DEFAULT_HP, name:)
    @hit_points = hit_points
    @name = name.to_s.capitalize
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hit_points -= 10
  end
end