require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Band.new(name, hometown)
b1 = Band.new("Beatles", "UK")
b2 = Band.new("Band 2", "Chicago")
b3 = Band.new("Band 3", "NYC")

# Venue.new(title, city)
v1 = Venue.new("Venue 1", "Nashville")
v2 = Venue.new("Venue 2", "Jacksonville")
v3 = Venue.new("Venue 3", "UK")

# Concert.new(date, band, venue)
c1 = Concert.new("2019-12-09", b3, v1)
c2 = Concert.new("2019-12-29", b3, v3)
c3 = Concert.new("2021-03-29", b1, v2)
c4 = Concert.new("2019-12-09", b3, v1)
c5 = Concert.new("2019-12-29", b2, v1)
c6 = Concert.new("2021-03-29", b3, v3)

binding.pry
# band -< concert >- venue
0 #leave this here to ensure binding.pry isn't the last line
