class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.concerts
        Concert.all.each do |all_concerts|
            Concert.all == all_concerts 
        end
    end

    def self.bands
        Band.all.each do |all_bands|
            Band.all == all_bands 
        end
    end



    def self.all
        @@all
    end
end