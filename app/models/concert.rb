class Concert
    attr_reader :date, :band, :venue

    @@all = []

    def initialize(date, band, venue)
        @date = date
        @band = band 
        @venue = venue

        @@all << self
    end

    def self.all
        @@all
    end
    
end