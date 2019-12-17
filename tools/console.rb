require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# initialize(title, city)
v1 = Venue.new("MSG", "NYC")
v2 = Venue.new("Anywhere", "Miami")
v3 = Venue.new("NoWhere", "Cleaveland")
v4 = Venue.new("GoldenState", "Sanfransico")
v5 = Venue.new("Alomo", "Houston")
v6 = Venue.new("TheSoul", "Seoul")


# initialize(name, hometown)
b1 = Band.new("The Beattles", "New York")
b2 = Band.new("Mystery", "Florida")
b3 = Band.new("The Rocks", "Calidornia")
b4 = Band.new("MacBook", "Texas")
b5 = Band.new("Samsung", "Korea")


# initialize(date, band, venue)
c1 = Concert.new("12/25/19", b1, v1)
c2 = Concert.new("1/02/20", b1, v3)
c3 = Concert.new("3/13/20", b2, v5)
c4 = Concert.new("5/03/20", b4, v2)
c5 = Concert.new("12/25/20", b5, v1)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
