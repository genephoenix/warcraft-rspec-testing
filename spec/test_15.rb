require_relative 'spec_helper'

describe SeigeEngine do

  before :each do
    @seige_engine = SeigeEngine.new
    @barrack = Barracks.new
  end 

  it "should have an attack power of 50" do
    expect(@seige_engine.attack_power).to eq(50)
  end

  it "should have 400 health points" do
    expect(@seige_engine.health_points).to eq(400)
  end

  describe "#attack!" do
    it "should reduce a barrack's health points by twice its attack power" do
      @seige_engine.attack!(@barrack)
      expect(@barrack.health_points).to eq(400)
    end

    it "should be able to reduce other seige engine's health points by its attack power" do
      @seige_engine2 = SeigeEngine.new
      @seige_engine.attack!(@seige_engine2)
      expect(@seige_engine2.health_points).to eq(350)
    end
  end
end