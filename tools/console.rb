require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1 = Venue.new("PlayStation Theater", "NYC")
v2 = Venue.new("Dimmadome", "Dimmsdale")

b1 = Band.new("Peaky Blinders", "London")
b2 = Band.new("Simply Red", "NYC")

c1 = Concert.new("Today", b2, v1)
c2 = Concert.new("Yesterday", b1, v2)
c3 = Concert.new("2020", b1, v1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
