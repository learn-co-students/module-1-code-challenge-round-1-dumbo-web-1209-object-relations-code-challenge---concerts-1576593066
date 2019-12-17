class Concert
  attr_accessor :date, :band, :venue

  @@all = []

  def initialize(date, band, venue)
    @date = date
    @band = band
    @venue = venue
    @@all << self
  end

  # def band(concert)
  #   @band
  # end
  #
  # def venue(concert)
  #   @concert
  # end

  def hometown_show?(show)
    if Band.hometown == show
      return "true"
    else
      return "false"
    end
  end

  def introduction
    return "Hello #{self.venue.city}!!!!!, we are #{self.band.name} and we're from #{self.band.hometown}"
  end

  def self.all
    @@all
  end

end



### Object Relationship Methods

# - `Concert#band`
#   - should return the `Band` instance for this concert
# - `Concert#venue`
#   - should return the `Venue` instance for this concert


# - `Concert#hometown_show?`
#   - returns `true` if the concert is in the band's hometown, `false` if it is not
# - `Concert#introduction`
#   - returns a string with the band's introduction for this concert
#   - an introduction is in the form:
# `"Hello {insert city name here}!!!!!, we are
#  {insert band name here} and we're from {insert hometown here}"`
