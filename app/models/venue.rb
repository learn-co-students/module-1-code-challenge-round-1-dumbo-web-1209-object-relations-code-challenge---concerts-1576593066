class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def concert_on(date)
        self.concert.find do |date|
            all.date.venue == date.venue
        end
    end

    def most_frequent_band
        self.mode 
    end

    def self.all
        @@all
    end
end


### Object Relationship Methods

# - `Venue#concerts`
#   - returns an array of all the concerts for the venue
# - `Venue#bands`
#   - returns an array of all the bands for the venue

# - `Venue#concert_on(date)`
#   - takes a date (string) as argument
#   - finds and returns the first concert on that date at that venue
#   - if there is no concert on that date at that venue, returns `nil`
# - `Venue#most_frequent_band`
#   - returns the band with the most concerts at the venue
