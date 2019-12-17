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
Concert.all.each do |bandConcert|
    bandConcert if bandConcert.band == self
end
end

def play_in_venue(date, venue)
Concert.new(date, self, venue)
end

def all_introductions # RETURNING EMPTY ARRAY. COME BACK TO THIS.
introductionList = []
Concert.all.each do |bandIntros|
if bandIntros.band == self
    introductionList << bandIntros.introduction
end
end
introductionList 
end

def self.all # KEEP TO END OF CLASS
    @@all
end
end # end of class


