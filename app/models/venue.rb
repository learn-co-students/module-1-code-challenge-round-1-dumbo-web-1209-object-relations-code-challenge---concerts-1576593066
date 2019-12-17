class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end
    def concerts
        Venue.map do |concerts|
            concerts.venue
    end
end  
    def bands
        Venue.map do |bands|
            bands.venue
        end
    end     

    def concert_on (date)
        require |date_first_concert|
            date_first_concert.venue
        return nill unless date_first_concert_of_venue
        ###I tried to use require to include the first concert on the date at the venue but I think I set it up wrong.
    end
end
       
    def self.all
        @@all
    end
end



# `Venue#concert_on(date)`
#   - takes a date (string) as argument
#   - finds and returns the first concert on that date at that venue
#   - if there is no concert on that date at that venue, returns `nil`
# - `Venue#most_frequent_band`
#   - returns the band with the most concerts at the venue