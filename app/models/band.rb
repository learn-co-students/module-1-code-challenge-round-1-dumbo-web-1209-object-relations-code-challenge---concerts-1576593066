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
        Concert.all.select{|concert_instance| concert_instance.band == self}
    end

    def play_in_venue(venue,date)
        Concert.new(date,self,venue)
    end

    # def current_concert
    #     Concert.all.find{|concert_instance| concert_instance.venue == }
    # end

    def all_introductions
        puts "Hello #{current_concert}!!!!!, we are #{name} and we're from #{hometown}"
    end

    def self.all
        @@all
    end
end


# - `Band#all_introductions`
#   - returns an array of strings representing all the introductions for this band
#   - each introduction is in the form `"Hello {insert city name here}!!!!!, we are {insert band name here} and we're from {insert hometown here}"`