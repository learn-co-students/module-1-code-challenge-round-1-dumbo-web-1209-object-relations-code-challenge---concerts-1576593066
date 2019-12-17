require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Band instances for test purposes
yo_la_tengo = Band.new("Yo La Tengo", "Hoboken")
radiohead = Band.new("Radiohead", "Abington")
fishmans = Band.new("Fishmans", "Tokyo")

#Venue instances for test purposes
the_spot = Venue.new("The Spot", "Hoboken")
treble = Venue.new("Treble", "Abington")
fried_mackeral = Venue.new("Fried Mackeral", "Tokyo")

#Concert instances for test purposes
first_hometown_show = yo_la_tengo.play_in_venue("1/1/19", the_spot)
yo_la_tengo.play_in_venue("1/2/19", the_spot)
yo_la_tengo.play_in_venue("1/3/19", treble)

radiohead.play_in_venue("2/2/19", treble)

not_hometown = fishmans.play_in_venue("3/3/19", the_spot)
fishmans.play_in_venue("3/6/19", fried_mackeral)
fishmans.play_in_venue("3/9/19", treble)
fishmans.play_in_venue("3/10/19", treble)
fishmans.play_in_venue("3/11/19", treble)
fishmans.play_in_venue("3/12/19", treble)

first_hometown_show

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
