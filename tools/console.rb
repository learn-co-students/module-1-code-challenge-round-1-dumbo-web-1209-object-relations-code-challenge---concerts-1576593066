require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

b_benji_c = Concert.new("05-10-2019", "breaking Benjiman", "Pub")
ax7_c = Concert.new("10-19-2017", "Avenged Sevenfold", "Preschool at elm st")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
