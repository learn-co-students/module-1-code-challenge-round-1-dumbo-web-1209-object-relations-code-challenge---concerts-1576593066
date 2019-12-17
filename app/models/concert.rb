class Concert
    attr_reader :date, :band, :venue

    @@all = []

    def initialize(date, band, venue)
        @date = date
        @band = band
        @venue = venue

        @@all << self
    end


    ## INSTANCE METHODS ##

    def city
        self.venue.city
    end

    def hometown_show?
        self.band.hometown == venue.city
    end

    ## NOTE ##
    # I wasn't sure if we were meant to iterate through the Band#all_introductions array for this. I couldn't find a simple way,
    # so for the sake of time I just pulled all the information from this instance.
    def introduction
        "Hello #{self.city}!!!!!, we are #{self.band.name} and we're from #{self.band.hometown}"
    end


    ## CLASS METHODS ##
    
    def self.all
        @@all
    end
end