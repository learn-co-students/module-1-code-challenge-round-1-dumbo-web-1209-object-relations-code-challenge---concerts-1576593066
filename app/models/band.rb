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
        Concert.all.select do |concert_instance|
            concert_instance.band == self 
        end
    end

    def play_in_venue(venue, date)
        # takes a venue and date (as a string) as arguments, and creates a new concert 
        #for the band in that venue on that date
        Concert.new(date, self, venue)
        #getting syntax error near unexpected token 'v2,'
        #ran out of time to fix!
    end

    def all_introductions
        intros = []
        Concert.all.map do |concert_instance|
            if concert_instance.band == self 
                intros << "Hello #{concert_instance.venue.city}!!!!!, we are #{self.name} and we're from #{self.hometown}"  
            end 
        end
        intros.compact 
    end
end


