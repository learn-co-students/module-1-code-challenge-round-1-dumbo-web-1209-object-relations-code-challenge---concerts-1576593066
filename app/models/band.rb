class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def self.concerts #almost had it!
        Concert.all.find do |wu_tang_show|

    end

    def self.all
        @@all
    end
end