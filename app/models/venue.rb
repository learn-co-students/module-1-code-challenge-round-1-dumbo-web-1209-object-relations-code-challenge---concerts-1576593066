class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts ##returns all of the venues instead of selected venue?
        Concert.all.select {|concert| concert.venue}
    end

    def bands ##recieved undefined method error. same happened when I ran this with map.
        Band.all.select {|band| band.venue}
    end

end