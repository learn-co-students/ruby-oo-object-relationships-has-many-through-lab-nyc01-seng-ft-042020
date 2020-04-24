class Genre

    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        Genre.all << self
    end

    def self.all
        @@all
    end


    def songs
        Song.all.collect {|track| track.genre == self}
    end



end