require_relative 'spec_helper'

#Units die if HP < 0 (result of receiving damage from combat)

describe Unit do

  before :each do    
    @unit = Unit.new(0,50)
  end

  describe "#dead?"
  it 'should die if its health points are less than 0' do
    expect(@unit.dead?).to be true
  end
end



