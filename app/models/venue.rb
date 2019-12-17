class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def title
    end

    def city
    end
    
    def bands
    end

    def concert_on(date)
    end

    def most_frequent_band
    end

    def self.all
        @@all
    end
end