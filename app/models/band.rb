class Band  ### ALL TESTED/WORKS ###

    attr_accessor :name
    attr_reader :hometown
    @@all = []

    # INITIALIZE #

    def initialize(name, hometown)  # WORKS #
        @name = name
        @hometown = hometown
        
        @@all << self
    end

    # INSTANCE METHODS #

    def concerts    # WORKS #
        Concert.all.select {|concert| concert.band == self}
    end

    def play_in_venue(date, venue)  # WORKS #
        Concert.new(date, self, venue)
    end

    def all_introductions   # WORKS #
        concerts.collect {|concert| concert.introduction}
    end

    # CLASS METHODS #

    def self.all    # WORKS #
        @@all
    end

    # END #

end