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
    # returns true if the concert is in the band's hometown, false if it is not
    def hometown_show?
        self.band.hometown == self.venue.city
    end
    # returns a string with the band's introduction for this concert
    def introduction
        "Hello #{self.venue.city}!!!!!, we are #{self.band.name} and we're from #{self.band.hometown}"
    end
end