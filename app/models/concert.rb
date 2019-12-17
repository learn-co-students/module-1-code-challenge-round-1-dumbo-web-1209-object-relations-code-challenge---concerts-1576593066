class Concert
attr_reader :date, :band, :venue
@@all = []

def initialize(date, band, venue)
@date = date
@band = band
@venue = venue
@@all << self
end

def hometown_show?
Venue.all.each do |venueCity|
if venueCity.city == @band.hometown
return true 
else
return false
end
end
end

def introduction
p "Hello #{@venue.city}!!!!! We are #{@band.name} and we're from #{@band.hometown}"
end

def self.all # KEEP TO END OF CLASS
@@all
end
end # end of class