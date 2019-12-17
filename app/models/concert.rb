class Concert
    
    attr_accessor :date 

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

    def band
        @band
    end

    def venue 
        @venue
    end

    def hometown_show?
        if self.venue.city == band.hometown
            return true 
        else 
            return false
        end 
    end

    def introduction
        self.each do |n|
        # .each do |details|
            puts "h #{n.venue.city}"
          #  "Hello {details.city}!!!!!"
            # puts "Hello #{@@all.city}!!!!!, we are #{self.band} 
            # # and we're from #{self.band.hometown}"
        end
    end
end




# - `Concert#introduction`
# - returns a string with the band's introduction for this concert
# - an introduction is in the form: 
# `"Hello {insert city name here}!!!!!, we are {insert band name here} 
# and we're from {insert hometown here}"`








