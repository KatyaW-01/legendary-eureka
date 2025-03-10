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
  end

end