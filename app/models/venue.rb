class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end
# - `Venue#concerts`
#   - returns an array of all the concerts for the venue
# for all the concert instances, select the venues that match this venue
    def concerts
        Concert.all.select do |concert| 
            concert.venue == self
        end
    end
# - `Venue#bands`
#   - returns an array of all the bands for the venue
    def bands
        concerts.map do |concert|
            concert.band
        end
    end

        
end


#### Venue



