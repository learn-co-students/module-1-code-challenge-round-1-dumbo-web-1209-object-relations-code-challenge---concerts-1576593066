require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

wu_tang_clan = Band.new("Wu Tang Clan", "Staten Island") #works
the_time = Band.new("The Time", "Minneapolis") #works
the_revolution = Band.new("The Revolution", "Minneapolis") #works

madison_square_garden = Venue.new("Madison Square Garden", "New York City") #works
staples_center = Venue.new("Staples Center", "Los Angeles") #works
the_o2 = Venue.new("The O2", "London") #works

wu_live = Concert.new("September 9th, 1998", wu_tang_clan, madison_square_garden) #works
jungle_love_tour = Concert.new("January 1, 1985", the_time, staples_center) #works
controversy_tour = Concert.new("November 20th, 1981", the_revolution, the_o2) #works

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
