require_relative 'spec_helper'

#barracks has more HP -> 500
#barracks only damaged by 50% by footman AP
#damage should be Fixnum; result ceil division

describe Barracks do
  before :each do
    @barracks = Barracks.new
  end

  it "should have 500 health points" do
    expect(@barracks.health_points).to eq(500)
  end

  describe "#damage" do
    it "should reduce the health points by the attack power specified" do
      @barracks.damage(50)
      expect(@barracks.health_points).to eq(450)
    end
  end

end

describe Footman do
  before :each do
    @footman = Footman.new
    @barracks = Barracks.new
  end

  describe "#attack!" do
    it "should reduce the health points of a barrack by half of its attack points" do 
    @footman.attack!(@barracks)
    expect(@barracks.health_points).to eq(495) 
    end
  end
end