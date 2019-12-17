require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#band_info-----##working initialization 
green_day = Band.new("Green Day", "Somewhere")
wu_tang = Band.new("Wu-Tang Clan", "Staten Island")
metallica = Band.new("Metallica", "USA")
queen = Band.new("Queen", "Various")

#venue_info-------##working initialization
garden = Venue.new("Madison Square Garden", "New York City")
met_life = Venue.new("Met Life Stadium", "Secaucus")
oracle = Venue.new("The Oracle", "Oakland")


#concert_info----------##working initialization
#initialize(date, band, venue)
summer_jam = Concert.new("06/11/2020", wu_tang, oracle)
metal_jam = Concert.new("01/23/2020", metallica, met_life)
last_tour = Concert.new("03/26/2021", queen, garden)

#test_code-Object_relation-concert
summer_jam.venue
summer_jam.band
last_tour.band



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
