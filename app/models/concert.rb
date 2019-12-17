class Concert

    attr_accessor :date, :band, :venue

    @@all = []

    def initialize(date, band, venue)
        @date = date
        @band = band
        @venue = venue
        @@all << self
    end

    # returns `true` if the concert is in the band's hometown, `false` if it is not
    def hometown_show?
        if self.band.hometown == self.venue.city
            return true
        else
            return false
        end
    end

    def introduction
        return "Hello #{self.venue.city}!!!!!, we are #{self.band.name} and we're from #{self.band.hometown}"
    end

    def self.all
        @@all
    end
end
