class SeigeEngine < Unit

  def initialize
    super(400,50)
  end

  def attack!(enemy)
    @barrack = Barracks.new
    if enemy.is_a?(Barracks)
      enemy.damage(attack_power * 2)
    else
      enemy.damage(attack_power)
    end
  end
end