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
        Concert.all.select{|concert_instance| concert_instance.venue == self}
    end

    def bands
        Concert.all.map {|concert_instance| concert_instance.band }
    end

    def concert_on(date)
        Concert.all.find {|instance| instance.date == date}
    end

    # def most_frequent_band
        
    # end

    def self.all
        @@all
    end
end

# - `Venue#most_frequent_band`
#   - returns the band with the most concerts at the venue
