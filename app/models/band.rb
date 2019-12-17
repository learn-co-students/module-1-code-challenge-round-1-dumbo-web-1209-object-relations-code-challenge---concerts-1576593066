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
        Concert.all.map do |concert_instance|
            concert_instance.band.name
        end
    end


end