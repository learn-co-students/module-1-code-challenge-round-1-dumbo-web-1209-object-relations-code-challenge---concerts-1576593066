class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end
    def concerts
        Band.map do |concerts|
            concerts.band
        end
    end
    def play_in_venue ("venue","date")
        self.all.new |concert|
        concert.band
    end
end 
    def all_introductions
        Band.select.all do |all_introductions|
            all_introductions.band == self
         puts `"Hello {insert city name here}!!!!!, we are {insert band name here} and we're from {insert hometown here}"`
        end
    end
end
    def self.all
        @@all
    end
end






