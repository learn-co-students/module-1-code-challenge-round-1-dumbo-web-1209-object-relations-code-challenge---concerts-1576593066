require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


b1 = Band.new("Joy Divison", "Manchester")
b2 = Band.new("Nirvana", "US")
b3 = Band.new("Weezers", "US")


v1 = Venue.new("Rock UK", "Manchester")
v2 = Venue.new("Rock US", "New York City")
v3 = Venue.new("Rock Germany", "Cologne")

c1 = Concert.new("11-12-2020", b1, v1)
c2 = Concert.new("11-12-2021", b2, v2)
c3 = Concert.new("12-31-2020", b3, v3)
c4 = Concert.new("05-23-2018", b1, v2)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
