class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    # returns an array of all the concerts for the venue
    def concerts
        Concert.all.select do |concert_instance|
            concert_instance.venue == self
        end
    end

    # returns an array of all the bands for the venue
    def bands
        concerts.map{|concert_instance| concert_instance.band}
    end

    def concert_on(date)
        self.concerts.find do |concert_instance|
            concert_instance.date == date
        end
    end

    # returns the band with the most concerts at the venue
    def most_frequent_band
        # grab all the concerts at the venue (call self.concerts method)
        # create a hash to store band instance as key and its occurrance as value
        band_frequency = {}
        concerts.each do |concert_instance|
            if !band_frequency[concert_instance.band] 
                band_frequency[concert_instance.band] = 1
            else band_frequency[concert_instance.band] += 1
            end 
        end
        # find the max vlue in hash and save to array
        result_array = band_frequency.max_by{|band_instance, frequency| frequency}
        # the array will have two elements, we only need the first element, which is the band instance
        result_array[0]
    end

    def self.all
        @@all
    end
end