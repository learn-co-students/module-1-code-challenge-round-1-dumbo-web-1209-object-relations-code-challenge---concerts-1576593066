class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end


def concerts # RETURNING ALL CONCERTS?
concertArray = []
Concert.all.each do |venueConcert|
if venueConcert.venue == self
concertArray << venueConcert
end 
end
concertArray
end

def bands # RETURNING ALL CONCERTS. NOT DONE.
    bandList = []
    Concert.all.each do |concertBand|
        concertBand.band if concertBand.venue == self
        end
    end

def concert_on(concertDate) # WRITTEN WRONG

Concert.all.each do |concertList|
concertList.date.find == concertDate
end
end

def most_frequent_band # DO THIS ONE

end

    
def self.all # KEEP TO END OF CLASS
@@all
end
end # end of class