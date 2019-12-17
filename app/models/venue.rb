class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def concert_on(date)
        # if Concert.date == self.date 
        #     return Concert
        # # else 
        # #     return 'nil'
        # end
    end
end


# - `Venue#concert_on(date)`
#   - takes a date (string) as argument
#   - finds and returns the first concert on that date at that venue
#   - if there is no concert on that date at that venue, returns `nil`