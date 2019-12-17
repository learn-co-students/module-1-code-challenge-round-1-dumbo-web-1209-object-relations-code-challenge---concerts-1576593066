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
        Venue.all do |venue_instance|
            venue_instance.concert
        end
    end

    def bands
        Venue.all do |venue_instance|
            venue_instance.band 
        end
    end



    def concert_on(date)
        Concert.all.find do |concert_instance|
            concert.date === date
        end
    end

    def most_frequent_band
       mvb=Venue.all.sort_by do |venue_instance|
            venue_instance.band
        end
        mvb.last
    end

end