require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

b1 = Band.new("Chadwick Stokes", "Boston")
b2 = Band.new("Devil Makes Three", "Denver")
b3 = Band.new("Augustana", "San Diego")

v1 = Venue.new("Brooklyn Steel", "Brooklyn")
v2 = Venue.new("Bowery Ballroom", "NYC")
v3 = Venue.new("Venue Trois", "Paris")
v4 = Venue.new("Venue 4", "San Diego") 

c1 = Concert.new("March", b1, v2)
c2 = Concert.new("May", b1, v3)
c3 = Concert.new("June", b2, v1)
c4 = Concert.new("November", b3, v2)
c5 = Concert.new("October", b3, v4)
c6 = Concert.new("September", b3, v4)
c7 = Concert.new("January", b2, v4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
