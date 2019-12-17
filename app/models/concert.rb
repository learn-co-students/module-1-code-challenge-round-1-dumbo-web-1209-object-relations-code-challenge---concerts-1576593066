class Concert

    attr_reader :date, :band, :venue
  
    @@all = []

    def initialize(date, band, venue)
        @date = date
        @band = band
        @venue = venue
        @@all << self
    end

    def self.all
        @@all
    end

    def hometown_show?
        if self.venue.city == band.hometown
        else
         return
        end
    end 

    def introduction
       "Hello {venue.city}!!!!!, we are {band.name} and we're from {band.hometown}"
    end

end