class Band

    attr_reader :hometown
    attr_accessor :name
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def self.all
        @@all
    end
    # should return an array of all the concerts that the band has played in
    def concerts
        Concert.all.select{|concert_instance| concert_instance.band == self}
    end
    # takes a venue and date (as a string) as arguments, and creates a new concert for the band in that venue on that date
    def play_in_venue(new_venue, new_date)
        Concert.new(new_date, self, new_venue)
    end
    # returns an array of strings representing all the introductions for this band
    def all_introductions
        self.concerts.map(&:introduction)
    end
end