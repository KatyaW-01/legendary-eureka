require './lib/ride'

RSpec.describe Ride do
  describe "#initialize" do
    it 'exists' do
      ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})

      expect(ride1).to be_a(Ride)
    end
    it 'has a name' do
      ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})

      expect(ride1.name).to eq("Walnut Creek Trail")
    end
    it 'has a distance' do
      ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})

      expect(ride1.distance).to eq(10.7)
    end
    it 'has terrain' do
      ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})

      expect(ride1.terrain).to eq(:hills)
    end
   
  end
end