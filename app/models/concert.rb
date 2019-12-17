class Concert
    attr_reader :date, :band, :venue
    @@all = []
    def initialize(date,band,venue)
        @date = date
        @band = band
        @venue = venue

        @@all << self
    end

    def hometown_show?
        Band.all.find {|instance| instance.hometown == self.hometown}
    end

    def self.all
        @@all
    end
end


# - `Concert#hometown_show?`
#   - returns `true` if the concert is in the band's hometown, `false` if it is not
# - `Concert#introduction`
#   - returns a string with the band's introduction for this concert
#   - an introduction is in the form: `"Hello {insert city name here}!!!!!, we are {insert band name here} and we're from {insert hometown here}"`