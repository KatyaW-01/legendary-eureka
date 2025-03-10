require './lib/ride'
require 'pry'

RSpec.describe Ride do
  before(:each) do
    @ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
  end
  describe "#initialize" do
    it 'exists' do
      expect(@ride1).to be_a(Ride)
    end
    it 'has a name' do
      expect(@ride1.name).to eq("Walnut Creek Trail")
    end
    it 'has a distance' do
      expect(@ride1.distance).to eq(10.7)
    end
    it 'has terrain' do
      expect(@ride1.terrain).to eq(:hills)
    end
  end
  describe "#methods" do
    it 'returns true/false if a loop' do
      expect(@ride1.loop?).to eq(false)
    end
    it 'has a total distance' do
      expect(@ride1.total_distance).to eq(21.4)

      ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})

      expect(ride2.loop?).to eq(true)
      expect(ride2.total_distance).to eq(14.9)

    end
  end
end