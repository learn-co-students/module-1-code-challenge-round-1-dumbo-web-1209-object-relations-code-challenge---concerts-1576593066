class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    # return an array of all the concerts that the band has played in
    def concerts
        Concert.all.select do |concert_instance|
            concert_instance.band == self
        end
    end

    def play_in_venue(venue, date)
        Concert.new(date, self, venue)
    end

    # returns an array of strings representing all the introductions for this band
    def all_introductions
        # loop thru Concert class and find matching band names by comparing concert's band name
        # if concert class band is this band, return that instance's intro 
        Concert.all.map{|concert_instance| concert_instance.introduction if concert_instance.band == self}.uniq.compact
    end

    def self.all
        @@all
    end
end