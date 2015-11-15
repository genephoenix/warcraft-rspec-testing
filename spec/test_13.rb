require_relative 'spec_helper'

#if unit is dead can't attack
#if alive can't attack dead

describe Unit do

  before :each do    
    @unit = Unit.new(40,20)
    @enemy = Unit.new(10,10)
  end

  describe "#attack!" do
    it "should not be able to attack if dead" do
      expect(@unit).to receive(:dead?).and_return true
      @unit.attack!(@enemy)
      expect(@enemy.health_points).to eq(10)
    end

    it "should not be able to attack dead enemy" do
      expect(@enemy).to receive(:dead?).and_return true
      @unit.attack!(@enemy)
      expect(@enemy.health_points).to eq(10)
    end
  end

end