require './lib/ride'
require './lib/biker'
require 'pry'

RSpec.describe Biker do
  before(:each) do
    @biker = Biker.new("Kenny", 30)
  end
  describe "#initialize" do
    it 'exists' do
      expect(@biker).to be_a(Biker)
    end
    it 'has a name' do
      expect(@biker.name).to eq("Kenny")
    end
    it 'has a maximum distance' do
      expect(@biker.max_distance).to eq(30)
    end
    it 'is initialized with an empty hash of rides' do
      expect(@biker.rides).to eq({})
    end
    it 'is initialized with an empty array of acceptable terrain' do
      expect(@biker.acceptable_terrain).to eq([])
    end
  end
  describe "#methods" do
    it 'can learn new terrain' do
      @biker.learn_terrain(:gravel)
      @biker.learn_terrain(:hills)

      expect(@biker.acceptable_terrain).to eq([:gravel, :hills])

    end

  end

end