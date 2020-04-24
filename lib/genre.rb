class Genre
    attr_accessor :name
    @@all =[]
    def initialize(name)
        @name = name

        Genre.all<<self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |i|
            i.genre==self
        end
    end

    def artists
        songs.map do |i|
            i.artist
        end
    end
end