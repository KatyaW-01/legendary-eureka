class BikeClub
  attr_reader :name, :bikers
  def initialize(name)
    @name = name
    @bikers = []
  end

  def add_biker(biker)
    @bikers << biker
  end

  def most_rides_helper
    results = {}
    @bikers.each do |biker|
      if results[biker].nil?
        results[biker] = 0
      end
      biker.rides.each do |ride,times|
        results[biker] += times.length
      end
    end
    results
  end

  def most_rides
    superior_biker = most_rides_helper.max_by do |biker,rides|
      rides
    end
    superior_biker[0]
  end

end