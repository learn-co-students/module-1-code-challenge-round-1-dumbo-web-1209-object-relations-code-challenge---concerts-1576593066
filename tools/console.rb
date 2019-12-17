require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
b1= band.new ("The Elephants", "Bar")
b2= band.new ("The Ducks", "Club")
b3= band.new ("The Zebras", "Basement")

v1= venue.new ("3D Cellar", "Boston")
v2= venue.new ("Sports bar", "NJ")
v3= venue.new ("Comedy Cellar", "NYC")

c1= concert.new ("11/23/19", "b1", "v1")
c2= concert.new ("2/23/19", "b2", "v2")
c3= concert.new ("5/29/19", "b3", "v3")


binding.pry
"Lets pass this challenege"