class Concert
    
    attr_accessor :date, :band, :venue

    @@all = []

    def initialize(date, band, venue)
        @date = date
        @band = band
        @venue = venue
        @hash = {}
        @@all << self
    end

    def bands(band)
        @hash[band].select do |
    end

    def venues
    end

    def hometown_show?
    end

    def introduction
    end

    def 

    def self.all

        @@all
    end
end