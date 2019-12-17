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
        Concert.all.select do |concert_instance|
            concert_instance.venue == self 
        end
    end

    def bands
        self.concerts.map do |concert_instance|
            concert_instance.band 
        end
    end

    def concert_on(date)
        Concert.all.find do |concert_instance|
            concert_instance.date == date
        end
    end

    def most_frequent_band
        band_visits = []
        Concert.all.map do |concert_instance|
            if concert_instance.venue == self
                band_visits << concert_instance.band 
            end
        end
        band_visits.max_by do |band|   
        end 
    end
end





