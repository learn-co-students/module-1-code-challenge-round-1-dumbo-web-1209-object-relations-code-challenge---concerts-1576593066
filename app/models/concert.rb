class Concert
attr reader: date:, band:, venue 
 @@all = []  
 def initialize (date, band, venue)
 @date = date
 @band = band
 @venue = venue
 @@all << self
end

def band
band.all.select do |band_instance|
    band_instnace.concert == self
    end
end
def venue
venue.all.select do |venue_instnace| 
    venue_instance.concert == self
    end
end


def self.all
    end 
end