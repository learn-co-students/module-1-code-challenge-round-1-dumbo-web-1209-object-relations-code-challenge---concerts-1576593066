require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Band.new(name, hometown)
bmth=Band.new("Bring me the horizon","someplace over the horizon")
bigblues=Band.new("big Blues","Texas")

# Venue.new(title, city)

disney=Venue.new("Disney park","miami")
bigcenter=Venue.new("Big Center","The biggest city")

# Concert.new=(date,band,venue)
c1=Concert.new("august 20th", bigblues, bigcenter)
c2=Concert.new("may 4th",bmth,disney)
c3=Concert.new("jan5th",bmth,bigcenter)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
