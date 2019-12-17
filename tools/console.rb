require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

b1 = Band.new("flame", "queens")
b2 = Band.new("ice", "brooklyn")
b3 = Band.new("ice", "manhattan")

v1 = Venue.new("radio city", "manhattan")
v2 = Venue.new("palace", "manhattan")
v3 = Venue.new("hammerstein", "manhattan")

c1 = Concert.new("12/2/2019", b1, v1)
c2 = Concert.new("12/3/2019", b2, v2)
c3 = Concert.new("12/4/2019", b3, v2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
