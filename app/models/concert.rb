class Concert   ### ALL TESTED/WORKS ###

    attr_reader :date, :band, :venue

    @@all = []

    # INITIALIZE #

    def initialize(date, band, venue)   # WORKS #
        @date = date
        @band = band
        @venue = venue
        
        @@all << self
    end

    # INSTANCE METHODS #

    def hometown_show?  # WORKS #
        if self.venue.city == self.band.hometown
            return true
        else
            return false
        end
    end

    def introduction    # WORKS #
        "Hello #{self.venue.city}!!!!!, we are #{self.band.name} and we're from #{self.band.hometown}"
    end

    # CLASS METHODS #

    def self.all    # WORKS #
        @@all
    end

    # END #
    
end