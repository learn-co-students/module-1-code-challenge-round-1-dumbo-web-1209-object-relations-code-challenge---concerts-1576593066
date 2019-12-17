require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

band1 = Band.new("Band 1", "New York City")
band2 = Band.new("Band 2", "Boston")
band3 = Band.new("Band 3", "Chicago")
band4 = Band.new("Band 4", "Miami")
band5 = Band.new("Band 5", "New York City")
band6 = Band.new("Band 6", "Alberta")

venue1 = Venue.new("Venue 1", "New York City")
venue2 = Venue.new("Venue 2", "New York City")
venue3 = Venue.new("Venue 3", "Milwaukee")
venue4 = Venue.new("Venue 4", "Hoboken")
venue5 = Venue.new("Venue 5", "Palo Alto")
venue6 = Venue.new("Venue 6", "Washington")

concert1 = Concert.new("Oct 8, 1994", band1, venue2)
concert2 = Concert.new("Jan 4, 2003", band1, venue2)
concert3 = Concert.new("Mar 23, 1998", band1, venue2)
concert4 = Concert.new("Sep 6, 2009", band2, venue1)
concert5 = Concert.new("Nov 10, 2004", band3, venue3)
concert6 = Concert.new("Feb 2, 1997", band4, venue4)
concert7 = Concert.new("Apr 28, 2012", band5, venue5)
concert8 = Concert.new("Aug 18, 2014", band6, venue6)
concert9 = Concert.new("Dec 12, 2011", band5, venue2)
concert9 = Concert.new("May 2, 2008", band5, venue2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
