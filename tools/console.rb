require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
reagan_youth = Band.new("Reagan Youth", "Queens")
have_heart = Band.new("Have Heart", "Boston")
x = Band.new("X", "L.A.")
cbgb = Venue.new("CBGB", "Manhattan")
whiskey_agogo = Venue.new("Whiskey-A-Go-Go", "L.A.")
amvets= Venue.new("Amvets", "Bronx")
reagan_youth.play_in_venue(cbgb, "1/1")
reagan_youth.play_in_venue(whiskey_agogo, "2/2")
reagan_youth.play_in_venue(amvets, "3/3")
have_heart.play_in_venue(cbgb, "4/4")
x.play_in_venue(whiskey_agogo, "5/5")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
