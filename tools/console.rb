require_relative '../config/environment.rb'
#Band -< concert >- venue
def reload
  load 'config/environment.rb'
end

b1 = Band.new("The Strokes", "Brooklyn")
b2 = Band.new("Reel Big Fish", "Los Angeles")
b3 = Band.new("Bassnectar", "Outer Space")

v1 = Venue.new("Hammerstien Ballroom", "NYC")
v2 = Venue.new("MSG", "NYC")
v3 = Venue.new("Moon Center", "The Moon")

c1 = Concert.new("12/25/19", b1, v2)
c2 = Concert.new("08/24/20", b2, v1)
c3 = Concert.new("01/13/20", b3, v2)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
