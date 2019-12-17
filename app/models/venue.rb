class Venue
    attr_accessor :title
    attr_reader :city

    @@all = []

    def initialize(title, city)
        @title = title
        @city = city

        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        Concert.all.select do |concert_instnace|
            concert_instnace.venue.title == self.title
        end
    end

    def bands
        concerts.map do |concert|
            concert.name
        end
    end

end