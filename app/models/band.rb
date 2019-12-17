class Band
    attr_accessor :name, :band
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @band = band 
        
        @@all << self
    end

    def band(name)

    end

    def name(name)
        i = 0
        
        name[]
        binding.pry
    end

    def hometowns
    end

    def concerts 

    end

    def self.all
        @@all
    end
end