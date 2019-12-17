class Venue

    attr_reader :city
    attr_accessor :title
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end
    # returns an array of all the concerts for the venue
    def concerts
        Concert.all.select{|concert_instance| concert_instance.venue == self}
    end
    # returns an array of all the bands for the venue
    def bands
        self.concerts.map(&:band)
    end
    # takes a date (string) as argument, finds and returns the first concert on that date at that venue
    def concert_on(search_date)
        self.concerts.find{|concert_instance| concert_instance.date == search_date}
    end
    # returns the band with the most concerts at the venue
    def most_frequent_band
        self.bands.max_by do |band_instance|
            band_instance.concerts.select{|concert_instance| concert_instance.venue == self}.length
        end
    end
end