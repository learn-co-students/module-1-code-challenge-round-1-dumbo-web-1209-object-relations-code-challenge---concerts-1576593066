require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Band.new (name, hometown)
b1 = Band.new("Rocket Clash", "Philadelphia")
b2 = Band.new("Drummer Line", "Chicago")
b3 = Band.new("Funky Town", "Los Angeles")

#Venue.new (title, city)
v1 = Venue.new("Dreamer Room", "New York City")
v2 = Venue.new("Cloud Lounge", "Hollywood")
v3 = Venue.new("Lover's Quarrel", "Boston")

#Concert.new (date, band, venue)
c1 = Concert.new("12/14/2020", b1, v3)
c2 = Concert.new("01/30/2021", b1, v2)
c3 = Concert.new("02/12/2020", b1, v3)
c4 = Concert.new("11/15/2020", b2, v2)
c5 = Concert.new("09/24/2020", b3, v1)
c6 = Concert.new("04/22/2020", b3, v3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
