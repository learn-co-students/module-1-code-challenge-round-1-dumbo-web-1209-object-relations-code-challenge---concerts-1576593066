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

#     - `Band#concerts`
#   - should return an array of all the concerts that the band has played in
    def concerts
        Concert.all.select do |concert| 
            concert.band == self
        end
    end
end




