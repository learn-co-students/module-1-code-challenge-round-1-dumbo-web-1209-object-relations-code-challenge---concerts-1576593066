class Venue

    attr_reader :city, :title

    @@all = []

    def initialize(title, city)
        @title = title
        @city = city

        @@all << self
    end

    ## INSTANCE METHODS ##

    def concerts
        Concert.all.select{|concert| concert.venue == self}
    end

    def bands
        concerts.map{|concert| concert.band}
    end

    def concert_on(date)
        concerts.find{|concert| concert.date == date}
    end

    def most_frequent_band
        ## NOTE ##
        # I wanted to use group_by for this, but I got stressed and didn't want to risk too much time on it.
        # I know this is a little clunkier, but hey, if it works it works!

        ## Create empty hash to keep a count of how many times a band played a concert in this instance of Venue
        ## Iterate through the concerts. If key of band already exists, add 1 to the value. If not, initialize it with a start of 1
        band_hash = {}
        concerts.each {|concert|
            if band_hash[concert.band]
                band_hash[concert.band] += 1
            else
                band_hash[concert.band] = 1
            end
        }
        band_hash.max_by{|band, frequency| frequency}[0]
    end

    ## CLASS METHODS ##

    def self.all
        @@all
    end
end