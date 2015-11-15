# http://classic.battle.net/war3/human/units/footman.shtml
require_relative 'unit'

class Footman < Unit
  attr_reader :health_points, :attack_power

  def initialize
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
    super(60, 10)  
  end

  def attack!(enemy)
  # enemy.health_points -= attack_power
    if enemy.is_a?(Barracks)
      amount_of_damage = (attack_power.to_i/2).ceil
      enemy.damage(amount_of_damage)
    else
      enemy.damage(10)
    end
  end

  def damage(attack_power)
    @health_points -= attack_power
  end

end
