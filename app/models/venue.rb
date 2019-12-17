class Venue ### ALLL TESTED/WORKS ###

    attr_accessor :title
    attr_reader :city
    @@all = []

    # INITIALIZE #

    def initialize(title, city) # WORKS #
        @title = title
        @city = city

        @@all << self
    end

    # INSTANCE METHODS #

    def concerts    # WORKS #
        Concert.all.select {|concert| concert.venue == self}
    end

    def bands   # WORKS #
        concerts.collect {|concert| concert.band}

        # Could make list unique and remove repetitions of the same
        # band with .uniq if the deliverable specified that
        # ie:
        # bands = concerts.collect {|concert| concert.band}
        # bands.uniq
    end

    def concert_on(date)    # WORKS #
        concerts.find {|concert| concert.date == date}
    end

    def most_frequent_band  # WORKS #
        band_list = concerts.group_by {|concert| concert.band}
            # ^ sorts concerts into hash of band => concerts
        band_with_most = band_list.max_by {|band, concerts| concerts.count}
            # ^ formats hash into an array of the band with most concerts
            #   followed by its concerts; [band, concert, concert, etc]
        band_with_most[0]
            # ^ returns the band instance
    end

    # SELF METHODS #

    def self.all    # WORKS #
        @@all
    end

    # END #

end