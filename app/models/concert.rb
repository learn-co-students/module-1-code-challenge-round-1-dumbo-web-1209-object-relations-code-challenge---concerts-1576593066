class Concert
  attr_reader :date, :band
  attr_accessor :venue

  @@all = []

  def initialize(date, band, venue)
    @date = date
    @band = band
    @venue = venue

    @@all << self
  end

  def band
    Band.all.select do |concert_instance|
    concert_instance.band
    end
  end

  def venue
    Venue.all.select do |concert_instance|
    concert_instance.venue
    end
  end

  def self.all
    @@all
  end
    
end