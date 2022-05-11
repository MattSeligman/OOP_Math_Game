class Player

  attr_reader :player, :lives

  def initialize(player)
    @player = player
    @lives = 3
  end

  def lost_life
    @lives -= 1
  end

  def alive?
    @lives > 0
  end

  def to_s
    "#{player}"
  end
  
end