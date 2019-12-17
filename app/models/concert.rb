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

    def hometown_show?(hometown)
    # returns true if the concert is in the band's hometown, false if it is not
    # takes concert instance, should also take hometown as arugment? 
        Concert.all.each do |concert_instance|
            if concert_instance ==  self && concert_instance.band.hometown == hometown 
               return true
               #working to return true when hometown matches, but not correctly returning false
            # else
            #     return false 
            end
        end
    end

    def introduction
        "Hello #{self.venue.city}!!!!!, we are #{self.band.name} and we're from #{self.band.hometown}"  
    end
end
