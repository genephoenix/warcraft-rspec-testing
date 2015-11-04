require_relative 'footman'

class Barracks
  attr_reader :gold , :food

  # # attr_reader :food
  # # defines the method below
  # def food
  #   @food
  # end

  # # attr_writer :food
  # def food=(new_food)
  #   @food = new_food
  # end

  def initialize
    @gold = 1000
    @food = 80
  end

  def can_train_footman?
    if food <= 2
      return false
    end
    if gold <= 135
      return false
    end
    true
  end

  def train_footman
    if can_train_footman? == true
      @gold -= 135
      @food -= 2
      @footman = Footman.new
    end
  end
end