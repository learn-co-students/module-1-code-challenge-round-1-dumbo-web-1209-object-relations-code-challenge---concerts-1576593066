class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        Venue.all do |venue_instance|
            venue_instance.band == self
        end
    end

    def play_in_venue(venue, date)
        Concert.new(date, self, venue)
    end

    

end