class Band

    attr_reader :hometown, :name

    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown

        @@all << self
    end

    ## INSTANCE METHODS ##
    
    def concerts
        Concert.all.select{|concert| concert.band == self}
    end

    def play_in_venue(date, venue)
        Concert.new(date, self, venue)
    end

    def all_introductions
        concerts.map{|concert| "Hello #{concert.city}!!!!!, we are #{self.name} and we're from #{self.hometown}"}
    end


    ## CLASS METHODS ##
    def self.all
        @@all
    end
end